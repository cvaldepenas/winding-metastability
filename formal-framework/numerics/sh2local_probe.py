"""SH.2'-LOCAL v2 Stage-A probe (2026-07-19, lead).

Falsifies the design's core scalings BEFORE proof effort:
  (P1) ON-G tangential cost: from the equidistributed w=1 ground on
       T^N (N=10), the time-1 probability of tangential displacement
       >= s (T^N metric) should follow exp(-beta s^2/4) - the flat-BM
       prediction behind L1's O(h^2) hop cost.
  (P2) OFF-G start at transverse distance delta: total cost of
       (relax + displace s) bounded by C (delta^2 + s^2) - no
       delta-s cross-term blowup.
  (P3) transverse marginal at t=1 ~ Gibbs width ~ 1/sqrt(beta c_perp)
       (sanity: the corridor stays tight, corridor-factor honest).

Deterministic seed. Euler-Maruyama, dt = 0.005. Output: JSON record.
Honesty: a probe, not a proof; moderate-deviation window only
(beta s^2/4 <= ~5) - the deep-LDP tail is out of MC reach by design.
"""
import json
import time
from pathlib import Path

import numpy as np

N = 10
KAPPA = 1.0
DT = 0.005
T_END = 1.0
NPATH = 40000
SEED = 20260719
BETAS = [10.0, 20.0, 40.0]
S_VALUES = [0.4, 0.6, 0.8, 1.0, 1.2]
DELTAS = [0.0, 0.1, 0.2]

rng = np.random.default_rng(SEED)
theta_star = 2 * np.pi * np.arange(N) / N  # w = 1 equidistributed


def grad_J(theta):
    d = np.roll(theta, -1, axis=1) - theta
    s = np.sin(d)
    return KAPPA * (np.roll(s, 1, axis=1) - s)


def run(beta, delta):
    steps = int(T_END / DT)
    theta = np.tile(theta_star, (NPATH, 1))
    if delta > 0.0:
        v = rng.standard_normal(N)
        v -= v.mean()
        v /= np.linalg.norm(v)
        theta = theta + delta * v  # transverse offset, zero-sum
    sig = np.sqrt(2.0 / beta * DT)
    for _ in range(steps):
        theta = theta - grad_J(theta) * DT + sig * rng.standard_normal(theta.shape)
    disp = theta - theta_star
    m = disp.mean(axis=1)                      # tangential coordinate
    s_metric = np.abs(m) * np.sqrt(N)          # T^N-metric displacement
    trans = disp - m[:, None]                  # transverse part
    trans_norm = np.linalg.norm(trans, axis=1)
    return s_metric, trans_norm


record = {"seed": SEED, "N": N, "kappa": KAPPA, "dt": DT, "t_end": T_END,
          "npaths": NPATH, "betas": BETAS, "s_values": S_VALUES,
          "deltas": DELTAS, "P1": {}, "P2": {}, "P3": {},
          "prediction": "P(tangential >= s) ~ exp(-beta s^2/4)"}

t0 = time.time()
for beta in BETAS:
    s_metric, trans_norm = run(beta, 0.0)
    row = {}
    for s in S_VALUES:
        p = float((s_metric >= s).mean())
        pred = float(np.exp(-beta * s * s / 4.0))
        row[str(s)] = {"emp": p, "pred_flatBM": pred,
                       "rate_emp": (float(-np.log(p) / beta) if p > 0 else None),
                       "rate_pred": s * s / 4.0}
    record["P1"][str(beta)] = row
    record["P3"][str(beta)] = {"trans_rms": float(np.sqrt((trans_norm ** 2).mean())),
                               "gibbs_width_pred": float(np.sqrt((N - 1) / (beta * KAPPA * np.cos(2 * np.pi / N))))}

beta = 20.0
for delta in DELTAS:
    s_metric, trans_norm = run(beta, delta)
    row = {}
    for s in [0.6, 1.0]:
        p = float((s_metric >= s).mean())
        row[str(s)] = {"emp": p,
                       "rate_emp": (float(-np.log(p) / beta) if p > 0 else None)}
    record["P2"][f"delta={delta}"] = row

record["wall_seconds"] = round(time.time() - t0, 1)
out = Path(__file__).parent / "results" / "sh2local_probe_results.json"
out.write_text(json.dumps(record, indent=1), encoding="utf-8")
print(json.dumps(record["P1"], indent=1)[:1200])
print("P3:", json.dumps(record["P3"]))
print("P2:", json.dumps(record["P2"]))
print("written:", out.name, record["wall_seconds"], "s")
