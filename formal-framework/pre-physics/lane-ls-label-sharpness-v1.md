# Lane-LS Label Sharpness v1, Stage 1 (the true rate of the label)

Status:

```text
Lane-LS Label Sharpness v1 = LS-DECLARED / THE TWO-SIDED LABEL LAW,
  PASSIVE SINGLE LOOP / NO PHYSICS CLAIMS / NO AGENCY CLAIMS
campaign = gate-v16 (single artifact); resolves gate-v15's typed-open
  tail ("label sharpness") for the passive single loop; coupled/
  composed/symmetric label laws = stage 2, typed open
HEADLINE = the label's true barrier is NOT the Delta floor L_k but
  the ONE-BOND SADDLE S_k > L_k.  True label rate = S_k - m_k
  (two-sided under the typed rows for k = 1, N >= 10; the former
  LS-MIN-MIG conditionality on the upper half is DISCHARGED -
  lane-minmig-proofs M1+M2, release authorized by XM-R16).
  ROW LS-MIN-MIG: DISCHARGED (lane-minmig-proofs-v1.md; release authorized by XM-R16) -
  the UPPER side's probabilistic legs (the
  LS.5 attempt sandwich and the LS.5a displacement) consumed the
  GLOBAL SH.2' minorization VERBATIM - that global lemma was
  REFUTED by X3 and repaired LOCALLY (SH.2'-LOCAL v2, lane-sh).
  The migration IS discharged (lane-minmig-proofs M1/M2 + the
  rounds 6-8 cures; XM-R16-authorized): the upper side now rides
  the local route; the deterministic ridge-law LOWER side was
  never affected. The v17 controlled law inherits the DISCHARGE
  through lane-lt T7.
  STAGE-A PROBE (2026-07-20, lead; numerics/lz_kick_probe.py +
  results JSON): the L1-Z shape SURVIVES falsification at Z = SP_1
  (N = 10) - tube-stay is sub-exponential in beta (0.09/0.54/0.87
  rising); the conditioned kick rates agree with the ground orbit
  to <= 0.0024 exact in 7 of 12 cells (six <= 0.0023; XM-R3 F6 precision), with tail cells (large
  s, low counts) differing by up to 0.022 and one null - broadly
  compatible, no cell contradicts, MC noise dominates the tail
  (XH-R2 precision correction); unstable-direction offsets cost
  O(delta^2) with C ~ 0.4. The migration campaign can proceed to
  proof effort when gated.
NEW ANALYSIS = the ABSOLUTE-BOND RIDGE LAW (LS.2); the FAR-BRANCH
  CROSSING lemma and the VALLEY lemma (LS.2b/LS.2c - deterministic,
  from the ridge law + omega-limit classification); the retargeted
  reversal route with a TWO-PHASE renewal (LS.5).  One classical
  fact consumed as a named input (SR-LS1).
anti-quantization firewall = BINDING
assurance = L-A1 (gate-v16 3-lens wave 2026-07-04: FAIL AS BUILT -
  the third FAIL of the completion arc, on schedule for new
  analysis.  CONVERGENT FATALs, all repaired in this rewrite: (1)
  the crossing step was INVALID - a 2 delta displacement from the
  saddle is still winding k (the saddle sits at FIXED bond-distance
  a_k from Delta); rebuilt via the FAR-BRANCH CROSSING lemma (the
  unstable branch itself crosses, proved from the ridge law by
  omega-limit exclusion) + flow tracking; (2) the M-sweep was FALSE
  for DOWNWARD Delta-crossings (a bond through -pi jumps the max);
  rebuilt with the ABSOLUTE max bond M_abs and the two-branch
  pointwise bound; (3) the renewal composition cited SH.4 outside
  its scope (failed rounds are not confined); rebuilt as a TWO-PHASE
  renewal with the VALLEY lemma (near-Delta winding-k valleys have
  no criticals and exit only across Delta) and the a.e.-off-W^s
  dichotomy.  MAJORS repaired: the LS.2(i) minimization completed
  (interior/boundary/branch enumeration; the step CONSUMES
  C1-SUB(k), now explicit); the LS.4 negative direction made
  B-feasible + transversal NONDEGENERACY added; N >= 5 (not 4) for
  cos a_1 > 0; the SH.2' variant at a critical circle stated as a
  lemma (LS.5a) instead of an out-of-scope citation; SR-LS1 named
  (stable/unstable manifolds); the lower bound routed through the
  certified working family at cap S_k - eps' (SR-SH2 in scope);
  z_sad defined explicitly on the LS.1 slice; the LS.3 closure
  shrink-bridge; the LS.6 exclusion enumeration completed (ALL
  windings j != k; the p >= 2 and negative-branch classification
  self-contained).  MINORs: RANGE(N, k) standalone row (acyclic
  dependency order); garbled clauses completed; SADDLE-LOWEST
  restated as the component condition; L_k minimality not claimed;
  C1-SUB(1) arithmetic displayed.)
assurance = L-A2f GRANTED (gate-v16 post-rebuild 3-lens blind Opus
  wave 2026-07-04: 3/3 PASS-WITH-FINDINGS, ZERO FATAL.  The
  deterministic core verified INCLUDING NUMERICALLY (the constrained
  minimization checked by direct optimization; the ladder and
  inertia at N = 10; LS.4's conclusion at N = 5..15).  Convergent
  MAJORs repaired: the LS.3/LS.6 acyclicity made STRUCTURAL (the
  (F1a) split - SADDLE-LOWEST-free - with the dependency order
  displayed); the crossing-time uniformity ASSEMBLED (compact
  displaced set disjoint from the closed stable manifold +
  upper-semicontinuity of the crossing time); the RELOCATE
  exhaustiveness completed with the load-bearing classification
  (the p >= 2 families degenerate ONTO Delta - the off-Delta
  winding-1 criticals are exactly C_1 and SP_1) + the finite
  critical-DAG displacement chain.  MINORs applied (LS.4 frames
  spelled out - site vs bond space; the boundary-pinned induction
  stated; the z_sad gap is Theta(delta'^2); the v15-gap appositive
  corrected; m_1(9) = 2.106).)
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
PARTIAL L-A4 (campaigns #2/#3/#6 2026-07-05, #7/#8 2026-07-10): the
  FULL LS.1 LADDER m_k < 2 kappa < L_k < S_k (campaign #8: the middle
  rungs ladder_middle + the slice maximality max phi_k = S_k via the
  strict monotone/anti pair, regime N >= 4k+1), the
  LS.6(b) WINDING-1 CRITICAL CLASSIFICATION (equal-sines form, open
  branch, N >= 5: exactly C_1 or SP_1; the machine result is STRONGER
  than the prose on p >= 2 - nonexistence off Delta, not level
  exclusion; the torus-critical bridge stays via P0.1, mechanized
  separately as critical_slice_iff), the ridge law LS.2(i)
  (tangent proof, lean/RidgeLaw.lean), the saddle identity + ladder upper
  rung + C1-SUB endpoints k = 1, 2, 3 (both sides, sharp), and the LS.4
  HESSIAN CORE (two-value display, negative witness, transversal
  positivity, slice nondegeneracy; cos a_1 > 0 for N >= 5) are
  MACHINE-CHECKED in lean/LabelTowerCore.lean + lean/RidgeLaw.lean
  (sorry-free, standard axioms; the manifold-Hessian identification and
  LS.4's B-feasibility framing stay prose-level)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standard external input (named; the SR discipline)

```text
SR-LS1 (local stable/unstable manifolds at a normally hyperbolic
  critical circle; classical invariant-manifold theory).  Statement
  used: for a smooth gradient flow on a compact manifold and a
  compact critical circle Z whose transversal Hessian is
  nondegenerate with index 1 (LS.4), there is a neighborhood U of Z
  in which the local stable set W^s_loc(Z) is a smooth codimension-1
  submanifold separating U minus W^s_loc into two open
  half-neighborhoods, and the local unstable set is a smooth
  2-dimensional manifold (circle x the unstable direction) whose
  two branches leave U; flow lines from U minus W^s_loc leave U
  along one of the two unstable branches (lambda-lemma tracking).
  Hypothesis rows: smooth gradient flow on T^N : HOLDS; Z = SP_k
  compact critical circle : HOLDS (rotation orbit); transversal
  nondegeneracy, index 1 : LS.4.
```

## Standing data and the typed rows

Passive single loop (T^N, J = J_kappa, N >= 3, reversible standard
family, rho ~ exp(-beta J)); the certified loop facts; C1-SUB(k)
STANDING (admissible k >= 1; m_k < 2 kappa; for k = 1 this is
N >= 10: `m_1 = N kappa (1 - cos(2 pi/N))` is decreasing in N with
`m_1(10) = 1.910 kappa < 2 kappa` and `m_1(9) = 2.106 kappa >
2 kappa`).  Bonds `d_i in (-pi, pi]`; off Delta all bonds in the
open interval.  `tau_change := inf { t : X_t notin Sigma_k }` (exit
time of the open sector; Delta is null and never charged at fixed
times).

```text
THE SADDLE (one-bond, winding k >= 1): SP_k = the rotation orbit of
  (pi - a_k, a_k, ..., a_k), a_k := (2 pi k - pi)/(N - 2)
  ((pi - a_k) + (N - 1) a_k = pi + (N - 2) a_k = 2 pi k).
LEVELS:
  m_k = N kappa (1 - cos(2 pi k/N))                 (the ground)
  L_k = kappa [2 + (N - 1)(1 - cos b_k)], b_k = (2 pi k - pi)/(N - 1)
        (the one-bond-at-pi equidistributed level; minimality over
        Delta is NOT needed and NOT claimed)
  S_k = kappa [(1 + cos a_k) + (N - 1)(1 - cos a_k)]   (the saddle)
ROW RANGE(N, k) (standalone arithmetic): `2 pi k/N < pi - a_k`.
  For k = 1: equivalent to `N pi/(N - 2)... i.e. 2 pi/N + pi/(N - 2)
  < pi`, which holds for N >= 5 (2/N + 1/(N - 2) <= 2/5 + 1/3 < 1);
  for the flagship N >= 10: a_1 <= pi/8 and 2 pi/N <= pi/5, so
  pi - a_1 >= 7 pi/8 > pi/5.
ROW SADDLE-LOWEST(N, k) (the component condition): for every small
  eps > 0, `Crit(J) intersect D_eps = C_k`, where D_eps := the
  connected component of {J < S_k - eps} containing C_k.  TYPED;
  discharged for k = 1, N >= 10 in LS.6.
ROW SADDLE-HYP(N, k): the transversal Hessian at SP_k is
  NONDEGENERATE of index exactly 1 (discharged in LS.4; consumes
  `a_k < pi/2` - for k = 1 this is N >= 5, since a_1 = pi/(N - 2) <
  pi/2 iff N > 4; at N = 4, a_1 = pi/2 and the form degenerates).
DEPENDENCY ORDER (acyclic): RANGE (arithmetic) -> LS.1, LS.2 ->
  LS.3-(F1a) [SADDLE-LOWEST-free] -> LS.6 discharges SADDLE-LOWEST
  and SADDLE-HYP (consuming LS.1, LS.2, LS.4) -> LS.3 in full, and
  LS.2b/LS.2c [stated CONDITIONAL on the SADDLE-HYP row, which LS.4
  discharges] -> LS.5.  The unconditional flagship chain: RANGE ->
  LS.1, LS.2 -> LS.4 -> LS.3-(F1a) -> LS.6 -> LS.2b, LS.2c, LS.3 ->
  LS.5.
```

## Lemma LS.1 (the level ladder)

Under C1-SUB(k) and RANGE(N, k), k >= 1: `m_k < 2 kappa < L_k < S_k`.

Proof.  `m_k < 2 kappa` is C1-SUB(k).  `2 kappa < L_k`: the
(N - 1)-term of L_k is strictly positive (`b_k in (0, pi)` for
1 <= k < N/2).  For `L_k < S_k`, consider the slice family
`x(m) := (m, r(m), ..., r(m))`, `r(m) = (2 pi k - m)/(N - 1)`, for
`m in [2 pi k/N, pi]`, and `f(m) := J(x(m)) = kappa[(1 - cos m) +
(N - 1)(1 - cos r(m))]`.  Then `f'(m) = kappa[sin m - sin r(m)]`
(r' = -1/(N - 1)); `f(2 pi k/N) = m_k`, `f(pi) = L_k`.  Stationary
points in the CLOSED interval solve `sin m = sin r(m)`: either
`m = r(m)` (the left endpoint m = 2 pi k/N) or `m = pi - r(m)`
(m = pi - a_k, interior by RANGE, where x(m) in SP_k and
f = S_k).  Just right of the left endpoint, `m > r(m)` with both
angles in (0, pi/2) (C1-SUB(k) puts 2 pi k/N < pi/2... from
`cos(2 pi k/N) > 1 - 2/N >= 0` for N >= 4... for N = 3 only k = 0
is admissible), so `sin m > sin r` and `f' > 0`: f increases off
the left endpoint.  At the right endpoint `f'(pi) = kappa[0 -
sin b_k] < 0`: f decreases into it.  With exactly one interior
stationary point, f attains its maximum there: `f(pi - a_k) = S_k >
f(pi) = L_k` and `S_k > f(2 pi k/N) = m_k`.  QED.

## Lemma LS.2 (THE ABSOLUTE-BOND RIDGE LAW - deterministic)

For a winding-k configuration x off Delta define `M_abs(x) := max_i
|d_i(x)| in [2 pi k/N, pi)` and

```text
phi_k(m) := kappa [(1 - cos m) + (N - 1)(1 - cos((2 pi k - m)/(N - 1)))],
phi_k^-(m) := kappa [(1 - cos m) + (N - 1)(1 - cos((2 pi k + m)/(N - 1)))].
```

(i) POINTWISE (two branches): if `M_abs(x) = m`, then `J(x) >=
min(phi_k(m), phi_k^-(m)) = phi_k(m)` - the last equality under the
typed comparison `(2 pi k + m)/(N - 1) <= pi` (for k = 1: `3 pi/
(N - 1) <= pi` iff N >= 4), since then the phi^- angle exceeds the
phi angle in [0, pi] and `1 - cos` is larger.
(ii) SWEEP: M_abs is continuous off Delta; along any path from
B_delta(C_k) (where `M_abs < 2 pi k/N + err(delta)`) to its FIRST
Delta-touch, M_abs converges to pi at the touch (the touching
bond's |representative| -> pi FROM EITHER SIDE), so by the
intermediate value theorem M_abs realizes every value in
`(2 pi k/N + err(delta), pi)` before the touch.
(iii) RIDGE: every label change from B_delta(C_k) attains
`max_t J >= phi_k(pi - a_k) = S_k` (the value m = pi - a_k lies in
the swept range by RANGE(N, k); a label change without a
Delta-touch is impossible - w is locally constant off Delta).

Proof of (i).  Say `|d_1| = m`; the remaining bonds lie in
`[-m, m] subset (-pi, pi)` and sum to `2 pi k -+ m` (cyclic
identity; sign by the sign of d_1).  CASE d_1 = +m: minimize
`sum_{i >= 2} (1 - cos d_i)` under the fixed sum `2 pi k - m`.
[HISTORICAL - SUPERSEDED 2026-07-05 by the tangent-line argument
below; retained for provenance only, NOT part of the machine-sealed
proof:] Interior critical points of the constrained problem have all sines
equal, so the bonds take at most two values `alpha` and `pi -
alpha` (q >= 1 bonds on the upper branch gives, with c = cos alpha
>= 0, the value `kappa[(N - 1) - (N - 1 - 2q) c] >= 2 kappa` in
both regimes 2q <= N - 1 and 2q > N - 1); a common NEGATIVE sine is
infeasible for the positive sum with all-low branches... (negative
alpha with all bonds low gives a negative sum; mixed negative
branches fall under the two-value counting with c >= 0 as well, by
relabeling alpha -> -alpha and counting the `-pi - alpha` branch as
upper - same value formula).  [END HISTORICAL.]

Minimization step (THE TANGENT-LINE ARGUMENT, machine-checked
2026-07-05; supersedes BOTH the original two-value counting AND the
spine-hardening convexity clause - whose "residual bonds lie below
pi/2" assertion was itself loose: individual residual bonds can
reach `m <= pi`, only their MEAN is controlled).  Let `i*` realize
`M_abs = m` and let `r := (2 pi k - m)/(N - 1)` be the residual
mean; `r in (0, 2 pi k/N]` (since `m <= pi` and `m >=` the bond
average `2 pi k/N`), and in the flagship range `r <= 2 pi/10 <
3/4`; in general C1-SUB(k) ITSELF forces `2 pi k/N < 3/4` (were
`x := 2 pi k/N >= 3/4`, then since `(1 - cos x)/x` is increasing
there (`x sin x >= 1 - cos x` up to pi/2, the A1 fact), `m_k =
2 pi k kappa (1 - cos x)/x >= 2 pi (0.2683/0.75) kappa > 2.2 kappa`
for x < pi/2, and `m_k >= 3 kappa` for x >= pi/2 - both
contradicting `m_k < 2 kappa`), so `r <= 3/4` holds wherever
LS.2(i) is invoked.  THE TANGENT BOUND: for `mu in [0, 3/4]`,

```text
1 - cos x >= (1 - cos mu) + sin mu (x - mu)   for ALL x in [-pi, pi]
```

(piecewise monotone analysis of `h(x) = (cos mu - cos x) - sin mu
(x - mu)`: decreasing on `[-pi, mu]`, increasing on `[mu, pi - mu]`,
decreasing on `[pi - mu, pi]`; the consumed endpoint fact `1 + cos mu >=
sin mu (pi - mu)` is monotone-in-mu plus one numeric check at
`mu = 3/4`; the companion fact `mu sin mu >= 1 - cos mu` is proved
separately by direct series bounds).  Summing
the tangent bound at `mu = r` over the `N - 1` residual bonds, the
linear term telescopes to `sin r (m - d_{i*}) >= 0` - EXACTLY zero
when the max bond is positive, a positive BONUS when `d_{i*} = -m`
(the negative-max branch is dominated for free) - so

```text
sum_{j != i*} (1 - cos d_j) >= (N - 1)(1 - cos r),
```

and adding the max-bond term `1 - cos d_{i*} = 1 - cos m` gives
`J >= phi_k(M_abs)` pointwise: no minimizer existence, no exchange
argument, no PER-BOND convexity-range caveat (the one remaining
range condition is on the residual MEAN, `r in [0, 3/4]`, carried
EXPLICITLY by the machine form and discharged at the flagship and,
via C1-SUB as above, at every admissible k).  MACHINE SEAL: this exact
argument is formalized sorry-free in `lean/RidgeLaw.lean`
(`tangent_line_bound` + `ridge_law` + `ridge_law_flagship`;
standard axioms only; the general form carries `r in [0, 3/4]` as
an explicit hypothesis, discharged automatically at k = 1, N >= 10).
(The numerical cross-check stands: min gap `+0.289 kappa` over the
flagship grid.)

[HISTORICAL - SUPERSEDED 2026-07-05, retained for provenance only,
NOT part of the machine-sealed proof:] A bond at the branch end
pi is excluded off Delta.  The all-low equidistributed point
`r(m) = (2 pi k - m)/(N - 1)` is feasible (r(m) <= m iff m >=
2 pi k/N - in range) and its value obeys `(N - 1) kappa (1 - cos
r(m)) <= (N - 1) kappa (1 - cos(2 pi k/N)) < 2 kappa (N - 1)/N <
2 kappa` BY C1-SUB(k) (which also places `r(m) <= 2 pi k/N <
pi/2`, so 1 - cos is increasing on the range and the comparison is
monotone).  Since every competing critical/boundary value is
>= 2 kappa and the equidistributed value is < 2 kappa, the global
minimum is the equidistributed point: `J(x) >= kappa (1 - cos m) +
(N - 1) kappa (1 - cos r(m)) = phi_k(m)`.  NOTE: this step
CONSUMES C1-SUB(k).  CASE d_1 = -m: identical with sum
`2 pi k + m`, giving phi_k^-(m).  [END HISTORICAL.]
Proof of (ii).  Off Delta the bond representatives are continuous,
hence so is M_abs; at a first Delta-touch some bond representative
tends to +pi or WRAPS AT -pi - in absolute value it tends to pi
either way, and it is the (absolute) maximum near the touch.  IVT.
Proof of (iii).  At the sweep time of `m = pi - a_k`: `J >=
phi_k(pi - a_k) = S_k` (LS.1's f is phi_k).  QED.

## Lemma LS.2b (FAR-BRANCH CROSSING - deterministic)

Under SADDLE-HYP + SADDLE-LOWEST + RANGE (flagship: LS.6), let
Gamma be a flow line on the unstable branch of SP_k on the side of
INCREASING first bond (SR-LS1).  Then Gamma leaves Sigma_k across
Delta in finite time and enters the adjacent sector; moreover it
does so with a transversal Delta-crossing of the ridge-law valley
(LS.2c gives the quantitative form actually consumed).

Proof.  Along Gamma, J is strictly decreasing from S_k (gradient
flow off Crit).  Suppose Gamma stayed in Sigma_k for all time.
M_abs along Gamma starts at `pi - a_k + 0^+`; it can never return
to `pi - a_k`, since `M_abs = pi - a_k` forces `J >= phi_k(pi -
a_k) = S_k` (LS.2(i)) while `J < S_k` strictly on Gamma.  So
`M_abs > pi - a_k` for all time, and Gamma's omega-limit is a
connected set of critical points of winding k (closure(Sigma_k)
minus Delta... if the omega-limit met Delta, J on Delta-criticals
is >= 4 kappa > S_k - see LS.6's classification - impossible below
S_k; a non-critical Delta-touch of the LIMIT is excluded since
omega-limits of gradient flows on compact manifolds consist of
critical points) with level < S_k and `M_abs >= pi - a_k`.  By the
classification (LS.6 for the flagship): winding-k criticals are
C_k (M_abs = 2 pi k/N < pi - a_k, by RANGE - excluded), SP_k
(level S_k - excluded), and p >= 1 branch families at levels
>= 4 kappa > S_k (excluded).  No candidate exists - contradiction.
So Gamma reaches Delta in finite time and crosses (its first bond
passes pi and wraps; the winding drops by 1 on the far side).  QED.

## Lemma LS.2c (THE VALLEY - deterministic, quantitative)

Fix small eps > 0 and define the VALLEY `V_eps := { x : w(x) = k,
J(x) < S_k - eps, M_abs(x) > pi - a_k }` (nonempty: the far part of
Gamma before its crossing, and the near-Delta region at levels
~L_k < S_k).  Under the flagship rows:

```text
(a) V_eps contains NO critical points (the LS.2b enumeration).
(b) The boundary piece {M_abs = pi - a_k, J < S_k - eps} is EMPTY
    (LS.2(i): M_abs = pi - a_k forces J >= S_k).
(c) J is non-increasing along the flow; therefore every flow line
    from V_eps stays in {J < S_k - eps} and, having no criticals to
    converge to on the k-side, EXITS Sigma_k across Delta within a
    UNIFORM bounded time T_V(eps) (|grad J|^2 has a positive lower
    bound on the compact closure(V_eps) minus a Delta-collar, and
    the Delta-collar is crossed transversally by LS.2b's wrap or
    exited downward into V_eps again - the flow cannot leave V_eps
    except across Delta, by (b) and monotonicity of J).
```

QED (compactness + the gradient floor + (a), (b)).

## Lemma LS.3 (the sub-saddle domain is a working family)

Fix small eps > 0.  Part (F1a) holds under C1-SUB(k) + RANGE ALONE
(no SADDLE-LOWEST - the visible acyclicity for LS.6's discharge);
with SADDLE-LOWEST additionally, `(J, S_k - eps, D_eps, C_k)`
satisfies [MACH-UP]'s (F1)-(F4):

```text
(F1a) [consumes ONLY LS.2(iii) + the component definition, NOT
     SADDLE-LOWEST - LS.6's discharge cites exactly this part]:
     D_eps MISSES Delta and carries w = k: every point of D_eps
     joins C_k by a path in D_eps (open connected sets in a
     manifold are path-connected) with max J < S_k - eps; if D_eps
     met Delta, that path from B_delta(C_k) would Delta-touch below
     S_k, contradicting LS.2(iii).
(F1b) ground: J = m_k exactly on C_k within D_eps (the loop facts,
     on the w = k Delta-free set of (F1a)).
(F2) attraction: Crit(J) intersect closure(D_eps) = C_k.  For the
     OPEN part this is SADDLE-LOWEST; for the boundary: a critical
     z in closure(D_eps) minus D_eps has J(z) = S_k - eps; for any
     eps' < eps, z is adherent to D_eps subset D_eps' and lies in
     the open set {J < S_k - eps'}, hence z in D_eps' -
     contradicting SADDLE-LOWEST at eps'.  Closure attraction: the
     corpus pinning pattern (J decreasing + compactness + unique
     internal critical set).
(F3) boundary: nonempty (D_eps != T^N: S_k - eps < max J... and
     Delta nonempty with J-values above S_k - eps in every
     neighborhood of its high strata; concretely bd(D_eps) subset
     {J = S_k - eps} is nonempty since D_eps is a proper nonempty
     open subset of the connected T^N); no rest points (S_k - eps
     is not a critical value, by (F2)'s argument).
(F4) derived as in [MACH-UP].
```

QED.

## Lemma LS.4 (SADDLE-HYP discharge: transversal hyperbolicity, index 1)

At SP_k the Hessian of J in the corpus's B-coordinates is the
quadratic form

```text
Q_SP = kappa [ cos(pi - a_k) |(B x)_1|^2 + cos(a_k) sum_{i >= 2} |(B x)_i|^2 ]
     = kappa cos(a_k) [ - |(B x)_1|^2 + sum_{i >= 2} |(B x)_i|^2 ],
```

with `cos a_k > 0` under SADDLE-HYP's range (k = 1: N >= 5).
FRAMES, stated explicitly: in the theta-tangent space (dimension
N) the global rotation is the unique null direction of Hess J at
SP_k (n_0 = 1); the angle-to-bond map B quotients it out - its
tangent image is exactly the realizable bond-increment hyperplane
`{sum_i (B x)_i = 0}` (dimension N - 1).  ON THAT HYPERPLANE: the
restriction to `{(B x)_1 = 0}` is positive DEFINITE (it equals
`kappa cos(a_k) sum_{i >= 2} |(B x)_i|^2`, vanishing only at 0),
giving n_+ >= N - 2; the FEASIBLE vector `(B x)_1 = 1, (B x)_i =
-1/(N - 1) (i >= 2)` (sum = 0) gives `Q_SP = kappa cos(a_k)
[-1 + 1/(N - 1)] < 0`, giving n_- >= 1; with n_+ + n_- <= N - 1
the inertia on the hyperplane is exactly (N - 2, 1, 0): the
transversal form is NONDEGENERATE of index 1 - SP_k is
transversally hyperbolic, as SR-LS1 and LS.5 consume.  QED.

## Lemma LS.5a (SH.2'' - displacement near ANY critical set)

[LS-MIN-MIG NOTE, RESOLVED 2026-07-20: the re-founding demanded
here is DONE - lane-minmig-proofs M2 states and proves the L1-Z
kick lemma (index-1 case explicit) and the DAG walk consumes it
verbatim in place of this block's global base. Preserved as the
design-time record.]
[MACH-UP]'s Lemma SH.2' holds verbatim with the ground set G
replaced by any compact set Z with `grad J = 0` on Z (here: the
rotation circle SP_k), displacement `|x - y| <= 3 delta`, corridor
`B_{(C* + 6) 3 delta}(Z)`, cost `exp(-beta C_G')` with `C_G' =
O(delta^2)`: the SH.2' proof consumes ONLY `grad J = 0 on Z` (for
the corridor drift bound via the Lipschitz constant), the slice
Gaussian bounds, and compactness - never minimality of the level.
QED (the SH.2' proof with G := Z).

[OPERATIVE ROUTE as of the flip: the displacement legs consume
lane-minmig-proofs M2 (Lemma L1-Z, per-orbit tubes) directly -
SP_1 via the native row LS.5a-Z-SP (start/target offsets priced
SEPARATELY; in-quadrant margin delta/2 per amendment A8), the
on-Delta high circles via R5c's direct sector-targeting kick.
The global-extension argument above is RETIRED as the operative
mechanism (X3 class); preserved as the design-time record.]

## Theorem LS.5 (THE TWO-SIDED LABEL LAW - passive single loop; LS-MIN-MIG DISCHARGED (XM-R16-authorized) - both halves ride verified routes)

[The displayed limit EQUALITY: >= is the ridge route (LS.2-4);
<= rides the two-phase renewal whose ground legs are RE-BASED on
the local toolkit (lane-minmig-proofs M1: L2 chain + L1'
average-to-inf; M2: the L1-Z kicks replacing LS.5a's base) -
LS-MIN-MIG DISCHARGED (XM-R16-authorized).]

Under C1-SUB(k), RANGE(N, k), SADDLE-LOWEST(N, k), SADDLE-HYP(N, k)
(all discharged for k = 1, N >= 10 in LS.6), for every eta > 0 and
every q in the component of `{J <= S_k - eta}` containing C_k:

```text
lim_beta beta^-1 log E_q[ tau_change ] = S_k - m_k.
```

Proof.  LOWER BOUND (routed through the certified family).  For
eps' in (0, eta): a label change from q requires, by LS.2(iii) and
(F1), first exiting D_eps' (the change-path Delta-touches, and
D_eps' misses Delta; q in D_eps' since the {J <= S_k - eta}
component joins C_k below S_k - eps').  So `tau_change >=
tau_exit(D_eps')`.  Apply SR-SH2 (in scope: LS.3 gives the working
family at cap S_k - eps') on `K = closure(B_delta(C_k))`:
`inf_K E[tau_exit(D_eps')] >= exp(beta(S_k - eps' - m_k - err -
delta'))`; relocation from q into B_delta(C_k) without label change
(SH.2 tracking inside D_eps'... the tube stays in D_eps' for delta
small) with probability >= 1/2, and strong Markov composes as in
[MACH-UP] SH.5.  Let beta -> infinity, then delta, delta', eps' ->
0.
UPPER BOUND (two-phase renewal).  Fix delta small.  Phase
definitions:
(RELOCATE) From ANY winding-k state x, within a uniform time
  T_R(delta, eps): with probability >= c_R(delta)
  exp(-beta err(delta)), EITHER the label changes, OR the process
  lands in B_{delta/2}(C_k).  Proof of the phase bound: the time-1
  law has a smooth positive density (the standard family), so at
  time 1 the process is off W^s_loc(SP_k) (a null set) a.s.; from
  a.e. point, the forward flow's omega-limit analysis splits three
  ways - (i) into D_eps and on to B_{delta/4}(C_k) (LS.3-(F2)
  attraction; SH.2 tracking at order-one probability); (ii) into
  the valley V_eps, whence the flow exits across Delta within
  T_V(eps) (LS.2c) - SH.2 tracking makes this a LABEL CHANGE at
  order-one probability (track to a Delta-collar point with
  |grad J| > 0, then the flow itself crosses; if the tracked tube
  ends short, one LS.5a displacement across the null Delta
  hypersurface at cost exp(-beta err) completes it); (iii) toward the remaining critical sets - and the split IS
  exhaustive by THE LOAD-BEARING CLASSIFICATION (flagship, from
  LS.6(b)): for winding 1 the p >= 2 critical families degenerate
  ONTO Delta (p = 2 forces alpha = 0, bonds (pi, pi, 0, ...);
  p >= 3 pushes the high branch past pi), so the OFF-Delta
  winding-1 criticals are exactly C_1 and SP_1; a.e. flow limit is
  therefore C_1 (branch (i)), a Delta approach/valley (branch
  (ii)), SP_1, or an ON-Delta critical set Z_high at level >=
  4 kappa.  Near SP_1: one L1-Z kick (lane-minmig M2 at Z = SP_1,
  consumed via LS.5a-Z-SP; cost exp(-beta err(delta))) moves the
  process K delta off W^s_loc with landing margin delta/2 (A8;
  SR-LS1's separation), whence (i) or (ii) applies via the
  unstable branches (the C_k-side branch descends into D_eps; the
  far branch crosses, LS.2b).  Near an ON-Delta Z_high: R5c's
  DIRECT SECTOR-TARGETING kick applies (the landing ball lies in
  an adjacent non-home sector - corner transmission, R5c TYPE 4
  with the A8 margin); the flow then descends the FINITE
  critical-level DAG - at most one further L1-Z kick per critical
  level (R5c TYPE 3 recomposition) - until branch (i) or (ii)
  receives it; the total cost stays exp(-beta err(delta)).  All
  branches: relocate-or-change with probability
  >= c exp(-beta err(delta)) in uniform time.
(ATTEMPT) From B_{delta/2}(C_k): the [MACH-UP] SH.3 sandwich
  (SH.1 + SH.2 + SH.2', verbatim - the ground-side lemmas in their
  original scope [LS-MIN-MIG DISCHARGED (XM-R16-authorized): this
  SH.2' consumption was the typed migration site; the re-based route
  is lane-minmig-proofs M1/M2 - see the status header]) with target `B'' := a ball around z_sad :=
  x(pi - a_k - delta')` on the LS.1 slice - EXPLICITLY in D_0 :=
  union_eps D_eps, since the sub-path `x([2 pi k/N, pi - a_k -
  delta'])` joins it to C_k with `f < S_k` (f increasing up to the
  saddle, LS.1), and `J(z_sad) = S_k - Theta(delta'^2)` (f stationary at pi - a_k
  with f'' < 0), a fortiori in `(S_k - c delta', S_k)`; the
  downhill reference flow from B'' (chosen with closure off
  W^s_loc, on the C_k side - possible since W^s_loc is
  codimension 1 and z_sad sits on the C_k-side slice) descends to
  B_{delta/4}(C_k) in bounded time (compactness off the stable
  set; LS.3 attraction), giving the order-one downhill and hence
  `P_x(hit B'') >= c(delta) exp(-beta(S_k - m_k + err(delta)))`
  uniformly on B_{delta/2}(C_k), exactly as in SH.3.  THE CROSSING:
  from B'', one L1-Z displacement of `K delta` (LS.5a-Z-SP:
  offsets priced separately, K = 2; landing margin delta/2 by A8)
  lands strictly on the FAR side of W^s_loc - STILL WINDING k
  (stated honestly; the saddle is a_k-far from Delta) - at cost
  exp(-beta err(delta));
  then the crossing time is UNIFORM: the displaced set `K_c :=
  closure(B_{C* K delta})` is compact and disjoint from the CLOSED
  local stable manifold (SR-LS1's separation), so by LS.2b every
  forward flow line from K_c reaches and crosses Delta in finite
  time; by continuous dependence of the flow on initial conditions
  over the compact K_c, the crossing time tau_cross(x) is
  upper-semicontinuous on K_c and `T_c(delta) := sup_{x in K_c}
  tau_cross(x) < infinity`.  SH.2 max-norm tracking then shadows
  each flow line to its post-crossing point (strictly inside the
  adjacent sector) at order-one probability: the tracked endpoint
  has `w != k` - THE LABEL HAS CHANGED.
RENEWAL: rounds = RELOCATE then (if at C_k) ATTEMPT, total uniform
duration T_round(delta, eps); each round ends with a label change
with probability `p >= c(delta) exp(-beta(S_k - m_k +
err(delta)))` from ANY winding-k state (the RELOCATE phase's own
change branches only help).  Markov at round ends:
`P_q(tau_change > n T_round) <= (1 - p)^n`, so `E_q[tau_change] <=
T_round / p`, and both limit forms follow as in [MACH-UP] SH.4
(beta -> infinity, then delta, eps -> 0).  Combining with the
lower bound: the two-sided limit.  QED (the upper's ground legs
ride lane-minmig-proofs M1/M2 - LS-MIN-MIG discharged).

## Theorem LS.6 (flagship discharge: k = 1, N >= 10 - hypothesis rows ALL DISCHARGED; LS-MIN-MIG discharged (XM-R16-authorized))

```text
C1-SUB(1): displayed in Standing Data - holds exactly for N >= 10.
RANGE(N, 1): displayed in Standing Data - holds for N >= 5, a
  fortiori N >= 10.
SADDLE-HYP(N, 1): a_1 = pi/(N - 2) <= pi/8 < pi/2 for N >= 10;
  LS.4 applies.
SADDLE-LOWEST(N, 1): must show Crit(J) intersect D_eps = C_1.
  (a) D_eps carries w = 1 and misses Delta (LS.3-(F1a), the
      SADDLE-LOWEST-free part; the Standing Data dependency order
      displays the acyclicity).  So
      on-Delta criticals and criticals of ANY winding j != 1
      (including C_{-1} at level m_1, and every C_j with m_j < S_1
      at large N) are excluded OUTRIGHT - they are not in a
      w = 1, Delta-free set.
  (b) Winding-1 criticals: by the corpus classification (P0.1:
      all bond sines equal), a winding-1 critical configuration
      has bonds on at most two branches {alpha, pi - alpha} (or
      {alpha, -pi - alpha} for alpha < 0), p = the number of
      upper-branch bonds; the level is `kappa[N - (N - 2p) c]`,
      `c = cos alpha >= 0` (relabeling as in LS.2(i)).  p = 0:
      C_1 (level m_1).  p = 1, positive branch: the constraint
      `pi + (N - 2) alpha = 2 pi` gives alpha = a_1: SP_1 at S_1
      (level S_1 - eps-excluded from D_eps).  p = 1, negative
      branch: `-pi + (N - 2) alpha = 2 pi` gives alpha = 3 pi/
      (N - 2) > 0, contradicting alpha < 0: infeasible.  p >= 2:
      level >= `kappa[N - (N - 4)] = 4 kappa` (minimizing over
      c in [0, 1]) - and `S_1 <= kappa[2 + (N - 1) a_1^2/2] =
      kappa[2 + (N - 1) pi^2/(2 (N - 2)^2)] <= 2.7 kappa <
      4 kappa` for N >= 10 ((N - 1) pi^2/(2 (N - 2)^2) <=
      9 pi^2/128 < 0.7): excluded from D_eps.
  Hence Crit intersect D_eps = C_1.
```

CONSEQUENCE (two-sided; LS-MIN-MIG discharged (XM-R16-authorized)): for
k = 1, N >= 10, every q in the strict sublevel components:

```text
lim beta^-1 log E_q[ tau_change ] = S_1 - m_1,
S_1 = kappa[(1 + cos(pi/(N - 2))) + (N - 1)(1 - cos(pi/(N - 2)))].
```

Illustration (no numeric claims): at N = 10 the label rate
`S_1 - m_1 ~ 0.70 kappa` vs the D-exit rate `2 kappa - m_1 ~ 0.09
kappa`: THE LABEL OUTLIVES ITS ENERGY DOMAIN exponentially -
leaving the basin is cheap; changing the topology is what costs.
The certified label lower bounds were true and far from tight; the
true barrier is the saddle.  QED.

## Honest Boundary (recorded, not claimed)

```text
LS-MIN-MIG: DISCHARGED (lane-minmig-proofs-v1.md; release authorized by XM-R16);
  the renewal legs now ride the local toolkit (M1: L2 + L1'; M2:
  L1-Z kicks). The blanket conditionality clause formerly here is
  RETIRED; the typed gaps CARRIED are the artifact's register
  (GAP-M1-NORM, L1-Z-TUBE, GAP-M5-EUC).
STAGE 1 = the passive single loop only.  Coupled / composed /
  symmetric label laws: STAGE 2, typed open (the h(S_k) reshaping
  pattern is a conjecture, NOT claimed).
General k >= 2: rows typed per (N, k); discharged only for k = 1,
  N >= 10.  k = 0: no sector-change statement is studied here (the
  object tau_change from Sigma_0 is defined but its law is not
  claimed).
tau_touch(Delta) vs tau_change: both governed by S_k HERE (Delta is
  unreachable below S_k by LS.2(iii)); the collapse is
  stage-1-specific, typed.
Exponential order only; no prefactors (no Langer-style prefactor
  analysis); err/eps/delta and all T's symbolic.
The gate-v15 boundary is SUPERSEDED IN DIRECTION, not contradicted:
  the label answer sits at the saddle, ABOVE the v15 gap's upper
  end (the 2 kappa cap region; note S_k stays strictly below the
  4 kappa level of the ON-Delta criticals); the v15 D-exit law
  stands and is CONSUMED here ([MACH-UP] lemmas in their original scope + LS.5a's variant).
Which adjacent sector receives the flip (k - 1 vs k + 1), exit
  location, and the multi-slip hierarchy: not in scope.
Skew: not covered (reversal route; detailed balance).
```

## False Inference Firewall

```text
label rate >> D-exit rate => the domain law was wrong : BLOCKED
  (different objects, both two-sided laws now typed)
saddle = physical phase slip : BLOCKED (a critical point of a
  mathematical energy; anti-quantization firewall binding; no
  literature analogy is imported)
S_k barrier => the label is "protected" semantically : BLOCKED
  (a rate statement; meaning is the unratified M5 layer's business)
stage-1 law => maintained/coupled label laws : BLOCKED (stage 2)
anything here => agency : BLOCKED
```

## Verdict

```text
Lane-LS Label Sharpness v1 (stage 1) = REBUILT AFTER A FAIL WAVE
  (L-A1; the third FAIL of the arc, on its newest analysis)
gate-v16 build = COMPLETE (the 3-lens blind L-A2f was subsequently
  GRANTED - assurance head above; the "pending" wording here
  predated it)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = (consumed)
  governance/gate-v16-campaign-closeout-v1.md (landed)
```
