"""PE.5(a) level-condition scan (2026-07-20, lead; design lane-prodexc v1.1).

Pure closed-form arithmetic - no simulation. Checks the lens-corrected
trap kernel condition over the admissible grid:

    m_k(kappa) + m_j(lambda)  >=  S_k(kappa) + c_H        (LEVEL)

for the flagship k = 1 and every candidate trap index j in 1..N-1,
over N in 10..200 and lambda/kappa in [1+, 4], using the sealed
closed forms (Gkj_level campaign #15; the c_H ledger, lane-lp):

    m_w(c)  = c N (1 - cos(2 pi w / N))          (ground level, coupling c)
    S_k     = kappa (2 + (N-2)(1 - cos a_k)),  a_k = (2k-1) pi/(N-2)
    c_H     = (1/4) min( m_k + 2 kappa - S_k,  4 kappa - S_k )

Only j with m_j(lambda) reachable BELOW the Delta_phi gate matter as
traps inside the excursion region; we scan ALL j (conservative) and
also report the sub-scan restricted to trap centers below the gate
m_k + 2 lambda (the reachable ones). eps term omitted: at j = k it
vanishes (Lean form 2 pi (k-j)/N) and generally it RAISES trap floors
(helps); omitting is conservative. Output: JSON + worst margins.
"""
import json
import math
from pathlib import Path

KAPPA = 1.0
K = 1
NS = list(range(10, 201))
LAMBDAS = [1.0001, 1.01, 1.05, 1.1, 1.2, 1.35, 1.5, 2.0, 3.0, 4.0]


def m(w, N, c):
    return c * N * (1 - math.cos(2 * math.pi * w / N))


def S(N, k=K, kap=KAPPA):
    a = (2 * k - 1) * math.pi / (N - 2)
    return kap * (2 + (N - 2) * (1 - math.cos(a)))


def cH(N, k=K, kap=KAPPA):
    return 0.25 * min(m(k, N, kap) + 2 * kap - S(N, k, kap),
                      4 * kap - S(N, k, kap))


rows = []
worst = None
for N in NS:
    Sk = S(N)
    ch = cH(N)
    mk = m(K, N, KAPPA)
    doorway = Sk + ch
    for lam in LAMBDAS:
        gate = mk + 2 * lam
        margins = []
        reach_margins = []
        for j in range(1, N):
            mj = m(j, N, lam)
            marg = (mk + mj) - doorway
            margins.append((marg, j))
            if mk + mj <= gate:  # trap center reachable below the gate
                reach_margins.append((marg, j))
        min_all = min(margins)
        min_reach = min(reach_margins) if reach_margins else None
        rows.append({"N": N, "lam": lam,
                     "min_margin_all_j": round(min_all[0], 6),
                     "argmin_j": min_all[1],
                     "min_margin_reachable_j": (round(min_reach[0], 6) if min_reach else None),
                     "argmin_reachable_j": (min_reach[1] if min_reach else None),
                     "n_reachable_traps": len(reach_margins)})
        if min_reach is not None and (worst is None or min_reach[0] < worst[0]):
            worst = (min_reach[0], N, lam, min_reach[1])

viol = [r for r in rows if r["min_margin_reachable_j"] is not None
        and r["min_margin_reachable_j"] < 0]
rec = {"kappa": KAPPA, "k": K, "N_range": [NS[0], NS[-1]],
       "lambdas": LAMBDAS,
       "condition": "m_k + m_j(lambda) >= S_k + c_H (LEVEL, PE.5(a))",
       "eps_term": "omitted (conservative: it raises trap floors; vanishes at j=k)",
       "n_cells": len(rows),
       "n_violations_reachable": len(viol),
       "worst_reachable": ({"margin": round(worst[0], 6), "N": worst[1],
                            "lam": worst[2], "j": worst[3]} if worst else None),
       "violations_sample": viol[:20]}
# --- row-true rescan (2026-07-21): the ROW threshold is floor >=
# S_k + c_H/2, a lower bar than the conservative doorway above.
# Folded into the generator per XM-R2 finding 8 (reproducibility).
rt_rows = []
rt_worst = None
RT_LAMBDAS = [1.0001, 1.05, 1.1, 1.2, 1.5, 2.0, 3.0, 4.0]
for N in NS:
    Sk = S(N); ch = cH(N); mk = m(K, N, KAPPA)
    for lam in RT_LAMBDAS:
        gate = mk + 2 * lam
        margs = [((mk + m(j, N, lam)) - Sk - ch / 2, j)
                 for j in range(1, N) if mk + m(j, N, lam) <= gate]
        if not margs:
            continue
        mn = min(margs)
        rt_rows.append((N, lam, mn[0], mn[1]))
        if rt_worst is None or mn[0] < rt_worst[2]:
            rt_worst = (N, lam, mn[0], mn[1])
rt_viol = [r for r in rt_rows if r[2] < 0]
rec["row_threshold_rescan_2026_07_21"] = {
 "condition": "m_k + m_j(lambda) - S_k >= c_H/2 (the ROW-true net-exponent threshold; the earlier scan used the CONSERVATIVE doorway S_k + c_H)",
 "n_violations": len(rt_viol), "n_cells": len(rt_rows),
 "first_failing_N_per_lambda": {str(lam): (sorted(r[0] for r in rt_viol if r[1] == lam)[0] if any(r[1] == lam for r in rt_viol) else None) for lam in RT_LAMBDAS},
 "worst": {"N": rt_worst[0], "lam": rt_worst[1], "margin": round(rt_worst[2], 4), "j": rt_worst[3]},
 "note": "the red-flag consequence is REFINED: the honest window is where THIS margin >= 0; the conservative doorway scan overstated the failing region"}

out = Path(__file__).parent / "results" / "pe5_level_scan.json"
out.write_text(json.dumps(rec, indent=1), encoding="utf-8")
print("cells:", len(rows), "| reachable-trap violations:", len(viol))
print("worst reachable margin:", rec["worst_reachable"])
for r in viol[:10]:
    print("VIOL", r)
print("written:", out.name)
