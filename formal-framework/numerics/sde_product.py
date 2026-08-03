"""sde_product — B2b coupled-pair probe of ROW PROD-EXCURSION (gate v20's
premise; per the ratified roadmap THIS probe's result RE-DECIDES whether
v20's barrier is where the corpus thinks).

SYSTEM (lane-lp Standing Data): two chains on T^N x T^N,
    E_eps(theta, phi) = J_kappa(theta) + J_lambda(phi) + eps W*(d, e),
    W*(d, e) = sum_i (1 - cos(d_i - e_i)).
Overdamped Langevin: dz = -grad E_eps dt + sqrt(2/beta) dW.

TARGET (ROW PROD-EXCURSION, typed, NOT discharged):
    R_0 := {w_theta = k, w_phi = 0, E_eps <= S_k + c_H};
    expected time per renewal round spent OUTSIDE R_0 before re-entry or
    theta-label change  <=  T_row(eps, delta) exp(-beta (c_H/2 - err)).
The bare PROBABILITY-floor version is FALSE (G_{k,j} = C_k x C_j^phi
pinning tori are E_eps-critical for every eps at reachable levels); the
EXPECTED-TIME shape is what SH.4 consumes - that is what we measure.

Secondary probes: doorway/gate levels (Delta_phi crossings must carry
E_eps >= m_k + 2 lambda, the ledger's gate ABOVE the S_k + c_H doorway);
G_{k,1} trap occupancy.

HONESTY: moderate-beta supporting evidence ONLY; no assurance rung;
extrapolation beta -> infinity named as caveat; deterministic seeds.
"""
from __future__ import annotations

import json
import time
from pathlib import Path

import numpy as np

import qcore

RESULTS = Path(__file__).parent / "results"
TWO_PI = qcore.TWO_PI


def grad_E(th, ph, kappa, lam, eps):
    u = qcore.bonds(th) - qcore.bonds(ph)
    s = np.sin(u)
    gW = np.roll(s, 1) - s
    return (qcore.grad_J(th, kappa) + eps * gW,
            qcore.grad_J(ph, lam) - eps * gW)


def E_eps(th, ph, kappa, lam, eps):
    u = qcore.bonds(th) - qcore.bonds(ph)
    return (qcore.J(th, kappa) + qcore.J(ph, lam)
            + eps * np.sum(1 - np.cos(u)))


def experiment_excursion_rounds(N: int = 10, k: int = 1, kappa: float = 1.0,
                                lam: float = 1.0, eps: float = 0.05,
                                betas=(10.0, 12.0, 14.0, 16.0),
                                dt: float = 5e-3, n_steps: int = 3_000_000,
                                seed: int = 20260710) -> dict:
    """The PROD-EXCURSION probe. One long trajectory per beta from G_k;
    renewal rounds = re-pinning (first ground-ball visit after an
    excursion closes); measure per-round time OUTSIDE R_0 (E_eps >
    S_k + c_H or w_phi != 0). Also: doorway census (E_eps at w_phi
    changes vs the Delta_phi gate) and G_{k,1} proximity (trap watch).
    BETA REGIME: the band structure is only visible once the thermal
    energy (2N-2)/(2 beta) sits below the doorway gap - at N = 10 that
    is beta >~ 10; theta-label changes are then exponentially rare, so
    the dominant renewal is re-pinning (the row's relevant clause)."""
    m, S = qcore.m_k(N, k, kappa), qcore.S_k(N, k, kappa)
    cH = 0.25 * min(m + 2 * kappa - S, 4 * kappa - S)
    band_top = S + cH
    gate = m + 2 * lam                      # Delta_phi ledger gate
    g_th, g_ph = qcore.ground_config(N, k), np.zeros(N)
    ground_lvl = float(E_eps(g_th, g_ph, kappa, lam, eps))
    # re-pinning ball: midway between the coupled ground level and the
    # doorway (deep re-entry; E_eps(G_k) = m_k + eps w_k, eps-shifted)
    ball = 0.5 * (ground_lvl + band_top)
    rows = []
    for beta in betas:
        rng = np.random.default_rng(seed + int(beta * 1000))
        th, ph = g_th.copy(), g_ph.copy()
        sig = np.sqrt(2 * dt / beta)
        outside_now = 0.0
        outside_times, rounds = [], 0
        in_excursion = False
        awaiting_repin = False   # excursion closed, round open until ball
        doorway_levels, wphi_cross_levels = [], []
        min_d_trap = np.inf
        trap_bonds = TWO_PI / N             # G_{k,1} phi-bond signature
        theta_label_changes = 0
        check = 10
        for t in range(0, n_steps, check):
            for _ in range(check):
                gth_, gph_ = grad_E(th, ph, kappa, lam, eps)
                th = th - gth_ * dt + sig * rng.standard_normal(N)
                ph = ph - gph_ * dt + sig * rng.standard_normal(N)
            E = float(E_eps(th, ph, kappa, lam, eps))
            wt = round(float(qcore.winding(th)))
            wp = round(float(qcore.winding(ph)))
            if wt != k:
                theta_label_changes += 1
                # theta-label change ends the round (renewal target event)
                if in_excursion:
                    outside_times.append(outside_now)
                    outside_now, in_excursion = 0.0, False
                th, ph = g_th.copy(), g_ph.copy()   # restart the renewal
                rounds += 1
                awaiting_repin = False
                continue
            out = (E > band_top) or (wp != 0)
            if wp != 0:
                wphi_cross_levels.append(E)
                d_trap = float(np.linalg.norm(
                    np.abs(qcore.bonds(ph)) - trap_bonds))
                min_d_trap = min(min_d_trap, d_trap)
            if out:
                if not in_excursion:
                    in_excursion = True
                    doorway_levels.append(E)
                outside_now += check * dt
            else:
                if in_excursion:
                    outside_times.append(outside_now)
                    outside_now, in_excursion = 0.0, False
                    awaiting_repin = True
                if awaiting_repin and E < ball:
                    rounds += 1                     # re-pinning = renewal
                    awaiting_repin = False
        if in_excursion:
            outside_times.append(outside_now)      # censored tail
        tot_out = float(np.sum(outside_times))
        rows.append({
            "beta": beta, "rounds": max(rounds, 1),
            "n_excursions": len(outside_times),
            "outside_time_total": round(tot_out, 3),
            "outside_time_per_round": tot_out / max(rounds, 1),
            "log_out_per_round": (float(np.log(tot_out / max(rounds, 1)))
                                  if tot_out > 0 else None),
            "excursion_mean": (float(np.mean(outside_times))
                               if outside_times else None),
            "doorway_level_mean": (float(np.mean(doorway_levels))
                                   if doorway_levels else None),
            "wphi_crossings": len(wphi_cross_levels),
            "wphi_cross_level_min": (float(np.min(wphi_cross_levels))
                                     if wphi_cross_levels else None),
            "min_dist_to_Gk1_phi_signature": (round(min_d_trap, 3)
                                              if np.isfinite(min_d_trap) else None),
            "theta_label_changes": theta_label_changes})
    fit = [r for r in rows if r["log_out_per_round"] is not None]
    slope = None
    if len(fit) >= 3:
        x = np.array([r["beta"] for r in fit])
        y = np.array([r["log_out_per_round"] for r in fit])
        slope = float(np.polyfit(x, y, 1)[0])
    return {"experiment": "prod_excursion_rounds", "N": N, "k": k,
            "kappa": kappa, "lam": lam, "eps": eps, "dt": dt,
            "n_steps": n_steps, "seed": seed,
            "ledger": {"m_k": round(m, 4), "S_k": round(S, 4),
                       "c_H": round(cH, 4), "band_top": round(band_top, 4),
                       "Delta_phi_gate": round(gate, 4),
                       "ground_level_eps": round(float(ground_lvl), 4),
                       "row_predicted_slope_leq": round(-cH / 2, 4)},
            "rows": rows, "outside_time_slope": slope,
            "row_scaling_consistent": (slope is not None
                                       and slope <= -cH / 2 + 0.15),
            "honesty": "moderate-beta evidence; the row is an expected-TIME "
                       "bound - slope <= -c_H/2 at beta->inf; finite-beta "
                       "slope carries prefactor drift; renewal restarts on "
                       "theta-change are a simplification of LP.5(c)'s "
                       "ground-ball-return rounds"}


def experiment_forgetting_rate(N: int = 10, k: int = 1, lam: float = 1.0,
                               eps: float = 0.05,
                               betas=(3.0, 5.0, 8.0), dt: float = 5e-3,
                               n_steps: int = 2000, n_rep: int = 512,
                               seed: int = 20260710) -> dict:
    """The tightest cheap two-sided check in the corpus (lane-c C2 /
    M2P.6): the flat mode Phi = sum theta_i has d Phi = sqrt(2N/beta) dB
    EXACTLY (the drift telescopes to zero, INCLUDING the eps W* term), so
    E_q[e^{i(Phi_t - Phi_0)}] = exp(-N t/beta) exactly - eps-, kappa-,
    lambda-INDEPENDENT. Any coupling leakage into the flat mode would
    falsify. Vectorized batch of n_rep noise replicas from one start."""
    rows = []
    for beta in betas:
        rng = np.random.default_rng(seed + int(beta * 7919))
        th = np.tile(qcore.ground_config(N, k), (n_rep, 1))
        ph = np.zeros((n_rep, N))
        sig = np.sqrt(2 * dt / beta)
        Phi0 = np.sum(th, axis=1)
        sample_every = 4
        vals, ts = [], []
        for t in range(n_steps):
            u = qcore.bonds(th) - qcore.bonds(ph)
            s = np.sin(u)
            gW = np.roll(s, 1, axis=1) - s
            th = th - (qcore.grad_J(th) + eps * gW) * dt \
                + sig * rng.standard_normal((n_rep, N))
            ph = ph - (qcore.grad_J(ph, lam) - eps * gW) * dt \
                + sig * rng.standard_normal((n_rep, N))
            if t % sample_every == 0:
                vals.append(np.mean(np.exp(1j * (np.sum(th, axis=1) - Phi0))))
                ts.append(t * dt)
        mag = np.abs(np.array(vals))
        ts = np.array(ts)
        # fit ONLY the decay segment: cut at the first crossing of the
        # statistical floor (mean of n_rep unit phasors ~ 1/sqrt(n_rep))
        floor = max(0.2, 2.5 / np.sqrt(len(th)))
        below = np.flatnonzero(mag < floor)
        cut = below[0] if below.size else len(mag)
        rate = None
        if cut > 5:
            rate = float(-np.polyfit(ts[1:cut], np.log(mag[1:cut]), 1)[0])
        rows.append({"beta": beta, "fitted_rate": rate,
                     "predicted_N_over_beta": N / beta})
    err = max(abs(r["fitted_rate"] - r["predicted_N_over_beta"])
              / r["predicted_N_over_beta"]
              for r in rows if r["fitted_rate"])
    return {"experiment": "flat_mode_forgetting", "N": N, "eps": eps,
            "rows": rows, "max_relative_error": round(err, 3),
            "verdict": "STANDS" if err < 0.35 else "FINDING",
            "honesty": "MC estimate of E[e^{i Phi}] with n_rep samples; "
                       "statistical error scales as 1/sqrt(n_rep); the "
                       "prediction is EXACT (two-sided target)"}


def run_all(quick: bool = False) -> dict:
    t0 = time.time()
    RESULTS.mkdir(exist_ok=True)
    qcore.self_test(verbose=False)
    scale = 10 if quick else 1
    out = {"prod_excursion": experiment_excursion_rounds(
               n_steps=3_000_000 // scale),
           "forgetting": experiment_forgetting_rate(
               n_rep=max(64, 512 // scale))}
    out["wall_seconds"] = round(time.time() - t0, 1)
    path = RESULTS / ("sde_product_quick.json" if quick
                      else "sde_product_results.json")
    path.write_text(json.dumps(out, indent=1, default=str), encoding="utf-8")
    print(f"wrote {path} ({out['wall_seconds']}s)")
    return out


if __name__ == "__main__":
    import sys
    run_all(quick="--quick" in sys.argv)
