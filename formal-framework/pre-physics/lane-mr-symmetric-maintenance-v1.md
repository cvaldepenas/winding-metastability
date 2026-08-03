# Lane-MR Symmetric Maintenance v1 (both factors maintained)

Status:

```text
Lane-MR Symmetric Maintenance v1 = MR-PINNED / THE COMPOSITION'S
  MISSING HALF / NO PHYSICS CLAIMS / NO AGENCY CLAIMS
campaign = gate-v13, completion program storey 1 (single artifact);
  composes M3's class machinery (L-A2f) with the MC composition
  (L-A2f) SYMMETRICALLY; all imports at the internal ceiling
NEW TYPED ROW = MR-PIN (lambda > kappa + b_theta - b_phi STRICT): the
  REFERENCE budget BUYS BACK dominance - MC-PIN (lambda > kappa + b)
  is the b_phi = 0 slice; with b_phi >= b_theta the pin relaxes to
  the passive M2-PIN form (lambda > kappa suffices)
HONEST TRADEOFF (typed, not hidden) = in the reference readout's
  transition zone the certified labeled margin can dip below the
  passive coupled CERTIFIED margin by up to 2 b_phi - an UPPER BOUND,
  realized only under a typed zone-width condition and by saturating
  members (see MR.5); the DEEP region is clean (the labeled
  deep-aligned rate is b_phi-FREE)
anti-quantization firewall = BINDING
assurance = L-A1 (gate-v13 3-lens wave 2026-07-04: 3/3
  PASS-WITH-FINDINGS, zero FATAL; THREE CONVERGENT MAJORs - all
  three lenses independently caught the MR-SUB false equivalence
  (h_theta(m_k) form, deep-case substitution) and the transition-zone
  reachability overclaim (typed width condition installed), and the
  certificate-comparison range gap (MR-PIN does not imply M2-PIN for
  b_phi > b_theta; comparison now typed under both pins on the
  intersection range and joint domain - the gate-v11 discipline);
  6 MINORs applied (certified-margin language, mixing guard,
  recorded-bridge typing for symmetric R6, class endpoints, firewall
  purchase typing, flat-mode/block boundary))
assurance = L-A2f GRANTED (gate-v13 in-campaign blind dual-lens Opus
  wave on the verbatim brief, 2026-07-04: math lens PASS with ZERO
  findings - every identity, chain and cancellation independently
  recomputed incl. all three L-A1 repairs; quantifiers lens
  PASS-WITH-FINDINGS, 2 MINORs: one strictness suggestion REJECTED by
  lead adjudication (the MR.3 chain runs on the CLOSURE of S_k^sym,
  where the non-strict relation is the correct one; boundary level
  CAP handled separately) - recorded in the closeout; one optional
  strictness clarification on the width condition APPLIED.  The
  amended cadence's first full storey: one operator go, built to the
  internal ceiling in a single campaign.)
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Symmetric Family (declared)

On the bond-coupled pair (M2a: `T^N x T^N`, bonds `d_i` (theta) and
`e_i` (phi), `W = sum_i (1 - cos(d_i - e_i))`), apply an
energy-feedback class TO EACH FACTOR'S OWN READOUT:

```text
E_sym := h_theta(J_kappa(theta)) + h_phi(J_lambda(phi)) + eps W,
h_theta = id + g_theta,  g_theta in G(b_theta, eta_theta)
  (the M3a class: thresholds at 2 kappa; eta_theta in (0, 2 kappa)),
h_phi = id + g_phi,  g_phi in G_lambda(b_phi, eta_phi)
  (the SAME class construction transplanted to the reference
  stiffness: smooth monotone, |g_phi| <= b_phi, g_phi = -b_phi on
  (-inf, 2 lambda - eta_phi], g_phi = +b_phi on [2 lambda, inf);
  eta_phi in (0, 2 lambda)), eps >= 0;
rho_sym ~ exp(-beta E_sym) with the reversible weighted-divergence
generator; drift = passive coupled drift + u,
u = (-g_theta'(J_kappa) grad_theta J_kappa,
     -g_phi'(J_lambda) grad_phi J_lambda)
- each control senses ITS OWN factor's scalar readout only
ROWS: MR-PIN: lambda > kappa + b_theta - b_phi (STRICT); C1-SUB(k);
the cap: CAP := 2 kappa + b_theta - b_phi (the theta-barrier floor,
Lemma MR.2); the ground level E_sym(G_k) = h_theta(m_k) - b_phi +
eps N (1 - gamma_k) =: M_k^sym (deep case m_k <= 2 kappa - eta_theta:
h_theta(m_k) = m_k - b_theta; h_phi(0) = -b_phi always, 0 being deep
for the reference class since eta_phi in (0, 2 lambda));
MR-SUB(k, eps, g_theta, g_phi): M_k^sym < CAP - equivalently the
b_phi-FREE inequality h_theta(m_k) + eps N (1 - gamma_k) <
2 kappa + b_theta (b_phi cancels on both sides; deep case
m_k <= 2 kappa - eta_theta: m_k - b_theta + eps N (1 - gamma_k) <
2 kappa + b_theta);
D_k^sym := the component of {E_sym < CAP} containing G_k
```

Wellposedness/core/uniqueness: the named standard family (E_sym
smooth, compact `T^{2N}`, diffusion `beta^-1 I`): rho_sym is THE
invariant probability for every (eps, g_theta, g_phi).  Invariance:
divergence theorem.

## Lemma MR.1 (G_k exactly critical; uniform Morse-Bott)

At G_k (theta-bonds `2 pi k/N`, phi-bonds 0): `grad J_kappa = 0`,
`grad J_lambda = 0`, and BOTH partial gradients of W vanish (M2P.1);
each chain-rule factor (`h_theta'(J_kappa)`, `h_phi'(J_lambda)`)
multiplies a vanishing gradient.  So `grad E_sym = 0` on G_k for
EVERY eps >= 0 and every (g_theta, g_phi), with level
M_k^sym(eps, g_theta, g_phi).  Hessian at G_k: both `g'' grad grad^T`
terms die on the critical set, and `h_phi'(0) = 1` (0 is deep for the
reference class, so `g_phi'(0) = 0`), giving

```text
Q = h_theta'(m_k) kappa gamma_k |B dtheta|^2 + lambda |B dphi|^2
    + eps gamma_k |B(dtheta - dphi)|^2
```

- the SAME form as the one-sided composition (the reference reshape
is Hessian-invisible at the ground): three PSD terms (gamma_k > 0
under C1-SUB(k)); kernel pinned to `span{(1,0),(0,1)}` by the two
eps-free terms; transverse floor `c_1^sym = min(h_theta'(m_k) kappa
gamma_k, lambda) mu_1 >= c_1 := min(kappa gamma_k, lambda) mu_1 > 0`
(the passive coupled floor, EXPLICIT in
lane-m2-attractor-pinning-small-coupling-v1.md; entrywise via
`h_theta'(m_k) >= 1`), UNIFORM in eps.  QED.

## Lemma MR.2 (barriers and confinement - under MR-PIN; the D_k^sym
clause presupposes MR-SUB)

All terms exceed their minima after the shifts: `h_theta(J_kappa) >=
h_theta(0) >= -b_theta`, `h_phi(J_lambda) >= -b_phi`, `eps W >= 0`.
Barriers: on `Delta_theta x T^N`: `E_sym >= h_theta(2 kappa) +
h_phi(J_lambda) + 0 >= (2 kappa + b_theta) - b_phi = CAP` (h_theta
increasing, `J_kappa >= 2 kappa` there; h_phi >= -b_phi).  On
`T^N x Delta_phi`: `E_sym >= -b_theta + h_phi(2 lambda) =
-b_theta + 2 lambda + b_phi > CAP` by MR-PIN (`2 lambda >
2 kappa + 2 b_theta - 2 b_phi`).  Consequently, inside
`{E_sym < CAP}`: crossing either Delta set is impossible, so
components carry constant `(w_theta, w_phi)`; and the theta-marginal:
from `E_sym < CAP`, `h_phi(J_lambda) >= -b_phi`, `eps W >= 0`:
`h_theta(J_kappa) < CAP + b_phi = 2 kappa + b_theta =
h_theta(2 kappa)`, so `J_kappa < 2 kappa` (h_theta strictly
increasing) and with `w_theta = k` the theta-marginal lies in
`A_k^kappa`.  On D_k^sym: `w_theta = k`, `w_phi = 0`.  QED.

## Lemma MR.3 (eps-free envelope; exact critical set; no boundary
rest points - under MR-PIN and C1-SUB(k), (g_theta, g_phi) fixed)

`eps W >= 0` gives `E_sym >= E_sym^0 := h_theta(J_kappa) +
h_phi(J_lambda)`, so `D_k^sym subset S_k^sym := {E_sym^0 < CAP,
w_theta = k, w_phi = 0}` - eps-INDEPENDENT, compactly closed, missing
both Delta sets (Delta_theta: level exactly CAP would force
`J_kappa = 2 kappa` exactly AND `h_phi(J_lambda) = -b_phi` exactly;
`J_kappa = 2 kappa` on Delta_theta is impossible by the
single-pi-bond/cyclic-identity precision; Delta_phi: `E_sym^0 >=
-b_theta + 2 lambda + b_phi > CAP` by MR-PIN).  Windings extend to
the closure.  EXACT CRITICAL SET: `Crit(E_sym^0) = Crit(J_kappa) x
Crit(J_lambda)` (both h' > 0); inside closure(S_k^sym) the theta-part
has winding k and `h_theta(J_kappa) <= CAP + b_phi =
h_theta(2 kappa)`, i.e. `J_kappa <= 2 kappa`, hence lies on C_k
(winding-k criticals with p >= 1 sit strictly above 2 kappa); the
phi-part has winding 0 and `h_phi(J_lambda) <= CAP - h_theta(m_k) <=
2 kappa + 2 b_theta - b_phi - m_k < 2 lambda + b_phi =
h_phi(2 lambda)` (the middle step by `h_theta(m_k) >= m_k - b_theta`,
valid for every g_theta; the last strict inequality by MR-PIN with
`m_k >= 0`), so `J_lambda < 2 lambda` (h_phi strictly increasing),
hence a constant (the winding-0 level law at stiffness lambda: level
0 or strictly above 2 lambda).  So `Crit(E_sym^0) intersect
closure(S_k^sym) = G_k` exactly.  BOUNDARY REST POINTS at level CAP:
theta-levels under h_theta are `{h_theta(m_j)} union (> 2 kappa +
b_theta)`; phi-levels under h_phi are `{-b_phi} union (> 2 lambda +
b_phi)`; a sum hitting exactly CAP with the phi-level `-b_phi` needs
`h_theta(m_j) = 2 kappa + b_theta` (i.e. `m_j = 2 kappa`, excluded -
Crit misses the level); with a `> 2 lambda + b_phi` phi-level the sum
exceeds `-b_theta + 2 lambda + b_phi > CAP` (MR-PIN) - excluded.  QED.

## Theorem MR.4 (symmetric pinning, small coupling - symbolic epsilon_0^sym)

Assume MR-PIN, C1-SUB(k), and fix (g_theta, g_phi).  With `r_1^sym` a
tube radius keeping the transverse Hessian of E_sym^0 above
`(3/4) c_1^sym` on the closed tube and `c_0^sym := inf |grad E_sym^0|`
over `closure(S_k^sym) minus the tube interior` (> 0 by compactness
and Lemma MR.3),

```text
epsilon_0^sym := min( c_0^sym / (2 sqrt(2N)),  c_1^sym / 32,
                      (CAP - h_theta(m_k) + b_phi) / (N (1 - gamma_k)) )
```

(the third entry = the exact MR-SUB continuity bound - note
`CAP - h_theta(m_k) + b_phi = 2 kappa + b_theta - h_theta(m_k)`,
b_phi-FREE, and in the deep case it reads `(2 kappa - m_k +
2 b_theta)/(N(1 - gamma_k))` - IDENTICAL to the one-sided composed
entry; vacuous at k = 0; the other two entries are NOT compared and
no ordering of epsilon_0^sym against epsilon_0 or epsilon_0^c is
claimed), for every `eps in [0, epsilon_0^sym)`:
`Crit(E_sym) intersect closure(D_k^sym) = G_k` and G_k is the unique
internal attractor of D_k^sym with closure attraction.

Proof: the M2P.5 architecture transplants verbatim - Step 1 (gradient
floor off the tube via `sup|grad(eps W)| <= 2 sqrt(2N) eps`), Step 2
(the T^2 action is by CONSTANT vector fields and E_sym is invariant
under both global rotations - h_theta(J_kappa), h_phi(J_lambda), W
all are - so grad E_sym lies in `1-perp x 1-perp`; affine slices;
`||Hess(eps W)|| <= 8 eps` gives the slice floor `(3/4) c_1^sym -
8 eps >= c_1^sym / 2` for `eps <= c_1^sym / 32`; FTC anchor at the
exactly-critical slice center, Lemma MR.1), Steps 3-4 (min attainment
at the interior critical set; boundary non-criticality; positive
invariance + strict boundary descent + the open component argument).
QED.

## Theorem MR.5 (THE SYMMETRIC PERSISTENCE + SEPARATION)

For every (g_theta, g_phi), under MR-PIN + C1-SUB(k), every
`eps in [0, epsilon_0^sym)`, every `q in D_k^sym`, every `delta > 0`:

```text
PERSISTENCE (both certified forms): the reversible action bound with
  E_sym + the closure-form FW rows (all discharged by MR.1-MR.4) give
  liminf beta^-1 log E_q[ tau_exit(Sigma_k^theta x T^N) ]
      >= CAP - E_sym(q)
  P_q( w_theta = k on [0, exp(beta (CAP - E_sym(q) - delta))] ) -> 1;
  at deep aligned states (q on G_k, m_k <= 2 kappa - eta_theta;
  nonvacuity always at k = 0) the certified rate is
  (2 kappa - m_k + 2 b_theta) - eps N (1 - gamma_k)
  - b_phi-FREE and IDENTICAL to the one-sided composed rate (MC.5):
  THE REFERENCE BUDGET IS FREE FOR THE LABELED CERTIFICATE (both CAP
  and the ground drop by exactly b_phi, which cancels).
HONEST TRADEOFF (typed): the margin comparison
  [CAP - E_sym(q)] - [2 kappa - E_eps(q)]
    = (b_theta - g_theta(J_kappa)) - (b_phi + g_phi(J_lambda))
  is formula-level arithmetic at any q.  AS A COMPARISON OF TWO
  CERTIFICATES it is read under MR-PIN AND M2-PIN JOINTLY (MR-PIN
  alone does NOT imply M2-PIN when b_phi > b_theta), for eps in
  [0, min(epsilon_0, epsilon_0^sym)) and q in D_k(eps) intersect
  D_k^sym - the gate-v11 range discipline; NO containment holds
  between the two domains in general (only E_sym <= E_eps + b_theta
  + b_phi), recorded.  The first term is >= 0 (g_theta <= b_theta);
  the second is positive only in the REFERENCE TRANSITION ZONE
  (J_lambda in (2 lambda - eta_phi, 2 lambda)), which meets D_k^sym
  ONLY under the typed WIDTH condition
  eta_phi > 2 lambda - (2 kappa + 2 b_theta) + m_k
  (on D_k^sym always J_lambda < 2 kappa + 2 b_theta - m_k, from
  E_sym < CAP with h_theta(J_kappa) >= h_theta(m_k) >= m_k - b_theta
  and h_phi(J_lambda) >= J_lambda - b_phi); below that threshold
  g_phi = -b_phi on all of D_k^sym and the symmetric margin is >=
  the passive formula everywhere - NO dip (the strictness of the
  width condition is load-bearing: at equality the zone's open lower
  endpoint is not attained, so still no dip).  The 2 b_phi figure is an
  UPPER BOUND, approached by members with g_phi near +b_phi strictly
  before 2 lambda at zone points - an existential over members, not
  a class consequence.  In the DEEP REGION of both readouts
  (g_theta = -b_theta, g_phi = -b_phi) the comparison is
  +2 b_theta >= 0: clean.  This is the PRICE of symmetric
  maintenance, typed - not hidden; no no-harm claim is made for the
  symmetric family outside the deep region.
FORGETTING (unconditional, every eps, every (g_theta, g_phi), every
  starting point): BOTH coordinate-block sums of grad E_sym vanish
  identically (h_theta'(J_kappa) sum_theta grad J_kappa = 0;
  h_phi'(J_lambda) sum_phi grad J_lambda = 0; the W sums vanish as in
  M2a.2; EACH control is proportional to its own factor's grad J, so
  each block sum vanishes), so BOTH total phases stay exact
  independent Brownian motions and
  | E_q[ F_phi(t) ] - int F_phi drho_sym | = exp(-N t / beta)
  with the SAME constants (the M2c.1 display; equilibrium mean zero
  by the global phi-rotation invariance of E_sym) - FLAT-MODE
  IMMUNITY IS UNIVERSAL ACROSS THE SYMMETRIC FAMILY: even the
  MAINTAINED reference factor's own contrast readout is untouched by
  its own maintenance.  This is a MIXING statement on the two
  flat-mode readouts, NOT a maintenance or persistence certificate
  for either factor block (the M2c.1 convention; MC.5's C-6 clause).
```

The event chain is the certified coupled chain (exit forces
`Delta_theta x T^N`, where `E_sym >= CAP`; hitting time of
`{E_sym >= CAP}` = `tau_exit(D_k^sym)` by the component argument).
QED.

## Corollary MR.6 (completion readings - typed)

```text
(a) PIN RETRO-ILLUMINATION: MC-PIN (lambda > kappa + b) is the
    b_phi = 0 slice of MR-PIN (lambda > kappa + b_theta - b_phi).
    The one-sided composition's extra dominance cost was an artifact
    of maintaining ONE side: the reference budget buys dominance
    back, and at b_phi >= b_theta the symmetric pin is implied by
    the PASSIVE pin M2-PIN (lambda > kappa).  Certificate-level
    arithmetic on typed rows; no threshold ordering beyond the
    displayed inequalities is claimed.
(b) SYMMETRIC R6 (via parity, RECORDED BRIDGE - the P.3/P.4 pattern
    re-run per label/readout pair, premises inline as the bridge
    record): E_sym is even in all bonds
    (h's compose reflection-invariant scalars; W invariant under the
    double reflection), so rho_sym is R_2-invariant with strictly
    positive density, and the parity theorem applies to BOTH labels:
    w_theta is not sigma(J_kappa)-measurable AND w_phi is not
    sigma(J_lambda)-measurable, for every N >= 3, every eps, every
    (g_theta, g_phi) (lane-r6-reflection-parity-all-n-v1.md, P.3/P.4
    pattern; the cylinder positive-mass premises from rho_sym's
    density).
(c) M4 ROWS: NOT re-discharged here and not claimed - the certified
    regime package stands as instantiated (one-sided).  MR is the
    symmetric EXTENSION storey; whether a symmetric package variant
    should become a second M4 instantiation is a design decision
    deferred to the completion program's end.
```

## Honest Boundary (recorded, not claimed)

```text
The transition-zone dip (up to 2 b_phi below the passive certified
  margin) is typed in MR.5 WITH its zone-width condition - narrow
  transition zones produce NO dip, and the bound is member-
  existential; no no-harm row is claimed for the symmetric family
  outside the deep region.  Symmetric maintenance is not free: it
  trades reference-transition margin for relaxed dominance (MR-PIN)
  - both directions typed.  FLAT MODE != FACTOR BLOCK: nothing is
  claimed about other phi- (or theta-) observables; each factor
  keeps its own metastable sectors.  phi-label persistence under the
  symmetric family = NOT claimed (it would need the reversed
  dominance orientation).
epsilon_0^sym symbolic (constants policy); large-eps and numeric
  thresholds open.  Deep-region typing as in M3 (transition zones
  interpolate).  General couplings, asymmetric sizes (T^N x T^M),
  skew, sharpness: NOT in scope (storeys 2-3 of the completion
  program / typed open).  Maintenance sensing CROSS-readouts (each
  control reads its own factor only here) = typed open.
```

## False Inference Firewall

```text
symmetric maintenance => agency/homeostasis achieved : BLOCKED (M4
  discipline; the unratified M5 charter owns interpretation)
MR-PIN relaxation => MC-PIN or M2-PIN weakened : BLOCKED (three
  separate typed rows for three families)
transition-zone dip => maintenance harmful : BLOCKED (certificate
  comparison, not a true-rate claim; deep region clean)
b_phi-free labeled rate => reference maintenance useless : BLOCKED
  (it buys MR-PIN relaxation and the raised phi-barrier
  -b_theta + 2 lambda + b_phi of Lemma MR.2 - each typed)
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-MR Symmetric Maintenance v1 = BUILT (L-A0)
gate-v13 build = COMPLETE (the in-campaign assurance was
  subsequently run and the campaign CLOSED - see the closeout;
  the "pending" wording here predated it)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = (consumed)
  governance/gate-v13-campaign-closeout-v1.md (landed)
```
