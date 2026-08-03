# PROD-EXCURSION — the discharge design (TYPED, NOT PROVED; lead, 2026-07-20)

Status:

```text
status = DESIGN RECORD v1.1 (lens-corrected 2026-07-20: 2-lens
  fresh review returned REPAIRABLE x2 - PE.2's normalization device
  REPLACED, PE.4's object relabeled per-cycle, PE.5's kernel
  CORRECTED from an exit-barrier to a LEVEL condition with the
  lambda-monotonicity reversed, one Lean transcription fixed).
  Nothing below is claimed proved. This
  page designs the discharge of ROW PROD-EXCURSION (lane-lp:214-237)
  - the LAST genuinely new analytic row of the coupled window - so
  the operator's campaign gate is a one-word decision. The campaign
  itself is NOT opened by this page (expansion-class; operator go).
consumes-when-proved = R5a's continuous FLOORS round object (the
  OPERATIVE round since round 5 - R2's split is superseded; XM-R2
  F4 realignment 2026-07-21: the Palm/nu legs below are RETIRED
  and the burden is restated for ARBITRARY F_{sigma}-measurable
  starts in S) + M4/R5b's count bounds + the c_H / Delta_phi-gate
  ledger (lane-lp Standing Data). The target theorem is the
  companion row PROD-EXCURSION-COND: an a.s. bound conditional on
  the round-start field, uniform over arbitrary starts in S - an
  averaged cycle identity plus a comparison to ONE fixed restart
  law does NOT deliver it (XM-R2); the pointwise upgrade is a
  further named burden PE.3' beyond PE.1-PE.5.
stage plan = A: DONE for the occupation slope (B2b, at the WORST
  admissible lambda - see PE.5); A': OPTIONAL targeted trap probe
  (start IN G_{k,1}, measure occupation scaling vs the floor-level
  prediction - closes the zero-crossing blind spot);
  B: name SR-PE1 (renewal-reward/Kac) with hypothesis rows;
  C: fleet on PE.2(b) (the quasi-stationary lemma - the REAL
  probabilistic burden), PE.5(a) (the level condition over the
  admissible range), PE.5(b) (pointwise-to-basin upgrade +
  reachability).
anti-quantization firewall = BINDING / NO PHYSICS CLAIMS
```

## The object (the row, verbatim consumption shape)

Per renewal round of LP.5(c) from the ground ball: the expected time
spent OUTSIDE `R_0 = {w_theta = k, w_phi = 0, E_eps <= S_k + c_H}`,
before re-entry or theta-label change, is
`<= T_row(eps, delta) exp(-beta(c_H/2 - err(delta)))`, `T_row`
beta-free. The bare probability-floor version is FALSE at the
`G_{k,j}` pinning traps; the EXPECTATION shape is what LP.5(c)
consumes (its Wald step already conditions on the round-start field
- R2/M4 built exactly the object this row plugs into).

## Stage-A evidence (recorded 2026-07-10; re-read 2026-07-20)

`numerics/results/sde_product_results.json` (N = 10, k = 1,
eps = 0.05, lambda = kappa): `log(outside-time per round)` falls
LINEARLY in beta with slope `-0.348` across beta = 10..16 - against
the row's demanded `-c_H/2 = -0.163` and matching the STRONG
prediction `-c_H = -0.325` of the cycle-occupation route below
(prefactor drift accounts for the excess). Doorway entry levels
concentrate at `S_k + c_H + O(1/beta)`; excursion mean durations
shrink sub-exponentially (0.25 -> 0.11); ZERO `Delta_phi` gate
crossings in 3M steps at every beta - the trap branch is
exponentially subdominant exactly as the ledger margin predicts.
A probe, not a proof; moderate-beta window.

## The route (two legs, one hard kernel)

PE.1 (CYCLE-OCCUPATION IDENTITY - the recorded 'reversibility
  round-trip' heuristic made rigorous). For the PLAIN reversible
  diffusion, S-return cycles from the cycle-stationary (Palm)
  entrance law satisfy the classical identity
  `E[occupation of B per cycle] = rho_beta(B) x E[cycle length]`
  (renewal-reward / continuous Kac). Named classical input SR-PE1
  with hypothesis rows (positive Harris recurrence on compact M -
  automatic; the Palm construction; the identity). SR discipline:
  named, hypothesis-checked, non-reproduced.
PE.2 (GIBBS NUMERATOR - lens-corrected device). Two pieces:
  (a) the ONE-LINE bound `rho_beta(B_out) <= exp(-beta(S_k + c_H
  - m_k - o(1)))`: Laplace numerator at the doorway floor
  `S_k + c_H`, normalizer lower-bounded by the k-BASIN'S OWN MASS
  `Z_beta >= c exp(-beta m_k)` - NO recurrent-class restriction is
  invoked (none exists: the diffusion on compact M with elliptic
  noise is irreducible; the v1 parenthetical was FALSE - lens
  catch). (b) the real proof burden, NAMED: a metastable-basin
  conditional (quasi-stationary) equilibrium lemma giving a
  beta-free CONDITIONED cycle length, plus the proof that cycles
  escaping to the global well contribute negligibly to the
  outside-B occupation. (b) is Stage-C work, not a one-liner.
PE.3 (RETIRED 2026-07-21, XM-R2 F4; kept as record). The nu
  comparison consumed the superseded R2 object. REPLACED BY:
  PE.3' (THE POINTWISE UPGRADE - a named burden, not designed
  yet): from the averaged cycle identity to an a.s. bound
  conditional on F_{sigma_{i-1}}, uniform over ARBITRARY starts
  X_{sigma_{i-1}} in S - candidate route: the L1' pointwise
  minorization gives every start's one-step law a density floor
  against Leb|_S, transferring the averaged bound to a pointwise
  one at an exp(beta O(h^2)) cost; the transfer must be proved on
  R5a's terminus, not asserted.
PE.4 (RESTART ACCOUNTING - lens-corrected object). The domination
  'absorption only truncates' IS valid (a theta-crossing mid-
  excursion only removes outside-time). But the ROW'S DELIVERABLE
  is the PER-CYCLE occupation from PE.1-3 ALONE:
  `E[outside per S-return cycle] <= exp(-beta(S_k + c_H - m_k
  - err))` - M4's input (E) consumes it PER-BLOCK and applies its
  OWN geometric count E[N] at the outer Wald sum. Folding E[N]
  into this row (the v1 text did) would DOUBLE-COUNT it at the M4
  interface (lens catch). The theta-to-theta AGGREGATE
  exp(-beta(c_H - eps-window - err)) - what the B2b numerics
  measure - is a DERIVED display, quoted only for the probe match.
  Margins: the per-block exponent S_k + c_H - m_k ~ 1.02 at the
  flagship dwarfs the c_H/2 = 0.163 target; the eps-window (~0.035
  at eps = 0.05) cannot reach c_H/2 anywhere in the eps_2-capped
  pinning range.
PE.5 (THE TRAP KERNEL - lens-CORRECTED shape). The v1 exit-barrier
  framing was the WRONG KERNEL: for a reversible diffusion the
  EXPECTED trap occupation is Gibbs-controlled by the trap FLOOR
  LEVEL - the entry pre-payment and the exit barrier CANCEL in the
  occupation identity (net exponent = doorway - floor). The correct
  Stage-C condition is a LEVEL condition:
  `m_k + m_j(lambda) >= S_k + c_H` (trap floor at or above the
  doorway) for every admissible j, with slack supplied by the
  per-block margin. Gkj_level's Lean-sealed closed form is
  `m_k(kappa) + m_j(lambda) + eps N(1 - cos(2 pi (k - j)/N))` (the
  v1 text dropped the k in the eps term - transcription FIXED; for
  j = k the eps term VANISHES). The Delta_phi gate is
  `m_k + 2 lambda` (equal to S_k + 4 c_H ONLY at lambda = kappa
  with the first c_H entry active). LAMBDA-MONOTONICITY (v1 had it
  BACKWARDS - lens catch): raising lambda RAISES the trap floors
  m_j(lambda) and EASES the condition; the WORST admissible point
  is the flagship infimum lambda -> kappa+, exactly where the B2b
  probe ran (zero gate crossings in 3M steps AT THE WORST POINT -
  the strongest consistency the probe could give, though zero
  direct evidence on trap occupation itself). THE HONEST RESIDUAL
  (Stage C's real work): the sealed Gkj facts are POINTWISE at the
  doubly-constant trap centers (lane-lt Z3 honesty note) - needed:
  (a) the level condition checked over (lambda, N, j) on the
  admissible range, and (b) the pointwise center level upgraded to
  a BASIN floor + round-reachability statement. If (a) fails on a
  sub-range, RE-SCOPE honestly.
  EDGE-PROBE NOTE (2026-07-21, prodexc_edge_probe.json, N = 18,
  lambda = 1.05 - the first row-true-failing cell): slope -0.715,
  ZERO gate crossings in ~2900 rounds - the gate prefactor
  exp(-beta(gate - S_k)) = exp(-0.88 beta) hides the trap term
  from ANY feasible MC; the probe is structurally blind to the
  asymptotic red flag. The beyond-window adjudication is THEOREM
  work; no further probing can settle it.

## PE.5(a) SCANS — REINTERPRETED 2026-07-21 (ADJ-2): the RED FLAG is
## WITHDRAWN — the scans tested the AGGREGATE threshold against the
## PER-ROUND row (the exact E[N] double-count PE.4's lens correction
## had already named)

ADJUDICATION VERDICT (ADJ-2, checker-verified to ~1e-16 across the
grid; lead-reverified by hand): the ROW as typed is PER-ROUND, and
its honest per-round trap contribution has exponent m_1(lambda) -
because R5a's rounds START AT THE GROUND (m_k), the per-round
gate-reach costs gate - m_k, and with the dwell gate - floor the
net is floor - m_k = m_1(lambda). The closed-form identity
  m_1(lambda) - c_H/2 = g(N)(lambda - 1/8) + (S_k - 2)/8 > 0
(both summands strictly positive for N >= 10, lambda >= 1) shows
the per-round condition HOLDS EVERYWHERE in the flagship range:
THE ROW AS TYPED IS REFUTED NOWHERE. The scans below remain
correct ARITHMETIC about the exponent floor - S_k = per-round x
E[N] - the AGGREGATE (theta-to-theta) occupation, a DERIVED
display the row never asserts (identity: M_ADJ1 + (S_k - m_k) =
m_1 - c_H/2 exactly). ADJ-1's window theorem stands as mathematics
about that aggregate display; no window hypothesis is needed on
the row itself. The E2 campaign's remaining work is therefore
purely CONSTRUCTIVE (PE.1, PE.2, PE.3', PE.5(b)) - on the WHOLE
flagship range.

## PE.5(a) SCAN RESULT (2026-07-20, closed-form arithmetic - as
## REINTERPRETED above; original red-flag narrative below is the
## superseded reading, preserved as record)

REFINEMENT (2026-07-21): the original scan tested the CONSERVATIVE
condition (trap floor >= the full doorway S_k + c_H). The ROW only
needs the net trap exponent >= c_H/2, i.e. floor >= S_k + c_H/2 - a
lower bar. Re-scan (results JSON, row_threshold_rescan): the
ROW-TRUE condition fails from N = 16 (lambda -> kappa+), N = 17
(lambda 1.05-1.1), N = 18 (1.2), N = 21 (1.5), N = 26 (2), N = 36
(3), N = 46 (4); worst margin -1.84 at (N = 200, lambda -> kappa+,
j = 1). THE HONEST WINDOW of the row as typed is therefore
N <= 15-16 at flagship-adjacent lambda, growing slowly with lambda
- slightly wider than the conservative scan suggested, same
conclusion: beyond the window the row needs re-scope or
reformulation, and the adjudication task stands as the campaign's
first job.

## PE.5(a) ORIGINAL SCAN (2026-07-20, conservative doorway threshold)

numerics/pe5_level_scan.py (pure sealed-closed-form arithmetic, no
simulation; 1910 cells over N = 10..200, lambda/kappa in [1+, 4],
all j): the LEVEL condition FAILS in 1787 cells. Shape of the
failure: the j = +-1 trap floors m_k + m_j(lambda) fall BELOW the
doorway S_k + c_H from N ~ 15 at lambda near kappa, and at large N
they fail at EVERY admissible lambda (m_j(lambda) -> 0 like 1/N
while the doorway -> 2 kappa). The flagship N = 10 point - where
the B2b probe ran - HOLDS with margin ~ +0.9; N in 10..14 hold.

CONSEQUENCE (stated honestly, not proved): if the occupation
arithmetic composes as PE.1-4 design it (per-visit dwell Gibbs-
controlled by gate-minus-floor; visit probability by gate-minus-
S_k; the barriers CANCEL leaving floor-vs-doorway), then the ROW
AS TYPED (T_row beta-free, exponent c_H/2) is likely FALSE for
N beyond ~14: a phi-ring that picks up winding near lambda = kappa
holds it for exp(beta x order-one) time while both rings' grounds
flatten. The row was always a TYPED CLAIM - no sealed canon is
contradicted - but the campaign's FIRST task is now ADJUDICATION,
not proof: (i) derive the true N-range of the row as typed
(candidate: the C1-SUB-like window where m_k + m_1(lambda) >
S_k + c_H/2), and (ii) for large N either RE-SCOPE LP.5's upper to
that window, or REFORMULATE the row (e.g. split the excursion
bound into a non-trap term at exp(-beta(c_H - err)) plus an
explicit trap-visit term exp(-beta(m_k + m_j - S_k)) and let
LP.5's Wald consume the SUM with an N-dependent window), or
STRENGTHEN the doorway (raise c_H's role). The B2b slope match at
N = 10 remains valid evidence FOR the in-window row.

## Defect-class cautions (inherited from the XM arc)

One round object only (R2's - never a second parallel construction);
conditioning fields must not contain the draws they claim
independence from (strong-Markov reroute pattern); the skeleton
undercounts sub-T* excursions - PE.1 is stated for the CONTINUOUS
occupation, so no skeleton-vs-continuous gap arises; explicit order
of limits: beta first at fixed (eps, delta, h), then delta, h, then
the eps-window; every constant beta-free or tracked.

## What this design does NOT do

It does not open the campaign (operator gate); it does not upgrade
the probe to evidence; it does not touch lane-lp's row (which stays
TYPED verbatim until the campaign lands and its own review signs);
it does not claim PE.5's ledger inequality - that derivation IS the
campaign's hard kernel.

---

# ADJ-1 — THE WINDOW THEOREM (E2 campaign, operator-gated GO 2026-07-21)

(grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE - ONE MAJOR, typed below as GAP-ADJ1-MONO; the LEAD independently reproduced the closed-form threshold against the scan grid: first-failing N = 16/17/17/18/21/26/36/46 EXACT at the eight lambdas.)


THE WINDOW THEOREM (ADJ-1). Units: kappa scaled out where convenient; k = 1, N >= 10 (flagship). All constants symbolic or exact.

== 0. SEALED CLOSED FORMS CONSUMED (verbatim shapes) ==
(CF1) Ring level, task-given and re-sealed as the Gkj trap floor:
      m_w(c) = c N (1 - cos(2 pi w / N)). Hence, writing
      g(N) := N (1 - cos(2 pi / N)),
      the theta-ground is m_k = kappa g(N) and the phi-ring trap value
      is m_j(lambda) = lambda N (1 - cos(2 pi j / N)); for j = 1,
      m_1(lambda) = lambda g(N). [lane-prodexc-design-v1.md:119-121,
      Gkj_level = m_k(kappa) + m_j(lambda) + eps N(1 - cos(2 pi(k-j)/N)),
      eps term vanishing at j = k.]
(CF2) Saddle level (PROD-SHELL closed form, k = 1):
      S_k = kappa[ 2 + (N-2)(1 - cos(pi/(N-2))) ] =: S(N).
      [lane-lt-label-tower-v1.md:105-113, machine-checked prod_shell_k1.]
(CF3) Band-height ledger:
      c_H = (1/4) min( m_k + 2 kappa - S_k , 4 kappa - S_k ).
      [lane-lp-product-saddle-v1.md:152-155.]
Numerical seal (edge-probe cell N=18, lambda=1.05, kappa=1): CF1 gives
m_k = 1.0855, CF2 gives S_k = 2.3074, CF3 gives c_H = 0.1945 — identical
to prodexc_edge_probe.json.ledger. (Verified.)

The ROW-TRUE occupation condition to be analysed (PE.5(a), refined form;
pe5_level_scan.json row_threshold_rescan): the net trap-occupation
exponent must respect the row's rate c_H/2, i.e. for every reachable
trap index j,
      m_k + m_j(lambda) - S_k  >=  c_H/2.                         (RT_j)
The eps term of CF1 is dropped throughout; it is >= 0 and only RAISES
trap floors, so working without it yields the eps-UNIFORM window (the
window holds for every eps in [0, eps_2), consistent with the declared
order of limits: beta first, then delta/h, the eps-window last).

== 1. THE BINDING TRAP IS j = +-1 (from monotonicity of m_j in j) ==
Reachable traps are the pinning tori G_{k,j} = C_k x C_j^phi with j != 0
(j = 0 is R_0 itself). The map j |-> m_j(lambda) = lambda N(1 - cos(2 pi j/N))
is a strictly increasing function of |j| for 1 <= |j| <= N/2, because
theta |-> 1 - cos(theta) is strictly increasing on (0, pi] and
2 pi |j|/N traverses (0, pi] as |j| goes 1 .. N/2. In (RT_j) the level
S_k + c_H/2 and m_k are j-independent, so the LEFT side is minimized —
hence (RT_j) is HARDEST, i.e. BINDING — at the SMALLEST reachable |j|,
namely |j| = 1. Because cos is even, m_{+1} = m_{-1}, so j = +1 and
j = -1 tie in the conservative (eps-dropped) form; restoring the eps
term of CF1 adds eps N(1 - cos(4 pi/N)) > 0 to the j = -1 floor and 0
to the j = +1 floor, making j = +1 the unique binding trap and
confirming that dropping eps is conservative. This matches the scan:
argmin_reachable_j in {1, N-1} at every failing cell and
n_reachable_traps = 2 throughout (pe5_level_scan violations_sample).
Verified: m_j strictly increasing in |j| for N in {15,18,26,46,100,200},
and margin(j=1) < margin(j=2) < margin(j=3) at N=18 (−0.179, 3.103,
8.131). Therefore the window is governed by (RT_1) alone. QED step 1.

== 2. THE c_H LEDGER ENTRY IS FIXED ON THE FLAGSHIP RANGE ==
The two entries of CF3 differ by
      (m_k + 2 kappa - S_k) - (4 kappa - S_k) = m_k - 2 kappa
                                             = kappa(g(N) - 2).
Since g(N) = N(1 - cos(2 pi/N)) is strictly decreasing with
g(10) = 1.910 < 2, one has g(N) < 2 for all N >= 10, so the FIRST entry
is the active minimum throughout:
      c_H = (m_k + 2 kappa - S_k)/4 = (kappa g(N) + 2 kappa - S(N))/4.
(Verified: the active entry is 'first' at every one of the eight
first-failure cells.) This is the only place the ledger's min branches;
fixing it makes the window an exact algebraic region.

== 3. THE MARGIN FUNCTION AND THE REGION W(k=1) ==
Set kappa = 1. Define the row-true margin
      M(N, lambda) := m_k + m_1(lambda) - S_k - c_H/2
                    = g + lambda g - S - (g + 2 - S)/8.
Collecting terms (exact identity; verified equal to the direct
expression to machine precision, max discrepancy 9e-16 over the full
N=10..200 x lambda grid):
      M(N, lambda) = (lambda + 7/8) g(N) - (7/8) S(N) - 1/4.        (M)
      W(k=1) := { (N, lambda) : M(N, lambda) >= 0 }
              = { (N, lambda) : (lambda + 7/8) g(N) >= (7/8) S(N) + 1/4 }.
Equivalently, in the row's own vocabulary,
      W(k=1) = { (N, lambda) : m_k + m_1(lambda) >= S_k + c_H/2 }.

== 4. THE THRESHOLD CURVE N*(lambda) (closed / implicit form) ==
g(N) is strictly decreasing (g(N) = 2 pi^2/N + O(N^-3)) and S(N) is
strictly increasing (S(N) = 2 + pi^2/(2(N-2)) + O(N^-2)) in N, so
M(N, lambda) is STRICTLY DECREASING in N and STRICTLY INCREASING in
lambda. Hence for each lambda there is a unique real threshold
N*(lambda) with
      M(N, lambda) >= 0  <=>  N <= N*(lambda),
and the boundary curve M(N*, lambda) = 0 is, in closed form,
      lambda*(N) = ( (7/8) S(N) + 1/4 ) / g(N) - 7/8
                 = ( 7 S(N) + 2 ) / ( 8 g(N) ) - 7/8,               (BND)
so (N, lambda) in W(k=1)  <=>  lambda >= lambda*(N). The integer
first-failing N at fixed lambda is the least N with M(N, lambda) < 0,
= floor(N*(lambda)) + 1. Sample: lambda*(18) = 1.215, so N = 18 lies in
W iff lambda >= 1.215 (consistent with first-fail 18 at lambda = 1.2 and
hold at lambda = 1.35).

VERIFICATION AGAINST THE SCAN GRID (closed form (M), independent
recomputation): first-failing N per lambda =
      16, 17, 17, 18, 21, 26, 36, 46
at lambda/kappa = 1.0001, 1.05, 1.1, 1.2, 1.5, 2.0, 3.0, 4.0 — an EXACT
match to pe5_level_scan.json.row_threshold_rescan
.first_failing_N_per_lambda and to the eight values in the task. The
worst margin over the grid is M = -1.8368 at (N = 200, lambda = 1.0001,
j = 1), matching row_threshold_rescan.worst to 4 dp. (Verified.)

== 5. W IS A BOUNDED N-BAND AT EVERY lambda (the asymptotic trap) ==
As N -> infinity at fixed lambda, g(N) -> 0 and S(N) -> 2, so from (M)
      M(N, lambda) -> (lambda + 7/8)(0) - (7/8)(2) - 1/4 = -2 < 0,
for EVERY fixed lambda. Thus no fixed coupling rescues large N: the
doorway S_k + c_H/2 -> 2 kappa while the trap floor
m_k + m_1(lambda) = (1 + lambda) g(N) -> 0 (both rings' grounds flatten
like 1/N). The window is therefore a bounded band N <= N*(lambda),
with N*(lambda) growing only linearly in lambda: from (M),
N*(lambda) ~ (8 pi^2/7)(lambda + 7/8) as lambda -> infinity (e.g.
N*(4) ~ 55, loose upper envelope of the observed 45). This IS the
red-flag: the row as typed (T_row beta-free, exponent c_H/2) cannot
hold for N beyond the band, at any admissible lambda. The prodexc_edge_probe
MC is structurally blind to this term — the gate prefactor
exp(-beta(Delta_phi_gate - S_k)) = exp(-0.88 beta) hides the trap from
any feasible beta — so the beyond-window adjudication is THEOREM work,
exactly as recorded (lane-prodexc-design-v1.md:138-144).

============================================================
(b) RE-SCOPE PRESCRIPTION — replacement text for lane-lp-product-saddle-v1.md:214-237
============================================================
Replace the block "ROW PROD-EXCURSION(N, k): ... the excursion shape is
what SH.4 consumes." with the following (window hypothesis made
explicit so every LP.5(c)/R5a consumer carries it):

  ROW PROD-EXCURSION(N, k): in the LP.5(c) renewal from the ground
    ball (eps < eps_2, q in D_k(eps)), let R_0 := {w_theta = k,
    w_phi = 0, E_eps <= S_k + c_H}.  Every path exit from R_0 passes
    the doorway {E_eps > S_k + c_H} (Delta_phi is level-blocked inside
    R_0 by the c_H ledger; a Delta_theta hit IS the renewal's target
    event).
    WINDOW HYPOTHESIS (ADJ-1, 2026-07-21 - CARRIED BY EVERY CONSUMER):
    the claim below is asserted ONLY for (N, lambda) in
      W(k=1) := { (N, lambda) : m_k + m_1(lambda) >= S_k + c_H/2 }
              = { (N, lambda) : (lambda + 7/8) g(N) - (7/8) S_k
                  - 1/4 >= 0 },   g(N) := N(1 - cos(2 pi/N)),
      m_1(lambda) = lambda g(N), S_k = 2 kappa + kappa(N-2)
      (1 - cos(pi/(N-2))), c_H = (m_k + 2 kappa - S_k)/4 on N >= 10.
    W is the eps-UNIFORM window (the Gkj eps-term only raises floors)
    and is a bounded N-band per lambda: it holds for N <= N*(lambda)
    and fails for N > N*(lambda), N*(lambda) the root of the boundary
    lambda = (7 S_k + 2)/(8 g(N)) - 7/8; the binding trap is j = +-1
    (m_j increasing in |j|).  First-failing N = 16,17,17,18,21,26,36,46
    at lambda/kappa = 1.0001,1.05,1.1,1.2,1.5,2,3,4
    (pe5_level_scan.json row_threshold_rescan).
    CLAIM (typed): for (N, lambda) in W(k=1), the expected time per
    renewal round spent OUTSIDE R_0, before the excursion either
    re-enters {E_eps <= S_k + c_H, w_phi = 0} or changes the
    theta-label, is <= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))),
    T_row beta-free.
    OUT OF WINDOW ((N, lambda) not in W): the row as typed is NOT
    asserted - the j = +-1 pinning traps sit BELOW the half-doorway
    (net trap exponent m_k + m_1(lambda) - S_k < c_H/2, negative margin
    growing to -2 as N -> infinity), so LP.5(c) must consume a RE-SCOPED
    form: EITHER cap LP.5's upper N-range at N*(lambda), OR split the
    excursion bound into a non-trap term exp(-beta(c_H - err)) plus an
    explicit trap-visit term exp(-beta(m_k + m_1(lambda) - S_k)) and let
    LP.5's Wald consume the SUM with the N-dependent window (the
    reformulation named in lane-prodexc-design PE.5(a) CONSEQUENCE).
    TYPED - NOT discharged: the eps > 0 critical structure above the
    band and the whole w_phi != 0 stratum are unclassified; the
    G_{k,j} = C_k x C_j^phi pinning tori (E_eps-critical for EVERY eps,
    at reachable levels for admissible lambda) are REAL traps in the
    excursion region - any bare probability-floor version of this row is
    FALSE at them, which is why the row carries the EXCURSION shape.
    COMPANION ROW PROD-EXCURSION-COND (added 2026-07-21, R5b): the
    conditional-uniform form - the SAME expected-time bound conditional
    on every admissible round-start sigma-field, a.s., uniform over
    round starts in the base ball, CARRYING THE SAME WINDOW HYPOTHESIS
    (N, lambda) in W(k=1).  TYPED, NOT discharged; the migration pieces
    consume THIS row (never a silent strengthening of the row above);
    discharge route = lane-prodexc-design (PE.1-PE.5 PLUS the pointwise
    upgrade PE.3'); the window W(k=1) is where PE.5(a)'s level condition
    holds by arithmetic.  Consumed ONLY by LP.5(c).  SUPERSEDES the
    wave-1 row PROD-RELOCATE-HIGH (a probability-floor row does NOT
    compose - on its complementary event the process can cross Delta_phi
    and pin on G_{k,j} with no return floor; the excursion shape is what
    SH.4 consumes).

[SUPERSEDED CONSUMER INSTRUCTION (XM-R4 finding 5 + ADJ-2,
2026-07-21): the one-liner formerly here prescribed folding an
N-window into LP.5's hypothesis and named the pre-flip LP-MIN-MIG
row. BOTH halves are obsolete: ADJ-2 established that NO window
hypothesis enters the row or LP.5 (the window was the AGGREGATE
display's, not the row's), and the release manifest propagates
PROD-EXCURSION + PROD-EXCURSION-COND (the COND companion is what
the Wald tower consumes) with LP-MIN-MIG discharged. See the
reinterpretation banner and the release manifest. Preserved as
the design-time record.]

============================================================
(c) HONEST NOTE: what W buys, and the surviving burdens
============================================================
Inside W(k=1), the row is DESIGNED-provable, meaning the PURELY-LEVEL
obstruction is cleared by the arithmetic of parts 0-4 and the remaining
work is exactly the probabilistic burdens the design already named:

  DISCHARGED-BY-ARITHMETIC inside W (this piece):
  - PE.5(a) LEVEL CONDITION. By construction, on W the binding trap
    floor satisfies m_k + m_1(lambda) >= S_k + c_H/2, so the
    reversible-diffusion occupation identity's NET exponent
    (doorway S_k + c_H  minus  trap floor m_k + m_j) leaves the trap
    contribution bounded by exp(-beta(c_H/2)) — the entry pre-payment
    and exit barrier CANCEL (PE.5 corrected kernel,
    lane-prodexc-design:112-121). The j = +-1 traps being binding
    (part 1) makes this the WHOLE level check.
  - PE.1 (cycle-occupation identity, SR-PE1 renewal-reward/Kac) and
    PE.2(a) (the one-line Gibbs numerator rho_beta(B_out) <=
    exp(-beta(S_k + c_H - m_k - o(1))), normalizer lower-bounded by the
    k-basin mass, no recurrent-class restriction) compose to give the
    per-cycle occupation at the row's rate on W.
  - PE.4 (restart accounting: absorption only truncates outside-time;
    the row delivers the PER-CYCLE occupation and M4 applies E[N] at the
    outer Wald sum - no double count). The per-block margin
    S_k + c_H - m_k ~ 1.02 at the flagship dwarfs the c_H/2 target, so
    the non-trap term is never the obstruction.

  STILL TYPED (surviving burdens, even inside W):
  - PE.2(b) THE QUASI-STATIONARY LEMMA (the REAL probabilistic burden):
    a metastable-basin conditional (quasi-stationary) equilibrium giving
    a beta-free CONDITIONED cycle length, plus the proof that cycles
    escaping to the global well contribute negligibly to the outside-B
    occupation. Stage-C, not a one-liner. [lane-prodexc-design:82-86.]
  - PE.3' THE POINTWISE / CONDITIONAL UPGRADE (needed for the COND
    companion, hence for R5a (D)'s GAP-PE-COND): from the averaged cycle
    identity to an a.s. bound conditional on F_{sigma_{i-1}}, uniform
    over ARBITRARY starts in S; candidate route = the L1' pointwise
    minorization at exp(beta O(h^2)) cost, to be PROVED on R5a's
    terminus, not asserted. [lane-prodexc-design:88-96;
    lane-minmig:3156 GAP-PE-COND.]
  - PE.5(b) reachability / basin: the sealed Gkj facts are POINTWISE at
    the doubly-constant trap centers (lane-lt Z3 honesty note); the
    center level must be upgraded to a BASIN floor + round-reachability
    statement inside W. [lane-prodexc-design:132-137.]

Net: parts 0-4 prove the WINDOW THEOREM (the exact region W, the closed
threshold curve, and j = +-1 binding); inside W the row's level content
is settled by arithmetic and PE.1/PE.2(a)/PE.4 supply the design skeleton,
so the row is DESIGNED-provable there; the residual burdens PE.2(b),
PE.3', PE.5(b) are probabilistic and remain typed. Outside W the row is
FALSE as typed and must be re-scoped per (b). No sealed canon is
contradicted: PROD-EXCURSION was always a TYPED row.


### ADJ-1 typed gaps

GAP-ADJ1-MONO (the checker MAJOR): the piece asserted S(N) strictly increasing - FALSE (S(N) decreases to 2 kappa). The unique-threshold conclusion needs the QUANTITATIVE derivative comparison (lambda + 7/8)|g'(N)| > (7/8)|S'(N)| on N >= 10, lambda >= 1 (asymptotically 2 pi^2 (lambda + 7/8) vs 7 pi^2/16 per 1/N^2 - ample margin; the exact-N lemma is one fleet piece). Until it lands, the threshold-curve display rests on the verified grid + the asymptotics, typed honest.

### ADJ-1 consumed

SEALED CLOSED FORMS (all re-derived and numerically re-sealed against prodexc_edge_probe.json.ledger at N=18: m_k=1.0855, S_k=2.3074, c_H=0.1945):
- (CF1) m_w(c) = c N(1-cos(2 pi w/N)); trap floor Gkj_level = m_k(kappa)+m_j(lambda)+eps N(1-cos(2 pi(k-j)/N)) [lane-prodexc-design-v1.md:119-121].
- (CF2) S_k = kappa[2+(N-2)(1-cos(pi/(N-2)))], k=1, machine-checked prod_shell_k1 [lane-lt-label-tower-v1.md:105-113].
- (CF3) c_H = (1/4) min(m_k+2 kappa-S_k, 4 kappa-S_k) [lane-lp-product-saddle-v1.md:152-155].
ROW-TRUE THRESHOLD: m_k+m_j(lambda)-S_k >= c_H/2 [pe5_level_scan.json row_threshold_rescan; first_failing_N_per_lambda; worst -1.8368 at N=200,lambda=1.0001].
ROW TEXT REPLACED: PROD-EXCURSION + PROD-EXCURSION-COND [lane-lp-product-saddle-v1.md:214-237].
TRAP FACTS: G_{k,j}=C_k x C_j^phi E_eps-critical for every eps [lane-lp:226-229; lane-lt:143].
DESIGN ROUTE: PE.1/PE.2(a)/PE.2(b)/PE.4/PE.5(a)(b) [lane-prodexc-design-v1.md:66-137]; PE.3' [lane-prodexc-design:88-96].
ROUND OBJECT the occupation statement rides: R5a continuous FLOORS round + (D) duration bound + GAP-PE-COND [lane-minmig-proofs-v1.md:2985-3072, 3156]; Lemma KD / crossing-floor context [lane-minmig:3854-4085].
EDGE-PROBE blindness note [lane-prodexc-design:138-144; prodexc_edge_probe.json].

---

# ADJ-1b — the strict N-monotonicity lemma (discharges GAP-ADJ1-MONO; checker SOUND)

(grade: draft PROVED; checker SOUND)

LEMMA ADJ-1b (STRICT N-MONOTONICITY OF THE ROW-TRUE MARGIN — discharge of
GAP-ADJ1-MONO). Fix kappa = 1, k = 1. On the real domain N >= 10 put

      g(N)  := N (1 - cos(2 pi / N)),                    [CF1, lane-prodexc-design-v1.md:224-228]
      S(N)  := 2 + (N-2)(1 - cos(pi/(N-2))),             [CF2, lane-lt-label-tower-v1.md:105-113]
      M(N, lambda) := (lambda + 7/8) g(N) - (7/8) S(N) - 1/4.   [(M), lane-prodexc-design-v1.md:287]

Then for every lambda >= 1, M(., lambda) is a continuously differentiable, STRICTLY
DECREASING function of the real variable N on [10, infinity); moreover
partial_lambda M = g(N) > 0, so M is strictly increasing in lambda. Consequently, for
each lambda >= 1 the equation M(N, lambda) = 0 has at most one root N*(lambda) in
[10, infinity), and

      M(N, lambda) >= 0   <=>   N <= N*(lambda),

which validates the closed-form boundary (BND) and the integer first-failing rule
floor(N*(lambda)) + 1. This corrects and replaces the draft's assertion that S(N) is
increasing (S(N) in fact DECREASES to 2; see step 2): monotonicity of M holds not
because S grows but because the decrease of the g-term strictly dominates the decrease
of the S-term.

PROOF.

Step 0 (reduction to a derivative sign, worst lambda). M is smooth in N on [10, infinity)
(both cosine arguments 2 pi/N and pi/(N-2) are smooth and bounded there). Then

      dM/dN = (lambda + 7/8) g'(N) - (7/8) S'(N).                                (D0)

We show below g'(N) < 0 and S'(N) < 0 on N >= 10, so writing |g'| = -g', |S'| = -S',

      dM/dN = -(lambda + 7/8)|g'(N)| + (7/8)|S'(N)|,

and dM/dN < 0 is EQUIVALENT to the quantitative comparison

      (lambda + 7/8) |g'(N)|  >  (7/8) |S'(N)|.                                  (Q)

Since lambda + 7/8 is increasing in lambda, the left side is smallest at lambda = 1,
where lambda + 7/8 = 15/8. Hence it suffices to prove the single lambda-free inequality

      15 |g'(N)|  >  7 |S'(N)|      for all N >= 10;                             (Q1)

then for every lambda >= 1, (lambda + 7/8)|g'| >= (15/8)|g'| > (7/8)|S'| by (Q1)/8, giving (Q).

Step 1 (the two derivatives are the SAME transcendental function of a shrinking angle).
Differentiating g(N) = N(1 - cos(2 pi/N)) and using d/dN[-cos(2 pi/N)] = -(2 pi/N^2) sin(2 pi/N):

      g'(N) = (1 - cos(2 pi/N)) - (2 pi/N) sin(2 pi/N).

Write S(N) = 2 + h(N-2) with h(u) := u(1 - cos(pi/u)); since dN = du,

      S'(N) = h'(N-2) = (1 - cos(pi/(N-2))) - (pi/(N-2)) sin(pi/(N-2)).

Both are the single function phi evaluated at an angle:

      phi(t) := 1 - cos t - t sin t,     g'(N) = phi(x),  x := 2 pi/N,
                                          S'(N) = phi(y),  y := pi/(N-2).

For N >= 10 the angles lie in the shrinking intervals
      x = 2 pi/N in (0, pi/5],     y = pi/(N-2) in (0, pi/8],
both contained in (0, pi/2).

Step 2 (SIGN: phi < 0 on (0, pi/2), hence g' < 0 and S' < 0; S is DECREASING).
phi(0) = 0 and phi'(t) = sin t - (sin t + t cos t) = -t cos t. On (0, pi/2), cos t > 0,
so phi'(t) < 0; thus phi is strictly decreasing on (0, pi/2) and phi(t) < phi(0) = 0
there. In particular phi(x) < 0 and phi(y) < 0, i.e.

      g'(N) = phi(2 pi/N) < 0   and   S'(N) = phi(pi/(N-2)) < 0     for all N >= 10.

So g is strictly decreasing (as the sealed closed-form analysis already used) AND S is
strictly decreasing — the latter overturning the draft's "S increasing" claim, which was
the checker MAJOR. [Remark: phi'(t) = -t cos t shows phi decreases on (0, pi/2), turns at
t = pi/2, and re-crosses 0 near t ~ 2.33; phi < 0 holds on all of (0, 2.33), in particular
on (0, 2 pi/3] for every N >= 3, so g', S' < 0 well beyond the flagship range — but only
N >= 10, i.e. x <= pi/5, y <= pi/8, is needed here.]

Step 3 (QUANTITATIVE ENVELOPES via an alternating series with controlled tails).
Expand -phi(t) = t sin t + cos t - 1. Collecting the coefficient of t^{2m} from
t sin t = sum_{n>=0} (-1)^n t^{2n+2}/(2n+1)! and cos t - 1 = sum_{n>=1} (-1)^n t^{2n}/(2n)!:

      -phi(t) = sum_{m>=1} (-1)^{m-1} a_m t^{2m},    a_m := (2m-1)/(2m)! > 0,

with a_1 = 1/2, a_2 = 1/8, a_3 = 1/144, a_4 = 1/5760, ..., i.e.

      -phi(t) = t^2/2 - t^4/8 + t^6/144 - t^8/5760 + ... .

The magnitudes decrease strictly: t_{m+1}/t_m = a_{m+1} t^2 / a_m = t^2 / [(2m-1)(2m+2)] <= t^2/4,
and on our ranges t <= pi/5 gives t^2/4 <= (pi/5)^2/4 < 1 (a fortiori for y <= pi/8). By the
alternating-series bracketing theorem (strictly decreasing magnitudes to 0), the sum lies
between any two consecutive partial sums:

      t^2/2 - t^4/8  <=  -phi(t)  <=  t^2/2       for all t in (0, pi/5].              (E)

The lower bound (stop after the negative t^4 term) and the upper bound (stop after the
positive t^2 term) are exactly the two envelopes we need.

  (a) LOWER bound on |g'|, at t = x = 2 pi/N (note (2 pi/N)^4/8 = 2 pi^4/N^4):
      |g'(N)| = -phi(2 pi/N) >= (2 pi/N)^2/2 - (2 pi/N)^4/8
              = 2 pi^2/N^2 - 2 pi^4/N^4 = (2 pi^2/N^2)(1 - pi^2/N^2).               (Lg)

  (b) UPPER bound on |S'|, at t = y = pi/(N-2):
      |S'(N)| = -phi(pi/(N-2)) <= (pi/(N-2))^2/2 = pi^2 / (2 (N-2)^2).              (US)

Both hold for all N >= 10, where x, y in (0, pi/5] as required by (E).

Step 4 (CLOSING (Q1) WITH A WORKED UNIFORM MARGIN). Combine (Lg) and (US):

      15 |g'(N)|          >= (30 pi^2/N^2)(1 - pi^2/N^2),
      7  |S'(N)|          <= 7 pi^2 / (2 (N-2)^2).

Their ratio therefore satisfies, for every N >= 10,

      15|g'(N)| / (7|S'(N)|)  >=  (60/7) * (1 - pi^2/N^2) * (N-2)^2 / N^2.

Two monotone, elementary minorizations on N >= 10 make this a constant:
  (i) 1 - pi^2/N^2 is increasing in N, so 1 - pi^2/N^2 >= 1 - pi^2/100 = 1 - pi^2/100;
  (ii) (N-2)/N = 1 - 2/N is increasing in N, so ((N-2)/N)^2 >= (8/10)^2 = 16/25.
Hence

      15|g'(N)| / (7|S'(N)|)  >=  (60/7)(16/25)(1 - pi^2/100)
                              =  (192/35)(1 - pi^2/100)
                              =  4.9442...  >  1                                    (WM)

(the exact constant is (192/35)(1 - pi^2/100); numerically 5.4857 x 0.90130 = 4.944).
Thus 15|g'(N)| > 7|S'(N)| for every real N >= 10 — inequality (Q1) — with a uniform slack
factor >= 4.94. Boundary check at the corner (N, lambda) = (10, 1): |g'(10)| = -phi(pi/5)
= 0.178333 with envelope floor (2 pi^2/100)(1 - pi^2/100) = 0.177910 <= 0.178333, and
|S'(10)| = -phi(pi/8) = 0.074159 with envelope ceiling pi^2/128 = 0.077106 >= 0.074159;
so dM/dN(10, 1) = -(15/8)(0.178333) + (7/8)(0.074159) = -0.26949 < 0, in agreement.

Step 5 (CONCLUSION). By Step 4, (Q1) holds on N >= 10; by Step 0 this yields (Q) for
every lambda >= 1, hence dM/dN < 0 there. Therefore M(., lambda) is strictly decreasing
on [10, infinity) for each lambda >= 1. From part 5 of the theorem
(lane-prodexc-design-v1.md:318-333), M(N, lambda) -> -2 < 0 as N -> infinity at fixed
lambda; combined with continuity and strict decrease, M has at most one zero N*(lambda) in
[10, infinity), and M(N, lambda) >= 0 <=> N <= N*(lambda). (If M(10, lambda) < 0 the window
is empty at that lambda, i.e. N*(lambda) < 10; if M(10, lambda) >= 0 the unique root exists,
possibly at +infinity is excluded by the -2 limit.) The boundary curve
lambda*(N) = (7 S(N) + 2)/(8 g(N)) - 7/8 (BND) is then the exact level set M = 0, and
(N, lambda) in W(k=1) <=> lambda >= lambda*(N) <=> N <= N*(lambda). Since partial_lambda M
= g(N) = N(1 - cos(2 pi/N)) > 0 (as 2 pi/N in (0, pi/5] gives 1 - cos > 0), M is strictly
increasing in lambda, so N*(lambda) is nondecreasing in lambda, consistent with the
observed growth of the first-failing N with lambda.

Step 6 (INTEGER-N monotonicity, a fortiori). For integers N2 > N1 >= 10, strict decrease
on the real interval gives M(N2, lambda) < M(N1, lambda); hence the least integer N with
M(N, lambda) < 0 is well-defined and equals floor(N*(lambda)) + 1, matching the sealed
grid first-failing values 16, 17, 17, 18, 21, 26, 36, 46 at
lambda = 1.0001, 1.05, 1.1, 1.2, 1.5, 2, 3, 4
(pe5_level_scan.json.row_threshold_rescan.first_failing_N_per_lambda). QED.

ORDER OF LIMITS / SR DISCIPLINE. This lemma is a purely deterministic real-analytic fact
about the sealed closed forms (CF1)-(CF2); it introduces no probabilistic input and no
beta, delta, h or eps dependence, so it is inert with respect to the declared order of
limits (beta first, then delta/h, eps-window last) and to the eps-uniformity statement
(the dropped Gkj eps-term only raises trap floors, lane-prodexc-design-v1.md:245-247).
No classical theorem is invoked beyond elementary calculus (mean value / monotone sign of
phi' and the alternating-series bracketing theorem), all reproduced above; nothing is
cited by name-only.

### ADJ1b-monotonicity — consumed

SEALED CLOSED FORMS (kappa = 1, k = 1), used verbatim:
- (CF1) g(N) = N(1 - cos(2 pi/N)); m_w(c) = c N(1 - cos(2 pi w/N)); m_1(lambda) = lambda g(N). [lane-prodexc-design-v1.md:119-121, 224-228]
- (CF2) S(N) = S_k = 2 + (N-2)(1 - cos(pi/(N-2))), machine-checked prod_shell_k1. [lane-lt-label-tower-v1.md:105-113]
- (CF3) c_H = (1/4)(m_k + 2 kappa - S_k) on the flagship range (first ledger entry active for N >= 10 since g(N) < 2), used only to define M via M = m_k + m_1(lambda) - S_k - c_H/2 = (lambda + 7/8) g - (7/8) S - 1/4. [lane-lp-product-saddle-v1.md:152-155; assembly at lane-prodexc-design-v1.md:280-291]
MARGIN IDENTITY (M): M(N, lambda) = (lambda + 7/8) g(N) - (7/8) S(N) - 1/4. [lane-prodexc-design-v1.md:287]
ASYMPTOTIC INPUT for the threshold conclusion: M(N, lambda) -> -2 as N -> infinity at fixed lambda. [lane-prodexc-design-v1.md:318-323]
GAP DISCHARGED: GAP-ADJ1-MONO — the draft's false "S(N) strictly increasing" claim and the missing quantitative derivative comparison (lambda + 7/8)|g'(N)| > (7/8)|S'(N)| on N >= 10, lambda >= 1. [lane-prodexc-design-v1.md:460, 295-307]
GRID CROSS-CHECK (not logically consumed, only corroborating): first_failing_N_per_lambda 16/17/17/18/21/26/36/46; worst margin -1.8368 at N=200, lambda=1.0001. [pe5_level_scan.json.row_threshold_rescan_2026_07_21]

### ADJ1b-monotonicity — typed gaps

NONE. GAP-ADJ1-MONO is fully discharged: strict monotonicity of M in N on the real domain N >= 10 for every lambda >= 1 is proved outright (Steps 0-5), with the derivative comparison (Q) closed by explicit, worked, uniform envelopes (E)/(Lg)/(US) and margin constant (192/35)(1 - pi^2/100) = 4.944 > 1 (WM). Integer-N monotonicity follows a fortiori (Step 6). No residual analytic assumption, no numerics-dependent step, no order-of-limits obligation is left open. The lemma does NOT touch, and makes no claim about, the surviving PROBABILISTIC burdens PE.2(b), PE.3', PE.5(b) inside W (lane-prodexc-design-v1.md:431-447) — those remain TYPED as before and are outside this piece's scope.


---

# ADJ-2 — the beyond-window adjudication (BLOCKED-honest; OUTCOME: the refutation target dies, the row survives per-round everywhere - see the reinterpretation banner)

(grade: draft BLOCKED; checker REPAIRABLE)

ADJ-2 — BEYOND-WINDOW ADJUDICATION FOR ROW PROD-EXCURSION. Units kappa=1, k=1, N>=10 (flagship). All constants symbolic or exact. Order of limits identical to R5a/LP.5: beta -> infinity FIRST at fixed (eps,delta,h=delta/2), then delta,h -> 0, then the eps-window; the eps-term of CF1 is dropped throughout (it only RAISES trap floors, so working without it is conservative and yields the eps-uniform statement).

== 0. OBJECTS AND CONSUMED FORMS ==
Sealed closed forms (verbatim, re-sealed against prodexc_edge_probe.json at N=18: m_k=1.0855, S_k=2.3074, c_H=0.1945):
  g(N):=N(1-cos(2 pi/N));  m_k = g(N);  m_1(lambda)=lambda g(N);
  trap floor  floor := m_k + m_1(lambda) = (1+lambda) g(N)     [CF1, lane-prodexc-design-v1.md:119-121];
  saddle      S_k = 2 + (N-2)(1-cos(pi/(N-2)))                  [CF2, lane-lt-label-tower-v1.md:105-113];
  band        c_H = (1/4)(m_k + 2 - S_k)  (active ledger branch on N>=10, ADJ-1 part 2) [CF3, lane-lp:152-155];
  doorway     E_eps = S_k + c_H  (top of R_0);
  phi-gate    gate := m_k + 2 lambda = S_k + 4 c_H  (equality at the active branch) [lane-prodexc-design:122-124; lane-lp:172-174].
Two exact barrier heights used below:
  entry (ground -> gate):  gate - m_k = 2 lambda;
  trap exit  (floor -> gate): gate - floor = 2 lambda - m_1 = lambda(2 - g(N)) > 0 on N>=10 (g(N)<2, ADJ-1 part 2).
The row (lane-lp:214-237) bounds the expected time PER RENEWAL ROUND spent outside R_0 by T_row exp(-beta(c_H/2 - err(delta))), T_row beta-free. The renewal round is R5a's continuous FLOORS round (terminus = min(delayed S-return, theta-label change), lane-minmig:3040-3050); each round STARTS POINTWISE at X_{sigma_{i-1}} in S = B_{delta/4}(g*), i.e. at ground level m_k (Round-start law, lane-minmig:3033); the geometric count E[N] ~ 1/p, p = crossing floor ~ exp(-beta(S_k - m_k + eps(...))) (R5a (P), lane-minmig:3069), is applied SEPARATELY at the outer Wald sum E[sum D_i] <= D_bar . E[N] (lane-minmig:3109-3113). PE.4 is explicit that folding E[N] into the per-round row DOUBLE-COUNTS it at the M4 interface (lane-prodexc-design:97-111).

== 1. THE RIGOROUS PER-ROUND TRAP-VISIT LOWER BOUND (reference = the ground m_k) ==
Fix (N,lambda) outside ADJ-1's window W, so floor - S_k < c_H/2. Consider one round on R5a's object started at x in S. A trap visit contributes to the outside-R_0 occupation; decompose the single-visit contribution multiplicatively, each factor a named FW input with hypothesis rows.

(i) REACH-GATE PROBABILITY, PER ROUND. The round starts at ground level m_k. To place probability on the trap G_{k,1} the path must first reach the phi-gate at level gate. By the sample-path LDP LOWER bound (SR-FW-LOW, the lower half of the FW rough theory, same source family as SR-T2/SR-T3; reversible gradient diffusion, I(phi) = (1/4) int|phi' + grad E_eps|^2, with equality I(phi)=E_eps(phi(T))-E_eps(phi(0)) along the reversed-gradient climb, lane-c-exit-time-lower-bound:53-71), for the connected component A_gate of {E_eps < gate} containing the ground ball,
      P_x( reach {E_eps >= gate} within the beta-free attempt horizon ) >= exp( -beta( gate - m_k + o(1) ) ),   x in S.
This exponent is gate - m_k = 2 lambda, measured FROM THE GROUND, because on R5a's round object x is at level m_k (lane-minmig:3033). Hypothesis rows: compact smooth manifold T^{2N} : HOLDS; reversible generator of the stated form : HOLDS; E_eps smooth : HOLDS; A_gate a component of a sublevel of E_eps with the ground circle its compact attractor (FW Ch.6 Cond.(A), one-compactum) : HOLDS. Non-reproduction recorded (SR discipline).

(ii) TRAP DWELL, CONDITIONAL ON GATE ENTRY. Once inside the pinning basin, the trap G_{k,j}=C_k x C_j^phi is E_eps-critical for every eps (lane-lt:143-146; lane-lp:225-228) with basin floor at level floor and its only exit back across the gate. By the FW exit-time LOWER bound in expectation (SR-T2 form, lane-c-exit-time-lower-bound:51-96): for A_trap the component of {E_eps < gate} containing G_{k,1} and any start q at the floor,
      liminf_{beta} beta^{-1} log E_q[ tau_exit(A_trap) ] >= gate - floor,   i.e.  E[dwell | gate entry] >= exp( beta( gate - floor - o(1) ) ).
Hypothesis rows identical to (i), with the internal compact attractor = the pinning torus G_{k,1} (E_eps-critical, degenerate flat rotation direction — exactly the SR-T2/SR-T3 degenerate-attractor case, lane-c-sector-persistence:46-51) : HOLDS. This is the corrected PE.5 kernel (the exit barrier is a genuine FW cost from the floor; lane-prodexc-design:112-121).

(iii) COMPOSE ON R5a's ROUND OBJECT, EXPLICIT CONDITIONING. By the strong Markov property at the gate-entry stopping time (R5a §3/§5, lane-minmig:3031,3060-3065 — the round outcome is a functional of the post-start path; no independence claimed), the per-round expected outside-R_0 occupation is bounded below by the single-visit product of (i) and (ii):
      E_x[ outside-R_0 time in round ] >= exp( -beta(gate - m_k + o(1)) ) . exp( beta(gate - floor - o(1)) )
                                        = exp( -beta( (gate - m_k) - (gate - floor) + o(1) ) )
                                        = exp( -beta( floor - m_k + o(1) ) )
                                        = c(delta) exp( -beta( m_1(lambda) + o(1) ) ).        (PR)
The entry pre-payment (gate - m_k) and the exit barrier (gate - floor) CANCEL down to the Gibbs weight of the trap floor RELATIVE TO THE ROUND-START GROUND m_k. This is the reversibility round-trip made rigorous; it is confirmed independently by SR-PE1 (renewal-reward/Kac, PE.1, lane-prodexc-design:66-74): E[occupation of trap per S-return cycle] = rho_beta(trap) . E[cycle length], with rho_beta(trap)/rho_beta(k-basin) = exp(-beta(floor - m_k)) = exp(-beta m_1) (PE.2(a) normalizer, k-basin mass exp(-beta m_k), lane-prodexc-design:75-86) and E[cycle length] beta-free (Kac return time to S, order poly). Both routes give the SAME per-round exponent m_1 = floor - m_k.

== 2. WHERE THE ASSIGNED ROUTE (and ADJ-1) TAKES THE SADDLE REFERENCE ==
The assigned route asks for step (i) at exponent gate - S_k (from the saddle), giving product exp(-beta(floor - S_k)) — the ADJ-1/task exponent. On R5a's round object this reference cannot be certified: each round starts at level m_k, not S_k (Round-start law, lane-minmig:3033), so the honest per-round reach-gate exponent is gate - m_k, not gate - S_k. The two differ by exactly S_k - m_k = the theta-crossing / E[N] exponent, and
      exp( -beta(floor - S_k) ) = exp( -beta(floor - m_k) ) . exp( beta(S_k - m_k) ) = (per-round bound (PR)) . E[N].
Thus floor - S_k is the AGGREGATE theta-to-theta trap occupation = E[N] . (per-round), NOT the per-round occupation. Substituting gate - S_k for gate - m_k in step (i) silently multiplies in the geometric count E[N] ~ exp(beta(S_k - m_k)) that R5a §7 / M4 supply at the OUTER Wald sum — the exact double-count PE.4 forbids (lane-prodexc-design:97-111). This is also the reference slip already visible in the design's own Stage-A numerics, which are called "outside-time per round" at slope -c_H (line 57) yet correctly identified as the "theta-to-theta AGGREGATE" at line 106 — the same conflation.

== 3. THE REFUTATION TEST, DONE IN BOTH CONSISTENT NORMALIZATIONS ==
Per-round vs per-round (the row's stated normalization). The row bounds the per-round outside time by exp(-beta(c_H/2 - err)). The rigorous per-round lower bound (PR) EXCEEDS it iff m_1 < c_H/2. But, with kappa=1 and the active ledger branch,
      m_1 - c_H/2 = lambda g(N) - (1/8)( g(N) + 2 - S_k ) = g(N)( lambda - 1/8 ) + ( S_k - 2 )/8.
Both summands are STRICTLY POSITIVE for every N>=10, lambda>=1 (g(N)>0, lambda-1/8 >= 7/8 > 0; S_k > 2 always, v16 ladder / CF2). Hence m_1 > c_H/2 EVERYWHERE, so (PR) does NOT exceed the row bound anywhere. The per-round row is NOT refuted, in W or out of W. (Numerically sealed against the ADJ-1-failing cells: m_1 - c_H/2 = 1.7472 at (10,1); 1.0425 at (18,1.05) where ADJ-1's M=-0.179; 1.6742 at (46,4) where M=-0.0094; 0.0895 at the worst cell (200,1.0001) where M=-1.8368. The exact identity (m_1 - c_H/2) = M_{ADJ-1} + (S_k - m_k) holds to machine precision across the grid — the ADJ-1 window boundary M=0 is displaced from the true per-round threshold by precisely S_k - m_k, the E[N] exponent.)

Aggregate vs aggregate (the alternative normalization). The theta-to-theta AGGREGATE trap occupation is, by (PR) . E[N],
      E_q[ total outside-R_0 time before theta-crossing ] >= c(delta) exp( -beta( floor - S_k + o(1) ) ) = c(delta) exp( beta( S_k - floor + o(1) ) ).   (AGG)
This is a rigorous LOWER bound and IS the task's target exponent. Compared against the AGGREGATE non-trap outside time exp(-beta c_H) (PE.4 per-block S_k+c_H-m_k times E[N] = c_H; measured slope -0.348 ~ -c_H at N=10, lane-prodexc-design:50-62), the trap dominates the aggregate outside time iff floor - S_k < c_H — the ORIGINAL conservative doorway scan (floor >= S_k + c_H), NOT the ADJ-1 half-doorway c_H/2. Either way (AGG) is SUBDOMINANT to LP.5's main crossing time exp(beta(S_k - m_k)) by the strictly positive margin floor - m_k = m_1(lambda) > 0: S_k - floor < S_k - m_k. Hence LP.5(c)'s rate limsup beta^{-1} log E_q[tau] <= S_k - m_k + eps(...) is PRESERVED on the ENTIRE flagship range N>=10, lambda>=1 — the pinning traps never overturn the migration rate.

== 4. VERDICT ==
The requested refutation REFUT-PE cannot be delivered as a per-round statement: step (i) genuinely resists because R5a's round starts at the ground m_k, not the saddle S_k, and the honest per-round trap contribution (PR) = c(delta) exp(-beta(m_1 + o(1))) respects the row's c_H/2 with strictly positive margin m_1 - c_H/2 > 0 everywhere. The exponent floor - S_k the task and ADJ-1 refute against is the AGGREGATE occupation (AGG) = (PR) . E[N]; charging it to the per-round row re-imports E[N] and double-counts (PE.4-forbidden). Consequently ADJ-1's window boundary M(N,lambda) = floor - S_k - c_H/2 = 0 is not the row's true per-round threshold; the true per-round threshold is m_1 - c_H/2 = 0, which is NEVER crossed (the two differ by exactly S_k - m_k). The genuine, rigorous content that survives is (AGG) together with its subdominance-by-m_1 to the crossing rate — a statement about aggregate occupation, not a refutation of the per-round row.

### ADJ2-beyond-window — consumed

SEALED CLOSED FORMS (re-sealed vs prodexc_edge_probe.json at N=18: m_k=1.0855, S_k=2.3074, c_H=0.1945):
- CF1 m_w(c)=c N(1-cos(2 pi w/N)); trap floor = m_k+m_1(lambda), m_1=lambda g(N) [lane-prodexc-design-v1.md:119-121].
- CF2 S_k=2+(N-2)(1-cos(pi/(N-2))), machine-checked prod_shell_k1 [lane-lt-label-tower-v1.md:105-113].
- CF3 c_H=(1/4)(m_k+2-S_k), active branch on N>=10 [lane-lp-product-saddle-v1.md:152-155; ADJ-1 part 2].
- phi-gate = m_k+2 lambda = S_k+4 c_H [lane-prodexc-design-v1.md:122-124; lane-lp:172-174]. PROD-SHELL S_k>2 always, g(N)<2 for N>=10 [lane-lt:108-118; ADJ-1 part 2].
ROW UNDER TEST: PROD-EXCURSION / PROD-EXCURSION-COND, per-renewal-round outside-R_0 time <= T_row exp(-beta(c_H/2-err)) [lane-lp-product-saddle-v1.md:214-237].
ROUND OBJECT: R5a continuous FLOORS round — Round-start law POINTWISE in S at ground level m_k [lane-minmig-proofs-v1.md:3033], terminus min(delayed S-return, theta-change) [:3040-3050], strong-Markov conditional floors, no independence [:3031,3060-3065], (D) off-R_0 consumed at typed strength [:3073-3076], §7 Wald E[sum D_i]<=D_bar.E[N] with E[N]~1/p, p~exp(-beta(S_k-m_k+eps(...))) [:3099-3113; (P) floor :3069], GAP-PE-COND [:3160].
NAMED FW INPUTS (SR discipline, hypotheses checked, non-reproduced):
- SR-T2 FW exit-time LOWER bound (expectation): liminf beta^{-1} log E_q[tau_exit(A)] >= H - J(q), A a component of {J<H} [lane-c-exit-time-lower-bound-v1.md:51-96] — used for (ii) trap dwell, H=gate, J=floor.
- SR-T3 FW LOWER bound (probability form) + degenerate compact-attractor hypothesis row [lane-c-sector-persistence-readout-theorem-v1.md:30-51] — the source family for SR-FW-LOW used in (i), reach-gate from the ground, H=gate, J(q)=m_k.
- SR-PE1 renewal-reward/continuous Kac occupation identity, and PE.2(a) k-basin normalizer exp(-beta m_k) [lane-prodexc-design-v1.md:66-86] — independent confirmation of (PR).
PE.5 corrected kernel (entry pre-payment and exit barrier cancel; net Gibbs at the floor) [lane-prodexc-design-v1.md:112-137]. PE.4 double-count warning (row per-cycle; E[N] applied separately by M4) [lane-prodexc-design-v1.md:97-111]. Stage-A numerics reference slip ("per round" slope -c_H at :57 vs "theta-to-theta AGGREGATE" at :106) [lane-prodexc-design-v1.md:50-62,106-107].
ADJ-1 WINDOW: RT_j m_k+m_j-S_k>=c_H/2 and margin M(N,lambda)=floor-S_k-c_H/2, window W=M>=0 [lane-prodexc-design-v1.md:239-243; ADJ-1 parts 3-5]. SCAN: pe5_level_scan.json row_threshold_rescan (first_failing_N 16,17,17,18,21,26,36,46; worst M=-1.8368 at N=200,lambda=1.0001).
INDEPENDENT CHECK (this piece): identity (m_1-c_H/2) = M_{ADJ-1} + (S_k-m_k) to machine precision, and m_1-c_H/2 = g(N)(lambda-1/8)+(S_k-2)/8 > 0 for all N>=10, lambda>=1; per-round margin strictly positive at every ADJ-1-failing cell (1.7472@(10,1); 1.0425@(18,1.05); 1.6742@(46,4); 0.0895@(200,1.0001)).

### ADJ2-beyond-window — typed gaps

GAP-ADJ2-REF (the load-bearing obstruction; MAJOR — a domain-level normalization decision, escalated, not silently resolved). The assigned route's step (i) requires the per-round reach-gate probability at exponent gate - S_k (saddle reference); on R5a's round object the round starts POINTWISE at ground level m_k (Round-start law, lane-minmig:3033), so the certifiable exponent is gate - m_k. The resulting honest per-round trap-visit lower bound is (PR) = c(delta) exp(-beta(m_1(lambda)+o(1))), and since m_1(lambda)=lambda g(N) > c_H/2 for all N>=10, lambda>=1 (strict, closed-form: g(N)(lambda-1/8)+(S_k-2)/8 > 0), the per-round row is NOT refuted anywhere. The task/ADJ-1 exponent floor - S_k equals (PR).E[N] = the AGGREGATE occupation (AGG), rigorously proved in part 3. Whether (AGG) refutes ROW PROD-EXCURSION therefore depends on an UNRESOLVED normalization of the row, which is a domain call:
  (N1) Row is PER-ROUND with E[N] applied separately (its stated text "per renewal round", R5a §7 Wald, and PE.4's explicit double-count prohibition). Then the correct trap threshold is m_1 >= c_H/2, which holds identically on N>=10, lambda>=1; REFUT-PE does NOT hold and ADJ-1's window W (floor - S_k >= c_H/2) is over-restrictive by exactly S_k - m_k — a per-round-vs-aggregate artifact, not a genuine row failure.
  (N2) Row is read as the theta-to-theta AGGREGATE outside time (no separate E[N]). Then floor - S_k appears legitimately, but the CONSISTENT aggregate-vs-aggregate threshold is floor - S_k >= c_H (the aggregate non-trap exponent — the ORIGINAL conservative doorway scan), NOT the half-doorway c_H/2; and under (N2) R5a §7's multiplication of the off-R_0 term inside D_bar by E[N] double-counts the geometric factor and must be repaired at the (D)/§7 interface.
Neither reading yields the ADJ-1 hybrid condition floor - S_k >= c_H/2 (aggregate trap exponent vs per-round target). The obstruction is precisely this reference mismatch (m_k vs S_k) / normalization (per-round vs aggregate); it needs one fleet round plus a domain adjudication of the row's normalization before either REFUT-PE (under N2) or a window-retraction (under N1) can land.

GAP-ADJ2-SUBDOM (recorded, adjacent, not this piece's burden to close). Part 3 establishes (AGG) = exp(beta(S_k - floor + o(1))) is SUBDOMINANT to the crossing time exp(beta(S_k - m_k)) by margin m_1 = floor - m_k > 0, hence LP.5(c)'s rate is preserved on all N>=10, lambda>=1. This uses the leading-exponential renewal-reward identity SR-PE1 in BOTH directions; the matching upper half (that (AGG) does not EXCEED exp(beta(S_k-floor+o(1)))) inherits PE.2(b)'s quasi-stationary lemma and PE.3'/GAP-PE-COND at the conditional-uniform strength (lane-prodexc-design:82-96; lane-minmig:3160) and is not discharged here.


### LEAD ADJUDICATION NOTE (2026-07-21, closing the E2 phase-1)

ADJ-2's checker MAJOR is adopted as scope discipline: the aggregate
lower bound (AGG) is proved; 'LP.5(c)'s rate is preserved' is NOT
claimed (that upper-bound guarantee IS the constructive campaign).
The honest post-adjudication state: (1) the row as typed is refuted
nowhere on the flagship range (the per-round identity above);
(2) no window hypothesis enters the row or LP.5(c); (3) the
constructive burden is unchanged in kind and now global in range:
PE.1 (SR-PE1), PE.2(a) one-liner + PE.2(b) quasi-stationary lemma,
PE.3' pointwise upgrade (for the COND companion), PE.5(b)
pointwise-to-basin + reachability; (4) ADJ-1's window theorem and
both scans are retained as true statements about the AGGREGATE
display, correctly labeled. The lead's own red-flag narrative
(2026-07-20/21) is WITHDRAWN as an interpretation error - the exact
E[N] double-count class PE.4's lens had already corrected in the
design text, re-committed in the scan reading. Recorded as a
process datum: closed-form scans must state WHICH object's
threshold they test.
