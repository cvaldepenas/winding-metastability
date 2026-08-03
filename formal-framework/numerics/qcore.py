"""qcore — shared geometry/energy core for the B2 numerics harness.

DISPLAY-TO-CODE CORRESPONDENCE (the harness's foundation; every function
names the display it implements):
  bonds        d_i = wrap(theta_{i+1} - theta_i) into (-pi, pi]   [T1 model]
  J            J(theta) = kappa * sum_i (1 - cos d_i)             [lean/LaneCT1.lean J]
  winding      w = (1/2pi) sum_i d_i (integer off Delta)          [T1.1(i)]
  m_k          N kappa (1 - cos(2 pi k / N))                      [lean/LabelTowerCore.lean groundLevel]
  a_k          (2 pi k - pi)/(N - 2)                              [saddleParam]
  S_k          kappa (2 + (N-2)(1 - cos a_k))                     [saddleLevel]
  phi_k        kappa[(1-cos m) + (N-1)(1 - cos((2 pi k - m)/(N-1)))]  [ridgeEnv]
  grad_J       dJ/dtheta_i = kappa (sin d_{i-1} - sin d_i)        [dE / hasFDerivAt_E]

FIREWALL: this module exists to give the falsifier and the SDE harness a
single, self-validated implementation. Its self-test cross-checks the code
against MACHINE-SEALED facts (Lean, sorry-free) — that validates the CODE
(display-to-code correspondence), it does not and cannot re-derive the
theorems. Numerics never confer assurance rungs.
"""
from __future__ import annotations

import numpy as np

TWO_PI = 2.0 * np.pi


def wrap_angle(x: np.ndarray | float) -> np.ndarray | float:
    """Wrap to the representative in (-pi, pi] (the T1 model's toReal)."""
    return -((-np.asarray(x) + np.pi) % TWO_PI - np.pi)


def bonds(theta: np.ndarray) -> np.ndarray:
    """d_i = wrap(theta_{i+1} - theta_i), cyclic indexing (Fin N addition)."""
    return wrap_angle(np.roll(theta, -1, axis=-1) - theta)


def J(theta: np.ndarray, kappa: float = 1.0) -> np.ndarray | float:
    """Loop energy J = kappa sum (1 - cos d_i)."""
    return kappa * np.sum(1.0 - np.cos(bonds(theta)), axis=-1)


def J_of_bonds(d: np.ndarray, kappa: float = 1.0) -> np.ndarray | float:
    """Bond-space energy E kappa d (LabelTowerCore.E)."""
    return kappa * np.sum(1.0 - np.cos(d), axis=-1)


def winding(theta: np.ndarray) -> np.ndarray | float:
    """w = (1/2pi) sum d_i. Integer-valued off Delta (T1.1(i))."""
    return np.sum(bonds(theta), axis=-1) / TWO_PI


def grad_J(theta: np.ndarray, kappa: float = 1.0) -> np.ndarray:
    """dJ/dtheta_i = kappa (sin d_{i-1} - sin d_i)."""
    d = bonds(theta)
    s = np.sin(d)
    return kappa * (np.roll(s, 1, axis=-1) - s)


def min_gap_to_antipode(theta: np.ndarray) -> np.ndarray | float:
    """min_i (pi - |d_i|): distance of the nearest bond to the antipode.
    > 0 iff the configuration is off Delta."""
    return np.min(np.pi - np.abs(bonds(theta)), axis=-1)


# ---- label-tower arithmetic (kappa-normalized displays) --------------------

def m_k(N: int, k: int, kappa: float = 1.0) -> float:
    """Ground level m_k = N kappa (1 - cos(2 pi k / N))  [groundLevel]."""
    return N * kappa * (1.0 - np.cos(TWO_PI * k / N))


def a_k(N: int, k: int) -> float:
    """One-bond saddle parameter a_k = (2 pi k - pi)/(N - 2)  [saddleParam]."""
    return (TWO_PI * k - np.pi) / (N - 2)


def S_k(N: int, k: int, kappa: float = 1.0) -> float:
    """Saddle level S_k = kappa (2 + (N-2)(1 - cos a_k))  [saddleLevel]."""
    return kappa * (2.0 + (N - 2) * (1.0 - np.cos(a_k(N, k))))


def phi_k(m: np.ndarray | float, N: int, k: int, kappa: float = 1.0):
    """Ridge envelope phi_k(m)  [ridgeEnv]."""
    m = np.asarray(m, dtype=float)
    return kappa * ((1.0 - np.cos(m))
                    + (N - 1) * (1.0 - np.cos((TWO_PI * k - m) / (N - 1))))


def ground_config(N: int, k: int) -> np.ndarray:
    """The equidistributed winding-k configuration (bonds all 2 pi k / N)."""
    return (TWO_PI * k / N) * np.arange(N)


def saddle_config(N: int, k: int, hot_bond: int = 0) -> np.ndarray:
    """SP_k: one bond at pi - a_k, the rest at a_k (winding k)."""
    d = np.full(N, a_k(N, k))
    d[hot_bond] = np.pi - a_k(N, k)
    theta = np.concatenate([[0.0], np.cumsum(d[:-1])])
    return theta


def dist_to_ground_circle(theta: np.ndarray, k: int) -> float:
    """l2 distance of the BOND vector to the ground circle C_k's bond vector
    (rotation-invariant: C_k has constant bonds)."""
    d = bonds(theta)
    return float(np.linalg.norm(d - TWO_PI * k / len(d)))


# ---- self-test: display-to-code correspondence vs machine-sealed facts ----

def self_test(verbose: bool = True) -> None:
    rng = np.random.default_rng(20260710)
    # C1-SUB sharp endpoints (Lean: groundLevel_* , campaigns #2/#6)
    assert m_k(10, 1) < 2.0 < m_k(9, 1)
    assert m_k(40, 2) < 2.0 < m_k(39, 2)
    assert m_k(89, 3) < 2.0 < m_k(88, 3)
    # ladder upper rung 2 kappa < S_k (saddleLevel_gt_two_kappa)
    for N, k in [(10, 1), (40, 2), (89, 3), (200, 1)]:
        assert 2.0 < S_k(N, k)
    # saddle identity phi_k(pi - a_k) = S_k (ridgeEnv_at_saddle)
    for N, k in [(10, 1), (40, 2), (89, 3)]:
        assert abs(phi_k(np.pi - a_k(N, k), N, k) - S_k(N, k)) < 1e-12
    # energy/winding of the canonical configs
    for N, k in [(10, 1), (40, 2)]:
        g, s = ground_config(N, k), saddle_config(N, k)
        assert abs(J(g) - m_k(N, k)) < 1e-12
        assert abs(J(s) - S_k(N, k)) < 1e-12
        assert abs(winding(g) - k) < 1e-12
        assert abs(winding(s) - k) < 1e-12
    # gradient vanishes at ground and saddle (P0.1 criticality), and matches
    # finite differences at random points
    for N, k in [(10, 1), (40, 2)]:
        assert np.max(np.abs(grad_J(ground_config(N, k)))) < 1e-12
        assert np.max(np.abs(grad_J(saddle_config(N, k)))) < 1e-12
    theta = rng.uniform(-np.pi, np.pi, size=12)
    eps = 1e-6
    for i in range(12):
        e = np.zeros(12)
        e[i] = eps
        fd = (J(theta + e) - J(theta - e)) / (2 * eps)
        assert abs(fd - grad_J(theta)[i]) < 1e-6
    # winding integer off Delta on random samples
    th = rng.uniform(-np.pi, np.pi, size=(1000, 15))
    off = min_gap_to_antipode(th) > 1e-6
    w = winding(th[off])
    assert np.max(np.abs(w - np.round(w))) < 1e-9
    if verbose:
        print("qcore self-test PASS (display-to-code correspondence verified "
              "against machine-sealed anchors)")


if __name__ == "__main__":
    self_test()
