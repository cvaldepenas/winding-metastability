"""falsify — B2a optimization counterexample search (prioritized queue).

Order (attack-roadmap-v1 B2a): FIRST the displays gates v19/v20 make
load-bearing (PROD-SHELL margins, constants-ledger calibration, LP.1
band/floor feedstock, G_{k,j} level separations, W* bounds), THEN the
v16-v18 quantitative rows not machine-sealed (L_k rungs, RANGE, ridge
r-vacuity, S_1 <= 2.7 kappa, valley criticals), then STOP (P3: budget,
not exhaustion). Machine-sealed displays are NEVER re-checked as targets
(they appear only inside qcore.self_test as display-to-code anchors).

Every check returns a dict with:
  display     - the artifact row it implements (file + name)
  verdict     - "STANDS" (no counterexample found) / "FINDING" (triage!)
  ...numbers  - what was measured
Honesty: a STANDS verdict is bounded-search evidence, not proof; a FINDING
is a numeric event to re-verify by hand before any claim.
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


def admissible_pairs(N_max: int):
    """(N, k) with k >= 1, 1 <= k < N/2 (RANGE precondition), C1-SUB m_k < 2."""
    out = []
    for N in range(5, N_max + 1):
        for k in range(1, (N - 1) // 2 + 1):
            if qcore.m_k(N, k) < 2.0:
                out.append((N, k))
    return out


# ---------------------------------------------------------------- queue 1
def check_prod_shell(N_max: int = 2000) -> dict:
    """PROD-SHELL(N,k): S_k - m_k < 2 kappa.
    display: lane-lt Standing data (k=1 proved N>=5, prose; k>=2 TYPED
    per (N,k), NOT proved - this sweep MAPS the open row)."""
    worst_k1, k1_profile = -np.inf, {}
    fails, holds_k2plus = [], 0
    for N, k in admissible_pairs(N_max):
        gap = qcore.S_k(N, k) - qcore.m_k(N, k)
        if k == 1:
            worst_k1 = max(worst_k1, gap)
            if N in (10, 12, 20):
                k1_profile[N] = round(gap, 4)
        if gap >= 2.0:
            fails.append((N, k, round(gap, 4)))
        elif k >= 2:
            holds_k2plus += 1
    return {"display": "lane-lt PROD-SHELL: S_k - m_k < 2k",
            "verdict": "FINDING" if fails or worst_k1 >= 2.0 else "STANDS",
            "k1_gap_at_N_10_12_20": k1_profile,
            "k1_sup_gap_to_Nmax": round(worst_k1, 6),
            "k2plus_admissible_checked": holds_k2plus,
            "violations": fails[:20],
            "note": "k=1 reference values artifact records 0.70/0.882/1.295; "
                    "k>=2 row is TYPED (open) - this sweep is its first map"}


def check_cH_ledger(Ns=(10, 12, 20, 50, 100)) -> dict:
    """c_H = (1/4) min(m_k + 2k - S_k, 4k - S_k) > 0, k=1; and the
    S_1 <= 2.7 kappa < 4 kappa display (lane-ls LS.6(b) level arithmetic,
    prose; consumed by v18's c_H ledger)."""
    rows, bad = {}, []
    sup_S1 = -np.inf
    for N in range(10, 2001):
        S1 = qcore.S_k(N, 1)
        sup_S1 = max(sup_S1, S1)
    for N in Ns:
        m, S = qcore.m_k(N, 1), qcore.S_k(N, 1)
        e1, e2 = m + 2 - S, 4 - S
        cH = 0.25 * min(e1, e2)
        rows[N] = {"m_1": round(m, 4), "S_1": round(S, 4),
                   "c_H": round(cH, 4), "entry_shell": round(e1, 4),
                   "entry_4k": round(e2, 4)}
        if cH <= 0:
            bad.append(N)
    return {"display": "lane-lp constants ledger c_H + lane-ls S_1<=2.7<4",
            "verdict": "FINDING" if bad or sup_S1 > 2.7 else "STANDS",
            "rows": rows, "sup_S1_over_N_10_2000": round(sup_S1, 6),
            "violations": bad}


def _hess_theta(N: int, k: int, kappa: float = 1.0) -> np.ndarray:
    """Angle-space Hessian of J at SP_k: B^T diag(kappa cos d_i) B,
    d = bond profile of SP_k, B the cyclic incidence matrix."""
    d = np.full(N, qcore.a_k(N, k))
    d[0] = np.pi - qcore.a_k(N, k)
    B = -np.eye(N) + np.roll(np.eye(N), -1, axis=1)  # (B x)_i = x_{i+1}-x_i
    return B.T @ np.diag(kappa * np.cos(d)) @ B, B


def check_transversal_hessian(Ns=(10, 12, 20), lam: float = 1.0) -> dict:
    """Constants-ledger calibration at Z = SP_k x C_0 (k=1): lambda_u,
    Lambda_s, Lambda_min, inertia of the theta-block, c_1 = (B v_u)_1,
    C_fr, slice-tangent alignment.
    display: lane-lp constants ledger + recorded numerics lambda_u
    1.23-1.31 / Lambda_s 3.6-3.9 / Lambda_min 0.35/0.25/0.10 /
    c_1 ~ 1.333 / C_fr <= 0.30/0.28/0.21 / alignment 0.943/0.934/0.918."""
    out, findings = {}, []
    for N in Ns:
        Hth, B = _hess_theta(N, 1)
        Hph = lam * (B.T @ B)  # phi-factor at C_0 (cos 0 = 1)
        ones = np.ones(N) / np.sqrt(N)
        # transversal complement of the rotation direction, per factor
        P = np.eye(N) - np.outer(ones, ones)
        # eigen-decompose each factor on the complement
        wth, vth = np.linalg.eigh(P @ Hth @ P)
        wph, _ = np.linalg.eigh(P @ Hph @ P)
        # drop the (near-)zero rotation eigenvalue of each factor
        wth_s = np.sort(wth)
        wph_s = np.sort(wph)
        # theta block: remove one ~0 (rotation); phi block: remove one ~0
        wth_t = np.delete(wth_s, np.argmin(np.abs(wth_s)))
        wph_t = np.delete(wph_s, np.argmin(np.abs(wph_s)))
        allw = np.concatenate([wth_t, wph_t])
        lambda_u = -np.min(allw)              # unstable floor (one negative)
        Lambda_s = np.max(np.abs(allw))       # transversal norm ceiling
        pos = allw[allw > 1e-12]
        Lambda_min = np.min(pos)
        n_neg = int(np.sum(wth_t < -1e-9))
        inertia = (int(np.sum(wth_t > 1e-9)), n_neg)
        # unstable eigenvector, first-bond increment
        v_u = vth[:, np.argmin(wth)]
        c_1 = abs((B @ v_u)[0])
        # C_fr: first-bond increment over the theta STABLE block, in BOTH
        # conventions (the display |<b_s,s>| <= C_fr|s| needs the NORM;
        # the artifact's recorded 0.30/0.28/0.21 look like per-eigenvector)
        stable_idx = np.flatnonzero(wth > 1e-9)
        Vs = vth[:, stable_idx]
        g = (B @ Vs)[0, :]                    # first-bond row on stable block
        C_fr = float(np.linalg.norm(g))       # max over unit combos = |row|
        C_fr_per_eig = float(np.max(np.abs(g)))
        # Lambda_s in both scopes: full transversal vs theta-block only
        Lambda_s_theta = float(np.max(np.abs(wth_t)))
        # slice tangent (v16 slice x(m)): bond direction (1, -1/(N-1), ...)
        t_b = np.full(N, -1.0 / (N - 1)); t_b[0] = 1.0
        u_b = B @ v_u
        align = abs(t_b @ u_b) / (np.linalg.norm(t_b) * np.linalg.norm(u_b))
        gamma_c = min(0.5, np.sqrt(lambda_u / (4 * Lambda_s)),
                      c_1 / (2 * C_fr))
        out[N] = {"lambda_u": round(float(lambda_u), 4),
                  "Lambda_s_full": round(float(Lambda_s), 4),
                  "Lambda_s_theta_only": round(Lambda_s_theta, 4),
                  "Lambda_min": round(float(Lambda_min), 4),
                  "theta_inertia_pos_neg": inertia,
                  "c_1": round(float(c_1), 4),
                  "C_fr_norm": round(C_fr, 4),
                  "C_fr_per_eigvec": round(C_fr_per_eig, 4),
                  "gamma_c_from_full": round(float(gamma_c), 4),
                  "slice_alignment": round(float(align), 4)}
        if n_neg != 1 or c_1 < 1e-9:
            findings.append(("structure", N))
        if Lambda_s > 3.95 or C_fr > 0.35:
            findings.append(("reference-value drift", N))
    return {"display": "lane-lp constants ledger (recorded numerics)",
            "verdict": "FINDING" if findings else "STANDS",
            "rows": out,
            "reference": {"lambda_u": "1.23-1.31", "Lambda_s": "3.6-3.9",
                          "Lambda_min": "0.35/0.25/0.10", "c_1": "~1.333",
                          "C_fr": "<=0.30/0.28/0.21",
                          "alignment": "0.943/0.934/0.918",
                          "gamma_c": "~0.29"},
            "violations": findings,
            "finding_note": "structure findings (inertia/c_1) break proofs; "
                    "reference-value drift findings mean the artifact's "
                    "RECORDED SUPPORTING numbers need correction (Lambda_s "
                    "full-transversal tops at 4.0 lam via the phi-block "
                    "N/2 mode at even N - the 3.6-3.9 range looks "
                    "theta-only; C_fr as the NORM the display consumes is "
                    "~0.47, the recorded 0.30 looks per-eigenvector). The "
                    "ledger is SYMBOLIC and minima-composed; no proof "
                    "consumes the recorded numbers - correction is to the "
                    "reference lines only. gamma_c from full conventions "
                    "~0.277 vs recorded ~0.29."}


def _dist_to_orbit(theta: np.ndarray, ref: np.ndarray, n_grid: int = 720):
    """Max-norm distance from theta to the rotation orbit of ref (1D scan)."""
    shifts = np.linspace(-np.pi, np.pi, n_grid, endpoint=False)
    diffs = qcore.wrap_angle(theta[None, :] - ref[None, :] - shifts[:, None])
    return float(np.min(np.max(np.abs(diffs), axis=1)))


def check_lp1_band_floor(N: int = 10, k: int = 1, lam: float = 1.0,
                         n_samples: int = 4000, radii=(0.05, 0.1, 0.2, 0.3),
                         seed: int = 20260710) -> dict:
    """LP.1 (i)/(ii)/(iii) feedstock: estimate C_Z (band), c_Z (floor),
    C'_Z (upper) on max-norm tubes around Z = SP_k x C_0.
    display: lane-lp LP.1 - THE unsealed quantitative input of v18
    (the sealed tube trick takes the band as hypothesis)."""
    rng = np.random.default_rng(seed)
    sp, c0 = qcore.saddle_config(N, k), np.zeros(N)
    S = qcore.S_k(N, k)
    rows = []
    worst_ratio_min = np.inf
    for r in radii:
        band_max, floor_min, upper_max = -np.inf, np.inf, -np.inf
        for _ in range(n_samples // len(radii)):
            th = sp + rng.uniform(-r, r, N)
            ph = c0 + rng.uniform(-r, r, N)
            dist = max(_dist_to_orbit(th, sp), _dist_to_orbit(ph, c0))
            if dist < 1e-4 or dist > r:
                continue
            E0 = qcore.J(th) + qcore.J(ph, lam)
            g = np.concatenate([qcore.grad_J(th), qcore.grad_J(ph, lam)])
            gn = np.linalg.norm(g)
            band_max = max(band_max, abs(E0 - S) / dist ** 2)
            floor_min = min(floor_min, gn / dist)
            upper_max = max(upper_max, gn / dist)
        rows.append({"r": r, "C_Z_est_max": round(band_max, 3),
                     "c_Z_est_min": round(floor_min, 3),
                     "Cp_Z_est_max": round(upper_max, 3)})
        worst_ratio_min = min(worst_ratio_min, floor_min)
    return {"display": "lane-lp LP.1 band/floor/upper (Morse-Bott feedstock)",
            "verdict": "FINDING" if worst_ratio_min < 1e-3 else "STANDS",
            "N": N, "k": k, "rows": rows,
            "note": "c_Z floor must stay bounded away from 0 as r shrinks; "
                    "C_Z finite = the band's r^2 scaling"}


def check_wstar_bounds(N: int = 10, n_samples: int = 200_000,
                       seed: int = 20260710) -> dict:
    """sup W* <= 2N and sup |grad W*| <= 2 sqrt(2N); W* slice identity
    W*(theta, C_0) = J_kappa(theta)/kappa.
    display: lane-lp M2P Standing Data / WC (A5); LP.5 W*-cost identity."""
    rng = np.random.default_rng(seed)
    th = rng.uniform(-np.pi, np.pi, (n_samples, N))
    ph = rng.uniform(-np.pi, np.pi, (n_samples, N))
    d, e = qcore.bonds(th), qcore.bonds(ph)
    W = np.sum(1 - np.cos(d - e), axis=1)
    # grad wrt (theta, phi): telescoping sin differences
    s = np.sin(d - e)
    gth = np.roll(s, 1, axis=1) - s
    gnorm = np.sqrt(np.sum(gth ** 2, axis=1) * 2)  # phi-grad = -theta-grad
    # slice identity
    ident_err = float(np.max(np.abs(
        np.sum(1 - np.cos(d), axis=1) - qcore.J(th))))
    ok = (np.max(W) <= 2 * N + 1e-9 and
          np.max(gnorm) <= 2 * np.sqrt(2 * N) + 1e-9 and ident_err < 1e-9)
    return {"display": "lane-lp W* bounds + W*-cost slice identity",
            "verdict": "STANDS" if ok else "FINDING",
            "sup_W_found": round(float(np.max(W)), 4), "bound_2N": 2 * N,
            "sup_gradW_found": round(float(np.max(gnorm)), 4),
            "bound_2sqrt2N": round(2 * np.sqrt(2 * N), 4),
            "slice_identity_max_err": ident_err}


def check_Gkj_levels(N: int = 10, k: int = 1, lams=(1.0, 1.5, 2.0)) -> dict:
    """G_{k,j} = C_k x C_j^phi pinning-tori levels m_k(kappa) + m_j(N,lam)
    vs the band top S_k + c_H and the doorway ledger.
    display: lane-lp LP.4 scoping + ROW PROD-EXCURSION trap census."""
    m, S = qcore.m_k(N, k), qcore.S_k(N, k)
    cH = 0.25 * min(m + 2 - S, 4 - S)
    rows = []
    for lam in lams:
        for j in range(1, N // 2 + 1):
            lvl = m + N * lam * (1 - np.cos(TWO_PI * j / N))
            rows.append({"j": j, "lam": lam, "level": round(lvl, 4),
                         "in_band": bool(S - 0.1 <= lvl <= S + cH),
                         "above_band": bool(lvl > S + cH)})
    return {"display": "lane-lp G_{k,j} level separations (trap census)",
            "verdict": "STANDS",
            "N": N, "k": k, "S_k": round(S, 4), "band_top": round(S + cH, 4),
            "rows": rows,
            "note": "census only - the tori are REAL criticals (the reason "
                    "the probability-floor row is false); the SDE probe "
                    "measures whether the expected-time form survives them"}


# ---------------------------------------------------------------- queue 2
def check_ladder_Lk(N_max: int = 2000) -> dict:
    """2 kappa < L_k < S_k (the UNSEALED middle rungs), L_k =
    kappa[2 + (N-1)(1 - cos b_k)], b_k = (2 pi k - pi)/(N - 1); plus the
    slice family's single-interior-stationary-point claim at k=1, N=10.
    display: lane-ls LS.1 (prose portion)."""
    fails = []
    for N, k in admissible_pairs(N_max):
        b = (TWO_PI * k - np.pi) / (N - 1)
        L = 2 + (N - 1) * (1 - np.cos(b))
        if not (2.0 < L < qcore.S_k(N, k)):
            fails.append((N, k, round(L, 4), round(qcore.S_k(N, k), 4)))
    # stationary scan of f(m) on the OPEN interior (the left endpoint
    # m = 2 pi k/N is itself stationary - that is C_k, not interior)
    N, k = 10, 1
    ms = np.linspace(TWO_PI * k / N + 0.01, np.pi - 1e-9, 20000)
    fp = np.sin(ms) - np.sin((TWO_PI * k - ms) / (N - 1))
    signflips = int(np.sum(np.diff(np.sign(fp)) != 0))
    return {"display": "lane-ls LS.1 middle rungs 2k < L_k < S_k (prose)",
            "verdict": "FINDING" if fails or signflips != 1 else "STANDS",
            "violations": fails[:20],
            "slice_interior_stationary_points_N10": signflips}


def check_range_row(N_max: int = 2000) -> dict:
    """RANGE(N,k): 2 pi k/N < pi - a_k over admissible pairs.
    display: lane-ls Standing data (prose arithmetic)."""
    fails = [(N, k) for N, k in admissible_pairs(N_max)
             if TWO_PI * k / N >= np.pi - qcore.a_k(N, k)]
    return {"display": "lane-ls ROW RANGE(N,k) (prose)",
            "verdict": "FINDING" if fails else "STANDS",
            "violations": fails[:20]}


def check_ridge_r_vacuity(N_max: int = 2000) -> dict:
    """C1-SUB => r <= 3/4 (the vacuity argument keeping the sealed ridge
    law's hypothesis discharged): max over admissible (N,k) of
    r_max = 2 pi k / N.  display: lane-ls LS.2 minimization step (prose)."""
    worst = max(TWO_PI * k / N for N, k in admissible_pairs(N_max))
    return {"display": "lane-ls C1-SUB => r<=3/4 vacuity (prose)",
            "verdict": "FINDING" if worst > 0.75 else "STANDS",
            "max_residual_mean_bound": round(worst, 6), "threshold": 0.75}


def check_valley_criticals(N: int = 10, k: int = 1, eps_lvl: float = 0.05,
                           n_starts: int = 300, seed: int = 20260710) -> dict:
    """Search for critical points of J in the theta-valley
    V = {w = k, J < S_k - eps, M_abs > pi - a_k} (LS.2c(a): none exist).
    Multistart minimization of |grad J|^2 from valley samples.
    display: lane-ls LS.2c (prose)."""
    rng = np.random.default_rng(seed)
    S, ak = qcore.S_k(N, k), qcore.a_k(N, k)
    hits = []
    found_valley = 0
    for _ in range(n_starts):
        # valley-ish start: saddle config with the hot bond pushed outward
        d = np.full(N, ak)
        d[0] = np.pi - rng.uniform(0.02, 0.25)  # past pi - a_k, off Delta
        d[1:] += (TWO_PI * k - np.sum(d)) / (N - 1)  # restore winding sum
        th = np.concatenate([[0.0], np.cumsum(d[:-1])])
        th += rng.normal(0, 0.15, N)
        res = minimize(lambda x: float(np.sum(qcore.grad_J(x) ** 2)), th,
                       method="L-BFGS-B",
                       options={"maxiter": 400, "ftol": 1e-16})
        x = res.x
        Jx, w = float(qcore.J(x)), round(float(qcore.winding(x)))
        Mabs = float(np.max(np.abs(qcore.bonds(x))))
        in_V = (w == k and Jx < S - eps_lvl and Mabs > np.pi - ak
                and qcore.min_gap_to_antipode(x) > 1e-4)
        if in_V:
            found_valley += 1
            if res.fun < 1e-12:
                hits.append({"J": Jx, "M_abs": Mabs, "grad2": res.fun})
    return {"display": "lane-ls LS.2c valley has no criticals (prose)",
            "verdict": "FINDING" if hits else "STANDS",
            "n_starts": n_starts, "descents_ending_in_valley": found_valley,
            "critical_hits_in_valley": hits[:5],
            "note": "bounded multistart |grad|^2 minimization; descents "
                    "ending in V with grad ~ 0 would be counterexamples"}


def check_shell_floor(N: int = 10, k: int = 1, lam: float = 1.0,
                      n_starts: int = 200, seed: int = 20260710) -> dict:
    """c_shell > 0 probe: minimize |grad E_0| over the shell
    {E_0 <= S_k + c_H, w_theta = k, w_phi = 0} minus the two excised tubes
    (LP.1' K_all). Product-space multistart.
    display: lane-lp LP.1' (prose)."""
    rng = np.random.default_rng(seed)
    m, S = qcore.m_k(N, k), qcore.S_k(N, k)
    cH = 0.25 * min(m + 2 - S, 4 - S)
    c0, g0 = np.zeros(N), qcore.ground_config(N, k)
    # FINDING (B2a 2026-07-10): the saddle critical set at level S_k is N
    # isometric circles (hot bond at each slot); Z's ROTATION orbit is one
    # of them. K_all must excise the UNION over the cyclic relabeling
    # copies or c_shell = 0 (the probe found SP_k-with-hot-bond-2 x C_0 at
    # grad ~ 3e-6). We test the REPAIRED statement:
    sps = [qcore.saddle_config(N, k, hot_bond=j) for j in range(N)]
    r_tube, r_ground = 0.25, 0.35  # generous excision radii for the probe

    def grad2(z):
        th, ph = z[:N], z[N:]
        g = np.concatenate([qcore.grad_J(th), qcore.grad_J(ph, lam)])
        return float(np.sum(g ** 2))

    best_in_shell = np.inf
    hits = []
    for _ in range(n_starts):
        th = g0 + rng.normal(0, 0.5, N)
        ph = rng.normal(0, 0.4, N)
        res = minimize(grad2, np.concatenate([th, ph]), method="L-BFGS-B",
                       options={"maxiter": 300, "ftol": 1e-16})
        th, ph = res.x[:N], res.x[N:]
        E0 = float(qcore.J(th) + qcore.J(ph, lam))
        wt = round(float(qcore.winding(th)))
        wp = round(float(qcore.winding(ph)))
        in_sector = (wt == k and wp == 0)
        d_saddle = min(max(_dist_to_orbit(th, sp), _dist_to_orbit(ph, c0))
                       for sp in sps)
        off_tubes = (d_saddle > r_tube
                     and not (_dist_to_orbit(th, g0) < r_ground and E0 < 2.0))
        if in_sector and E0 <= S + cH and off_tubes:
            gn = np.sqrt(res.fun)
            best_in_shell = min(best_in_shell, gn)
            if gn < 1e-6:
                hits.append({"E0": E0, "grad": gn,
                             "d_theta_to_SP_union": d_saddle,
                             "d_theta_to_C": _dist_to_orbit(th, g0)})
    return {"display": "lane-lp LP.1' c_shell > 0 (prose)",
            "verdict": "FINDING" if hits else "STANDS",
            "n_starts": n_starts,
            "min_grad_found_in_shell": (round(best_in_shell, 6)
                                        if np.isfinite(best_in_shell) else None),
            "critical_hits_in_shell": hits[:5],
            "note": "tests the REPAIRED K_all (saddle tube = UNION over the "
                    "N cyclic relabeling copies of Z). AS LITERALLY STATED "
                    "(one T^2 orbit excised) c_shell = 0: the probe found "
                    "SP_k(hot bond 2) x C_0 at grad ~ 3e-6, level S_k, "
                    "inside the shell - a STATEMENT finding with a "
                    "by-symmetry repair (all constants unchanged)"}


def run_all() -> dict:
    t0 = time.time()
    RESULTS.mkdir(exist_ok=True)
    qcore.self_test(verbose=False)
    out = {
        # queue 1: v19/v20 load-bearing
        "prod_shell": check_prod_shell(),
        "cH_ledger": check_cH_ledger(),
        "hessian_calibration": check_transversal_hessian(),
        "lp1_band_floor": check_lp1_band_floor(),
        "wstar": check_wstar_bounds(),
        "Gkj_levels": check_Gkj_levels(),
        # queue 2: unsealed v16-v18 rows
        "ladder_Lk": check_ladder_Lk(),
        "range_row": check_range_row(),
        "ridge_r_vacuity": check_ridge_r_vacuity(),
        "valley_criticals": check_valley_criticals(),
        "shell_floor": check_shell_floor(),
    }
    out["wall_seconds"] = round(time.time() - t0, 1)
    out["verdict_summary"] = {k: v["verdict"] for k, v in out.items()
                              if isinstance(v, dict) and "verdict" in v}
    path = RESULTS / "falsify_results.json"
    path.write_text(json.dumps(out, indent=1, default=str), encoding="utf-8")
    print(json.dumps(out["verdict_summary"], indent=1))
    print(f"wrote {path} ({out['wall_seconds']}s)")
    return out


if __name__ == "__main__":
    run_all()
