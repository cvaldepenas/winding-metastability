# Lane-SH Sharpness v1 (certified rates become true rates - for the domain-exit time)

Status:

```text
Lane-SH Sharpness v1 = SH-DECLARED / MATCHING UPPER BOUNDS FOR THE
  D-EXIT TIME / LABEL SHARPNESS TYPED OPEN / NO PHYSICS CLAIMS / NO
  AGENCY CLAIMS
campaign = gate-v15, completion program storey 3 - THE LAST STOREY
  (single artifact); [MACH-UP] := the abstract two-sided package
  SH.4 + SH.5 over Standing Data (F1)-(F4) - the upper-bound
  complement of the [MACH] pattern - + instantiation over every
  working family (SH.6)
method = THE REVERSAL ROUTE: path-space detailed balance (SR-SH1)
  converts order-one DOWNHILL tube probabilities (flow tracking,
  SH.2) into UPHILL tube probabilities at cost exp(-beta(cap -
  ground)) (SH.3, via the rho-average + the SH.2'-LOCAL v2
  minorization - migrated 2026-07-20);
  a renewal chain (SH.4) bounds the D-exit time from above.  NO
  Girsanov.
OBJECT HONESTY (the wave's deepest catch): the two-sided law is for
  tau_D = THE EXIT TIME OF THE SUBLEVEL DOMAIN D.  The LABEL
  persistence time (hitting the Delta barrier) DOMINATES tau_D; its
  certified lower bounds stand, and its matching upper bound is
  TYPED OPEN (the Delta floor sits STRICTLY ABOVE cap in every
  family - post-exit analysis would be needed; see SH.6 and the
  Honest Boundary).
NEW ANALYSIS (honesty): SH.1-SH.4 + SH.2' are new probabilistic
  lemmas; two classical facts are consumed as NAMED standard
  external inputs with hypothesis rows (SR-SH1 heat kernel /
  detailed balance; SR-SH2 compact-uniform FW lower bound).
anti-quantization firewall = BINDING
assurance = L-A1 (gate-v15 3-lens wave 2026-07-04: FAIL AS BUILT -
  the wave ground the new analysis exactly as intended.  FATALs
  repaired: the along-G chain cost was NOT order one (true cost
  exp(-beta O(delta^2)) per step - new Lemma SH.2', total absorbed
  into err(delta)); the sup-to-inf patch was CIRCULAR (replaced by
  the rho-average + minorization argument); the uphill target ball
  MET D so the event did not force exit (target shrunk to B' inside
  {E > cap}, disjoint from closure(D), with two-sided level bounds);
  THE OBJECT SLIP - the sharp law re-attached to the label's
  persistence time, whose upper bound does NOT transfer (SH.6
  re-typed: D-exit sharp; label open); (F3) lacked nonemptiness
  (E = const satisfied (F1)-(F4) with tau = infinity; repaired +
  discharged per family from the Delta-barrier facts).  MAJORS:
  SR-discipline for the density-level detailed balance (named input
  SR-SH1) and for the uniform lower bound in SH.5 (named input
  SR-SH2); the SH.2 norm/constant fixed (max-norm declared); the
  near-boundary round start case-split (exit during descent =
  success).  MINORs: draft narration deleted from Step 4; P-form
  bookkeeping; unused clause deleted; (F4) demoted to a derived
  consequence; [MACH-UP] bound; z* margin via L_0.)
assurance = L-A2f GRANTED (gate-v15 post-rebuild 3-lens blind Opus
  wave on the verbatim brief, 2026-07-04: 3/3 PASS-WITH-FINDINGS on
  the ARCHITECTURE - SH.1 telescoping re-derived (n = 2, 3), SH.2
  constants verified, SH.3 Steps 1-4 all VERIFIED (the sandwich, the
  reversal, the rho-vs-Lebesgue passage, the minorization
  composition), the relocation/renewal chain, SH.5's SR-SH2
  composition, the SH.6 table and the LABEL typing ("airtight"), SR
  inputs and boundaries clean.  ONE convergent defect, all three
  lenses, in the AUXILIARY lemma SH.2's displacement proof: the
  endpoint arithmetic (delta/4 > delta/8 before drift; drift added,
  not absorbed) and an independence hand-wave (within-slice endpoint
  vs oscillation) - REPAIRED per the auditors' prescriptions: the
  lemma now promises an HONEST O(delta) landing (B_{C* delta}(y),
  C* = 1 + 6 L_E symbolic), per-slice JOINT estimates multiplied
  over the four independent slices only, corridor (C* + 6) delta,
  chain net rescaled - the lenses had already verified every
  consumer needs only O(delta) proximity, and SH.3 Step 4 consumes
  part (b), untouched by the (a) target.  Plus the
  (F3)-nonemptiness one-line bridge.)
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standard external inputs (named; the SR discipline)

```text
SR-SH1 (heat kernel + pointwise detailed balance; classical
  parabolic theory).  Statement used: for a diffusion with generator
  beta^-1 Laplacian - grad E . grad, E smooth, on a compact smooth
  manifold, the semigroup has a jointly continuous, strictly
  positive transition density p_t(x, y) (t > 0) with respect to
  volume; self-adjointness of the semigroup on L^2(rho) (certified
  declaration-level: the reversible weighted-divergence form) then
  gives the POINTWISE identity rho(x) p_t(x, y) = rho(y) p_t(y, x)
  by continuity.  Hypothesis rows: uniformly elliptic diffusion
  matrix beta^-1 I : HOLDS (every family); smooth drift = -grad E,
  E smooth : HOLDS (every family); compact manifold (T^N or
  T^N x T^N) : HOLDS.
SR-SH2 (compact-uniform Freidlin-Wentzell exit lower bound).
  Statement used: for the same diffusions, for every compact
  K subset D and delta' > 0,
  sup_{q in K} P_q( tau_D <= exp(beta(cap - max_K E - delta')) )
  -> 0 as beta -> infinity.  Hypothesis rows: identical to the
  corpus's certified pointwise lower-bound machinery ([MACH] rows),
  strengthened to compact-uniform form - the SAME classical source
  pattern as the corpus's SR exit rows, applied on K =
  closure(B_delta(G)) subset D (compact for delta small).
```

## Standing data (the abstract working family)

(E, cap, D, G) is a WORKING FAMILY: E smooth on a compact torus X,
the named standard family `dX = -grad E dt + sqrt(2/beta) dB`,
`rho ~ Z^-1 exp(-beta E)` (smooth strictly positive; reversible),
and D = a connected component of {E < cap} whose closure contains
the compact connected ground set G with:

```text
(F1) GROUND: E = e_0 := min_D E exactly on G; grad E = 0 on G and G
     is flow-invariant.
(F2) ATTRACTION: G is the unique internal attractor of D with
     closure attraction; Crit(E) intersect closure(D) = G.
(F3) BOUNDARY: the level-cap boundary bd(D) subset {E = cap} is
     NONEMPTY (equivalently D != X), and grad E != 0 on it.
(F4) (DERIVED, recorded): strict sublevels D_eta := {E <= cap - eta}
     intersect closure(D) are compact and positively invariant for
     the flow - E is non-increasing along the flow, so this follows
     from (F1)-(F3) and closedness; no separate certification
     needed.
```

tau := tau_D = the exit time of D.  |.| = the MAX NORM on the lifted
coordinates (covering space; all tube radii and collars are read in
it); L_E = a max-norm Lipschitz constant of grad E; L_0 = sup |grad
E|.  err(delta) -> 0 as delta -> 0, uniform in beta, symbolic.

## Lemma SH.1 (path-space reversal)

For the STATIONARY process (initial law rho) and every Borel path
event A on C([0, T], X):
`P_rho( (X_t)_{t <= T} in A ) = P_rho( (X_{T-t})_{t <= T} in A )`.

Proof.  Both sides are determined by finite-dimensional
distributions (path continuity; cylinder sets generate).  For
0 = t_0 < ... < t_n = T the forward density at (x_0, ..., x_n) is
`rho(x_0) prod_i p_{s_i}(x_{i-1}, x_i)` (s_i = t_i - t_{i-1});
applying SR-SH1's pointwise identity to the FIRST factor pair and
iterating left-to-right telescopes rho through the product, giving
`rho(x_n) prod_i p_{s_i}(x_i, x_{i-1})` - the density of the
reversed vector (x_n, ..., x_0) with the SAME time gaps read in
reverse order.  (n = 2 check: rho(x0)p_a(x0,x1)p_b(x1,x2) =
rho(x1)p_a(x1,x0)p_b(x1,x2) = p_a(x1,x0) rho(x2)p_b(x2,x1).)  QED.

## Lemma SH.2 (flow tracking - downhill is order one)

For every x, T > 0, delta > 0 (delta below the injectivity radius):

```text
P_x( sup_{t <= T} |X_t - Phi_t(x)| <= delta )
  >= 1 - 2 dim(X) exp( - beta delta^2 e^{-2 L_E T} / (4 T) ).
```

Proof.  On the covering space, `Y_t := X_t - Phi_t(x)` satisfies
`|Y_t| <= L_E int_0^t |Y_s| ds + sqrt(2/beta) |B_t|` (max norm), so
Gronwall gives `sup_{t <= T} |Y_t| <= e^{L_E T} sqrt(2/beta)
sup_{t <= T} |B_t|`.  In the max norm, `sup_t |B_t| > a` is the
union over the dim(X) coordinates of `sup_t |B^i_t| > a`; the
reflection bound gives `P(sup_t |B^i_t| > a) <= 2 e^{-a^2/(2T)}`
per coordinate.  With `a = delta e^{-L_E T} sqrt(beta/2)` the union
bound yields the display.  QED.

## Lemma SH.2' (near-ground displacement / minorization)

```text
X3 STATUS (cross-provider, 2026-07-19, lead-verified): SH.2'(b) as
written is REFUTED - the global small-cost minorization over EVERY
Borel subset of B_delta(G) is FALSE (X3 counterexample: T^2,
E = 1 - cos r, tangential Brownian target near (0, pi) costs
exp(-beta pi^2/4), not exp(-beta O(delta^2))). Four additional proof
defects recorded (corridor radius dropped; SDE endpoint density not
inherited from the Gaussian increment; chain-count not linear from
compact connectedness; hop iteration not closed at h = delta/(2C*)).
CONSEQUENCE - RESOLVED 2026-07-20, THE CONDITIONAL IS LIFTED: the
LOCAL repair landed in full (SH.2'-LOCAL v2: L1/L1'/L2 assembled,
adversarially drafted+checked, XF-corrected, A4/A5 amended), both
IN-LANE consumers migrated (SH.3 Step 4 -> L1'; the along-G chain ->
L2; XH 2026-07-20 then surfaced a third, CROSS-LANE consumer -
lane-lp LP.5's renewal minorization - typed there as LP-MIN-MIG),
and the final delta-check passed ALL FIVE points (arithmetic
recomputed independently; one wording fix adopted). K6 [MACH-UP]
and its upper/sharp consumers now ride the VERIFIED local route.
The refutation of the former GLOBAL SH.2'(b) stands as history
above - the X3 counterexample is RESPECTED by the repair (time
buys flatness; one step never does). The reversal identity and
stationary sandwich were always unaffected. Full trail: X3 F2 ->
design -> Stage A probe -> Stage B Lean (#23) -> Stage C fleet ->
XF corrections -> Stage D-2 -> A4/A5 -> migration -> delta-check
PASS.
```

## SH.2'-LOCAL v2 — the X3-driven repair design (design record 2026-07-19; statements SINCE PROVED — Stages B/C/D-2 + delta-check, see the banner)

```text
status = STATEMENT SET, typed in full with explicit beta-scalings.
  Nothing below WAS claimed proved at design time; the statements
  were subsequently proved (lane-sh2local-proofs-v1.md) and the
  lift adjudicated - this block is the preserved design record. Each lemma names which X3 defect
  it kills. Stage plan at the end.
setting = dX = -grad E dt + sqrt(2/beta) dW on the compact flat
  manifold M (T^N or T^N x T^N); G a smooth compact connected
  TRANSLATION-SUBGROUP ORBIT of critical points, E|_G = e_0;
  transverse nondegeneracy in the tube T_{r0}(G):
  E - e_0 >= (c_perp/2) dist(.,G)^2 and |grad E| <= L dist(.,G)
  (both from the sealed Hessian/coercive layers at the corpus
  grounds).

L1 (HOP - event probability; kills X3 defect 2 by NOT claiming a
  density, and defect 1 by carrying the corridor factor):
  There exist beta_0, c_0 > 0, C_1 < infinity (depending only on
  r0, L, c_perp, dim M) such that for all beta >= beta_0, every x
  with d := dist(x, G) <= delta <= r0/4, every y in G with
  d_G(pi(x), y) <= h <= r0/4:
    P_x( X_1 in B_rho(y) ) >= c_0 exp( -beta C_1 (delta^2 + h^2) ),
    rho := min( h, r0/8 ).
  ROUTE: Girsanov against the two-leg control path phi -
  (i) t in [0, 1/2]: transverse relaxation following the true drift
  toward pi(x) (control cost only the terminal mismatch, O(delta^2));
  (ii) t in [1/2, 1]: tangential slide at speed 2h toward y. Cost
  functional (beta/4) int |phi' + grad E(phi)|^2 dt; on leg (ii)
  grad E(phi) = O(dist(phi, G)) <= O(delta + h) IN THE CORRIDOR -
  the corridor-radius factor is CARRIED into C_1 (X3 defect 1). The
  conclusion is an EVENT bound; no endpoint-density claim (X3
  defect 2 sidestepped at this layer).

L1' (DENSITY UPGRADE - the small-set leg; the ONLY place a density
  is claimed): split [0,1] = [0,1/2] + [1/2,1]; use L1's event bound
  to reach B_{rho/2}(y) by time 1/2, then the uniformly-elliptic
  short-time lower bound (Aronson/parametrix at diffusivity 1/beta,
  bounded smooth drift, compact M: for t in [1/4, 1/2],
  p_t(z, w) >= a_0 beta^{n/2} exp( -a_1 beta d(z,w)^2 ) for
  d(z,w) <= r0) to minorize the DENSITY on B_rho(y):
    p_1(x, .) >= c_0' beta^{n/2} exp( -beta C_2 (delta^2 + h^2) )
                 . Leb|_{B_rho(y)}.
  HONESTY: a_0, a_1 uniform in beta BECAUSE the drift is bounded on
  compact M and the comparison is run at the diffusive scale; this
  is the standard localized-Harris small-set construction, cited
  not invented; its full constants are part of Stage 2.

L2 (CHAIN - kills X3 defect 4 by MATCHED radii, defect 3 via L3):
  Fix hop scale h <= r0/8 and land in B_h(y_j) each step (rho = h);
  the next hop starts from dist <= h <= r0/4 - the start hypothesis
  of L1 is RECOVERED (closure). With n = ceil( D_G / h ) hops along
  the L3 geodesic chain (D_G = the intrinsic diameter, EXPLICIT from
  L3, no connectedness hand-wave):
    P_x( X_n in B_h(y) ) >= c_0^n exp( -beta C_1 n . 2 h^2 )
      >= exp( -beta . 2 C_1 D_G h  -  (D_G/h) log(1/c_0) ).
  COROLLARY (the honest replacement for the FALSE one-step global
  claim): for every eta > 0 there are n(eta) = O(1/eta) steps and
  c(eta) > 0, both beta-free, with
    P_x( X_{n(eta)} in B_h(y) ) >= c(eta) exp( -beta eta )
  for ALL y in G - tangential spreading is SUB-EXPONENTIAL IN beta
  GIVEN O(1) TIME. The X3 counterexample is RESPECTED: at ONE step
  the tangential cost pi^2/4 is real; the repair buys flatness with
  TIME, never with one step.

L3 (ORBIT GEOMETRY - deterministic; Lean-able; kills X3 defect 3):
  the corpus grounds are translation-subgroup orbits: C_k in T^N is
  the diagonal circle t -> theta* + t(1,...,1), CLOSED at t = 2 pi,
  length 2 pi sqrt(N), intrinsic diameter D = pi sqrt(N); the
  product grounds G_{k,j} in T^N x T^N are flat 2-tori with
  D = pi sqrt(2N). Both are TOTALLY GEODESIC (subgroup orbits of the
  flat torus); the tube T_r(G) is geodesically 1-quasiconvex for
  r < injectivity/4 (explicit: project-slide-unproject compares
  within factor 2). All constants explicit; no compactness-only
  chain counting anywhere.

L4 (INTERFACE to SH.3 - typed condition, verified at the SH.3
  rerun, not assumed here): the SH.3 rho-average step must tolerate
  a minorization constant of the form c(eta) exp(-beta eta) for
  arbitrarily small eta > 0 (in place of the false beta-free global
  constant). TYPED CONDITION SH3-TOL: the downstream Harris/HLM row
  consumes alpha(beta) = c(eta) e^{-beta eta} with the drift margin
  beating it for eta small (the drift gap is BETA-LINEAR: the
  ladder's barrier constants scale with beta, so any fixed
  sub-exponential alpha suffices in the sampled-time row). If the
  SH.3 rerun cannot discharge SH3-TOL, the failure is REPORTED, not
  papered.

DEFECT MAP (X3 Finding 2 -> repair):
  defect 1 (corridor radius dropped)   -> carried in L1's C_1.
  defect 2 (endpoint density unproved) -> L1 = event bound only;
                                          density ONLY via L1'
                                          Aronson leg.
  defect 3 (chain count hand-waved)    -> L3 explicit diameters.
  defect 4 (hop iteration not closed)  -> L2 matched radii
                                          (land B_h, restart <= h).

STAGE A RESULT (2026-07-19, same day - numerics/sh2local_probe.py,
  deterministic seed, results JSON committed): DESIGN SURVIVES.
  (P1) tangential cost IS quadratic with a BETA-UNIFORM constant:
  empirical rates at s = 0.6 are 0.171 / 0.142 / 0.123 for
  beta = 10 / 20 / 40, decreasing monotonically toward the flat-BM
  asymptote s^2/4 = 0.09 (the visible gap is the 1/beta prefactor
  correction, shrinking as predicted; deep tail beta s^2/4 > ~5 out
  of MC reach, recorded). L1's exp(-beta C_1 h^2) form holds with
  C_1 finite, beta-free, -> 1/4 asymptotically.
  (P2) off-G starts delta = 0 / 0.1 / 0.2 shift the rate < 2 percent
  - the additive delta^2 + h^2 form is CONSERVATIVE; no cross-term.
  (P3) transverse RMS scales exactly 1/sqrt(beta)
  (0.82/0.58/0.41) - the corridor is tight; the corridor factor in
  C_1 is honest. The X3 counterexample is quantitatively REPRODUCED
  by the probe's own numbers (real quadratic cost per displacement -
  no one-step free lunch), and the repair's time-buys-flatness
  mechanism is what the chain L2 formalizes.
  NEXT: Stage B (L3 proof).

STAGE C PARTIAL (2026-07-19, adversarial draft+verify fleet; each
  draft broken by a hostile checker hunting the four X3 defect
  classes by name):
  - L1' (DENSITY UPGRADE) = SOUND. The checker attempted all four
    predecessor-killers + Girsanov/Novikov + beta-scaling +
    circularity and ALL HELD. The killer that destroyed the original
    SH.2'(b) - increment-density vs endpoint-density (X3 defect 2) -
    is discharged CORRECTLY via the exact Cameron-Martin/Doob bridge
    factor E^{0,br}[D_t] (never by equating the two densities). The
    beta^{n/2} exp(-beta C_2(delta^2+h^2)) form is consistent with
    the Stage-A probe (C_1 -> 1/4; additive, no cross-term; RMS
    1/sqrt(beta)). One honest in-scope reliance: the half-time L1
    instance (L1-half), transparently flagged, discharged by L1's
    horizon-tau display below.
  - L2 (THE CHAIN) = REPAIRABLE -> REPAIRED (both local):
    * F1 (load-bearing): the restart needs the LANDING containment
      X_1 in B_{h/2}(y) (transverse AND tangential radius), not just
      B_h transverse. FIX: L1 now proves the LANDING display
      directly (folded into the L1 re-run); L2 is CONDITIONAL on it
      and carries the threshold beta_0(h) ~ c/h^2 into the
      corollary's beta_0(eta) ~ c/eta^2 (the order-of-limits, honest).
    * F2 (genuine sign error the drafter did NOT flag): an
      INTERMEDIATE display dropped the ceil(D_G/h) correction with
      the wrong sign. FIX: the valid form is
      P_x(X_n in B_h(y)) >= exp(-2 beta C_1 D_G h - 2 beta C_1 h^2
      - ceil(D_G/h) log(1/c_0)), equivalently the rate
      limsup (1/beta)(-log P) <= 2 C_1 D_G h + O(h^2). The
      LOAD-BEARING corollary (sub-exponential given O(1) time) is
      UNAFFECTED - it survived the attack.
    The core chain (net + Markov composition + matched-radius restart
    + explicit intrinsic diameter from L3 + corollary arithmetic) is
    sound; defects 3 and 4 attempted and HELD.
  - L1 (THE HOP) = SOUND (re-run brevity-capped; all four X3 killers
    hunted by name and HELD). Girsanov EVENT bound; the defect-2
    killer (increment vs endpoint density) discharged via the exact
    reflection/cosh identity E^Q[1_G e^{-I}] = E^Q[1_G cosh I] >=
    Q(G) (never equating densities); corridor radius carried (leg-i
    drift L(1-2t/tau)d, leg-ii rides ON G so grad E = 0 exactly);
    the LANDING display lands in B_{h/2}(y) recovering BOTH restart
    hypotheses (fixes the original C*h overshoot). C_1 explicit in
    (L, r0, dim); tangential coefficient 1/2 is a factor-2-loose but
    VALID upper bound on the sharp 1/4 (probe: 0.47/0.40/0.34 ->
    0.25, all <= 1/2, consistent). One cosmetic non-load-bearing
    error (a C_1(1/2) vs C_1(1) ordering gloss, wrong for L >=
    2 sqrt 6) - struck.
  STAGE C - XF COLD RE-REVIEW (2026-07-19, the queue's final
  independent look): all three lemmas graded REPAIRABLE (not BROKEN,
  not yet SOUND) - the cold rederivation CONFIRMS the local mechanism
  and CONFIRMS it respects the X3 global-cost example (the repair
  spreads a fixed tangential distance over many local hops in
  beta-independent time; it does NOT make the one-step global cost
  vanish). Three concrete corrections ADOPTED into the design:
    * CHAIN COUNT: the B_{h/2} landing closes the iteration with
      geometric slack only at ceil(2 D_G / h) hops, NOT ceil(D_G/h)
      (choose consecutive ground centers at intrinsic distance <= h/2
      so a point in B_{h/2}(y_j) has d_G(pi(x), y_{j+1}) <= h). The
      factor-2 does not change the corollary (still beta-free n(eta),
      c(eta) exp(-beta eta) with beta_0(eta) = O(eta^-2)).
    * DENSITY DRIFT TERM: the local drift contributes an ADDITIONAL
      O(beta h^2) term to the density bound (it vanishes on G but is
      NOT omittable from a generic bounded-drift estimate); carried
      explicitly, absorbed into C_2 under beta h^2 >= B.
    * THRESHOLD: no beta_0 independent of all positive h is correct -
      the diffusive floor beta >= B/h^2 is load-bearing (already
      declared; XF confirms it is necessary, not conservative).
  K6 and its upper/sharp consumers REMAIN CONDITIONAL [stage-time
  record; LIFTED 2026-07-20 - see the DELTA-CHECK stamp]. STATUS: the
  repair is mechanism-confirmed and correction-complete at the prose
  level; a Stage D-2 (one more cold pass on the corrected proofs, or
  the Lean-ready pieces) is the path to lifting CONDITIONAL. This is
  the honest state: the K6 wound has a WORKING, corrected repair whose
  final SOUND grade is pending one more pass - not a resolved seal.
  STAGE D-2 (2026-07-20): cold pass returned L1 SOUND / L2 SOUND /
  L1' REPAIRABLE; C-1 lift DENIED (correct): the L1' half-time input
  needed derivation (repaired: amendment A4 in the proofs artifact,
  consuming L1's proven display (b) at a worse beta-free constant)
  and the minorization needed its corridor-qualified form (A5); the
  INDEPENDENT blocker stands: SH.3 Step 4 + SH.4 must MIGRATE from
  the refuted global lemma to the local route before K6's
  CONDITIONAL can lift.
  MIGRATION DONE (2026-07-20): SH.3 Step 4 -> L1'(A4+A5) at the
  same-base-point hop (m(beta,delta) with O(delta^2) exponent,
  corridor honestly widened to T_{r0} with the no-consumer note);
  the along-G chain -> L2 (matched radii, ceil(2 D_G/h) hops, the
  beta >= O(delta^-2) threshold carried); pointers updated.
  REMAINING FOR THE C-1 LIFT: one DELTA-CHECK pass over exactly
  {A4, A5, the two migrated passages} - nothing else.
  DELTA-CHECK (2026-07-20, FINAL): ALL FIVE POINTS PASS (A4
  constants recomputed independently; A5's corridor-qualified form
  re-derived; both migrated passages re-walked; one wording fix
  adopted - A5 'free-density'). C-1 LIFTED - this is the stamp the
  X3 STATUS banner cites. Stamps BELOW this line are OLDER stage
  records, kept as history (they predate the lift).
  STAGE C COMPLETE: 3/3 lemmas adversarially cleared (L1 SOUND,
  L1' SOUND, L2 REPAIRED). The full SH.2'-LOCAL v2 repair of K6 is
  assembled at the prose level and hostile-verified against exactly
  the four X3 defect classes. REMAINING: Stage D (external X-class
  re-audit of the assembled repair) before K6's CONDITIONAL
  downgrade is lifted. NOTE: these are PROSE (analysis) proofs, not
  Lean; the Lean-able core was L3 (campaign #23, sealed).
  STATUS: 2/3 adversarially cleared; L1 in flight; then Stage D
  (external X-class re-audit of the assembled SH.2'-LOCAL v2) before
  K6's CONDITIONAL downgrade is lifted. The proofs live in the
  Stage-C fleet records; they are PROSE (analysis), not Lean - the
  Lean-able piece was L3 (campaign #23, sealed).

STAGE PLAN: Stage A = NUMERICS PROBE (B2-style, booked): simulate
  the SDE at the N = 10 flagship, starts on/near C_1, measure the
  tangential displacement cost vs the exp(-beta s^2/4) flat-BM
  prediction and the L1 hop scaling with off-G starts - falsify the
  design BEFORE proof effort. Stage B = L3 full proof (deterministic
  geometry; Lean candidate). Stage C = L1/L1'/L2 prose proofs with
  full constants (the person-month block; fleet-assisted). Stage D =
  external re-audit (X-class) of the assembled SH.2'-LOCAL v2 before
  K6's CONDITIONAL downgrade is lifted.
```



Assume (F1).  Fix delta > 0 small.  There are c(delta) > 0, C_G =
(6 L_E delta + delta)^2 (symbolic; C_G = O(delta^2)) and
beta_0(delta) such that for beta >= beta_0 and all x, y in
B_delta(G) with |x - y| <= delta:

```text
(a) DISPLACEMENT (honest O(delta) landing; C* := 1 + 6 L_E, fixed
    symbolic): P_x( X_1 in B_{C* delta}(y), X_{[0,1]} subset
    B_{(C* + 6) delta}(G) )  >=  c(delta) exp( - beta C_G ).
(b) MINORIZATION: for every Borel S subset B_delta(G):
    P_x( X_1 in S, X_{[0,1]} subset B_{(C* + 6) delta}(G) )
      >=  m(beta, delta) Leb(S),
    with m(beta, delta) = c(delta) beta^{dim(X)/2} exp(-beta C_G).
```

Proof.  Slice [0,1] into quarters.  PER-SLICE JOINT EVENT i
(i = 1..4): the increment `xi_i := sqrt(2/beta)(B_{i/4} -
B_{(i-1)/4})` lies in the ball of radius delta/32 around
`(y - x)/4`, AND the within-slice oscillation `sqrt(2/beta)
osc_i(B) <= delta/32`.  These two are functionals of the SAME slice
path (dependent); the JOINT probability is bounded below by
conditioning: xi_i is Gaussian with covariance `(2/beta)(1/4) I`,
so the shifted-ball event has the explicit lower bound
`c beta^{dim(X)/2} (delta/32)^{dim X} exp(-beta C_G/4)` (shift
`|y - x|/4 + delta/32 = O(delta)`; exponent constant absorbed into
C_G); CONDITIONALLY on xi_i the slice path is a Brownian bridge,
whose oscillation obeys the same Gaussian maximal bound, so the
conditional oscillation probability is >= 1/2 for beta large.
The FOUR slices are genuinely independent (disjoint Brownian
increments), so multiplying the four per-slice joint bounds gives
the probability `c(delta) beta^{2 dim} exp(-beta C_G)` >=
`c(delta) exp(-beta C_G)`.  PATH AND ENDPOINT bookkeeping on the
event: the accumulated noise displacement is <= 4(delta/32 +
delta/32) = delta/4; the drift satisfies `|grad E| <= (C* + 6) L_E
delta` on the corridor `B_{(C* + 6) delta}(G)` ((F1): grad E = 0 on
G, Lipschitz), contributing <= 6 L_E delta over the unit interval
for delta small (self-consistently: the path's distance to G along
the way is <= |x - G| + |y - x| + delta/4 + drift <= (2 + 1/4)delta
+ 6 L_E delta < (C* + 6) delta, closing the corridor induction
slice by slice); hence the ENDPOINT satisfies `|X_1 - y| <=
delta/4 + 6 L_E delta <= C* delta` - an HONEST O(delta) landing
(the delta/8 target of the pre-repair draft is NOT claimed; every
consumer needs only O(delta) proximity).  For (b), condition the
LAST slice's increment on the target dy: the final-slice Gaussian
density on the relevant region is `>= c beta^{dim/2}
e^{-beta C_G/4}` pointwise, and the first three slices contribute
their joint bounds as above.  QED.

## Lemma SH.3 (uphill probability - the reversal trick)

Assume (F1)-(F3).  Fix delta > 0 small.  There are T = T(delta),
c = c(delta) > 0, a point g* in G, and a nonempty open ball
`B' with inf_{B'} E > cap` (hence `B' intersect closure(D) =
empty`) and `sup_{B'} E <= cap + err(delta)`, such that for beta
large:

```text
inf_{x in B_{delta/2}(g*)} P_x( X hits B' within time T + 1,
                                staying in the delta-collar union
                                B_{(C* + 6) delta}(G) meanwhile )
  >= c exp( - beta ( cap - e_0 + err(delta) ) ).
```

Since B' is disjoint from closure(D), THE EVENT FORCES tau <= T + 1.

Proof.  STEP 1 (the descent path and B').  By (F3) pick y* on the
level-cap boundary with `grad E(y*) != 0`.  `grad E(y*) != 0` makes
{E = cap} a smooth hypersurface near y* and {E < cap} locally a
connected half-neighborhood; that piece contains points of D (y* in
bd(D)), hence lies IN D, and the forward flow from y* enters it for
small t > 0 and then converges to G by (F2).  Flow +grad E from y*
until reaching z* with `E(z*) = cap + 2 L_0 delta''` for a small
delta'' (possible while |grad E| >= |grad E(y*)|/2 on a fixed
neighborhood; delta'' small).  Choose the radius r of
`B' := B_r(z*)` so small that `cap + L_0 delta'' <= E <= cap +
3 L_0 delta''` on B' (E is L_0-Lipschitz): the lower bound gives
`B' intersect closure(D) = empty`; the upper bound is what Step 3
consumes; both are err(delta) above cap after renaming delta'' as a
function of delta.  By closure attraction and continuous
dependence, fix T and a nonempty open `B'' subset B'` with
`Phi_T(B'') subset B_{delta/8}(g*)` for some g* in G, the flow
segments staying in a compact collar of the descent path.
STEP 2 (downhill order one).  By SH.2 (radius delta/8 tubes): for
beta large, `inf_{z in B''} P_z( X_T in B_{delta/4}(g*), X stays in
the delta-collar ) >= 1/2`.
STEP 3 (stationary sandwich, AVERAGE form).  A := {X_0 in B'', X_T
in B_{delta/4}(g*), X in the collar}.  Then `P_rho(A) >=
rho(B'')/2`, and by SH.1 `P_rho(A) = P_rho(rev A)` with `rev A =
{X_0 in B_{delta/4}(g*), X_T in B'', X in the collar}`.  Writing
`P_rho(rev A) = int_{B_{delta/4}(g*)} P_y(X_T in B'', collar)
rho(dy)` and inserting the density bounds (`rho <= Z^-1 e^{-beta
e_0}` on the g*-ball; `rho >= Z^-1 e^{-beta(cap + err)}` on B''):

```text
int_{B_{delta/4}(g*)} P_y( X_T in B'', collar ) dy
  >=  c_2(delta) exp( - beta ( cap - e_0 + err(delta) ) )
```

(the Lebesgue-average form; the oscillation of E on the g*-ball is
<= C delta^2 = err(delta) by (F1) and Taylor, so passing between
the rho-average and the Lebesgue average costs only err).
STEP 4 (average to inf, via minorization).  [MIGRATED 2026-07-20
to SH.2'-LOCAL v2 - the former SH.2'(b) invocation is RETIRED with
that refuted lemma.]  For arbitrary `x in B_{delta/2}(g*)`: this is
a LOCAL hop at the SAME base point (transverse distance <= delta/2,
tangential offset d_G(pi(x), g*) <= delta/2 =: h).  L1' as amended
(A4 + A5, lane-sh2local-proofs; delta-check 2026-07-20: the
FREE-density form - all this step consumes) delivers: the time-1
law of X from x dominates
`m(beta, delta) Leb(.)` on B_{delta/2}(g*) superset B_{delta/4}(g*),
with `m(beta, delta) = c beta^{dim/2} exp(-beta C_2' (3/4) delta^2)`
- an O(delta^2) = err-class exponent, exactly what the arithmetic
below absorbs.  CORRIDOR NOTE (honest): the A5 form is killed on the
tube T_{r0}(G), not the former tighter B_{(C*+6) delta}(G) claim;
the sequel does not consume the tighter radius (the Step-3 event
carries its own collar) - if any downstream row disagrees, it must
surface at the delta-check.  Markov at time 1:

```text
P_x( the Step-3 event on [1, T + 1] )
  >= m(beta, delta) int_{B_{delta/4}(g*)} P_y( X_T in B'', collar ) dy
  >= c(delta) beta^{dim/2} e^{-beta C_G} c_2(delta)
       e^{-beta(cap - e_0 + err(delta))}
  >= c'(delta) exp( - beta ( cap - e_0 + err'(delta) ) )
```

(C_G = O(delta^2) absorbed into err'), uniformly over x in
B_{delta/2}(g*).  Hitting B'' subset B' within T + 1 forces the
claim.  QED.

REMARK (the along-G chain, for starts near OTHER points of G)
[MIGRATED 2026-07-20 to SH.2'-LOCAL v2 L2 - the former ad-hoc
SH.2'(a)-iteration is RETIRED; its hop closure was X3 defect 4]:
for x in B_{delta/2}(g**) with g** elsewhere on G, L2 with hop scale
h = delta/2 (matched radii: land B_{delta/4}, restart <= delta/2;
ground centers at intrinsic spacing h/2 per the XF A1 correction)
moves the process into B_{delta/2}(g*) inside T_{r0}(G) in
n = ceil(2 D_G / h) hops (D_G explicit: L3, campaign #23 sealed) at
total cost
`c_0^{n} exp(-beta 2 C_1 n h^2) >= c'(delta) exp(-beta err(delta))`
with n h^2 = O(D_G h) = O(delta) -> 0 - NOT order one, but
err-absorbable (the L2 corollary's exact shape, with the necessary
threshold beta >= B/h^2 = O(delta^-2) recorded); then run SH.3.
Consumed by SH.4.

## Theorem SH.4 (the upper bound for the D-exit time)

Assume (F1)-(F4).  For every eta > 0, q in D_eta:

```text
limsup_beta beta^-1 log E_q[ tau_D ] <= cap - e_0;  and for every
delta' > 0:  P_q( tau_D > exp(beta(cap - e_0 + delta')) ) -> 0.
```

Proof.  Fix delta small.  RELOCATION: from any x in closure(D), the
flow enters B_{delta/8}(G) within a UNIFORM time T_1(delta)
(compactness of closure(D), Crit intersect closure(D) = G by (F2),
so |grad E|^2 has a positive lower bound off B_{delta/16}(G),
bounding the descent duration; boundary starts descend inward
immediately by (F3)).  By SH.2 (radius delta/8): with probability
>= 1/2, EITHER the process leaves D during [0, T_1] - then tau_D <=
T_1 and the round has ALREADY SUCCEEDED - or it tracks into
B_{delta/4}(G) without exit (the tube may poke outside D near a
boundary start; both branches are counted).  ATTEMPT: from
B_{delta/4}(G), the along-G chain (SH.3 Remark) plus the SH.3 event
give exit within T_chain(delta) + T + 1 with probability
`p := c(delta) exp(-beta(cap - e_0 + err(delta)))`.  ROUNDS of
duration `T_round := T_1 + T_chain + T + 1` therefore succeed
(tau_D <= end of round) from ANY state in closure(D) with
probability >= p/2; the Markov property at round ends gives
`P_q( tau_D > n T_round ) <= (1 - p/2)^n`, hence `E_q[tau_D] <=
2 T_round / p`.  LIMITS: the limsup form by beta -> infinity then
delta -> 0.  P-form: given delta' > 0 pick delta with err(delta) <
delta' and take `n = floor( exp(beta(cap - e_0 + delta')) /
T_round )`: `(1 - p/2)^n <= exp( -(c(delta)/(2 T_round))
exp(beta(delta' - err(delta))) ) -> 0`.  QED.

## Theorem SH.5 (THE SHARP RATE for the D-exit time)

Assume (F1)-(F4) and the family's certified persistence rows.  For
every eta > 0 and q in D_eta:

```text
lim_beta beta^-1 log E_q[ tau_D ]  =  cap - e_0   (THE TRUE RATE),
```

q-INDEPENDENT on strict sublevels.  (i) At ground states the
certified rate cap - E(q) is SHARP.  (ii) Strictly above the ground
the certified q-dependent rate remains a TRUE lower bound that is
NOT tight for tau_D: the true rate is the larger constant cap -
e_0; the q-dependence was an artifact of the one-sided method, now
typed.

Proof.  Upper bound: SH.4.  Lower bound: from q in D_eta, SH.2
tracks the flow into B_delta(G) by time T_1 without exiting D with
probability >= 1/2 (the tube from D_eta stays in D at levels <=
cap - eta + err for delta small).  Strong Markov at time T_1 on
that event: `E_q[tau_D] >= (1/2) inf_{x' in B_delta(G)}
E_{x'}[tau_D]`.  By SR-SH2 with K = closure(B_delta(G)) (compact,
in D for delta small; max_K E <= e_0 + err(delta)): `sup_{x' in K}
P_{x'}( tau_D <= exp(beta(cap - e_0 - err - delta')) ) -> 0`, so
`inf_{x' in K} E_{x'}[tau_D] >= exp(beta(cap - e_0 - err -
delta'))(1 - o(1))`, giving `liminf beta^-1 log E_q[tau_D] >=
cap - e_0 - err(delta) - delta'`; let delta, delta' -> 0.  QED.

## Theorem SH.6 (instantiation; the label typing)

Each row under ITS OWN typed hypotheses and ranges; W in cW
(gate-v14), ONE W per row; `w_k := W(G_k)`.  (F1)-(F3) discharge
from the named certified lemmas; (F3)'s NONEMPTINESS discharges
from the Delta-barrier facts (Delta nonempty with E >= the family
barrier on it: T1-facts / M3a / M2b / MC.2 / MR.2 - Delta carries
points with E > cap, so {E < cap} != X; D being the component
containing G on the connected torus, bd(D) subset {E = cap} is
nonempty); (F4) is derived (Standing Data).

```text
FAMILY      E / cap / ground e_0                  TRUE D-EXIT RATE
passive     J_kappa / 2 kappa / m_k               2 kappa - m_k
  (F1) ground on C_k; (F2) P0 pinning + closure attraction;
  (F3) Crit misses 2 kappa + nonemptiness via Delta.
controlled  h(J) / 2 kappa + b / h(m_k)           2 kappa + b - h(m_k)
  (deep: 2 kappa - m_k + 2b); via the M3 structural transfer.
coupled     E_eps / 2 kappa / m_k + eps w_k       2 kappa - m_k - eps w_k
  on [0, epsilon_0) under M2-PIN + C1-SUB(k); M2P rows.
composed    E_c / 2 kappa + b / h(m_k) + eps w_k  2 kappa + b - h(m_k) - eps w_k
  on [0, epsilon_0^c) under MC-PIN + C1-SUB(k); MC.1-MC.4.
symmetric   E_sym / CAP / h_theta(m_k) - b_phi + eps w_k
                                                  CAP - that ground
  on [0, epsilon_0^sym) under MR-PIN + C1-SUB(k); MR.1-MR.4.
  (Deep: 2 kappa - m_k + 2 b_theta - eps w_k, b_phi-free.)
```

For each row, SH.5 gives: the TRUE exponential rate of the D-EXIT
time equals cap - ground, q-independently on strict sublevels; the
deep-aligned certified D-exit rates are SHARP (ground rates).

THE LABEL (typed, the wave's object-honesty catch): the label
persistence time (hitting the Delta set / changing sector)
DOMINATES tau_D - the certified label lower bounds stand unchanged
- but the matching upper bound for the LABEL does NOT follow from
this artifact: exiting D at level cap does not change the sector,
and the Delta floor sits STRICTLY ABOVE cap in every family
(winding-k criticals strictly above 2 kappa; the h-shifted and
coupled analogues).  LABEL SHARPNESS = TYPED OPEN (it would require
post-exit analysis between the cap level and the Delta floor).
QED (pointer discharge + SH.5 per row).

## Honest Boundary (recorded, not claimed)

```text
THE SHARP LAW IS FOR tau_D ONLY.  Label sharpness: typed open (the
  gap between the cap level and the Delta floor is unexplored -
  deliberately; no claim).
EXPONENTIAL ORDER ONLY: no prefactors, no Eyring-Kramers, no
  spectral claims; err(delta), c(delta), T(delta), T_round,
  n_s(delta), n(delta) symbolic (constants policy).
THE CHAIN COST is exp(-beta err(delta)) (SH.2'-LOCAL v2 L2, the
  migrated route; threshold beta = O(delta^-2) carried), NOT order
  one; it is absorbable precisely because n(delta) delta^2 -> 0.
NEAR-BOUNDARY LAYER (E(q) in (cap - eta, cap)): typed open.
SKEW FAMILIES: NOT covered (non-reversible - the skew drifts are
  not gradients and SH.1/SR-SH1's detailed balance fails); typed
  open.
SR-SH1 / SR-SH2 are STANDARD EXTERNAL INPUTS (named, with
  hypothesis rows) - the corpus's SR discipline; they are not
  reproved here.
LARGE COUPLING beyond the pinning ranges; exit location; multiple-
  well hierarchies; second eigenvalue: not in scope.
```

## False Inference Firewall

```text
true D-exit rate => label relaxation/flip rate : BLOCKED (typed
  open; the domination is one-sided)
true rate => physical relaxation time : BLOCKED (mathematical exit
  asymptotics on a torus; anti-quantization firewall binding)
sharp at ground => certified displays were wrong : BLOCKED (lower
  bounds, correctly typed since T3; sharpness TYPES their tightness
  for tau_D)
q-independent rate => starting point irrelevant : BLOCKED
  (exponential order only)
anything here => agency : BLOCKED
```

## Verdict

```text
Lane-SH Sharpness v1 = REPAIRED AFTER A FAIL WAVE (L-A1); the
  program's first new analysis, ground hard and rebuilt
gate-v15 build = COMPLETE (the 3-lens blind L-A2f was subsequently
  run and the campaign CLOSED - see the closeout; the "pending"
  wording here predated it)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = (consumed)
  governance/gate-v15-campaign-closeout-v1.md (landed)
```
