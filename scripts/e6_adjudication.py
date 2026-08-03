"""E6 LEAD ADJUDICATION LAYER (2026-08-02) -- runs BESIDE e6_instantiation.py,
never instead of it. The design-point run (eps = 0.05) is the record; this
layer verifies the LEAD-ADJUDICATED instantiation point eps = 0.045 against
the same closed forms and emits the adjudicated eps-bearing rows, plus the
F-2 adjudication record. ASCII only. Anchors as in the main pass."""
import math
import sys

sys.stdout.reconfigure(encoding="utf-8", errors="replace")
f10 = lambda x: "%.10f" % x

# --- Stage-0 scalars, recomputed from the same closed forms (regression) ---
N, k, kappa = 10, 1, 1.0
g10 = N * (1.0 - math.cos(2.0 * math.pi * k / N))          # g(N)
m_k = kappa * g10
w_k = g10
a1 = math.pi / (N - 2)
S_k = kappa * (2.0 + (N - 2) * (1.0 - math.cos(a1)))       # S_1
c_H = (m_k + 2.0 * kappa - S_k) / 4.0                      # active branch
Delta_door = S_k + c_H - m_k
CAP_L02 = (2.0 * kappa - m_k) / w_k                        # M2P third entry
assert f10(g10) == "1.9098300563" and f10(S_k) == "2.6089637399"
assert f10(c_H) == "0.3252165791" and f10(Delta_door) == "1.0243502627"
assert f10(CAP_L02) == "0.0472135955"
print("REGRESSION: Stage-0 scalars reproduce the corpus's printed 10 dp values. PASS")
print("")

# --- F-1 ADJUDICATION: the instantiation point ---
EPS = 0.045
print("F-1 ADJUDICATION (LEAD, 2026-08-02): the E6 instantiation point is")
print("eps = %s. The design NAME eps = 0.05 stays as the printed vintage in" % f10(EPS))
print("the landed displays [V2:369, V2:430-432, PX:7412 physical]; it is NOT")
print("renumbered by this pass (disposition D4 + D1-deferred: the row is carried")
print("TYPED against the name, and the corpus renumbering decision rides to the")
print("external gate). Every sub-cap consumer (incl. E5's start domain D_k(eps))")
print("is instantiated at the adjudicated point below.")
print("")
checks = [
    ("L-02", EPS, CAP_L02, "eps < (2 kappa - m_k)/w_k  [LP:431-433]"),
    ("C-07", EPS, 0.125, "eps < 1/8  [V2:433]"),
    ("C-06", EPS, kappa / (4.0 * g10), "eps < kappa/(4 g(10))  [V2:429-431]"),
]
for name, v, cap, row in checks:
    ok = v < cap
    print("  %-5s %s : eps = %s vs cap = %s -> %s (margin %s)"
          % (name, row, f10(v), f10(cap), "PASS" if ok else "FAIL", f10(cap - v)))
    assert ok
m2p_rhs = m_k + EPS * w_k
print("  M2P support: 2 kappa > m_k + eps w_k reads %s > %s -> %s (margin %s)"
      % (f10(2.0 * kappa), f10(m2p_rhs), "TRUE" if 2.0 * kappa > m2p_rhs else "FALSE",
         f10(2.0 * kappa - m2p_rhs)))
assert 2.0 * kappa > m2p_rhs
print("")

# --- adjudicated eps-bearing rows (delta-free parts at 10 dp; Q := L_eps N delta^2/4) ---
err = EPS * g10
thr_rhs = Delta_door - EPS * w_k
roundsum_eps_term = EPS * (S_k / kappa - w_k)
print("ADJUDICATED eps-BEARING ROWS at eps = %s (design-vintage value in brackets):" % f10(EPS))
rows = [
    ("err = eps g(10)", err, 0.0954915028),
    ("eps w_k", EPS * w_k, 0.0954915028),
    ("(THR) RHS = S_k + c_H - m_k - eps w_k", thr_rhs, 0.9288587599),
    ("m_k + eps w_k (A_tube's delta-free part; also (SML')/M2P support)", m2p_rhs, 2.0053215591),
    ("eps (S_k/kappa - w_k) (the round-sum rate's eps term)", roundsum_eps_term, 0.0349566842),
]
for nm, v, old in rows:
    print("  %-66s = %s   [was %s]" % (nm, f10(v), f10(old)))
print("")
print("  Derived delta caps at the adjudicated point (Q := L_eps N delta^2/4):")
print("    C-08 c_plate > 0 : err_A = eps w_k + 2Q < Delta_door  <=>  Q < %s" % f10(thr_rhs / 2.0))
print("      [was Q < 0.4644293800]; delta < %s / sqrt(L_eps)" % f10(math.sqrt(thr_rhs / 2.0 / (N / 4.0))))
print("    C-09 (THR)       : Q < %s   [was Q < 0.9288587599]" % f10(thr_rhs))
print("    C-11             : Q < %s   (unchanged; eps-free)" % f10(3.0 * c_H))
print("  (E5-MARGIN) numeral S_k + c_H - 2 kappa = %s (eps-free, unchanged)." % f10(S_k + c_H - 2.0 * kappa))
print("  (E5-TRAPMARGIN) strict form m_k + m_1 - S_k - c_H - err = %s > 0"
      % f10(m_k + m_k - S_k - c_H - err))
print("      [was 0.7899882907 at the design vintage; both PASS, margin improves].")
print("  NUMERAL CONVENTION (adjudicated): all derived numerals are double-precision")
print("  evaluations of the landed closed forms rounded to 10 dp (the Stage-0 method,")
print("  under which the corpus's printed scalars reproduce exactly). Decimal")
print("  arithmetic on the printed 10-dp scalars differs by one final ulp on the")
print("  (E5-TRAPMARGIN) rows (giving 0.8854797936/0.7899882908/0.7995374411) and is")
print("  NOT the convention; recorded so the divergence is caught, not hidden.")
print("")

# --- F-2 ADJUDICATION ---
print("F-2 ADJUDICATION (LEAD, 2026-08-02): L-08 GOVERNS (disposition E1-operative).")
print("MM:3025-3039 is the corpus's mandated order-of-limits block: FIX (eps, delta,")
print("h = delta/2); beta -> infinity FIRST; THEN delta -> 0 and h -> 0 together.")
print("Under it the diffusive floor L-07 reads beta_0 = 16/h^2 = 64/delta^2 --")
print("the same delta^{-2} shape as beta_env, consistent with the order. The")
print("L-09 line (MM:344-345, 'delta <= h stays in force') is jointly unsatisfiable")
print("with h = delta/2 at every delta > 0 and is RECORDED AS A VARIANCE to be")
print("cured at the next MM-touching pass (one line); it is not read by this pass.")
print("Per-consumer schedule recording (disposition E2) is carried in the table for")
print("Gamma(h)/err(delta) consumers as a belt: each names L-08 as its schedule.")
print("")
print("END OF ADJUDICATION LAYER. exit 0")
