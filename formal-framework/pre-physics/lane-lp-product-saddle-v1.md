# Lane-LP Product Saddle v1 (label stage 3: discharging the product rows)

Status:

```text
Lane-LP Product Saddle v1 = SEALED (L-A2f GRANTED 2026-07-05
  after FOUR waves: L-A1 3/3 FAIL + verify-1 3/3 FAIL + verify-2
  convergent bridge-class + L-A2f 3/3 blind Opus PASS; two
  rebuilds; one auditor claim refuted by direct computation; see
  the Wave Record) /
  PROD-SUBSADDLE DISCHARGED (the coupled saddle-level product lower
  bound is a THEOREM) / PROD-RELOCATE DISCHARGED ON THE w_phi = 0
  BAND / PROD-CROSS DISCHARGED (the excursion rows PROD-EXCURSION +
  PROD-EXCURSION-COND DISCHARGED, XE-11-authorized 2026-08-02;
  the LP.5(c)/package FULL-upper reading additionally rides GAP-LP-RECUR @ A6 (lane-minmig MM:3163; fences at lane-minmig:47 and lane-lp LP.5), preserved verbatim per XE-11's mandatory boundary)
  (PROD-EXCURSION + PROD-EXCURSION-COND; LP-MIN-MIG discharged,
  lane-minmig-proofs) /
  composed and symmetric families TYPED on PROD-TRANSFER /
  NO PHYSICS CLAIMS / NO AGENCY CLAIMS
campaign = gate-v18 (single artifact); the gate-v17 prescriptions
  executed: two of the three typed rows discharge FOR THE COUPLED
  FAMILY, the third is replaced by the strictly smaller excursion
  row; composed/symmetric carry a recorded rerun prescription.
HEADLINE 1 = THE TUBE TRICK: |E_0 - S_k| <= C_Z r^2 inside the
  r-tube of the product saddle circle and E_eps >= E_0 always, so
  the saddle tube EXCLUDES ITSELF from the sub-saddle domain - no
  perturbed-saddle analysis; epsilon_1(eps') ~ c sqrt(eps'), and at
  FIXED eps the cap S_k - C_inv eps^2 works.
HEADLINE 2 = THE CONE ROUTE: near the saddle circle, time-tau
  displacement chains (LP.4b) + the cone-exit lemma (LP.4a) with
  the EXACT side coordinate (LP.4a-0: bonds are linear in angles,
  and the unstable direction provably moves the first bond -
  positive-definiteness of the bond form on {xi_1 = 0}) replace
  every flow claim the waves killed: the descent flow inside the
  unstable cone grows |u| monotonically and exits the FIXED tube
  T_{r_0'} with a FIXED E_0-drop - no retry accounting; the
  crossing target scales as A_x eps, the chains cost
  exp(-beta O(eps^2)), and THE O(eps) WINDOW SURVIVES INTACT.
SCOPE = flagship k = 1, N >= 10 throughout (the v16/v17 rows);
  coupled family in full; composed/symmetric: same critical sets,
  levels reshaped by h_theta - LEVEL and CRITICALITY transfer only,
  flow-line identity is NOT claimed at eps > 0 (see PROD-TRANSFER).
anti-quantization firewall = BINDING
assurance = L-A2f GRANTED + PARTIAL L-A4 (campaign #11 2026-07-11: LP.1(ii)'s FLOOR sealed in LINEARIZED slice form with EXPLICIT constant c_Z = |cos(a_k)|(N-2)/N - the projected-Hessian norm identity is EXACT, same collapse as the band; the NONLINEAR floor composition (l4-aggregation of Taylor remainders) stays prose/next-target; positivity requires N > 4k; one-representative form) (campaign #9 2026-07-11: LP.1(i)'s BAND DISCHARGED IN BOND-QUADRATIC FORM - saddle_band/product_band in lean/LabelTowerCore.lean via the exact linear-term cancellation on the winding slice - and the tube trick made UNCONDITIONAL in that form (tube_exclusion_unconditional); the metric-tube/frame conversion (L_fr layer) stays prose-level) (campaign #6 2026-07-05: the TUBE-TRICK INFERENCE machine-checked - tube_self_exclusion in lean/LabelTowerCore.lean, band-as-hypothesis + domination + r(eps') choice => strict self-exclusion above the cap, plus Wstar >= 0; LP.1(i)'s band itself stays prose-level) (gate-v18, 2026-07-05: 3/3 blind Opus
  PASS-WITH-FINDINGS, zero FATAL/MAJOR, 55/55 checklist VERIFIED;
  six MINOR presentation findings applied, one lens tightening
  REJECTED by re-derivation; four waves total)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing data

The v16 artifact (levels, ridge, LS.4 saddle nondegeneracy, LS.6
classification), the v17 artifact (the typed rows and PROD-SHELL),
the certified product families (M2a/M2P), [MACH-UP] + SR-SH2, all at
their discharged flagship rows (k = 1, N >= 10; M2-PIN).  The
product saddle circle `Z := SP_k x C_0` (a T^2 orbit).
X3 CORRECTION (cross-provider, 2026-07-19, lead-verified): Z IS
E_eps-critical for EVERY eps >= 0 - the previous "NOT E_eps-critical
for eps > 0" premise was FALSE. At (spBond, 0) all d-sines equal
sin a and d_i - e_i = d_i, so both coupled criticality chains are
CONSTANT (kappa sin a + eps sin a; -eps sin a) and every zero-sum
variation kills them. Exact level: E_eps(Z) = S_k + eps S_k / kappa.
X3 also supplies the exact inertia under M2-PIN (lambda > kappa):
(2N-3 positive, 1 negative, 2 rotation-zero) for every eps >= 0 -
Z stays an index-1 (Morse-Bott) saddle at all couplings. IMPACT
CONTAINED: LP.2 uses E_eps >= E_0 (not noncriticality), LP.4 permits
E_eps-criticals in its inner core, LP.5 already charges the exact
eps S_k/kappa level shift. The "perturbed saddle not located"
narrative is RETIRED - the saddle is located: it never moves.
(Verdict verdicts/X3-2026-07-19.md Finding 1; Lean seal = campaign
#22 target.)  NUMERICS NOTE (B2a shell probe,
2026-07-10): the critical set at level S_k in the sector is N
ISOMETRIC copies of Z (the hot bond at each slot - the cyclic
relabeling symmetry; the T^2 rotation orbit fixes the hot-bond
slot; the machine-sealed LS.6(b) classification carries the
`exists i0` form).  EVERY tube/excision around Z below (K_all's
T_{r(eps'_0)}, LP.4's T_core, the corridors) is READ AS THE UNION
over the N relabeling copies - by isometry every constant and
every argument is copy-independent, so this is a reading note,
not a repair of any inequality; but AS LITERALLY WRITTEN with one
copy excised, c_shell = 0 (the probe located SP_k(hot bond 2) x
C_0 inside K_all at |grad| ~ 3e-6).  With the union reading the
probe finds no sub-floor gradient point (numerics/falsify.py
check_shell_floor).  `E_0 := J_kappa + J_lambda` (the
eps-free envelope); `E_eps = E_0 + eps W*`, `W* >= 0`, with the
certified bounds `sup |grad W*| <= 2 sqrt(2N)` (WC (A5)/M2P.4) and
`sup W* <= W_sup := 2N` (M2P Standing Data).  Levels: `E_0(Z) =
S_k`; ground `G_k` at `m_k + eps w_k`.

### Norm convention (recorded)

Tube radii and dist(., Z) are MAX NORM (as everywhere in the
corpus).  INSIDE LP.4a-0/LP.4a/LP.4b and at their consumption
points, the transversal coordinates (u, s) are EUCLIDEAN
eigencoordinates of the transversal Hessian frame over Z (the
frame is rotation-parallel over the orbit: the orbit action is
angle translation, which preserves bonds and conjugates the
Hessian).  `L_fr` (ledger) converts frame coordinates to ambient
max-norm positions and back; the one-way containment (Euclidean
r-ball subset max-norm r-ball) is used as stated.

### The constants ledger (all symbolic; every inequality recorded)

```text
c_Z, C_Z, C'_Z, r_0 : LP.1 (floor, band, upper bound, tube radius)
lambda_u   : transversal unstable eigenvalue floor over Z (LS.4 +
             compactness); index 1 transversally (one negative
             direction, in the theta-factor)
Lambda_s   : transversal Hessian norm ceiling over Z
Lambda_min : transversal STABLE eigenvalue floor over Z (positive
             per fixed N by LS.4 + the phi-block + compactness;
             SMALL - the theta-stable floor decays like 1/N^2
             (checked: 0.35/0.25/0.10 kappa at N = 10/12/20) -
             consumed ONLY as slack >= 0, never as a size)
C_N        : quadratic remainder constant of the transversal
             Taylor frame (LP.4a displays; compactness)
c_1        : first-bond increment of the unit unstable
             eigendirection, c_1 > 0 (LP.4a-0; PROVED nonzero -
             not assumed; approx 1.33 at N = 10/12/20)
C_fr       : max first-bond increment over unit STABLE-block
             directions (LP.4a-0; NONZERO in general; bounded by
             compactness). X7 CORRECTION 2026-07-19: the OPERATOR-NORM
             values are ~0.4708/0.4713/0.4714 at N = 10/12/20 - the
             earlier 'up to 0.30' figure was the max single eigenvector
             coefficient, a DIFFERENT quantity; see the reference-value
             correction note further below. The C_fr arm is INACTIVE in
             the gamma_c min (c_1/(2 C_fr) > 1.4 > 1/2); gamma_c flows
             from the full-Lambda_s arm.
L_fr       : frame-coordinates <-> ambient-position Lipschitz
             constant over T_{r_0'} (compactness; >= 1)
gamma_c := min( 1/2, sqrt(lambda_u/(4 Lambda_s)), c_1/(2 C_fr) )
             (cone aperture; the THIRD arm makes the side
             coordinate decisive on the cone - LP.4a-0)
c_cone := lambda_u/4
K_M := C* + 2 + (2 + L_fr)/gamma_c + L_fr   (chain clearing
             constant; C* = 1 + 6 L_E from SH.2')
A_cone := 32 sqrt(2N)/(gamma_c lambda_u)    (cone-entry constant:
             for |u| >= A_cone eps, 4 sqrt(2N) eps <=
             gamma_c lambda_u |u|/8)
A_x := 4 A_cone                             (crossing-target
             coefficient, LP.5)
rho(eps) := (16 sqrt(2N)/c_Z) eps           (INNER CORE radius:
             at dist = rho, c_Z dist = 8 x the drift 2 sqrt(2N)
             eps; the consumed inequality |grad E_eps| >= (1/2)
             c_Z dist needs only dist >= 4 sqrt(2N) eps/c_Z, so
             rho carries a further factor-4 margin)
C_core := C_Z (16 sqrt(2N)/c_Z)^2           (core E_0-pinch)
C_ch   : the LP.4b chain-landing level-overshoot coefficient
             (grad-W* fiber drift eps 2 sqrt(2N) K_M r + corridor
             wander C_Z O(r^2), both O(eps^2); symbolic) - the
             third [phi-desc] start clause
c_H := (1/4) min( m_k + 2 kappa - S_k , 4 kappa - S_k )
             (band height; both entries POSITIVE: PROD-SHELL
             gives S_k - m_k < 2 kappa, and S_1 <= 2.7 kappa <
             4 kappa (LS.6(b)))
c := c_Z/(4 sqrt(2N) sqrt(2 C_Z))           (the corollary
             constant: the epsilon_1 middle entry = c sqrt(eps'))
C_inv := max( 2/c^2 , 8 C_core ,
              2 C_Z ((2 + 2/gamma_c)(16 sqrt(2N)/c_Z))^2 ,
                  [ makes r(eps') >= (2 + 2/gamma_c) rho(eps);
                    consumed at LP.4(ii)(2)'s chain start
                    (rho <= r(eps') suffices - the (2 + 2/gamma_c)
                    factor is recorded slack) ]
              2 C_Z A_cone^2 ,   [ makes r(eps') >= A_cone eps ]
              32 C_Z A_cone^2 )  [ makes r(eps') >= A_x eps ]
r_0' <= r_0, shrunk to satisfy - ALL RECORDED:
  [tube]   r_0' <= r_0/2 (so the frame box BX of LP.4a, inside
           T_{(sqrt 5/2) r_0'}, stays inside T_{r_0})
  [cone]   r_0' <= gamma_c lambda_u/(16 C_N (1 + gamma_c^2))
  [cube]   r_0' small enough to bury every cubic Taylor remainder
           in LP.4a(c) on BX (radius sqrt(1 + gamma_c^2) r_0')
  [phi]    C_Z r_0'^2 <= 4 c_H  and M2-PIN strict: T_{r_0'}
           misses Delta_phi by level (E_0 there >= m_k + 2 lambda
           > m_k + 2 kappa >= S_k + 4 c_H >= sup_{T_{r_0'}} E_0)
  [theta]  r_0' <= (1/2) dist(Z, Delta_theta) > 0 (SP_k's max
           bond is pi - a_k < pi, compactness): T_{r_0'} misses
           Delta_theta - w_theta = k on the tube and the normal-
           bundle chart is a genuine tube
eps'_0 ledger: eps'_0 < S_k - 2 kappa (positive, v16 ladder);
  eps'_0 <= 2 C_Z r_0'^2; eps'_0 <= c_cone r_0'^2 / 4.
eps_2 := min( epsilon_1(eps'_0)  [implied by the sqrt(eps'_0/
    C_inv), c_shell and epsilon_0 entries - kept for citation
    shape],
  sqrt(eps'_0/C_inv),
  c_shell/(4 sqrt(2N)),
  c_cone r_0'^2/(2 W_sup)            [LP.4a(c) eps-part],
  (S_k - 2 kappa - eps'_0)/(2 W_sup) [LP.4(ii) ground-tube level
                                      separation],
  [phi-desc] the least entry with eps S_k/kappa + C_B eps^2 <=
    c_H AND C_ch eps^2 <= c_H (so every LP.4a start in this
    artifact carries E_eps <= S_k + 2 c_H - consumed by LP.4a(b)'s
    Delta_phi line - via the THREE start types: (a) the band top,
    E_eps <= S_k + c_H directly; (b) the LP.5 target B'', sup_{B''}
    E_eps <= S_k + eps S_k/kappa + C_B eps^2 <= S_k + c_H (C_B :=
    the LP.5(a) sandwich level constant, symbolic - forward-named
    here, defined at LP.5(a); independent of LP.4a); (c) the
    LP.4(ii)(2) / LP.5(b) chain landing, which inherits its
    core-entry level E_eps <= S_k + c_H and is perturbed by only
    C_ch eps^2 along the corridor (unstable-fiber descent lowers
    E_0; the grad-W* drift over the fiber is eps 2 sqrt(2N) K_M
    r <= O(eps^2); the corridor wander adds C_Z O(r^2) = O(eps^2)),
    giving E_eps <= S_k + c_H + C_ch eps^2 <= S_k + 2 c_H, C_ch
    symbolic),
  the corridor entries: (C* + 8)(K_M + 1) r(C_inv eps^2) <= r_0'
    and (C* + 8)(K_M + 1) A_x eps <= r_0'  (the second is implied
    by the first via A_x eps <= r(C_inv eps^2), recorded above),
  epsilon_0 )    - the ONE smallness threshold, cited by
  LP.3/LP.4/LP.5.
```

### The typed rows (restated after wave 2)

```text
ROW PROD-EXCURSION(N, k): in the LP.5(c) renewal from the ground
  ball (eps < eps_2, q in D_k(eps)), let R_0 := {w_theta = k,
  w_phi = 0, E_eps <= S_k + c_H}.  Every path exit from R_0 passes
  the doorway {E_eps > S_k + c_H} (Delta_phi is level-blocked
  inside R_0 by the c_H ledger; a Delta_theta hit IS the renewal's
  target event).  CLAIM (typed): the expected time per renewal
  round spent OUTSIDE R_0, before the excursion either re-enters
  {E_eps <= S_k + c_H, w_phi = 0} or changes the theta-label, is
  <= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))), T_row
  beta-free.  TYPED - NOT discharged: the eps > 0 critical
  structure above the band and the whole w_phi != 0 stratum are
  unclassified; the G_{k,j} = C_k x C_j^phi pinning tori
  (E_eps-critical for EVERY eps, at reachable levels for
  admissible lambda) are REAL traps in the excursion region - any
  bare probability-floor version of this row is FALSE at them,
  which is why the row carries the EXCURSION shape.
  COMPANION ROW PROD-EXCURSION-COND (added 2026-07-21, R5b of the
  migration campaign): the conditional-uniform form - the SAME
  expected-time bound conditional on every admissible round-start
  sigma-field, a.s., uniform over round starts in the base ball.
  TYPED, NOT discharged; the migration pieces consume THIS row
  (never a silent strengthening of the row above); discharge route
  = lane-prodexc-design (PE.1-PE.5 with PE.3 retired, PLUS the
  pointwise upgrade PE.3' - the design page is a CANDIDATE route
  for the PARENT row; the conditional-uniform companion
  additionally needs PE.3', XM-R2 F4). ADJUDICATED 2026-07-21
  (ADJ-2, lane-prodexc): NO N-window enters this row or the parent
  - the rows as typed are PER-ROUND and refuted NOWHERE on the
  flagship range (identity m_1(lambda) - c_H/2 = g(N)(lambda - 1/8)
  + (S_k - 2)/8 > 0, both summands strictly positive); the earlier
  red-flag window reading is
  WITHDRAWN (aggregate/per-round conflation - the PE.5 scans are
  true statements about the AGGREGATE display only).
  BOTH ROWS DISCHARGED (XE-11-authorized, 2026-08-02,
  verdicts/XE-11-2026-08-02.md: "B-DWELL: YES ... E2-ASSEMBLY: YES
  ... flip: AUTHORIZED ... fence-preserving only"): delivered by
  E2-CONSOLIDATED (lane-prodexc-v2.md), the single-vintage statement
  of the E2 campaign - the (COND*) chain (cover on both null traces;
  the block-free one-excursion (RED''); the displayed budget with
  err_tot; the W1-W6 quantifier walk), (P-SUB)-free and Palm-free,
  the trap branch on the weak boundary-free machinery (Sections 2-4
  incl. 4.2(h)) - at the typed strength: PROD-EXCURSION-COND for
  round-start fields G_i with starts in closure(S) (i >= 1), the
  PARENT row as corollary. Eleven external verdicts across the arc
  [COUNT CORRECTION 2026-08-02, XE-15 P3: the original print said
  'Sixteen', conflating five E1/MIN-MIG-primary signatures
  (XM-R12..XM-R16) whose window overlapped; strict census:
  governance/verdict-census-v1.md]
  (XE-1..XE-11), zero mathematical cores refuted. The
  TYPED-NOT-discharged sentences above stand as verbatim record; the
  pinning-tori caveat is honored exactly as typed (the discharge is
  of the EXCURSION-shaped row; no probability-floor strengthening).
  Standing conditions live in lane-prodexc-v2 Section 7. MANDATORY
  BOUNDARY, verbatim in force: the LP.5(c)/package FULL-upper
  reading additionally rides GAP-LP-RECUR @ A6 (lane-minmig MM:3163;
  the fences at lane-minmig:47 and at LP.5 below) - the flip does
  NOT discharge that condition.
  Plausibility
  route (recorded, stage 4's target): reversibility round-trip -
  the doorway sits at S_k + c_H, the Delta_phi gate at
  S_k + 4 c_H, so every entry into the off-stratum region pre-pays
  an exit margin of 3 c_H over the band top.  Consumed ONLY by
  LP.5(c).  SUPERSEDES the wave-1 row PROD-RELOCATE-HIGH (wave 2:
  a probability-floor row does NOT compose - on its complementary
  event the process can cross Delta_phi and pin on G_{k,j} with no
  return floor; the excursion shape is what SH.4 consumes).

ROW PROD-TRANSFER(family): the composed / symmetric analogues of
  LP.1-LP.5 under h resp. h_theta.  TYPED - NOT discharged (the
  wave: LT.1's transfer audit T1-T8 covered the SINGLE controlled
  loop; at eps > 0 the composed flow is NOT a reparametrization of
  the coupled flow, so flow-line facts do NOT transfer).  Recorded
  rerun prescription (mechanical, flow-free where it matters):
  Crit(h o J_kappa) = Crit(J_kappa) preserves the classification;
  the envelope E_0^c := h(J_kappa) + J_lambda has Z critical with
  Hessian theta-block h'(S_k) Hess J (the h'' term vanishes on
  Crit); the per-member third-derivative bound is smoothness +
  compactness (per-member clause, named); the per-family
  Delta_phi/K_all chains re-run PROD-SHELL's consumption lines
  under h_theta; the LP.4 boundary checks re-run per family; the
  LP.5 level identity becomes h(f(m)) + eps f(m)/kappa, increasing
  in m.  Only LEVEL and CRITICALITY facts transfer as-is.
```

## Lemma LP.1 (the product saddle floor and band)

There are r_0 > 0 and constants c_Z, C_Z, C'_Z > 0 (symbolic) such
that on the tube `T_r := { dist(x, Z) <= r }`, r <= r_0:

```text
(i)   BAND:  |E_0(x) - S_k| <= C_Z r^2      on T_r;
(ii)  FLOOR: |grad E_0(x)| >= c_Z dist(x, Z) on T_{r_0};
(iii) UPPER: |grad E_0(x)| <= C'_Z dist(x, Z) on T_{r_0}.
```

Proof.  Z is a compact critical orbit of E_0 with transversally
NONDEGENERATE Hessian: the product Hessian at Z is block-diagonal -
the theta-block is LS.4's form (nondegenerate, index 1, modulo the
theta-rotation) and the phi-block is `lambda |B dphi|^2` at C_0
(positive definite modulo the phi-rotation); the T^2 orbit
directions span the kernel.  (i): Taylor with grad E_0 = 0 on Z and
bounded third derivatives (compactness).  (ii): the standard
Morse-Bott floor - by Taylor, `grad E_0(x) = Hess_Z(x - pi_Z(x)) +
O(dist^2)` transversally, and the nondegenerate Hessian gives
`|Hess_Z v| >= c |v|` on the transversal space; choose r_0 with the
O(dist^2) term below half the linear term (uniform over the compact
orbit).  (iii): the same Taylor display read upward.  QED.

## Lemma LP.1' (the classification set K_all and its floor)

Define

```text
K_all := closure( {E_0 <= S_k + c_H} intersect {w_theta = k,
         w_phi = 0} )  minus  ( int T_{r(eps'_0)} union
         ( int(the M2P ground tube) intersect {E_0 < 2 kappa} ) ),
c_shell := inf |grad E_0| over K_all.
```

Then K_all is COMPACT and `c_shell > 0`.

Proof.  Compactness: a closed subset of T^{2N} (the excised sets
are open).  Positivity: it suffices that `Crit(E_0) intersect K_all
= empty`.  The E_0-criticals are products of factor criticals.  In
the closure of the sector set at levels <= S_k + c_H: the
theta-part is C_k or SP_k (LS.6: the off-Delta winding-k criticals
are exactly these; ON-Delta critical sets sit at levels >= 4 kappa
>= S_k + 4 c_H > S_k + c_H by the c_H ledger, so closure points on
Delta_theta are never critical at these levels); the phi-part is
C_0 (a w_phi = 0 critical above C_0 has J_lambda >= 2 lambda,
impossible: J_kappa >= m_k on the winding-k sector by the ridge
minimum, so J_lambda <= S_k + c_H - m_k < 2 kappa <= 2 lambda by
the c_H ledger and M2-PIN; the same level chain shows closure
points on Delta_phi carry E_0 >= m_k + 2 lambda > S_k + c_H and
are not in K_all at all).  So the only candidates are `G_k` (level
m_k < 2 kappa - inside the INTERSECTED ground excision) and `Z`
(excised by T_{r(eps'_0)}; tube boundaries retained in K_all carry
|grad E_0| >= c_Z r(eps'_0) by LP.1(ii) - using `r(eps'_0) <=
r_0'`, i.e. `eps'_0 <= 2 C_Z r_0'^2`, ledger - resp. the M2P
tube-boundary floor).  A compact set missing Crit(E_0) has a
positive gradient infimum.  QED.

NOTE (one set, one constant): K_all contains the sub-cap shell,
the band region AND the valley region up to level S_k + c_H, on
BOTH sides of the ridge, INCLUDING any part of the M2P ground tube
at levels >= 2 kappa - LP.2, LP.4(i) and LP.4(ii) all cite this
single floor.

## Theorem LP.2 (PROD-SUBSADDLE DISCHARGED - the two-tube working family)

For every eps' in (0, eps'_0]: set `r(eps') := sqrt(eps'/(2 C_Z))`
and

```text
epsilon_1(eps') := min( epsilon_0,
                        c_Z r(eps') / (4 sqrt(2N)),
                        c_shell / (4 sqrt(2N)) ).
```

Then for `eps in [0, epsilon_1(eps'))`:

`(E_eps, S_k - eps', D'_eps, G_k)` is a [MACH-UP] working family,
`D'_eps :=` the component of `{E_eps < S_k - eps'}` containing G_k.

Proof.  (F1a) D'_eps misses Delta_theta (the theta-marginal sweep +
the product ridge: a Delta_theta-touching path from G_k passes
M_abs^theta = pi - a_k where `E_eps >= J_kappa >= phi_k(pi - a_k) =
S_k > S_k - eps'`) and misses Delta_phi (`E_eps >= J_kappa +
2 lambda >= m_k + 2 lambda > m_k + 2 kappa > S_k`, by M2-PIN and
PROD-SHELL; J_kappa >= m_k on the winding-k sector by the ridge
minimum).  Hence w_theta = k, w_phi = 0 on D'_eps.

(F2) [proved BEFORE (F1b); nothing here consumes it]
Crit(E_eps) intersect closure(D'_eps) = G_k:
  - THE SADDLE TUBE EXCLUDES ITSELF: on T_{r(eps')}, `E_eps >= E_0
    >= S_k - C_Z r(eps')^2 = S_k - eps'/2 > S_k - eps'`, so
    `T_{r(eps')} intersect closure(D'_eps) = empty` - NO
    perturbed-saddle analysis is needed; wherever the eps-perturbed
    criticals near Z live, they live ABOVE the cap.
  - THE VALLEY IS NOT IN D'_eps: valley points (M_abs^theta >
    pi - a_k) cannot be joined to G_k below S_k - eps' (the sweep
    argument: the connecting path would pass M_abs^theta = pi - a_k
    at level >= S_k), so the valley meets other components.
  - COVERAGE OFF THE TUBES: closure(D'_eps) carries the sector
    facts (w_theta = k, w_phi = 0, M_abs^theta < pi - a_k: a
    closure point with M_abs^theta = pi - a_k or on Delta_phi would
    carry E_eps >= S_k > S_k - eps'; Delta_theta-adherence forces
    M_abs^theta -> pi > pi - a_k, same exclusion) and E_0 <= E_eps
    <= S_k - eps' <= S_k + c_H.  Hence closure(D'_eps) minus the
    ground excision lies in `K_all union (T_{r(eps'_0)} minus
    T_{r(eps')})` [the annulus - T_{r(eps')} itself is disjoint
    from the closure by the self-exclusion], with `|grad E_0| >=
    c_shell` on K_all (LP.1') and `>= c_Z r(eps')` on the annulus
    (LP.1(ii)).  So `|grad E_eps| >= min(c_shell, c_Z r(eps')) -
    2 sqrt(2N) eps > 0` there for eps < epsilon_1(eps') (the
    epsilon_1 entries carry factor-2 slack): no criticals.
  - THE GROUND EXCISION: M2P.5 Step 2 verbatim (the certified
    pinning architecture, eps < epsilon_0; the level intersection
    {E_0 < 2 kappa} only shrinks the excised set, and M2P.5's
    internal-critical argument runs on the sub-2kappa pinning
    domain where it lives).
  Closure attraction: the corpus pinning pattern (E_eps decreasing
  + compactness + unique internal critical set + no boundary rest
  points).

(F1b) ground: `E_eps >= E_0 >= m_k` on D'_eps with the minimum
attained exactly on G_k.  THE COMPONENT BRIDGE: by the ledger
`eps'_0 < S_k - 2 kappa`, `{E_eps < 2 kappa} subset {E_eps < S_k -
eps'}` for every eps' <= eps'_0.  Let C'' be any component of
`{E_eps < 2 kappa}` meeting D'_eps; then C'' subset D'_eps
(component containment).  closure(C'') is compact and its
E_eps-minimum is < 2 kappa, hence attained at an INTERIOR point
(boundary values = 2 kappa, and Delta_theta carries E_eps >=
J_kappa >= 2 kappa), which is an E_eps-critical of closure(D'_eps)
= G_k by (F2).  So C'' = D_k(eps) (both are components of the same
set containing G_k), i.e. `D'_eps intersect {E_eps < 2 kappa}
subset D_k(eps)`: points of D'_eps inside D_k(eps) minimize at G_k
(M2P); points outside have `E_eps >= 2 kappa > m_k + eps w_k` (the
last inequality typed by `eps < epsilon_0 <= (2 kappa - m_k)/w_k`,
M2P's third entry).

(F3) boundary nonempty (levels above S_k - eps' exist in every
neighborhood of bd) with no rest points (by the (F2) floor at the
boundary level).  (F4) derived.  QED.

COROLLARY (fixed-eps form): the epsilon_1 middle entry equals
`c sqrt(eps')`.  With `C_inv >= 2/c^2` (ledger): for every
`eps < eps_2`, setting `eps' := C_inv eps^2` gives `eps' <= eps'_0`
(the eps_2 entry `sqrt(eps'_0/C_inv)`) and `eps = (1/(c sqrt(
C_inv))) c sqrt(eps') <= (1/sqrt 2) c sqrt(eps') < epsilon_1(eps')`
STRICTLY (each epsilon_1 entry dominates c sqrt(eps') or is
eps-free and folded into eps_2).  So the cap `S_k - C_inv eps^2`
carries a working family, and `2 kappa < S_k - eps'_0 < S_k -
C_inv eps^2` (ledger): the certified pinning domain sits below the
cap.  The liminf obstruction recorded at gate-v17 is RESOLVED
QUANTITATIVELY IN THE eps^2-WINDOW FORM: the eps' -> 0 recovery
fails, but the eps^2-cap form is exactly what the lower bounds
need.

## Theorem LP.3 (the coupled saddle-level product lower bound - a THEOREM)

Under the flagship rows + M2-PIN, for eps < eps_2 and q in the
certified pinning domain D_k(eps):

```text
coupled:   liminf beta^-1 log E_q[tau_change^theta]
             >= S_k - m_k - eps w_k - C_inv eps^2.
composed / symmetric: TYPED on ROW PROD-TRANSFER (the h- resp.
  h_theta-reshaped displays h(S_k) - h(m_k) resp. h_theta(S_k) -
  h_theta(m_k), b_phi cancelling, on their pins and ranges - the
  rerun prescription is recorded in the row).
```

Proof (coupled).  A theta-label change from q requires exiting
D'_eps at cap S_k - C_inv eps^2 (LP.2's (F1a): D'_eps misses
Delta_theta; and q in D_k(eps) subset D'_eps by the (F1b) component
bridge with 2 kappa < the cap, ledger); SR-SH2 on K =
closure(B_delta(G_k)) + the [MACH-UP] relocation (certified closure
attraction within D_k(eps)) compose exactly as in the v16/v17
routing.  QED.

(De-typing, stated honestly: the gate-v17 LT.2(c) display is
DE-TYPED IN ITS eps^2-WINDOW FORM - the saddle-level lower bound
with the -C_inv eps^2 window no longer consumes PROD-SUBSADDLE.
LT.2(c)'s exact display (no eps^2 term) remains tied to the liminf
clause, which is resolved by REFORMULATION, not proof.)

## Lemma LP.4a-0 (the side coordinate - EXACT)

On T_{r_0'} (theta-face entry: no wraparound, w_theta = k):

```text
(0a) The maximal absolute theta-bond is uniquely the first bond of
     the chart: SP_k has bonds (pi - a_k, a_k, ..., a_k) with gap
     (pi - a_k) - a_k >= 3 pi/4 for N >= 10, and each bond moves
     by at most 2 r_0' <= a_k/2 on the tube (bonds are 2-Lipschitz
     in the max norm; [theta] gives r_0' <= a_k/4 since
     dist(Z, Delta_theta) <= a_k/2 - the first bond sits a_k from
     pi) - far below the gap, so on the tube M_abs^theta = d_1,
     smooth (and d_1 < pi by [theta]).
(0b) Bonds are LINEAR functions of the angles, and the frame is
     rotation-parallel over Z; hence on the chart x = z + u v_u +
     s . V_s:   d_1(x) = (pi - a_k) + c_1 u + <b_s, s>   EXACTLY,
     with c_1 := (B v_u)_1 (oriented c_1 > 0) and |<b_s, s>| <=
     C_fr |s|.  NO quadratic remainder.
(0c) c_1 != 0 - PROVED, not assumed: in bond-increment coordinates
     the theta-Hessian form at SP_k is kappa sum_i cos(d_i) xi_i^2
     on {sum xi_i = 0}; on the subspace {xi_1 = 0} it equals
     kappa cos(a_k) sum_{i >= 2} xi_i^2 > 0 (cos a_k > 0, N >= 5)
     - POSITIVE DEFINITE.  The negative eigendirection therefore
     cannot satisfy (B v_u)_1 = 0.  [The stable block does NOT
     annihilate the first bond in general - C_fr != 0; the wave-2
     lens's exactness claim here was REFUTED by direct
     computation: eigen-alignment of the slice tangent 0.92-0.94
     and stable first-bond components up to 0.30 at N = 10..20 -
     the repair uses only the true facts above.]
(0d) THE SIDE IDENTIFICATION: on the cone C_gamma := {|s| <=
     gamma_c |u|}, the third gamma_c arm (gamma_c <= c_1/(2 C_fr))
     gives |<b_s, s>| <= c_1 |u|/2, hence
       sign( M_abs^theta - (pi - a_k) ) = sign(u)  and
       |M_abs^theta - (pi - a_k)| >= (c_1/2) |u|
     everywhere on T_{r_0'} intersect C_gamma with u != 0 -
     u < 0 is the k-sector interior side (M_abs < pi - a_k),
     u > 0 the valley side.  No eps-threshold, no remainder.
```

QED (0a: bond arithmetic; 0b: linearity of bonds + parallel frame;
0c: the displayed positive-definiteness; 0d: the ledger arm).

## Lemma LP.4a (the cone-exit lemma - the rebuild's engine)

THE FRAME BOX: `BX := C_gamma intersect {|u| <= r_0'}` (frame
coordinates; `BX subset T_{(sqrt 5/2) r_0'} subset T_{r_0}` by the
one-way containment, gamma_c <= 1/2 and [tube] - so LP.1, the
[theta] entry (factor-2 slack) and LP.4a-0 apply on ALL of BX).

For eps in (0, eps_2) and any point y in BX with `|u(y)| >=
A_cone eps`, the E_eps-DESCENT flow from y:

```text
(a) stays in C_gamma while |u| <= r_0' (i.e. in BX), with |u|
    nondecreasing (indeed d|u|/dt >= lambda_u |u|/2);
(b) reaches THE FRAME EXIT |u| = r_0' in time <= T_cone(eps) =
    O(log(1/eps)) (beta-free), ON THE SAME SIDE (sign of u
    preserved), and hits NO Delta face on the way: Delta_theta by
    the [theta] factor-2 slack over BX; Delta_phi by DESCENT
    MONOTONICITY - along the flow E_0 <= E_eps <= E_eps(start) <=
    S_k + 2 c_H < S_k + 4 c_H <= m_k + 2 lambda (every LP.4a start
    carries E_eps <= S_k + 2 c_H by the [phi-desc] entry's three
    start clauses - the band top and B'' at <= S_k + c_H, the
    chain landing at <= S_k + c_H + C_ch eps^2; M2-PIN strict) -
    no tube-level claim needed;
(c) at the frame exit, E_0 <= S_k - c_cone r_0'^2, hence E_eps <=
    S_k - c_cone r_0'^2/2 <= S_k - 2 eps'_0 (the eps_2 entry
    eps <= c_cone r_0'^2/(2 W_sup) and the ledger eps'_0 <=
    c_cone r_0'^2/4) - STRICTLY BELOW the band and every cap,
    with a FIXED (eps-free) drop.
```

Proof.  The descent flow in the transversal frame (Euclidean
eigencoordinates; frame-rotation terms absorbed into the quadratic
remainders, compactness), with the sign convention du/dt =
lambda_u u + remainders (descent expands the unstable coordinate):

```text
d|u|/dt >= lambda_u |u| - C_N (u^2 + |s|^2) - 2 sqrt(2N) eps
           (one-sided derivative; u is one-dimensional and
           |u| >= A_cone eps > 0 on the consumed set)
d|s|/dt <= -Lambda_min |s| + C_N (u^2 + |s|^2) + 2 sqrt(2N) eps
```

(the eps-terms are `eps |grad W*|`).  On the cone: u^2 + |s|^2 <=
(1 + gamma_c^2) u^2.  The two GAMMA_C-WEIGHTED entries [cone] and
A_cone (wave-2 repair - the unweighted entries did NOT close;
Lambda_min is small and is never used as a size):

```text
quadratic:  C_N (1 + gamma_c^2) u^2 <= (gamma_c lambda_u/16) |u|
            for |u| <= r_0'                      [cone entry]
eps-drift:  2 sqrt(2N) eps <= (gamma_c lambda_u/16) |u|
            for |u| >= A_cone eps                [A_cone entry]
```

INTERIOR GROWTH (a): d|u|/dt >= lambda_u|u| (1 - gamma_c/16 -
gamma_c/16) >= lambda_u |u|/2, and the sign of the one-dimensional
u cannot flip while |u| grows: (b)'s side preservation.  CONE
INVARIANCE (a): on the boundary |s| = gamma_c |u|,

```text
d/dt(|s| - gamma_c|u|)
  <= [-Lambda_min |s| + C_N(1+gamma_c^2)u^2 + 2 sqrt(2N) eps]
     - gamma_c [lambda_u|u| - C_N(1+gamma_c^2)u^2 - 2 sqrt(2N) eps]
  <= -gamma_c lambda_u |u|
     + 2 C_N (1+gamma_c^2) u^2 + 4 sqrt(2N) eps
  <= -gamma_c lambda_u |u| + (gamma_c lambda_u/8)|u|
     + (gamma_c lambda_u/8)|u|   <   0
```

(Lambda_min |s| >= 0 dropped as slack; (1 + gamma_c) <= 2 absorbed
into the displayed factor 2).  EXIT TIME (b): |u| grows from
A_cone eps at rate >= lambda_u/2 exponentially, reaching the frame
exit |u| = r_0' in time <= (2/lambda_u) log(r_0'/(A_cone eps));
the whole trajectory stays in BX (cone invariance + |u| monotone),
where every cited entry is valid, and the Delta lines of (b) are
the displayed one-liners.  (c): at the frame exit |u| = r_0',
|s| <= gamma_c r_0' (within BX; LP.1 applies via the BX
containment):

```text
E_0 = S_k - (lambda_u/2) u^2 + (1/2)<Hess_s s, s> + O(|(u,s)|^3)
    <= S_k - (lambda_u/2) r_0'^2 + (Lambda_s/2) gamma_c^2 r_0'^2
       + O(r_0'^3)
    <= S_k - (3 lambda_u/8) r_0'^2 + O(r_0'^3)
    <= S_k - (lambda_u/4) r_0'^2 = S_k - c_cone r_0'^2
```

using `gamma_c^2 <= lambda_u/(4 Lambda_s)` and the [cube] entry;
then `E_eps <= E_0 + eps W_sup` and the two ledger entries.  QED.

## Lemma LP.4b (the time-tau displacement chain at a non-critical center)

Let SEG be a segment (or C^1 path) of length L, delta > 0, with
`sup |grad E_eps| <= kappa_d` on the corridor `B_{(C*+7) delta}
(SEG)` (one unit wider than SH.2's (C*+6) delta: the extra delta
absorbs the along-SEG re-target offset delta/2 + delta/(2 C*) <=
delta - the head walks along the curve, not around a point).  Set
`tau := min(1, delta/(4 kappa_d))`.  Then the chain of
`n = O(C* L/delta)` time-tau hops along the net of spacing
`delta/(2 C*)` on SEG moves the process from any start within
delta of SEG's head to within delta/2 of SEG's end, staying in the
corridor, at total cost

```text
c(delta, ...) exp( - beta O( C* L (delta + kappa_d) ) ).
```

Proof.  SH.2'(a)'s four-slice proof run at time-scale tau: the
drift displacement per hop is <= kappa_d tau <= delta/4 - PRECISELY
the role the criticality bound 6 L_E delta' plays in SH.2' (there
via grad E = 0 on the center + Lipschitz; here by hypothesis; the
wave-2 repair: at time 1 the instantiated drift kappa_d >> delta
broke both the landing and the corridor - the SHORTENED hop is
what restores the SH.2' bookkeeping).  The slice Gaussian bounds
rescale by tau: per-hop exponent O(delta^2/tau) = O(delta (delta +
kappa_d)).  The honest per-hop landing: delta/4 (conditioned noise)
+ delta/4 (drift) = delta/2, at ONE parameter throughout; the
corridor induction closes at width (C*+7) delta against per-hop
drift delta/4.  Re-target each hop from the actual landing
(|x - y_next| <= delta/2 + delta/(2 C*) <= delta - the net
geometry of the SH.3 REMARK (the along-G chain), not SH.3 Step 4).
Multiply over n hops: total exponent O((L/delta) C* delta (delta +
kappa_d)) = O(C* L (delta + kappa_d)).  QED.

INSTANTIATION (both uses below): SEG = a piece of an unstable
eigenfiber near Z, scale delta in {r(eps'), A_x eps} (with eps' :=
C_inv eps^2), L <= (K_M + 1) delta, and by LP.1(iii) + the grad-W*
bound on the corridor (inside T_{r_0'} - the eps_2 corridor
entries): `kappa_d <= C'_Z (C* + 8)(K_M + 1) delta + 2 sqrt(2N)
eps = Theta(eps)`.  Total cost: `exp(-beta O(eps^2))` at both
scales.  Landing bookkeeping at the chain end (frame conversion
L_fr): position error delta/2 gives |u_land - u_target| <=
L_fr delta/2 and |s_land| <= L_fr delta/2.

## Lemma LP.4 (the product valley + the band trichotomy - PROD-RELOCATE discharged on the w_phi = 0 band)

Throughout this lemma `eps' := C_inv eps^2` (the fixed-eps cap of
the LP.2 corollary - every O(eps') below reads O(eps^2)).  Define
the PRODUCT VALLEY and the (RESTRICTED) BAND:

```text
V := {w_theta = k, w_phi = 0, E_eps < S_k - eps',
      M_abs^theta > pi - a_k}
B := {w_theta = k, w_phi = 0, S_k - eps' <= E_eps <= S_k + c_H}
```

[Wave-1 repair: B carries w_phi = 0.  The unrestricted band
contains E_eps-critical pinning states for every eps - e.g.
G_{k,1} = C_k x C_1^phi (M2P.1's constant-sine-chain parenthetical)
with level m_k + N lambda (1 - cos(2 pi/N)) + eps w inside the band
for admissible lambda - the unrestricted dichotomy is FALSE.  The
w_phi = 0 stratum is DYNAMICALLY CLOSED at band levels: crossing
Delta_phi needs E_eps >= m_k + 2 lambda > m_k + 2 kappa >= S_k +
4 c_H (c_H ledger, M2-PIN strict), above the band top.]

```text
(i) VALLEY: V contains no E_eps-criticals and its only flow exit is
    across Delta_theta, in uniform time.  Boundary check: the
    E_eps-level top (flow cannot ascend); the M_abs^theta =
    pi - a_k face is EMPTY (there J_kappa >= S_k so E_eps >= S_k >
    S_k - eps'); Delta_phi is EMPTY in V (E >= m_k + 2 lambda >
    S_k); Delta_theta = the exit (a crossing = the label change).
    Criticals and floor (wave-2 repair - the annulus, as in LP.2's
    coverage): closure(V) minus a Delta_theta-collar lies in
    (K_all minus the tubes' interiors) union the annulus
    (T_{r(eps'_0)} minus T_{r(eps')}) [T_{r(eps')} itself is
    disjoint from V by the level pinch E_eps >= S_k - eps'/2; and
    the GROUND EXCISION is missed by level: M_abs^theta >=
    pi - a_k on closure(V) forces J_kappa >= phi_k(M_abs) >=
    phi_k(pi) = L_k > 2 kappa (the ridge law + the v16 ladder;
    phi_k decreasing on [pi - a_k, pi]), so E_0 > 2 kappa while
    the excision carries E_0 < 2 kappa], so
    |grad E_eps| >= min(c_shell, c_Z r(eps')) - 2 sqrt(2N) eps > 0
    there (the epsilon_1 entries), an eps-dependent floor; the
    uniform exit time T_V(eps) is beta-free, which the declared
    limits order (beta -> infinity first at fixed eps) consumes.
    Exit across the collar: as in v16 LS.2c + LS.5 RELOCATE branch
    (ii) (tracked flow + one displacement across the null
    Delta_theta at cost exp(-beta err) if the tracked tube ends
    short).
(ii) BAND TRICHOTOMY: define the INNER CORE `T_core := {dist(x, Z)
    <= rho(eps)}` (ledger).  Facts:
      - CORE PINCH: on T_core, E_eps >= E_0 >= S_k - C_core eps^2
        >= S_k - eps'/8 (C_inv >= 8 C_core): the core sits
        spatially ABOVE the level S_k - eps'/8, and every
        eps-perturbed critical near Z lies INSIDE it (off the
        core, |grad E_eps| >= c_Z dist - 2 sqrt(2N) eps >=
        (1/2) c_Z dist > 0 by the rho ledger).
      - GROUND SEPARATION (wave-2 repair): B misses the ground
        excision: on B, E_0 >= E_eps - eps W_sup >= S_k - eps'_0 -
        eps W_sup > 2 kappa (the eps_2 entry (S_k - 2 kappa -
        eps'_0)/(2 W_sup)), while the excised ground set carries
        E_0 < 2 kappa.
      - OFF-CORE FLOOR ON B: B minus T_core lies in (K_all union
        the annulus (T_{r(eps'_0)} minus T_{r(eps')}) union
        (T_{r(eps')} minus T_core)) - exhaustive by the ground
        separation - where |grad E_eps| >= min(c_shell,
        c_Z r(eps'), (1/2) c_Z rho(eps)) - [2 sqrt(2N) eps where
        applicable] =: floor(eps) > 0.
    THE TRICHOTOMY: from any x in B minus T_core, the flow descends
    (dE_eps/dt <= -floor(eps)^2), so within T_B(eps) = (c_H +
    eps')/floor(eps)^2 (beta-free) one of:
      (1) EXIT DOWN: E_eps drops below S_k - eps'.  The landing is
          in {w_theta = k, w_phi = 0} (both Delta faces blocked at
          band levels: Delta_phi by the c_H ledger, and a
          Delta_theta hit IS outcome (3)) - either in V (-> (i):
          crosses, label change) or in the sub-cap sector region
          {M_abs^theta < pi - a_k} - which flows to G_k: THE
          REGION-WIDE CHAIN (no circular (F2) citation): the set
          {w_theta = k, w_phi = 0, M_abs^theta < pi - a_k, E_eps <
          S_k - eps'} minus the two excisions lies in K_all union
          the annulus (as in LP.2 coverage), where |grad E_eps| >
          0; the saddle tube is excluded LOCATION-FREE (E_eps >=
          S_k - eps'/2 on T_{r(eps')} bars sub-cap membership);
          the ground excision is M2P.5 Step 2.  Hence Crit(E_eps)
          in the region = G_k DIRECTLY; the omega-limit of the
          descent (compactness; M_abs^theta blocked at pi - a_k by
          the ridge at sub-cap levels; Delta_phi blocked by level)
          is G_k, and the flow path places the landing in the
          G_k-component, i.e. in D'_eps: RELOCATED (closure
          attraction to the ground ball).
      (2) CORE ENTRY: the flow reaches T_core.  Then ONE LP.4b
          chain: SEG = the unstable eigenfiber from the entry
          point's nearest orbit position out to u = K_M r(eps')
          (the side of the entry's u; either side if u = 0), scale
          r(eps'), cost exp(-beta O(eps^2)); the landing (LP.4b
          bookkeeping): u_land >= (K_M - L_fr/2) r(eps') >=
          A_cone eps (the C_inv entry r(eps') >= A_cone eps and
          K_M - L_fr/2 >= 1) and |s_land| <= L_fr r(eps')/2 <=
          gamma_c u_land (the K_M ledger: K_M >= L_fr/2 +
          L_fr/(2 gamma_c) + 1) - IN THE CONE, with |u| >=
          A_cone eps.  LP.4a then reaches its frame exit on that
          side with the FIXED drop: E_eps <= S_k - 2 eps'_0 <
          S_k - eps' (eps' <= eps'_0), i.e. EXIT DOWN is realized;
          the flow NEVER returns to B (E_eps decreases) - NO RETRY
          ACCOUNTING.  Near side (LP.4a-0: u < 0 <=> M_abs <
          pi - a_k) -> (1)'s sub-cap branch -> G_k; far side ->
          the valley V -> (i) -> label change.
      (3) DELTA_THETA HIT: the label changes.
    PROCESS FORM (the flow-to-process bridge, displayed - wave-3
    repair): each flow branch above is consumed by the DIFFUSION
    via SH.2 max-norm tracking at radius delta_tr := min(eps'_0/
    L_0, (c_1/8) A_cone eps, the [phi]/[theta] distance margins)
    over the beta-free horizons T_B(eps) resp. T_cone(eps) =
    O(log 1/eps) - order-one probability as beta -> infinity at
    fixed eps (the declared limits order; SH.2's exponent depends
    on the horizon, which is beta-free); the tracked endpoint
    inherits the level drop (margin eps'_0), the LP.4a-0 side
    (margin (c_1/2)|u|), and the winding pair (both Delta faces
    missed with the ledgered margins).
CONSEQUENCE: PROD-RELOCATE holds ON {E_eps <= S_k + c_H} intersect
{w_theta = k, w_phi = 0}: relocate-to-G_k or theta-label change,
uniform time, probability >= c exp(-beta err(delta) - beta
O(eps^2)) (the only exponential factor is the single (2)-chain).
```

QED.

## Theorem LP.5 (PROD-CROSS discharged; the upper windows - the excursion rows PROD-EXCURSION + PROD-EXCURSION-COND DISCHARGED [XE-11, 2026-08-02; LP-MIN-MIG discharged]; the FULL-upper reading rides GAP-LP-RECUR @ A6, fence below, preserved verbatim)

Under the flagship rows + M2-PIN + PROD-EXCURSION +
PROD-EXCURSION-COND (the former row LP-MIN-MIG is DISCHARGED -
the call sites ride lane-minmig-proofs; the Wald tower consumes
the COND companion, R5b)
[XE-8 RELEASE FENCE, 2026-08-01: LP.5's UPPER additionally rides the
initial-delay term E_q[sigma_0], typed at GAP-LP-RECUR @ A6 strength
(lane-minmig MM:3163); any future flip of the two PROD rows must
PRESERVE this condition explicitly - a flip does not discharge it], for eps in
(0, eps_2) and q in D_k(eps) (LP.2/LP.3 keep [0, eps_2) - their
proofs are non-degenerate at eps = 0; here the target ball has
radius ~ eps):

```text
limsup beta^-1 log E_q[tau_change^theta]
  <= S_k - m_k + eps (S_k/kappa - w_k) + C eps^2,
and with LP.3: the O(eps) WINDOW IS TWO-SIDED (the excursion rows are
DISCHARGED, XE-11; the FULL-upper reading keeps the GAP-LP-RECUR @ A6
condition per the fence)
(PROD-EXCURSION + PROD-EXCURSION-COND; LP-MIN-MIG discharged):
  | rate - (S_k - m_k) | <= eps max(w_k, S_k/kappa - w_k) + C eps^2.
The h_theta-shifted displays: TYPED on PROD-TRANSFER.
```

XH CORRECTION (cross-provider 2026-07-20, lead-verified): the proof
below invokes the GLOBAL SH.2' minorization at G_k in three places
(the sandwich floor, the round Markov structure, and the round
counter). That global lemma was REFUTED by X3 and repaired LOCALLY
(SH.2'-LOCAL v2, lane-sh); lane-sh's in-lane consumers were migrated
2026-07-20, but LP.5's consumption was NOT (XH finding 2; X5 had
flagged the residual). NEW TYPED ROW **LP-MIN-MIG**: re-base the
three call sites on the LOCAL route with the L2 orbit chain FIRST
(starts near arbitrary points of the product ground need the chain
along G_k at the PRODUCT diameter D_G = pi sqrt(2N) - a circle
proof does not silently cover the product torus), and only then
L1' (the Cameron-Martin bridge density, corridor-qualified A5
form) on the landed base ball; the regeneration and stopped-round
steps additionally need the explicit common small-set + round-
filtration interface ([23] S D: a Nummelin split against a fixed
base-ball law, or uniform conditional floors - 'Markov via
minorization' alone does not compose), all instantiated on the
product family with its own eps-flow (M2P.1 supplies ground
criticality).
LP-MIN-MIG WAS DISCHARGED (XM-R16-authorized): the three call sites now
ride lane-minmig-proofs R5a (the continuous FLOORS round object -
no coins; the collar-killed crossing floor R6a whose density is
Lemma KD, R7a/R8a) and the retry scaffold R5b/R6b/R7b/R8b (the
A3/Nummelin route is VOIDED - superseded record). LP.5's upper is conditional on
PROD-EXCURSION + PROD-EXCURSION-COND (the Wald tower consumes the
conditional-uniform companion - R5b). This block is the record.
[RECON 2026-08-09, MATH-SEAL-RECON-01: record at this block's
sealing. Both rows were subsequently DISCHARGED - E2 campaign,
XE-11-authorized 2026-08-02 - and the initial delay at the MIN
OBJECT at rate strength (E5, XE-14); the surviving condition on the
package/full LP.5(c) upper is the FULL-EXPECTATION reading under its
verbatim A6 fence. The proof below is untouched.]

Proof.  THE ATTEMPT (from B_{delta/2}(G_k)):
(a) THE NEAR-TARGET SANDWICH.  Let `z_sl := x(pi - a_k) x {phi_0}`
- the v16 slice's saddle point, ON the orbit Z, where the W*-cost
identity (typed to W = W*) gives `W*(z_sl) = f(pi - a_k)/kappa =
S_k/kappa`.  Set the target on the EIGENFIBER through z_sl
(wave-2 repair: the SLICE tangent is NOT the eigendirection -
alignment 0.92-0.94, refuted numerically - so the target is
placed on the fiber, where the cone hypotheses are exact):
`z'' := z_sl - A_x eps v_u` (the NEAR side: u(z'') = -A_x eps,
s = 0; LP.4a-0 gives M_abs^theta(z'') < pi - a_k), and `B'' :=
the Euclidean frame-ball of radius gamma_c A_x eps/8 around z''`.
Ball points: |u| >= A_x eps (1 - gamma_c/8) >= A_x eps/2 >=
2 A_cone eps (A_x = 4 A_cone) and |s| <= gamma_c A_x eps/8 <=
gamma_c |u|/4 - the LP.4a hypotheses hold on ALL of B'' with
margin.  Level: `E_0 <= S_k` near Z on the fiber (LP.1(i) at
radius ~ A_x eps: |E_0 - S_k| <= C_Z (2 A_x eps)^2) and `eps W*
<= eps W*(z_sl) + eps 2 sqrt(2N) (2 A_x eps)`, so `sup_{B''} E_eps
<= S_k + eps S_k/kappa + C_B eps^2`, C_B named symbolic.  The
sandwich ([MACH-UP] SH.1-SH.3, run on the product standard family
with its OWN eps-flow throughout; the corpus admits targets above
the cap - the v15 pattern) with target B'': the REVERSAL
(downhill) leg from B'' is TRACKABLE AND ENDS AT THE GROUND BALL -
LP.4a runs it out of T_{r_0'} on the NEAR side at E_eps <= S_k -
2 eps'_0 in beta-free time, into the sub-cap sector region
(LP.4a-0 side identification at the exit), whence the region-wide
chain of LP.4(ii)(1) descends it to G_k in beta-free time; SH.2
tracks the actual eps-flow (err(delta)); SH.2' minorizes at the
ground (G_k IS E_eps-critical: M2P.1).  Sandwich cost:
`exp(-beta( sup_{B''} E_eps - (m_k + eps w_k) + err(delta) )) =
exp(-beta( S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 +
err(delta) ))`.
(b) THE CROSSING CHAIN.  From the B''-arrival: one LP.4b chain
along the eigenfiber from u ~ -A_x eps to u = +K_M A_x eps (scale
A_x eps, L <= (K_M + 1) A_x eps, kappa_d = Theta(eps) by the
instantiation, cost `exp(-beta O(eps^2))`), landing in the
FAR-side cone with |u| >= A_cone eps (the same LP.4b bookkeeping
as LP.4(ii)(2), at scale A_x eps); LP.4a reaches its frame exit
on the VALLEY side (LP.4a-0) at E_eps <= S_k - 2 eps'_0 <
S_k - eps', with w_phi = 0 and w_theta = k preserved (the chain
corridor stays in T_{r_0'} - the corridor entries - and the cone
segment in BX: both Delta faces missed per LP.4a(b)); the cone
segment is consumed by the diffusion via the same SH.2 tracking
display as LP.4(ii)'s PROCESS FORM (beta-free horizon, order-one
probability); then LP.4(i): the valley's only exit is across
Delta_theta, in uniform time, at order-one tracked probability -
THE LABEL CHANGES.  Per-attempt crossing probability:
`>= c exp(-beta( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 +
err(delta) ))` with `C_w := C_B + the LP.4b instantiation
constant of the (b)-chain at scale A_x eps (symbolic)` - every
symbol defined, THE WINDOW PRESERVED.
(c) ROUNDS.  Rounds are successive returns to the ground ball
(Markov via the SH.2' minorization at G_k).  Within R_0 :=
{w_theta = k, w_phi = 0, E_eps <= S_k + c_H} every cell carries a
PROVED relocate-or-change floor: sub-cap -> LP.2/LP.4(ii)(1); the
band -> LP.4(ii); and each round crosses with the (a)+(b) floor.
Excursions OUTSIDE R_0 (necessarily through the doorway {E_eps >
S_k + c_H} - the stratum closure, c_H ledger) contribute expected
time per round <= T_row exp(-beta(c_H/2 - err)) by ROW
PROD-EXCURSION (with its companion PROD-EXCURSION-COND the remaining
conditionality after the LP-MIN-MIG discharge; wave-2 repair:
the earlier probability-floor row did not compose - the excursion
shape is what the renewal consumes).  THE COMPOSITION (displayed
- wave-3 repair: the SH.4/v16 arithmetic runs on FIXED round
durations; here durations are unbounded random variables
controlled in expectation, so the Wald form is what composes):
(1) rounds are Markov at ground-ball returns (the SH.2'
minorization); N := the first crossing round is a stopping time
for the round filtration and {N >= i} is measurable at round-start
i, so `E_q[tau] = E[sum_{i <= N} D_i] <= (sup_i E[D_i |
F_{start_i}]) E[N]`, with `E[D_i | F_{start_i}] <= T(eps, delta)
exp(beta(err + O(eps^2))) + T_row exp(-beta(c_H/2 - err)) <=
2 T' exp(beta(err + O(eps^2)))` (the within-R_0 relocate floor
carries the (2)-chain's exp(-beta O(eps^2)) - it joins the
crossing floor's C_w eps^2 in the final C eps^2 window) and
`E[N] <= 1/p` at the (a)+(b) crossing floor p; (2) the P-form via
Markov's inequality on E_q[tau].  Both limit forms; limits order:
beta -> infinity FIRST at fixed (eps, delta), then delta -> 0,
then the eps-window is read.  QED.

## Corollary LP.6 (the tower table, updated)

For k = 1, N >= 10, deep case where marked, eps < eps_2, q in the
certified domains:

```text
FAMILY      LABEL RATE (deep)                 STATUS
passive     S_1 - m_1                         TWO-SIDED (v16;
                                              LS-MIN-MIG discharged)
controlled  S_1 - m_1 + 2b                    TWO-SIDED (v17;
                                              LS-MIN-MIG discharged)
coupled     >= S_1 - m_1 - eps w_1 - C eps^2  THEOREM (LP.3)
            <= S_1 - m_1 + eps(S_1/kappa -
               w_1) + C eps^2                 [PROD-EXCURSION DISCHARGED, XE-11; A6 fence in force for the full upper]
                                              + PROD-EXCURSION-COND
                                              (LP.5; LP-MIN-MIG
                                              discharged)
composed /  the h_theta-shifted analogues,    TYPED: PROD-TRANSFER
symmetric   b_phi cancelling                  (rerun prescription
                                              recorded)
```

The gate-v17 window for the COUPLED family: LOWER side
UNCONDITIONAL; UPPER side conditional on PROD-EXCURSION + PROD-EXCURSION-COND
(LP-MIN-MIG discharged).
[RECON 2026-08-09, MATH-SEAL-RECON-01: the sentence above is the state
at this lane's sealing. Those rows were subsequently DISCHARGED - the
E2 campaign, XE-11-authorized 2026-08-02, with the initial delay at
the MIN OBJECT at rate strength (E5, XE-14); the surviving condition
on the package/full upper is the FULL-EXPECTATION reading under its
verbatim A6 fence. No formula or strength on this page changes.]
Two of the three v17 rows are DISCHARGED for the coupled family;
the third is replaced by a strictly smaller one;
composed/symmetric await the recorded PROD-TRANSFER rerun.  QED.

## Honest Boundary (recorded, not claimed)

```text
LP-MIN-MIG: DISCHARGED (lane-minmig-proofs-v1.md; release authorized by XM-R16)
  (R5a FLOORS round object + R6a collar-killed floor via Lemma KD
  R7a/R8a + R5b-R8b retry; A3/Nummelin VOIDED). The artifact's typed-gap
  register is CARRIED (GAP-M5-EUC etc.).
PROD-EXCURSION + PROD-EXCURSION-COND remain TYPED (the excursion
  pair - the conditional-uniform companion typed R5b 2026-07-21):
  the eps > 0 critical structure above the band and the whole
  w_phi != 0 stratum are unclassified; the G_{k,j} pinning tori
  are REAL traps there; the pair's discharge route is the prodexc
  design page (per-round, NO N-window - ADJ-2); the migration
  pieces consume the COND form. Consumed only by the upper-bound
  renewal.
PROD-TRANSFER remains TYPED: composed/symmetric get LEVEL and
  CRITICALITY transfer only; the flow-line-free rerun of LP.1-LP.5
  per family is prescribed in the row, NOT performed.
THE w_phi = 0 SCOPING: the band trichotomy and the renewal live in
  the w_phi = 0 stratum; any future consumer starting at
  w_phi != 0 gets NOTHING from this artifact.
The eps' -> 0 recovery of the FULL climb level fails through the
  tube route (epsilon_1(eps') ~ c sqrt(eps') -> 0); the fixed-eps
  eps^2-cap form is what the theorems use - the gate-v17 liminf
  concern is resolved by REFORMULATION, not by proving the liminf
  positive.
The W*-cost identity (the eps S_k/kappa coefficient via W*(z_sl))
  is typed to W = W* (as at v17).
LP.4a-0/LP.4a/LP.4b are NEW ANALYSIS (an exact linear side
  coordinate; a Lyapunov cone argument with gamma_c-weighted
  entries; a time-tau drift-hypothesis variant of SH.2') - built
  across two FAIL waves; the numeric checks (eigen-alignment,
  c_1, C_fr, Lambda_min, lambda_u, Lambda_s at N = 10/12/20) are
  recorded in the Wave Record and are SUPPORTING, not load-bearing
  (every load-bearing fact is proved or ledgered symbolically).
Lambda_min decays like 1/N^2 (theta-stable floor) - recorded so no
  future consumer assumes a Theta(1) stable floor.
The crossing-target scaling is A_x eps; limits order: beta ->
  infinity first at fixed (eps, delta), then delta -> 0, then the
  eps-window is read.
k >= 2; prefactors; which-sector; skew: open (as before).
```

## False Inference Firewall

```text
lower bound unconditional => the window is a two-sided theorem :
  BLOCKED (the upper side consumes PROD-EXCURSION +
  PROD-EXCURSION-COND; LP-MIN-MIG discharged)
eps^2-cap resolution => the liminf is positive : BLOCKED
  (reformulated, not proved)
tube trick => the perturbed saddle is understood : PARTIALLY
  DISCHARGED [X5/S3 repair 2026-07-19: X3 + campaign #22 LOCATED and
  partially classified it - Z itself IS the E_eps-critical set's
  member at level S_k + eps S_k(1), first-order sealed in Lean,
  inertia scalar cores sealed, mode decomposition prose; the
  remaining unclassified part is only OTHER possible criticals in
  the core, still bounded above S_k - eps'/8]
band trichotomy => relocation from arbitrary w_phi : BLOCKED
  (w_phi = 0 scoped; the G_{k,j} pinning tori are real)
coupled discharged => composed/symmetric discharged : BLOCKED
  (PROD-TRANSFER is typed, not proved)
numeric checks => proof : BLOCKED (supporting only; the proofs are
  the displayed symbolic chains)
anything here => physics/agency : BLOCKED
```

## Wave Record

### Wave 1 (gate-v18 L-A1, 2026-07-05 - 3 lenses, repo-access, FAIL 3/3)

```text
LENSES: tube-floor / valley-dichotomy / crossing-rows.  The fifth
consecutive first-wave FAIL on a new-analysis gate.  ADJUDICATED:
FATAL-1 (all 3): the band omitted w_phi = 0 (counterexample
  G_{k,1}) - ACCEPTED; w_phi = 0 scoping + c_H ledger + LP.1' +
  the row restated.
FATAL-2 (valley): no tube-return accounting (retry loop = exponent
  Theta(c_H)) - ACCEPTED; the lens's "one-shot lands below the
  cap" fix REJECTED (eps W* = Theta(eps) cannot land below a
  Theta(eps^2) cap); REPLACED by the cone route.
FATAL-3 (crossing): drift bound false at B''; K delta displacement
  can neither cross nor climb - ACCEPTED; the lens's route (b)
  REJECTED (the chain constant does not vanish in its limit);
  REPLACED by the A_x eps near-target (window preserved).
MAJORS accepted: (F1b) component bridge + eps'_0 < S_k - 2 kappa;
  K_all closure; the coverage annulus; composed/symmetric
  THEOREM stamp -> PROD-TRANSFER; the HIGH row restated;
  delta''-constants superseded; SH.2' bridge -> LP.4b.
MINORS accepted: C_inv strictness factor; eps_2 consolidation;
  eps'' deleted; LP.1(iii); collar citation; de-typing wording.
```

### Wave 2 (verification of rebuild 1, 2026-07-05 - 3 lenses, repo-access, FAIL 3/3 - FATALs in the lead's own repair, the v17 pattern)

```text
LENSES: cone-chain / trichotomy-renewal / ledger-honesty.
ADJUDICATED (both directions; one lens claim REFUTED):
FATAL-A (all 3): the cone-invariance entries lacked the gamma_c
  weight (the negative term is gamma_c-weighted; Lambda_min small
  - 1/N^2 decay - and unledgered; C_N unledgered; Euclidean/max
  norm conflated; the u-display false on u < 0).  ACCEPTED - the
  gamma_c-weighted entries now displayed; Lambda_min ledgered as
  slack-only; norm convention recorded; d|u|/dt display.
FATAL-B (all 3): LP.4b kept SH.2's proportional landing formula
  with a fixed drift kappa_d >> delta (the drift is ADDED, not
  absorbed - the defect class the SH wave killed once).  ACCEPTED
  - adopted the TIME-TAU hop route (tau = min(1, delta/(4
  kappa_d)); drift per hop <= delta/4; cost O(delta(delta +
  kappa_d)) per hop, total O(C* L(delta + kappa_d)) =
  exp(-beta O(eps^2)) unchanged); the D-parameter minorization
  route and the n_s-slicing route (the other two lenses) are
  equivalent mechanisms - ONE adopted, recorded.
FATAL-C (trichotomy lens): the renewal did not compose - the
  probability-floor HIGH row leaks: on its complementary event the
  process can cross Delta_phi and pin on a G_{k,j} torus with NO
  return floor.  ACCEPTED - the lens's companion-row fix REJECTED
  AS WORDED (a bare err(delta) probability floor is FALSE at the
  G_{k,j} traps - the same falsity class wave 1 killed); the row
  RESHAPED to PROD-EXCURSION (expected-excursion-time form, which
  is what SH.4 consumes and which the doorway margin makes
  plausible).
MAJOR (side coordinate): the sign(u) => M_abs-side bridge was
  unproved.  ACCEPTED; but the lens's supporting claim ("the slice
  tangent is the EXACT negative eigendirection - alignment 1.0;
  stable first-bond components 0 exactly") was REFUTED by direct
  computation (alignment 0.943/0.934/0.918 and stable first-bond
  components up to 0.30/0.28/0.21 at N = 10/12/20; lambda_u =
  1.23-1.31, Lambda_s = 3.6-3.9, Lambda_min = 0.35/0.25/0.10,
  c_1 = 1.333)  [CONVENTION NOTE, B2a calibration 2026-07-10:
  these recorded values are THETA-BLOCK-only (Lambda_s) and
  PER-EIGENVECTOR (C_fr).  The conventions the displays consume
  give: Lambda_s over the FULL transversal block = 4.0 lambda
  exactly (the phi-factor N/2 mode at even N tops the 3.6-3.9
  range), and C_fr as the NORM of the first-bond row over the
  stable block (the Cauchy-Schwarz constant |<b_s,s>| <= C_fr|s|
  needs) = 0.471 at N = 10/12/20; hence gamma_c = 0.277-0.287,
  not ~0.29.  No proof consumes the recorded numbers (the ledger
  is symbolic and min-composed; gamma_c smaller only tightens
  apertures), so this corrects REFERENCE LINES only.  Source:
  numerics/falsify.py check_transversal_hessian.] - LP.4a-0 is built on the TRUE facts instead:
  bonds linear in angles (exact chart identity), c_1 != 0 PROVED
  via positive-definiteness of the bond form on {xi_1 = 0}, and
  the third gamma_c arm handles C_fr != 0.  (Lesson re-confirmed:
  auditor findings are INPUTS - re-verified both ways.)
MAJORS accepted: the LP.4(i) annulus (the wave-1 (F2) garble class,
  now repaired in BOTH places); the ground-tube level separation
  (excision intersected with {E_0 < 2 kappa} + the W_sup eps_2
  entry); tube-geometry entries ([phi], [theta]); A_x explicit +
  L_fr + the corridor entries (C_geo dissolved into explicit C_inv
  entries); B'' moved from the slice to the eigenfiber (the slice
  point can sit OUTSIDE the cone since gamma_c ~ 0.29 < the slice
  misalignment ~ 0.35).
MINORS accepted: d|u|/dt display; "SH.3 Remark" pointer (not Step
  4); S_1 <= 2.7 kappa (LS.6(b)); W_sup := 2N (M2P Standing Data,
  not WC (A5)); the unconsumed eps_2 entry replaced by the ground-
  separation entry.
```

### Wave 3 (focused verification of rebuild 2, 2026-07-05 - 2 lenses, repo-access: mechanics PASS-WITH-FINDINGS / renewal-ledger FAIL - CONVERGENT verdicts, bridge-class only, zero architectural holes)

```text
LENSES: mechanics re-derivation / renewal-ledger audit.  Both
lenses independently converged on the SAME residual defects - all
bookkeeping bridges, no invalid architecture.  ADJUDICATED:
EXIT BOOKKEEPING (renewal lens FATAL, mechanics lens MAJOR - the
  same finding): LP.4a conflated the frame event |u| = r_0' with
  the max-norm tube exit (at |u| = r_0' the point can be deep
  inside T_{r_0'}; read the other way the drop degrades).
  ACCEPTED - the FRAME BOX restatement adopted (the renewal
  lens's version, which keeps the displayed drop arithmetic
  intact): the exit is the frame event, BX subset
  T_{(sqrt 5/2) r_0'} subset T_{r_0} ([tube] entry added),
  Delta_theta via the [theta] factor-2 slack, Delta_phi via
  DESCENT MONOTONICITY (the [phi-desc] eps_2 entry added - it
  re-introduces, now with a consumer, the entry wave 2 deleted
  as unconsumed).  Consumers reworded to the frame exit.
FLOW-TO-PROCESS BRIDGE (mechanics MAJOR): the trichotomy's
  branches were flow statements; the CONSEQUENCE is a diffusion
  statement.  ACCEPTED - the PROCESS FORM display added to
  LP.4(ii) (SH.2 tracking, beta-free horizons, eps-free or
  eps-scaled margins listed) and mirrored at LP.5(b).
RENEWAL COMPOSITION (renewal MAJOR): SH.4/v16 arithmetic assumes
  fixed round durations; the excursion row controls expectation
  only.  ACCEPTED - the Wald/optional-stopping composition
  displayed in LP.5(c), and the round-duration display corrected
  (the exp(beta O(eps^2)) factor folds into the C eps^2 window).
MINORS accepted: the LP.4a-0(0a) bond-Lipschitz bridge (bonds
  2-Lipschitz, r_0' <= a_k/4 via [theta]); the LP.4(i) ground-
  excision level bracket (phi_k >= L_k > 2 kappa past the
  saddle); eps in (0, eps_2) quantifiers for LP.4a/LP.5; C_w
  defined; ledger hygiene (the epsilon_1(eps'_0) entry annotated
  implied; the C_inv third entry's consumption point recorded).
NOTE: the mechanics lens VERIFIED LP.4a-0(0b)-(0d) (the exact
  chart identity - Hess E_0 is literally CONSTANT over the affine
  orbit Z, so the frame is parallel and the identity has zero
  remainder - and the positive-definiteness proof of c_1 != 0),
  the gamma_c-weighted cone computation, and the time-tau chain
  bookkeeping.
```

### Wave 4 (L-A2f, 2026-07-05 - 3 blind Opus lenses on the verbatim brief, PASS 3/3)

```text
LENSES: deterministic / probabilistic / honesty.  3/3
PASS-WITH-FINDINGS, ZERO FATAL, ZERO MAJOR.  Every checklist
across the three lenses VERIFIED (55 items, zero checklist
FINDING): the blind lenses independently re-derived, from the
brief alone, the corollary strictness (c and 2/c^2), the K_all
classification, LP.2 (F1a/F2/F1b) acyclicity, LP.4a-0(0c)'s
c_1 != 0 positive-definiteness ("Airtight"), the gamma_c-weighted
cone invariance and the (c) drop chain, the frame-box containment,
the LP.4b time-tau bookkeeping (the wave-2 FATAL-B substitution
validated), the K_M ledger landings, and the de-typing honesty vs
LT.2(c).
FINDINGS (6 MINOR, two clusters) - ADJUDICATED:
  [phi-desc] entry: (i) didn't name the third LP.4a start (the
    chain landing); (ii) forward-references C_B; (iii) the honesty
    lens proposed TIGHTENING the ceiling S_k + 2 c_H -> S_k + c_H.
    (i)/(ii) ACCEPTED (the entry now lists three start clauses,
    names C_ch, flags C_B as forward-named-symbolic); (iii)
    REJECTED by re-derivation - the deterministic lens showed the
    chain landing genuinely overshoots to S_k + c_H + C_ch eps^2,
    so 2 c_H is the honest buffer, not slack (the two lenses
    disagreed; the lead sided with the one that re-derived the
    overshoot).  C_ch ledgered.
  LP.4b corridor (C*+7) delta (both prob + honesty lenses, noted
    conservative): the +1-over-SH.2' margin now re-derived inline
    (absorbs the along-SEG re-target offset).
  rho "factor-8 slack" wording: clarified (8 = linear/drift ratio;
    the consumed inequality keeps a further factor-4).
NET: the arc closes - L-A1 3/3 FAIL, verify-1 3/3 FAIL, verify-2
convergent bridge-class, L-A2f 3/3 PASS.  Longest arc of the
obra; two rebuilds; one auditor claim refuted by direct
computation (the "alignment 1.0" claim, wave 2).
```

## Verdict

```text
Lane-LP Product Saddle v1 (stage 3) = SEALED (L-A2f GRANTED,
  gate-v18, 2026-07-05) - the coupled saddle-level product lower
  bound is a THEOREM; the O(eps) label window is TWO-SIDED MODULO
  PROD-EXCURSION + PROD-EXCURSION-COND (LP-MIN-MIG discharged);
  composed/symmetric TYPED on PROD-TRANSFER
assurance = L-A2f 3/3 blind Opus PASS (four waves total)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```
