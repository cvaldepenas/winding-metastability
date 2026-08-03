"""sde — B2b Euler-Maruyama harness on T^N (moderate beta).

Simulates the reversible overdamped Langevin diffusion the corpus studies:
    d theta = -grad J(theta) dt + sqrt(2 / beta) dW      (on T^N)
with J the loop energy (qcore.J). Every experiment is DETERMINISTICALLY
SEEDED and returns a plain dict (JSON-ready) with its parameters inside.

HONESTY TYPE (attack-roadmap-v1 B2b): moderate-beta SUPPORTING EVIDENCE
ONLY - no assurance rung, extrapolation to beta -> infinity is named as a
caveat wherever a slope is reported. The harness can KILL a display
(counterexample/mismatch) or leave it standing; it cannot seal anything.

Observables built here:
  * sector exit times (winding change detection via bond antipode crossing)
  * beta-slopes of log E[tau] (Arrhenius fit) vs the ladder gap displays
  * occupancy/pinning near the ground circle C_k
  * J-excursion shape statistics above a level (duration, peak, renewal) -
    the empirical probe of the PROD-EXCURSION heuristic's raw material
"""
from __future__ import annotations

import json
import time
from pathlib import Path

import numpy as np

import qcore

RESULTS = Path(__file__).parent / "results"


def em_trajectory(theta0: np.ndarray, beta: float, dt: float, n_steps: int,
                  rng: np.random.Generator, kappa: float = 1.0,
                  record_every: int = 1):
    """Euler-Maruyama integrator. Returns (thetas, Js, windings) sampled
    every `record_every` steps. Winding is recomputed from wrapped bonds
    (integer off Delta; jumps mark antipode crossings)."""
    theta = theta0.copy()
    sig = np.sqrt(2.0 * dt / beta)
    n_rec = n_steps // record_every
    Js = np.empty(n_rec)
    ws = np.empty(n_rec)
    for t in range(n_steps):
        theta -= qcore.grad_J(theta, kappa) * dt
        theta += sig * rng.standard_normal(theta.shape)
        if t % record_every == 0:
            i = t // record_every
            Js[i] = qcore.J(theta, kappa)
            ws[i] = qcore.winding(theta)
    return theta, Js, ws


def exit_time(theta0: np.ndarray, beta: float, dt: float, max_steps: int,
              rng: np.random.Generator, kappa: float = 1.0,
              check_every: int = 20):
    """Steps until the winding changes from its initial value (sector exit).
    Returns (steps, exited)."""
    theta = theta0.copy()
    w0 = round(float(qcore.winding(theta)))
    sig = np.sqrt(2.0 * dt / beta)
    for t in range(0, max_steps, check_every):
        for _ in range(check_every):
            theta -= qcore.grad_J(theta, kappa) * dt
            theta += sig * rng.standard_normal(theta.shape)
        if round(float(qcore.winding(theta))) != w0:
            return t + check_every, True
    return max_steps, False


def experiment_beta_slope(N: int = 10, k: int = 1,
                          betas=(6.0, 7.0, 8.0, 9.0, 10.0),
                          n_rep: int = 24, dt: float = 5e-3,
                          max_steps: int = 2_000_000,
                          seed: int = 20260710) -> dict:
    """log E[tau_exit] vs beta from C_k. The ladder displays the barrier
    S_k - m_k; an Arrhenius slope grossly off that gap (at moderate beta,
    with the extrapolation caveat) is a finding to triage - not a seal
    either way."""
    rng = np.random.default_rng(seed)
    theta0 = qcore.ground_config(N, k)
    gap = qcore.S_k(N, k) - qcore.m_k(N, k)
    rows = []
    for beta in betas:
        taus, censored = [], 0
        for _ in range(n_rep):
            steps, exited = exit_time(theta0, beta, dt, max_steps, rng)
            if exited:
                taus.append(steps * dt)
            else:
                censored += 1
        rows.append({"beta": beta, "n": len(taus), "censored": censored,
                     "mean_tau": float(np.mean(taus)) if taus else None,
                     "log_mean_tau": float(np.log(np.mean(taus))) if taus else None})
    fit = [r for r in rows if r["mean_tau"] is not None]
    slope = None
    if len(fit) >= 3:
        x = np.array([r["beta"] for r in fit])
        y = np.array([r["log_mean_tau"] for r in fit])
        slope = float(np.polyfit(x, y, 1)[0])
    return {"experiment": "beta_slope_exit", "N": N, "k": k, "dt": dt,
            "n_rep": n_rep, "seed": seed, "rows": rows,
            "arrhenius_slope": slope, "ladder_gap_S_minus_m": float(gap),
            "honesty": "moderate-beta supporting evidence; slope at these "
                       "betas need not equal the beta->inf rate; censored "
                       "runs bias the mean downward"}


def experiment_pinning_occupancy(N: int = 10, k: int = 1, beta: float = 8.0,
                                 dt: float = 5e-3, n_steps: int = 2_000_000,
                                 seed: int = 20260710) -> dict:
    """Fraction of time spent near C_k (bond-distance balls) and J-level
    occupancy, within the sector (pre-exit segment only)."""
    rng = np.random.default_rng(seed)
    theta0 = qcore.ground_config(N, k)
    theta, Js, ws = em_trajectory(theta0, beta, dt, n_steps, rng,
                                  record_every=10)
    w0 = round(float(qcore.winding(theta0)))
    in_sector = np.round(ws) == w0
    first_exit = int(np.argmin(in_sector)) if not in_sector.all() else len(ws)
    Js_in = Js[:first_exit]
    m, S = qcore.m_k(N, k), qcore.S_k(N, k)
    lo = m + 0.25 * (S - m)
    hi = m + 0.75 * (S - m)
    return {"experiment": "pinning_occupancy", "N": N, "k": k, "beta": beta,
            "dt": dt, "n_steps": n_steps, "seed": seed,
            "samples_in_sector": first_exit, "exited": first_exit < len(ws),
            "occupancy_below_quarter_gap": float(np.mean(Js_in < lo)),
            "occupancy_mid_band": float(np.mean((Js_in >= lo) & (Js_in < hi))),
            "occupancy_above_three_quarter": float(np.mean(Js_in >= hi)),
            "mean_J_in_sector": float(np.mean(Js_in)),
            "m_k": float(m), "S_k": float(S),
            "honesty": "single moderate-beta trajectory; occupancy shape is "
                       "evidence about pinning, not a rate certificate"}


def experiment_excursion_shape(N: int = 10, k: int = 1, beta: float = 8.0,
                               dt: float = 5e-3, n_steps: int = 4_000_000,
                               level_frac: float = 0.5,
                               seed: int = 20260710) -> dict:
    """J-excursions above m_k + level_frac*(S_k - m_k): count, durations,
    peaks, and whether returns to below-level (RENEWAL) happen - the raw
    empirical material behind the PROD-EXCURSION heuristic (excursions are
    budgeted, renewal is mandatory)."""
    rng = np.random.default_rng(seed)
    theta0 = qcore.ground_config(N, k)
    _, Js, ws = em_trajectory(theta0, beta, dt, n_steps, rng, record_every=5)
    w0 = round(float(qcore.winding(theta0)))
    in_sector = np.round(ws) == w0
    first_exit = int(np.argmin(in_sector)) if not in_sector.all() else len(ws)
    Js = Js[:first_exit]
    m, S = qcore.m_k(N, k), qcore.S_k(N, k)
    level = m + level_frac * (S - m)
    above = Js > level
    # excursion segmentation
    starts = np.flatnonzero(~above[:-1] & above[1:]) + 1
    ends = np.flatnonzero(above[:-1] & ~above[1:]) + 1
    if above.size and above[0]:
        starts = np.concatenate([[0], starts])
    n_exc = min(len(starts), len(ends))
    durs, peaks = [], []
    for s, e in zip(starts[:n_exc], ends[:n_exc]):
        durs.append((e - s) * 5 * dt)
        peaks.append(float(np.max(Js[s:e])))
    return {"experiment": "excursion_shape", "N": N, "k": k, "beta": beta,
            "dt": dt, "n_steps": n_steps, "seed": seed, "level": float(level),
            "level_frac": level_frac, "samples_in_sector": first_exit,
            "n_excursions_completed": n_exc,
            "n_excursions_open_at_cut": int(len(starts) - n_exc),
            "duration_mean": float(np.mean(durs)) if durs else None,
            "duration_p95": float(np.percentile(durs, 95)) if durs else None,
            "peak_mean": float(np.mean(peaks)) if peaks else None,
            "peak_max": float(np.max(peaks)) if peaks else None,
            "fraction_time_above": float(np.mean(above)),
            "honesty": "empirical excursion census at one moderate beta; "
                       "probes the PROD-EXCURSION raw material (renewal + "
                       "budget), certifies nothing"}


def run_all(quick: bool = False) -> dict:
    t0 = time.time()
    RESULTS.mkdir(exist_ok=True)
    qcore.self_test(verbose=False)
    scale = 10 if quick else 1
    out = {
        "beta_slope": experiment_beta_slope(
            n_rep=max(4, 24 // scale), max_steps=4_000_000 // scale),
        "pinning": experiment_pinning_occupancy(n_steps=2_000_000 // scale),
        "excursions": experiment_excursion_shape(n_steps=4_000_000 // scale),
        "wall_seconds": None,
    }
    out["wall_seconds"] = round(time.time() - t0, 1)
    path = RESULTS / ("sde_results_quick.json" if quick else "sde_results.json")
    path.write_text(json.dumps(out, indent=1), encoding="utf-8")
    print(f"wrote {path} ({out['wall_seconds']}s)")
    return out


if __name__ == "__main__":
    import sys
    run_all(quick="--quick" in sys.argv)
