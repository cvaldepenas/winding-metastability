"""L2-PRODUCT Stage-A probe (2026-07-20, lead; design input: [23] S C-D).

Falsifies the LP-MIN-MIG-specific inputs of the L2 orbit chain BEFORE
proof effort. The migration prescription runs the chain along the
PRODUCT ground G_1 = C_1^theta x C_0^phi (a flat T^2 orbit, diameter
pi sqrt(2N)) under the coupled energy E_eps. Load-bearing claims:

  (Q1) BOTH orbit directions are FLAT AT EVERY eps: W* depends only
       on bond differences, so global rotations of either factor are
       exact zero modes - the per-direction kick cost should be the
       flat-BM exp(-beta s^2/4) REGARDLESS of eps.
  (Q2) the 2-D orbit displacement (the chain's hop geometry on T^2)
       carries the same quadratic rate radially - no cross-direction
       tax.
  (Q3) tube-stay at the product ground is beta-benign (the transverse
       block is 2N-2 stable directions; no unstable mode here, so the
       kill factor should approach 1 fast).

Deterministic seed. Euler-Maruyama, dt = 0.005. Output: JSON record.
Honesty: a probe, not a proof; moderate-deviation window only. This
complements lz_kick_probe (the saddle-orbit L1-Z piece); together they
cover the two riskiest local ingredients of LP/LS-MIN-MIG.
"""
import json
import time
from pathlib import Path

import numpy as np

N = 10
KAPPA = 1.0
LAM = 1.3  # M2-PIN flavor: lambda > kappa
DT = 0.005
T_END = 1.0
NPATH = 40000
SEED = 20260721
BETAS = [10.0, 20.0, 40.0]
EPSES = [0.0, 0.1]
S_VALUES = [0.4, 0.6, 0.8, 1.0]
R_TUBE = 0.8

rng = np.random.default_rng(SEED)
theta_star = 2 * np.pi * np.arange(N) / N   # C_1 (w = 1)
phi_star = np.zeros(N)                       # C_0 (constants)


def grad_pair(th, ph, eps):
    dth = np.roll(th, -1, axis=1) - th
    dph = np.roll(ph, -1, axis=1) - ph
    sth = np.sin(dth)
    sph = np.sin(dph)
    u = np.sin(dth - dph)
    gW = np.roll(u, 1, axis=1) - u
    gth = KAPPA * (np.roll(sth, 1, axis=1) - sth) + eps * gW
    gph = LAM * (np.roll(sph, 1, axis=1) - sph) - eps * gW
    return gth, gph


def run(beta, eps):
    steps = int(T_END / DT)
    th = np.tile(theta_star, (NPATH, 1))
    ph = np.tile(phi_star, (NPATH, 1))
    sig = np.sqrt(2.0 / beta * DT)
    trans_max = np.zeros(NPATH)
    for _ in range(steps):
        gth, gph = grad_pair(th, ph, eps)
        th = th - gth * DT + sig * rng.standard_normal(th.shape)
        ph = ph - gph * DT + sig * rng.standard_normal(ph.shape)
        d1 = th - theta_star
        d2 = ph - phi_star
        m1 = d1.mean(axis=1)
        m2 = d2.mean(axis=1)
        tn = np.sqrt(np.linalg.norm(d1 - m1[:, None], axis=1) ** 2
                     + np.linalg.norm(d2 - m2[:, None], axis=1) ** 2)
        np.maximum(trans_max, tn, out=trans_max)
    d1 = th - theta_star
    d2 = ph - phi_star
    m1 = d1.mean(axis=1)
    m2 = d2.mean(axis=1)
    s_th = np.abs(m1) * np.sqrt(N)
    s_ph = np.abs(m2) * np.sqrt(N)
    s_tot = np.sqrt(s_th ** 2 + s_ph ** 2)
    return s_th, s_ph, s_tot, trans_max


record = {"seed": SEED, "N": N, "kappa": KAPPA, "lambda": LAM, "dt": DT,
          "t_end": T_END, "npaths": NPATH, "betas": BETAS, "epses": EPSES,
          "s_values": S_VALUES, "r_tube": R_TUBE,
          "design": "[23] S C-D: the L2 orbit chain on the product ground T^2",
          "cells": {}}

t0 = time.time()
for beta in BETAS:
    for eps in EPSES:
        s_th, s_ph, s_tot, trans_max = run(beta, eps)
        stay = trans_max <= R_TUBE
        cell = {"tube_stay": float(stay.mean())}
        for s in S_VALUES:
            p_th = float(((s_th >= s) & stay).mean())
            p_ph = float(((s_ph >= s) & stay).mean())
            p_2d = float(((s_tot >= s) & stay).mean())
            cell[str(s)] = {
                "theta_dir": {"emp": p_th,
                              "rate": (float(-np.log(p_th) / beta) if p_th > 0 else None)},
                "phi_dir": {"emp": p_ph,
                            "rate": (float(-np.log(p_ph) / beta) if p_ph > 0 else None)},
                "radial_2d": {"emp": p_2d,
                              "rate": (float(-np.log(p_2d) / beta) if p_2d > 0 else None)},
                "rate_pred_flatBM": s * s / 4.0}
        record["cells"][f"beta={beta},eps={eps}"] = cell

record["wall_seconds"] = round(time.time() - t0, 1)
out = Path(__file__).parent / "results" / "l2_product_probe_results.json"
out.write_text(json.dumps(record, indent=1), encoding="utf-8")
for key, cell in record["cells"].items():
    print(key, "stay", cell["tube_stay"],
          "| s=0.6 theta/phi/2d rates:",
          cell["0.6"]["theta_dir"]["rate"],
          cell["0.6"]["phi_dir"]["rate"],
          cell["0.6"]["radial_2d"]["rate"])
print("written:", out.name, record["wall_seconds"], "s")
