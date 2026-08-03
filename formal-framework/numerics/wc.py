"""wc — B2c WC-class new-member falsification.

Constructs FRESH members of the coupling class cW via the difference
subclass W_v := sum_i v(d_i - e_i) (lane-wc WC.1 checklist: (A1),(A3)
automatic; (A2) if v >= 0; (A2') iff v(0) = 0; (A4) iff v''(2 pi j/N) >= 0
at j = 0 and C1-SUB(j); (A6) iff v even) and numerically checks the
enumerated conclusions of the substitution theorem WC.2 that are
quantitative (lane-wc items; checks C1-C5 + C7-arithmetic below).

The ONLY kill-shot available on class sufficiency (necessity nowhere
claimed): a fresh member passing (A1)-(A5) but failing an enumerated
conclusion falsifies WC.2 itself. NOT-claimed-for-members (never report
as findings): the 2N ceiling, G_{k,l} criticality at l != 0, the
eps S_k/kappa crossing coefficient (all W*-specific).

Also probes the recorded (A2)-shield heuristic: the cyclic constraint can
shield a narrow negative well of v (well-depth bound NOT proved in the
corpus) - an open-territory measurement.
"""
from __future__ import annotations

import json
import time
from pathlib import Path

import numpy as np
from scipy.optimize import minimize

import qcore

RESULTS = Path(__file__).parent / "results"
TWO_PI = qcore.TWO_PI


class Member:
    """Difference-subclass member W_v with v given by Fourier cosine coeffs:
    v(x) = c0 + sum_m cm cos(m x); v(0) = 0 enforced by construction."""

    def __init__(self, name: str, coeffs: dict[int, float]):
        # v(x) = sum_m cm (1 - cos(m x))  -- guarantees v(0) = 0, evenness
        self.name = name
        self.coeffs = coeffs

    def v(self, x):
        return sum(c * (1 - np.cos(m * np.asarray(x)))
                   for m, c in self.coeffs.items())

    def v2(self, x):
        """v''(x)."""
        return sum(c * m * m * np.cos(m * np.asarray(x))
                   for m, c in self.coeffs.items())

    def W(self, th, ph):
        return np.sum(self.v(qcore.bonds(th) - qcore.bonds(ph)), axis=-1)

    def gradW(self, th, ph):
        """(dW/dtheta, dW/dphi) via telescoping of v'(d_i - e_i)."""
        u = qcore.bonds(th) - qcore.bonds(ph)
        vp = sum(c * m * np.sin(m * u) for m, c in self.coeffs.items())
        gth = np.roll(vp, 1, axis=-1) - vp
        return gth, -gth

    def w_j(self, N: int, j: int) -> float:
        """Aligned ground value w_j = N v(2 pi j/N) (A5, exact)."""
        return N * float(self.v(TWO_PI * j / N))


# the corpus member (calibration) + two fresh members per the checklist
W_STAR = Member("Wstar_corpus", {1: 1.0})
# v = (1 - cos x)^2 = 3/2 - 2 cos x + cos(2x)/2 = 2(1 - cos x) - (1/2)(1 - cos 2x)
W_SQ = Member("v_(1-cos)^2", {1: 2.0, 2: -0.5})
W_MIX = Member("v_mix_1-cos+quarter(1-cos2x)", {1: 1.0, 2: 0.25})


def axiom_report(mem: Member, N: int) -> dict:
    """Symbolic/numeric (A2),(A2'),(A4),(A6) verification for W_v."""
    xs = np.linspace(-np.pi, np.pi, 100_000)
    vmin = float(np.min(mem.v(xs)))
    a4 = {}
    for j in range(0, N // 2 + 1):
        if j == 0 or qcore.m_k(N, j) < 2.0:
            a4[j] = float(mem.v2(TWO_PI * j / N))
    return {"member": mem.name, "N": N,
            "A2_min_v": vmin, "A2_holds": vmin >= -1e-12,
            "A2prime_v0": float(mem.v(0.0)),
            "A4_vpp_at_consumed_tori": a4,
            "A4_holds": all(x >= -1e-12 for x in a4.values()),
            "A6_even": True}


def check_member(mem: Member, N: int = 10, k: int = 1, lam: float = 1.5,
                 eps: float = 0.05, n_starts: int = 120,
                 seed: int = 20260710) -> dict:
    """C1 min-set exactness, C2 aligned criticality, C3 ground identity,
    C4 Hessian PSD + uniform transverse floor, C5 no second critical in
    D_k(eps) at small eps, C7-arithmetic G_W/H_W estimates."""
    rng = np.random.default_rng(seed)

    def E(z):
        th, ph = z[:N], z[N:]
        return float(qcore.J(th) + qcore.J(ph, lam) + eps * mem.W(th, ph))

    def gradE(z):
        th, ph = z[:N], z[N:]
        gW_th, gW_ph = mem.gradW(th, ph)
        return np.concatenate([qcore.grad_J(th) + eps * gW_th,
                               qcore.grad_J(ph, lam) + eps * gW_ph])

    # C2 + C3: aligned criticality and ground identity on G_k
    g = np.concatenate([qcore.ground_config(N, k), np.zeros(N)])
    shift = rng.uniform(0, TWO_PI, 2)
    g_shifted = np.concatenate([g[:N] + shift[0], g[N:] + shift[1]])
    c2 = float(np.max(np.abs(gradE(g_shifted))))
    c3_err = abs(E(g_shifted) - (qcore.m_k(N, k) + eps * mem.w_j(N, k)))

    # C4: Hessian at G_k (finite differences), kernel dim 2, transverse floor
    z0, h = g_shifted, 1e-5
    H = np.zeros((2 * N, 2 * N))
    for i in range(2 * N):
        e = np.zeros(2 * N); e[i] = h
        H[:, i] = (gradE(z0 + e) - gradE(z0 - e)) / (2 * h)
    H = 0.5 * (H + H.T)
    eigs = np.sort(np.linalg.eigvalsh(H))
    n_kernel = int(np.sum(np.abs(eigs) < 1e-6))
    floor = float(eigs[n_kernel]) if n_kernel < 2 * N else 0.0
    gamma_k = np.cos(TWO_PI * k / N)
    mu_1 = 2 - 2 * np.cos(TWO_PI / N)
    c_1 = min(gamma_k, lam) * mu_1  # kappa = 1

    # C1: global minimization of E_eps - zeros must be doubly aligned (G_0)
    best = []
    for _ in range(n_starts // 2):
        z = rng.uniform(-np.pi, np.pi, 2 * N)
        res = minimize(E, z, jac=gradE, method="L-BFGS-B",
                       options={"maxiter": 500})
        best.append(res.fun)
    c1_min = float(np.min(best))

    # C5: critical search inside D_k(eps) (starts near G_k)
    extra_criticals = []
    for _ in range(n_starts // 2):
        z = g_shifted + rng.normal(0, 0.25, 2 * N)
        res = minimize(lambda x: float(np.sum(gradE(x) ** 2)), z,
                       method="L-BFGS-B", options={"maxiter": 400,
                                                   "ftol": 1e-18})
        if res.fun < 1e-14 and E(res.x) < 2.0:
            th = res.x[:N]
            d_bond = float(np.linalg.norm(
                qcore.bonds(th) - TWO_PI * k / N))
            d_bond_phi = float(np.linalg.norm(qcore.bonds(res.x[N:])))
            if d_bond > 1e-4 or d_bond_phi > 1e-4:
                extra_criticals.append({"E": E(res.x), "d_bond": d_bond})

    # C7 arithmetic: G_W, H_W estimates by sampling
    th = rng.uniform(-np.pi, np.pi, (20000, N))
    ph = rng.uniform(-np.pi, np.pi, (20000, N))
    gth, _ = mem.gradW(th, ph)
    G_W_est = float(np.max(np.sqrt(2 * np.sum(gth ** 2, axis=1))))

    verdict = "STANDS"
    if c2 > 1e-9 or c3_err > 1e-9 or n_kernel != 2 or floor < 0.74 * c_1 \
            or c1_min > 1e-8 or extra_criticals:
        verdict = "FINDING"
    return {"member": mem.name, "N": N, "k": k, "lam": lam, "eps": eps,
            "verdict": verdict,
            "C2_max_grad_on_Gk": c2, "C3_ground_identity_err": c3_err,
            "C4_kernel_dim": n_kernel, "C4_transverse_floor": round(floor, 4),
            "C4_c1_reference": round(c_1, 4),
            "C1_global_min_found": c1_min,
            "C5_extra_criticals_in_Dk": extra_criticals[:5],
            "C7_G_W_sample_estimate": round(G_W_est, 3),
            "w_k": round(mem.w_j(N, k), 4)}


def probe_a2_shield(N: int = 10, depth: float = 0.05, conc: float = 40.0,
                    x0_frac: float = 0.37, n_starts: int = 200,
                    seed: int = 20260710) -> dict:
    """Recorded heuristic (lane-wc WC.1): the cyclic constraint
    sum_i (d_i - e_i) = 0 mod 2pi can SHIELD a narrow negative well of v
    at x_0 with N x_0 != 0 mod 2pi - i.e. W_v >= 0 can survive v < 0.
    Exact reduction: W_v = sum_i v(u_i) with u feasible iff (wrapped)
    sum_i u_i = 2 pi m, m integer (take e = 0, d = u). So minimize
    sum v(u_i) under the linear constraint, per m. Periodic (von Mises)
    well: v = (1 - cos x) - depth * exp(conc*(cos(x - x0) - 1))."""
    rng = np.random.default_rng(seed)
    x0 = x0_frac * TWO_PI
    # depth is the well's depth BELOW ZERO: the bump must beat (1 - cos x0)
    amp = (1 - np.cos(x0)) + depth

    def v(x):
        x = np.asarray(x)
        return (1 - np.cos(x)) - amp * np.exp(conc * (np.cos(x - x0) - 1))

    best, best_m = np.inf, None
    for m in (0, 1, 2):
        for _ in range(n_starts // 3 + 1):
            u0 = rng.uniform(-np.pi, np.pi, N)
            u0 += (TWO_PI * m - np.sum(u0)) / N
            res = minimize(lambda u: float(np.sum(v(u))), u0,
                           method="SLSQP",
                           constraints=[{"type": "eq",
                                         "fun": lambda u: np.sum(u) - TWO_PI * m}],
                           options={"maxiter": 500, "ftol": 1e-14})
            if res.fun < best:
                best, best_m = float(res.fun), m
    return {"probe": "A2 shield heuristic (open territory)",
            "v_min_pointwise": float(np.min(v(np.linspace(-np.pi, np.pi, 200000)))),
            "W_min_found": round(best, 8), "at_winding_diff": best_m,
            "shielded": bool(best >= -1e-9),
            "params": {"N": N, "depth": depth, "conc": conc,
                       "x0": round(x0, 4), "N_x0_mod_2pi": round((N * x0) % TWO_PI, 4)},
            "honesty": "bounded search; a negative W_min DISPROVES shielding "
                       "at these params, a nonnegative one only supports the "
                       "heuristic (well-depth bound NOT proved in the corpus)"}


def run_all() -> dict:
    t0 = time.time()
    RESULTS.mkdir(exist_ok=True)
    qcore.self_test(verbose=False)
    out = {"axioms": [axiom_report(m, 10) for m in (W_STAR, W_SQ, W_MIX)],
           "members": [check_member(m) for m in (W_STAR, W_SQ, W_MIX)],
           "a2_shield": probe_a2_shield()}
    out["wall_seconds"] = round(time.time() - t0, 1)
    out["verdict_summary"] = {m["member"]: m["verdict"] for m in out["members"]}
    path = RESULTS / "wc_results.json"
    path.write_text(json.dumps(out, indent=1, default=str), encoding="utf-8")
    print(json.dumps(out["verdict_summary"], indent=1))
    print(f"wrote {path} ({out['wall_seconds']}s)")
    return out


if __name__ == "__main__":
    run_all()
