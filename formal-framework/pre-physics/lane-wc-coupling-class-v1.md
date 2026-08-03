# Lane-WC Coupling Class v1 (the specific W becomes a class)

Status:

```text
Lane-WC Coupling Class v1 = WC-DECLARED / SPECIFIC-W ASSUMPTION ->
  CLASS THEOREMS / NO PHYSICS CLAIMS / NO AGENCY CLAIMS
campaign = gate-v14, completion program storey 2 (single artifact);
  generalizes the coupled surface (M2a/M2b/M2P/M2c + MC + MR, all
  L-A2f) over a declared coupling class by CONSUMPTION AUDIT - the
  axioms are exactly what the certified proofs consume
method honesty = the theorems below are POINTER DISCHARGES over an
  ENUMERATED certificate chain (items 0-10): each cited proof is
  re-read against the axioms and a substitution table; ZERO new
  analysis beyond the axiom bookkeeping, the difference-subclass
  computations, and two member verifications.  Member-dependent SIDE
  FACTS of the cited artifacts (the exact min-level display, the
  0 <= W <= 2N ceiling, the G_{k,l} parenthetical) are NOT SWEPT -
  itemized in the Honest Boundary.
anti-quantization firewall = BINDING
assurance = L-A1 (gate-v14 3-lens wave 2026-07-04: 3/3 FAIL AS
  BUILT - the wave did exactly what it was designed for.  THREE
  CONVERGENT FATALs, all repaired: (A4)'s all-j quantifier EXCLUDED
  THE CORPUS MEMBER ITSELF (gamma_j < 0 for N/4 < |j| < N/2; now
  scoped to the consumed tori j = 0 and C1-SUB(j)); a MISSED
  CONSUMPTION POINT w_0 = 0 (W = const satisfied the axioms and
  broke the min-level and k = 0 displays; now axiom (A2') + item 0a);
  WC.1's "(A2) iff v >= 0" false in the only-if direction (the
  cyclic constraint shields narrow negative wells; now sufficiency
  only).  MAJORS repaired: (A5) re-defined as certified DOMINATING
  BOUNDS (the exact sups are strictly smaller for odd N); WC.2
  rescoped to the enumerated chain; item 0 (smooth carrier), item 7'
  (comparison legs: same-W cancellation), items 9/10 split (the
  window-method R6 leg consumes NO parity and transfers to every
  member); cW/cW_par membership made coherent; the (A6)-iff only-if
  direction proved (additive odd part).  MINORs applied.)
assurance = L-A2f GRANTED (gate-v14 post-repair 3-lens blind Opus
  wave on the verbatim brief, 2026-07-04, scaled up per the
  wave-scaling rule: 3/3 PASS-WITH-FINDINGS, ZERO substantive
  findings - the killer counterexamples (W = 1, W* + 1, the G_{1,1}
  bump) re-run against the repaired axioms and EXCLUDED; W*
  confirmed a member; every computation, item attribution, and
  member verification independently re-derived; six presentation
  MINORs applied (cW_par gating surfaced in the WC.2 statement;
  shielding parenthetical typed heuristic; odd-N strictness
  restricted to the gradient bound; bond convention fixed;
  MIN-SET EXACTNESS STRENGTHENED - a wave gift: {E_eps = 0} = G_0
  for every member; assurance-block honesty confirmed))
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Coupling Class (declared)

On `T^N x T^N` (bonds `d_i` (theta), `e_i` (phi); aligned tori
`G_j := C_j x C_0`, theta-bonds `2 pi j/N`, phi-bonds 0, `|j| < N/2`):

```text
cW := the class of smooth W : T^N x T^N -> R satisfying (A1)-(A5):
(A1) ROTATIONS: W is invariant under BOTH global rotations
     (theta -> theta + c, phi -> phi + c').  Consequences (one line
     each, recorded): W is a function of the two bond vectors (the
     rotation orbits are the bond level sets); both coordinate-block
     sums of grad W vanish IDENTICALLY; the T^2 orbit directions lie
     in ker(Hess W) EVERYWHERE (W constant along the translation
     flow: grad W(x + tu) = grad W(x), differentiate in t).
(A2) NONNEGATIVITY: W >= 0 on T^N x T^N.
(A2') ALIGNED GROUND ZERO: W = 0 on G_0 (w_0 = 0; with (A2) the
     doubly aligned constants are exact global minimizers of every
     E_eps at the passive level - the corpus min-level and k = 0
     displays consume exactly this, item 0a).
(A3) ALIGNED CRITICALITY: grad W = 0 at every point of G_j, for
     every |j| < N/2.
(A4) ALIGNED PSD AT THE CONSUMED TORI: Hess W|_{G_j} >= 0 as a
     quadratic form, for j = 0 and for every j satisfying C1-SUB(j)
     - the ONLY tori at which any cited proof consumes the PSD fact
     (item 4).  NOT required at other j: the corpus member itself
     has Hess W*|_{G_j} = gamma_j |B(dtheta - dphi)|^2 with
     gamma_j < 0 for N/4 < |j| < N/2.
(A5) NAMED CONSTANTS: fixed finite symbolic constants G_W, H_W that
     are certified DOMINATING BOUNDS - `sup |grad W| <= G_W`,
     `sup ||Hess W|| <= H_W` (exist by compactness/smoothness; every
     cited proof consumes them ONE-SIDEDLY, never as exact sups) -
     and the aligned ground values `w_j := W(G_j)` EXACTLY (constant
     on G_j by (A1); w_j >= 0 by (A2), w_0 = 0 by (A2')).

(A6) PARITY - a MARKED OPTIONAL axiom, NOT a membership condition:
     W o R_2 = W (the double reflection).  cW_par := the members of
     cW also satisfying (A6).  Consumed ONLY by the all-N parity R6
     legs (item 9, WC.3); the window-method R6 leg needs no parity
     (item 10).
```

The corpus coupling `W* = sum_i (1 - cos(d_i - e_i))` is a member of
cW_par (Theorem WC.4).  Members need NOT be of difference form; the
axioms are the interface.  SUFFICIENCY ONLY: no claim that any axiom
is necessary for any conclusion.

## Theorem WC.1 (the difference subclass)

For smooth `v : S^1 -> R`, let `W_v := sum_i v(d_i - e_i)`.  Then:

```text
(A1) ALWAYS (W_v depends on bonds only; with the corpus convention
     d_i = theta_{i+1} - theta_i, theta_m enters d_{m-1} positively
     and d_m negatively, so dW_v/dtheta_m = v'(delta_{m-1}) -
     v'(delta_m), delta_i := d_i - e_i, and each block sum
     telescopes to 0).
(A3) ALWAYS: on G_j all differences delta_i equal 2 pi j/N, so every
     component v'(delta_{m-1}) - v'(delta_m) (theta block) and its
     phi-block negative vanish.
(A2) IF v >= 0 (SUFFICIENCY ONLY - the direction WC.4 consumes; the
     converse FAILS at fixed N: the cyclic constraint
     `sum_i delta_i = 0 mod 2 pi` can shield a narrow negative well
     of v at an x_0 with `N x_0 != 0 mod 2 pi` - configurations with
     all N differences in the well are unrealizable; a HEURISTIC
     ILLUSTRATION that the converse fails - the quantitative
     well-depth bound is NOT proved here, and nothing consumes it).
(A2') iff v(0) = 0 (on G_0 all differences are 0).
(A4) at G_j iff v''(2 pi j/N) >= 0: the Hessian of W_v at G_j is
     the quadratic form v''(2 pi j/N) |B(dtheta - dphi)|^2.
(A6) iff v is even.  IF: under R_2 all differences negate and
     v(-x) = v(x).  ONLY IF (N >= 3): testing the realizable
     differences delta = (x, y, -(x+y), 0, ..., 0) in
     W_v = W_v o R_2 gives f(x) + f(y) = f(x + y) for the odd part
     f(x) := v(x) - v(-x); a continuous additive function on the
     circle (2 pi-periodic) is identically 0, so v is even.
(A5) certified bounds G_{W_v}, H_{W_v} symbolic per member;
     w_j = N v(2 pi j/N).
```

QED (componentwise chain rule; the telescoping identity; the
additive-odd-part argument).

## Theorem WC.2 (THE SUBSTITUTION THEOREM - the enumerated certificate chain over cW)

Let `W in cW` (one and the SAME W throughout - item 7').  Then every
certified statement of the coupled surface's CERTIFICATE CHAIN AS
ENUMERATED IN ITEMS 0-10 BELOW - the barriers/confinement, loop
facts and level bookkeeping, exact criticality and ground levels,
Hessian floors, pinning, SUB continuity entries, persistence rates,
forgetting legs, certificate-comparison legs, and the information
legs (the all-N parity leg, item 9, typed to cW_par; the
window-method leg, item 10, over all of cW) - across
M2a/M2b/M2P/M2c, MC, and MR, each under its OWN typed hypotheses
(M2-PIN / MC-PIN / MR-PIN, C1-SUB(k), class hypotheses on the g's,
the per-family ranges with the NEW third entries, the MR width
condition, and - for the all-N parity leg ONLY - the optional (A6),
i.e. W in cW_par) - holds with W* replaced by W under the
SUBSTITUTION TABLE:

```text
N (1 - gamma_k)      [= W*(G_k), the ground value]   ->  w_k
2 sqrt(2N)           [>= sup|grad W*|, M2P.4 bound]  ->  G_W
8                    [>= ||Hess W*||, M2P.4 bound]   ->  H_W
c_1 / 32             [= c_1 / (4 * 8)]               ->  c_1 / (4 H_W)
eps gamma_k |B(dtheta - dphi)|^2  [Hess(eps W*)|G_k] ->  eps Hess W|_{G_k}  (PSD by (A4))
epsilon_0-family third entries:
  passive   (2 kappa - m_k) / (N (1 - gamma_k))      ->  (2 kappa - m_k) / w_k
  composed  (2 kappa + b - h(m_k)) / (N (1 - gamma_k))    ->  (2 kappa + b - h(m_k)) / w_k
  symmetric (2 kappa + b_theta - h_theta(m_k)) / (N (1 - gamma_k))
                                                     ->  (2 kappa + b_theta - h_theta(m_k)) / w_k
  (each vacuous when w_k = 0; w_0 = 0 by (A2') - the k = 0 pattern
  is now SECURED, not assumed; symbolic always)
```

Proof (CONSUMPTION AUDIT - each cited proof consumes W only at the
listed points, through the listed axiom or the class carrier):

```text
0.  CARRIER: wellposedness/core/uniqueness, invariance, path
    continuity at every eps (M2a.1, M2a.3; the MC/MR declarations'
    named standard family) and EVERY strictly-positive-density fact
    (incl. MC.6's R2 recorded bridge and the product-bridge mass
    facts): consume W SMOOTH (hence bounded) on the compact torus
    ->  the class carrier ("smooth W"), no (A)-axiom.
0a. GROUND MINIMUM AND THE k = 0 PATTERN: the min-level display
    (M2a: minimum exactly at the passive level on the doubly aligned
    constants), M2b's M_0(eps) = 0 note and k = 0 nonvacuity, the
    k = 0 rate constancy, M2P.5's third-entry vacuity at k = 0:
    consume W >= 0 AND W(G_0) = 0  ->  (A2) + (A2').
1.  Barriers/one-term bounds (M2a; MC.2; MR.2): consume eps W >= 0
    only  ->  (A2).
2.  Per-factor loop facts, level bookkeeping, single-pi-bond
    precision, winding-0 level law, envelopes (M2a; M2P.3; MC.3;
    MR.3; MR.5's width-condition chain): consume the J's only - W
    enters via eps W >= 0 in the envelopes  ->  (A2).
3.  Exact criticality of G_k for every eps (M2P.1; MC.1; MR.1):
    consumes grad W = 0 on G_k  ->  (A3); the ground levels consume
    W(G_k) = w_k  ->  (A5).  NOT TRANSFERRED: M2P.1's parenthetical
    "every doubly equidistributed orbit G_{k,l} is critical" - a
    W*-specific constant-sine-chain fact at l != 0, consumed by
    nothing downstream (confinement forces w_phi = 0 inside the
    working domains).
4.  Hessian and uniform Morse-Bott floor (M2P; MC.1; MR.1): consumes
    PSD of the eps-term at the working G_k and G_0  ->  (A4); kernel
    pinning by the two eps-free terms, with the orbit directions in
    ker(Hess W)  ->  (A1); floors c_1, c_1^c, c_1^sym unchanged.
5.  Pinning architecture (M2P.5 Steps 1-4, transplanted in
    MC.4/MR.4): Step 1 consumes sup|grad(eps W)| <= G_W eps  ->
    (A5); Step 2 consumes E invariant under both rotations
    (constant-vector-field slices)  ->  (A1), the slice floor
    (3/4)c_1 - H_W eps >= c_1/2 for eps <= c_1/(4 H_W)  ->  (A5),
    and the FTC anchor at the exactly critical center  ->  (A3);
    Steps 3-4 consume compactness and the discharged Steps 1-2 only.
6.  SUB-row continuity entries: consume the ground identity
    E(G_k) = (theta-level) + (phi-level) + eps w_k  ->  (A5), giving
    the third entries of the table.
7.  Persistence rates ([MACH] pattern: action bound + closure-form
    FW rows): consume only the discharged items 0-6 for the working
    energy above its cap - no direct W consumption.
7'. CERTIFICATE-COMPARISON LEGS (MC.6's R5 no-harm bridge and domain
    containment E_c <= E_eps + b; MR.5's honest-tradeoff formula and
    width condition): consume (a) the SAME W in both compared
    energies - the eps W terms CANCEL in E_c - E_eps = g(J_kappa)
    and E_sym - E_eps = g_theta(J_kappa) + g_phi(J_lambda), so the
    substitution must be ONE W uniformly across the compared
    families (as this theorem quantifies); and (b) eps W >= 0  ->
    (A2).
8.  Forgetting legs / flat-mode displays (M2a.4/M2c.1; MC.5; MR.5):
    consume the identically-vanishing block sums of grad W  ->
    (A1); the equilibrium-mean-zero consumes the rotation invariance
    of the measure  ->  (A1); the rate N/beta is a flat-mode
    constant, W-independent.
9.  ALL-N PARITY R6 LEGS (P.3/P.4 pattern; MR.6(b)): consume
    W o R_2 = W so the energies are even in all bonds and the
    measures R_2-invariant  ->  (A6), plus strictly positive
    densities (item 0) and cylinder mass, plus the W-FREE P.1 facts
    (label parity, readout invariance, R_2 a Lebesgue-preserving
    involution).  ONLY these legs consume (A6); scoped to cW_par.
10. WINDOW-METHOD R6 LEG (MC.6 R6(a) product bridge, N >= 10,
    retained in the corpus as supersession-in-range): consumes the
    strictly positive density (item 0) plus W-FREE factor
    submersion/no-critical-value facts - NO (A6).  It transfers to
    EVERY member of cW.
```

Each numbered item names every point of W-consumption in the
ENUMERATED certificate chain; member-dependent side facts of the
cited artifacts outside the chain are itemized in the Honest
Boundary, NOT swept.  QED (pointer discharge).

## Corollary WC.3 (the information legs over the class)

For every `W in cW_par` ((A6) members), every eps >= 0, every
admissible maintenance member(s): `w_theta` is not
`sigma(J_kappa)`-measurable (and symmetrically `w_phi` not
`sigma(J_lambda)`-measurable in the MR family) with respect to the
corresponding invariant measures, FOR EVERY N >= 3 - the parity
recorded bridge (P.3/P.4 pattern; premises: measure R_2-invariance
via (A6) + item 0 densities + cylinder mass + the W-free P.1 facts).
For every `W in cW` WITHOUT (A6): NO all-N parity claim (typed open
per member), but the WINDOW-METHOD R6 leg (item 10) HOLDS for
N >= 10 - every member retains information honesty on the C1-SUB
range.  QED.

## Theorem WC.4 (member verifications)

```text
CORPUS MEMBER: W* = W_v with v = 1 - cos.  (A1), (A3) by WC.1;
  (A2): v >= 0; (A2'): v(0) = 0; (A4) at the consumed tori:
  v''(x) = cos x, so v''(0) = 1 > 0 at j = 0 and
  v''(2 pi k/N) = gamma_k > 1 - 2/N > 0 at every C1-SUB(k); (A6):
  cos even - W* in cW_par; (A5): TAKE G_W* = 2 sqrt(2N), H_W* = 8,
  the M2P.4 CERTIFIED BOUNDS (the proofs consume bounds only; for
  odd N the exact GRADIENT sup is strictly smaller - the saturating
  alternating sine pattern is impossible on an odd cycle; NO
  strictness claim for the Hessian bound); w_k = N (1 - gamma_k),
  w_0 = 0.  EVERY prior coupled formula is the W*-instantiation of
  WC.2 with these bounds (in particular 32 = 4 H_W*).
SECOND MEMBER (the class is strictly larger): W_2 = W_v with
  v = 1 - cos(2x).  (A1), (A3) by WC.1; (A2): v >= 0; (A2'):
  v(0) = 0; (A6): even - W_2 in cW_par; (A4) at the consumed tori:
  v''(x) = 4 cos(2x): at j = 0, v''(0) = 4 > 0 (all N); at every
  C1-SUB-admissible k: v''(2 pi k/N) = 4 (2 gamma_k^2 - 1) > 0
  whenever gamma_k > 1/sqrt(2), which C1-SUB guarantees for every
  N >= 7 (1 - 2/N >= 1/sqrt(2) iff N >= 2/(1 - 1/sqrt(2)) ~ 6.83) -
  and nonzero admissible k exist only for N >= 10, so (A4) holds at
  every consumed torus for EVERY N >= 3; (A5): certified bounds
  symbolic; w_k = N (1 - gamma_{2k}) with gamma_{2k} :=
  cos(2 pi (2k)/N) = cos(4 pi k/N) - trigonometric notation
  extending the corpus gamma; 2k is NOT claimed admissible as a
  winding index.  W_2 is NOT the corpus coupling (it penalizes the
  DOUBLED bond difference), and the enumerated chain holds for it
  by WC.2 with the table values.
```

QED (direct verification against WC.1; the gamma_k > 1/sqrt(2)
arithmetic: cos(2x) = 2 cos^2 x - 1 >= 0 iff cos x >= 1/sqrt(2) on
the relevant range).

## Honest Boundary (recorded, not claimed)

```text
SUFFICIENCY ONLY: the axioms are extracted from the certified proofs
  as sufficient; necessity of any axiom for any conclusion is NOT
  claimed.
NOT SWEPT (member-dependent side facts of the cited artifacts,
  outside the enumerated chain): the M2a min-level display transfers
  via (A2') INCLUDING location-exactness (wave-strengthened at the
  L-A2f pass): {E_eps = 0} = G_0 for EVERY member and every
  eps >= 0, since E_eps = 0 forces J_kappa = J_lambda = 0, which the
  loop facts place exactly on the doubly aligned constants - only
  the member-specific PROOF PATH of the W* display is not
  transferred; the Standing-Data ceiling 0 <= W* <= 2N (sup W is consumed nowhere in
  the current proofs); M2P.1's G_{k,l} parenthetical (item 3, not
  transferred); the M2P honest note's historical removed-entry
  arithmetic (declaration echoes).
Dropping (A4): the uniform-in-eps Morse-Bott floor is lost; a signed
  aligned Hessian would cost one more eps-entry - TYPED OPEN, not
  claimed here (the declared class keeps (A4) at the consumed tori).
Members with w_k = 0 at a working k != 0: the third epsilon-entries
  are vacuous; all statements remain typed.
The class covers ENERGY-level couplings only: the skew lanes
  (drift-level modifications) are untouched and NOT generalized.
Asymmetric sizes (T^N x T^M), cross-difference couplings: admitted
  ONLY if they verify the axioms (per-member work); large-eps,
  numerics, sharpness (storey 3): open.
Constants remain symbolic (G_W, H_W declared as certified bounds,
  not computed, except: W* carries the M2P.4 bounds and its exact
  w_k; W_2 carries its exact w_k only - its G, H stay symbolic).
```

## False Inference Firewall

```text
class theorem => any coupling works : BLOCKED (axiom-gated; member
  verification is per-instance)
axioms sufficient => axioms necessary : BLOCKED (typed above)
class generality => physics universality : BLOCKED (mathematical
  interface on a torus; anti-quantization firewall binding)
W_2 member => multi-scale/physical interpretation : BLOCKED (a
  trigonometric example, nothing more)
no-(A6) member => no information honesty : BLOCKED (item 10: the
  window-method leg holds for every member, N >= 10)
anything here => agency : BLOCKED
```

## Verdict

```text
Lane-WC Coupling Class v1 = WC-DECLARED (L-A1, post-repair)
gate-v14 build = REPAIRED AFTER A 3/3 FAIL WAVE (the consumption
  audit's gaps were the wave's exact target); the 3-lens blind
  L-A2f was subsequently run and the campaign CLOSED - see the
  closeout; the "pending" wording here predated it
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = (consumed)
  governance/gate-v14-campaign-closeout-v1.md (landed)
```
