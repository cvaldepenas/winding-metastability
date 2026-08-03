# Lane-MC Maintained Coupled Pair v1

PARTIAL L-A4 (campaign #12, 2026-07-11): the PROD-TRANSFER transfer MACHINERY is machine-checked in lean/LabelTowerCore.lean - the GENUINE composed criticality transfer (fderiv(h o f) = 0 <-> fderiv f = 0, any energy f), the composed Hessian floor comparison c_1^c >= c_1, MC-SUB, the FLAGSHIP Delta_phi barrier composing the SEALED prod_shell_k1, the class strict-monotonicity, and the composed ground-level identity. Prose-level: the instantiation at the torus J, the manifold-Hessian identification, and the flow-line rerun (LP.4a/LP.4b under h - non-transferable at eps>0).


Status:

```text
Lane-MC Maintained Coupled Pair v1 = MC-PINNED / MAINTENANCE ON THE
  COUPLED PAIR: THE COMPOSED PACKAGE / NO PHYSICS CLAIMS / NO AGENCY
  CLAIMS
campaign = gate-v11 (single artifact); composes M3 (energy feedback,
  L-A2f) with M2 (coupled pair + pinning, L-A2f); all imports at the
  internal ceiling
NEW TYPED ROW = MC-PIN (lambda > kappa + b STRICT): the maintenance
  budget eats reference-factor dominance - the composed package costs
  MORE reference stiffness than the passive one (M2-PIN, lambda >
  kappa, stands unchanged for the passive rows)
discharges = M4's "RE + R5 jointly = typed open" row on
  [0, min(epsilon_0, epsilon_0^c)) under the typed hypotheses below
  (R6 LITERAL under the C-6-amended M4 row; see MC.6)
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v11 dual-lens wave 2026-07-03: the joint-
  discharge RANGE MAJOR caught by BOTH lenses (the R5 comparisons
  consume the passive certificate, a theorem only on the passive
  range) and repaired to the intersection; the R6 discharge re-typed
  honestly (recorded product bridge; control-contribution reading with
  the M4 wording flagged); no-harm and composed-R2 bridges recorded;
  the "widens" note scoped to the third entry; drafting scratch
  removed from MC.2; headers hypothesized; all findings integrated)
assurance = L-A2f GRANTED (phase C-6 dual-lens Opus blind wave
  2026-07-04, E9-calibrated brief: 2/2 PASS-WITH-FINDINGS, zero FATAL;
  artifact-confirmed catch = the MC.1 floor comparison cited c_1
  without its formula (now quoted: the M2P passive coupled floor,
  entrywise via h'(m_k) >= 1); the F_phi display now cites its M2c.1
  certificate + an explicit mixing-not-maintenance clause; MC.3's
  general-g middle step (h(m_k) >= m_k - b) made explicit; two further
  wave findings DIED AGAINST THE ARTIFACT as brief-compression gaps
  (the safe inequality chain and the third-entry scoping were already
  here); R6 adjudication 2/2 ADOPT_WITH_EDIT applied to the M4 row -
  this discharge now LITERAL; see
  governance/c6-la2f-wave-record-v1.md)
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Composed Family (declared)

On the bond-coupled pair (M2a: `T^N x T^N`, `E_eps = J_kappa(theta) +
J_lambda(phi) + eps W`, `W = sum_i (1 - cos(d_i - e_i))`), apply the
energy-feedback class `G(b, eta)` (M3a) TO THE LABELED FACTOR:

```text
E_c := h(J_kappa(theta)) + J_lambda(phi) + eps W(theta, phi),
h = id + g,  g in G(b, eta),  h' >= 1;  eps >= 0
rho_c ~ exp(-beta E_c) with the reversible weighted-divergence
generator; drift = passive coupled drift + u, u = (-g'(J_kappa(theta))
grad_theta J_kappa, 0) - the control senses J_kappa(theta) only (the
M3a declared sense) and its added drift has zero phi-component
ROWS: MC-PIN: lambda > kappa + b (STRICT); C1-SUB(k); the composed
ground level E_c(G_k) = h(m_k) + eps N (1 - gamma_k) =: M_k^c(eps, g)
(deep case m_k <= 2 kappa - eta: h(m_k) = m_k - b);
MC-SUB(k, eps, g): M_k^c < h(2 kappa) = 2 kappa + b;
D_k^c(eps, g) := the component of {E_c < 2 kappa + b} containing G_k
```

Wellposedness/core/uniqueness: the named standard family (E_c smooth,
compact `T^{2N}`, diffusion `beta^-1 I`): rho_c is THE invariant
probability for every (eps, g).  Invariance: divergence theorem.

## Lemma MC.1 (G_k exactly critical; uniform Morse-Bott)

At G_k (theta-bonds `2 pi k/N`, phi-bonds 0): `grad J_kappa = 0` (C_k
critical), `grad J_lambda = 0` (constants critical), and BOTH partial
gradients of W vanish (all differences equal - M2P.1); the chain-rule
factor `h'(J_kappa)` multiplies a vanishing gradient.  So
`grad E_c = 0` on G_k for EVERY eps >= 0 and every g, with level
M_k^c(eps, g).  Hessian at G_k: `Hess(h o J_kappa) = h'(m_k) Hess
J_kappa` there (the `g'' grad grad^T` term dies on the critical set),
so as a quadratic form

```text
Q = h'(m_k) kappa gamma_k |B dtheta|^2 + lambda |B dphi|^2
    + eps gamma_k |B(dtheta - dphi)|^2,
```

three PSD terms (gamma_k > 0 under C1-SUB(k)); the two eps-free terms
pin the kernel to `span{(1,0),(0,1)}` (the third vanishes there by
linearity of B); transverse floor `c_1^c = min(h'(m_k) kappa gamma_k,
lambda) mu_1 >= c_1 := min(kappa gamma_k, lambda) mu_1 > 0` - the
passive coupled floor, EXPLICIT in
lane-m2-attractor-pinning-small-coupling-v1.md; the comparison is
entrywise via `h'(m_k) >= 1` (C-6 wave repair: the floor had been
cited without its formula) - UNIFORM in eps.  QED.

## Lemma MC.2 (confinement and barriers - under MC-PIN; the D_k^c
clause presupposes MC-SUB(k, eps, g))

All terms of E_c exceed their minima nonnegatively after the h-shift:
`h(J_kappa) >= h(0) >= -b`, `J_lambda >= 0`, `eps W >= 0`.  Barriers:
on `Delta_theta x T^N`: `E_c >= h(2 kappa) + 0 + 0 = 2 kappa + b`
(h increasing, `J_kappa >= 2 kappa` there).  On `T^N x Delta_phi`:
`E_c >= -b + 2 lambda > 2 kappa + b` by MC-PIN (`2 lambda > 2 kappa +
2b`).  Consequently, inside `{E_c < 2 kappa + b}`: crossing
`T^N x Delta_phi` is impossible, so components carry constant w_phi;
crossing `Delta_theta x T^N` is impossible, so they carry constant
w_theta; and for the theta-marginal (scratch fragments deleted at the
gate-v11 wave; the retained chain is self-contained): from
`E_c < 2 kappa + b` and `J_lambda >= 0`, `eps W >= 0`:
`h(J_kappa) < 2 kappa + b = h(2 kappa)`, so `J_kappa < 2 kappa`
(h strictly increasing), and with `w_theta = k` the theta-marginal
lies in `A_k^kappa` (the factor dichotomy).  On D_k^c: w_theta = k,
w_phi = 0 (G_k has both; constancy as above).  QED.

## Lemma MC.3 (eps-free envelope; exact critical set; no boundary rest
points - under MC-PIN and C1-SUB(k), g fixed)

`eps W >= 0` gives `E_c >= E_c^0 := h(J_kappa) + J_lambda`, so
`D_k^c(eps, g) subset S_k^c := {E_c^0 < 2 kappa + b, w_theta = k,
w_phi = 0}` - eps-INDEPENDENT (for fixed g), compactly closed, missing
both Delta sets (Delta_theta: `E_c^0 >= h(2 kappa) = 2 kappa + b`
contradicts the cap - level exactly 2 kappa + b would force
`J_kappa = 2 kappa` exactly AND `J_lambda = 0`, and `J_kappa = 2 kappa`
on Delta_theta is impossible by the single-pi-bond/cyclic-identity
precision; Delta_phi: `E_c^0 >= -b + 2 lambda > 2 kappa + b` by
MC-PIN).  Windings extend to the closure.  EXACT CRITICAL SET:
`Crit(E_c^0) = Crit(h o J_kappa) x Crit(J_lambda) = Crit(J_kappa) x
Crit(J_lambda)` (h' > 0); inside closure(S_k^c) the theta-part has
winding k and `h(J_kappa) <= 2 kappa + b` i.e. `J_kappa <= 2 kappa`,
hence lies on C_k (winding-k criticals with p >= 1 sit strictly above
2 kappa); the phi-part has winding 0 and `J_lambda <= 2 kappa + b -
h(m_k) <= 2 kappa + 2b - m_k < 2 lambda` (the middle step by
`h(m_k) >= m_k - b`, i.e. `g >= -b` - valid for EVERY g in G(b, eta),
no deep-case hypothesis needed; the last step by MC-PIN with
`m_k >= 0`), hence is a constant (the winding-0 level law).  So `Crit(E_c^0) intersect closure(S_k^c) =
G_k` exactly.  BOUNDARY REST POINTS at level 2 kappa + b: theta-levels
under h are `{h(m_j)} union (> 2 kappa + b)`; phi-levels `{0} union
(> 2 lambda)`; sums hitting exactly 2 kappa + b would need
`h(m_j) = 2 kappa + b` (i.e. `m_j = 2 kappa`, excluded - Crit misses
the level) or a `> 2 lambda` phi-level with `h(m_j) >= -b`, giving
`> -b + 2 lambda > 2 kappa + b` (MC-PIN) - excluded.  QED.

## Theorem MC.4 (composed pinning, small coupling - symbolic epsilon_0^c)

Assume MC-PIN, C1-SUB(k), and fix g in G(b, eta).  With `r_1^c` a tube
radius keeping the transverse Hessian of E_c^0 above `(3/4) c_1^c` on
the closed tube (modulus-of-continuity, symbolic) and `c_0^c := inf
|grad E_c^0|` over `closure(S_k^c) minus the tube interior` (> 0 by
compactness and Lemma MC.3),

```text
epsilon_0^c := min( c_0^c / (2 sqrt(2N)),  c_1^c / 32,
                    (2 kappa + b - h(m_k)) / (N (1 - gamma_k)) )
```

(the third entry = the exact MC-SUB continuity bound, vacuous at k = 0;
in the deep case it reads `(2 kappa - m_k + 2b)/(N(1 - gamma_k))` -
the budget WIDENS this third (MC-SUB continuity) entry relative to the
passive entry `(2 kappa - m_k)/(N(1 - gamma_k))`; the other two entries
are NOT compared and no ordering of epsilon_0^c against the passive
epsilon_0 is claimed; certificate-level arithmetic, nothing more), for every `eps in [0, epsilon_0^c)`:
`Crit(E_c) intersect closure(D_k^c) = G_k` and G_k is the unique
internal attractor of D_k^c with closure attraction.

Proof: the M2P.5 architecture transplants verbatim - Step 1 (gradient
floor off the tube, using `sup|grad(eps W)| <= 2 sqrt(2N) eps`), Step 2
(the T^2 action is by CONSTANT vector fields and E_c is invariant
under both rotations - h(J_kappa), J_lambda, W all are - so grad E_c
lies in `1-perp x 1-perp` everywhere; affine slices cover the tube;
`||Hess(eps W)|| <= 8 eps` gives the slice floor `(3/4) c_1^c - 8 eps
>= c_1^c/2` for `eps <= c_1^c/32`; the FTC identity anchors at the
exactly-critical slice center, Lemma MC.1), Steps 3-4 (min attainment
at the interior critical set; boundary non-criticality from Steps 1-2
jointly; positive invariance of the closure + strict boundary descent
+ the open component argument).  QED.

## Theorem MC.5 (THE COMPOSED PERSISTENCE + SEPARATION)

For every g in G(b, eta), under MC-PIN + C1-SUB(k), every
`eps in [0, epsilon_0^c)`, every `q in D_k^c(eps, g)`, every
`delta > 0`, on the composed process:

```text
PERSISTENCE (both certified forms - expectation and probability legs
  of the machinery): the reversible
  action bound with E_c + the closure-form FW rows (all discharged by
  MC.1-MC.4) give
  liminf beta^-1 log E_q[ tau_exit(Sigma_k^theta x T^N) ]
      >= (2 kappa + b) - E_c(q)
  P_q( w_theta = k on [0, exp(beta ((2 kappa + b) - E_c(q) - delta))] ) -> 1;
  at deep aligned states (q on G_k, m_k <= 2 kappa - eta; nonvacuity
  always at k = 0, where m_0 = 0) the certified rate is
  (2 kappa - m_k + 2b) - eps N (1 - gamma_k): the passive coupled rate
  FORMULA (a certified passive rate on the passive range
  [0, epsilon_0)) PLUS THE FULL BUDGET 2b
FORGETTING (unconditional, every eps, every g, every starting point):
  both coordinate-block sums of grad E_c vanish identically
  (h'(J_kappa) sum_i dJ_kappa/dtheta_i = 0; the W sums vanish as in
  M2a.2; the control has no phi-component), so BOTH total phases stay
  exact independent Brownian motions and
  | E_q[ F_phi(t) ] - int F_phi drho_c | = exp(-N t / beta)
  with the SAME constants - display and rate N/beta are the M2c.1
  certificate (lane-m2-coupled-separation-v1.md: exact equality,
  special to the readout F_phi = exp(i Phi_phi); rate independent of
  eps, kappa, lambda - and, here, of g; the equilibrium mean vanishes
  for rho_c too, by the same global phi-rotation invariance, which
  h(J_kappa), J_lambda, W all share) - the reference factor's contrast
  readout is immune to maintenance AND coupling jointly.  This is a
  MIXING statement on the phi flat mode, NOT a maintenance certificate
  on the reference factor (see Honest Boundary).
```

The event chain is the certified coupled chain (exit forces
`Delta_theta x T^N`, where `E_c >= 2 kappa + b`; hitting time of
`{E_c >= 2 kappa + b}` = `tau_exit(D_k^c)` by the component argument).
QED.

## Corollary MC.6 (M4's last open row discharges)

Under MC-PIN + C1-SUB(k), on `[0, min(epsilon_0, epsilon_0^c))` - the
intersection with the PASSIVE pinning range, because M4's R5 comparison
rows consume the passive coupled certificate, a theorem only there
(the RE-block legs alone extend to `[0, epsilon_0^c)`; MAJOR range
repair at the gate-v11 wave, caught by both lenses) - and the typed
domains: the coupled pair WITH the maintenance class satisfies the M4
rows R5 AND the RE embedding block SIMULTANEOUSLY.

R5 legs, with the two RECORDED one-line bridges the corpus convention
requires: (i) NO HARM at general q - on the shared domain,
`[(2 kappa + b) - E_c(q)] - [2 kappa - E_eps(q)] = b - g(J_kappa) >= 0`
(g <= b); domain compatibility is the containment `D_k(eps) subset
D_k^c(eps, g)` (from `E_c <= E_eps + b`, the connected D_k(eps)
containing G_k lies in the composed sublevel component); (ii) STRICT
GAIN = the deep-aligned 2b of MC.5; (iii) NON-INTERFERENCE = MC.5's
forgetting leg (same constants).

RE legs itemized for the COMPOSED measure: R1 facts per factor
(state-space, M2a.3 verbatim); R2 - RECORDED BRIDGE: the sector
cylinders are open nonempty and the composed `rho_c ~ exp(-beta E_c)`
has a smooth strictly positive density on `T^{2N}` (E_c smooth,
declaration above), so they carry positive rho_c-mass; R3 = MC.5's
persistence leg; second-factor contrast = MC.5's forgetting leg.

R6 - typed honestly, TWO points: (a) the measurability fact transfers
to the composed pair by a RECORDED PRODUCT BRIDGE (not verbatim): the
composed rho_c has a smooth strictly positive density on `T^{2N}`;
`J_kappa(theta)` is a submersion on `O_k x T^N` and `O_0 x T^N`
(no critical values of J_kappa in `(m_k, 2 kappa)` - P0.2), so both
pushforwards of rho_c remain Lebesgue-equivalent on `(m_k, 2 kappa)`
and the phi = k / phi = 0 contradiction runs as in M3a.5; hence
w_theta is not sigma(J_kappa(theta))-measurable, N >= 10.  [GATE-V12
NOTE: the reflection-parity theorem extends this R6 leg to EVERY
N >= 3 (lane-r6-reflection-parity-all-n-v1.md P.4, every eps, every
g); this product bridge STANDS as the window-method proof -
supersession-in-range only.]  (b) M4's R6
wording originally said the class's "potential, energy and gain" are
sigma(Y)-measurable - written for the single-factor instance, where
the member's TOTAL energy h(J) is sigma(J)-measurable; on the composed
pair the total energy E_c is NOT sigma(J_kappa)-measurable - only the
control's added potential U_c = g(J_kappa), the class increment
E_c - E_eps = g(J_kappa), and the gain g'(J_kappa) are.  ADJUDICATED
AT C-6 (dual-lens L-A2f wave 2026-07-04, 2/2 ADOPT_WITH_EDIT): the M4
row is AMENDED to ask sigma(Y)-measurability of the ADDED energy
contribution - the class increment over the FIXED, class-independent
passive part - which is the honest carrier of information honesty: a
class-invariant backdrop carries no class-selected channel, and both
auditors' adversarial smuggle constructions fail against the second
clause (any reconstruction of ell from a sigma(Y)-measurable increment
plus a class-invariant backdrop would make ell sigma(Y)-measurable,
contradicting it).  Under the AMENDED row THIS DISCHARGE HOLDS
LITERALLY (the increment g(J_kappa) is sigma(J_kappa)-measurable; the
passive part E_eps is class-independent), and the single-factor
instance M4.1 still holds literally (g(J), g'(J)
sigma(J)-measurable).  The pre-amendment literal total-energy reading
remains recorded as a historical note only - the row text no longer
asks for it.

With these typings, the FULL certified regime package - all blocks at
once - is instantiated on `[0, min(epsilon_0, epsilon_0^c))` under
MC-PIN + C1-SUB(k) (R6 LITERAL under the C-6-amended M4 row, N >= 10).
QED (three recorded one-line bridges: no-harm/domain-containment,
composed-R2 density, R6 product transfer; upgrade to be applied to the
M4 artifact at integration).

## Honest Boundary (recorded, not claimed)

```text
MC-PIN costs real dominance (lambda > kappa + b): for a given lambda
  the admissible budget is b < lambda - kappa; typed, not hidden.
epsilon_0^c symbolic (constants policy); large-eps and numeric
  thresholds open.  Deep-region typing as in M3 (transition zone
  interpolates).  Maintenance on the REFERENCE factor, phi-labels,
  general couplings, asymmetric sizes, skew: not in scope.
The "wider coupling budget" note is certificate arithmetic only.
```

## False Inference Firewall

```text
composed package => agency achieved : BLOCKED (M4 discipline; the
  unratified M5 charter owns interpretation)
MC-PIN => M2-PIN weakened : BLOCKED (separate typed rows)
gain/budget arithmetic => true-rate claims : BLOCKED (certificates)
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-MC Maintained Coupled Pair v1 = MC-PINNED
gate-v11 build = COMPLETE (L-A0)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = dual-lens L-A1 wave, then
  governance/gate-v11-campaign-closeout-v1.md
```
