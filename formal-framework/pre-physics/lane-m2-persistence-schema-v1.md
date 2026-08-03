# Lane-M2 Persistence Schema v1

Status:

```text
Lane-M2 Persistence Schema v1 = M2b-PINNED / COUPLED PERSISTENCE: TYPED
  ROWS + EPSILON-ZERO PINNING + CONDITIONAL THEOREM / NO PHYSICS CLAIMS
campaign = gate-v7 stage M2b; uses M2a, P0 (factor classification, both
  loops), completion package C1 rows (per factor), C-1-hardened closure
  discharge (per factor)
epsilon > 0 attractor row = THEOREM on [0, epsilon_0) since gate-v8;
  ASSUMPTION-EXPLICIT only beyond (large-epsilon = typed tail)
matching upper bounds / sharpness = NOT CLAIMED
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v7 wave 2026-07-03: one MAJOR proof-step
  repair - the compressed p >= 2 level bound failed for 2p > N, caught
  TWICE independently (statement survives with the corrected split);
  s = 0 case re-attributed (pi-bonds lie ON Delta); boundary w_phi
  bridge and the rest-point-to-closure-attraction bridge recorded; all
  findings integrated)
assurance now ALSO = L-A2f (phase C-2 dual-lens Opus blind wave
  2026-07-03: 2/2 CONFIRM, GRANT - zero errors/overclaims/brief-defects;
  brief = governance/c2-la2f-brief-gate-v7-surface-v1.md; record =
  governance/c2-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data (from M2a and the factor surfaces)

E, rho_E, both topologies, barriers (2 kappa / 2 lambda), sector purity,
path continuity - M2a.  Per factor (P0, L-A2f): the classification of
factor-critical points below the factor barrier; A_k^kappa (the
theta-factor sublevel component) with `J_kappa >= m_k` on it, attained
exactly on C_k; the C-1-completed level analysis: `Crit(J_kappa)` misses
the level `2 kappa`.  Additionally (proved here, used in M2b.1(ii)):
winding-0 critical points of a loop energy with stiffness mu have level
0 (the constants) or STRICTLY above `2 mu`.  Proof: by the factor
classification framework, a critical point has all bond sines equal;
with p high-branch bonds (`cos = -c`), the level is
`mu [N - (N - 2p) c]`.  p = 0 with winding 0 forces all bonds equal to
`2 pi * 0 / N = 0`: the constants, level 0.  For `s != 0`, low-branch
bonds all equal some alpha and high-branch all equal `pi - alpha`
(equal sin AND cos fix the angle); p = 1: the cyclic bond-sum identity
forces `(N - 2) alpha + pi = 2 pi m` for the branch `alpha >= 0` (for
`alpha < 0` the high bond's representative is `-pi - alpha` and the
identity reads `(N - 2) alpha - pi = 2 pi m`), m an integer; the level
`mu [N - (N-2) cos alpha] >= 2 mu` (cos is even in alpha) with equality
only at `alpha = 0`, which forces `+-pi = 2 pi m` - impossible for
integer m - so the level is STRICTLY above `2 mu` (sign-variant
completion at the C-2 Opus wave); `p >= 2` with `2p <= N` gives level `>= 2 p mu >= 4 mu` (the
step `N - (N-2p)c >= 2p` is valid exactly when `N - 2p >= 0`); `2p > N`
gives level `= mu [N + (2p - N) c] >= mu N >= 3 mu > 2 mu` (using
`c >= 0`; the previously displayed compressed bound `>= 2 p mu` FAILS
in this range - caught twice independently by the gate-v7 wave and
repaired here).  For `s = 0`, bonds lie in {0, pi}; any pi-bond puts
the configuration ON Delta, where the winding is UNDEFINED - so the
only winding-0 case with s = 0 is p = 0, the constants.  (On-Delta
critical configurations with p pi-bonds have level `2 p mu`, p even by
the cyclic bond-sum identity (`p pi = 0 mod 2 pi` forces p even) - so
the smallest nonzero such level is `4 mu`; excluded downstream by
`E < 2 kappa < 2 lambda` anyway.)

## Ground Orbits And Typed Rows

For admissible k let `G_k = C_k^theta x C_0^phi` (theta-factor rotating
at winding k, phi-factor at the constants), a smooth 2-torus of
configurations `d_i = 2 pi k / N, e_i = 0`.  Its energy:

```text
E(G_k) = M_k(epsilon) := (kappa + epsilon) N (1 - cos(2 pi k / N))
```

(the coupling term contributes `epsilon (1 - cos(2 pi k/N))` per bond on
G_k).  Note `M_0 = 0` for every epsilon.

```text
Row M2-SUB(k, epsilon): M_k(epsilon) < 2 kappa.  (Nonvacuity: k = 0
  always; for k != 0 this is the C1-SUB arithmetic with stiffness
  kappa + epsilon, so it FAILS for large epsilon - the coupling eats the
  label's barrier margin; honest and typed.)
D_k(epsilon) := the connected component of {E < 2 kappa} containing G_k
  (well-defined under M2-SUB(k, epsilon)); w_theta = k on it (M2a.3).
Row M2-PIN: lambda > kappa (STRICT reference-factor stiffness dominance).
Row M2-ATTR(k, epsilon): the flow of -grad E has G_k as the UNIQUE
  internal attractor of D_k(epsilon), with closure attraction (all
  trajectories from the CLOSURE converge to G_k; in particular no rest
  point on the boundary).
  Status: PROVEN for epsilon = 0 under M2-PIN (Theorem M2b.1 below);
  THEOREM for epsilon in [0, epsilon_0) under M2-PIN + C1-SUB(k) since
  gate-v8 (lane-m2-attractor-pinning-small-coupling-v1.md; epsilon_0 > 0
  symbolic); ASSUMPTION-EXPLICIT only beyond that range (large-epsilon
  = typed tail).
```

## Theorem M2b.1 (epsilon = 0 pinning of M2-ATTR under M2-PIN)

Let epsilon = 0 (so `E = J_kappa(theta) + J_lambda(phi)`), assume M2-PIN
(`lambda > kappa`) and C1-SUB(k) (= M2-SUB(k, 0)).  Then:

```text
(i) CONFINEMENT: D_k(0) is contained in A_k^kappa x {w_phi = 0}: the
    theta-marginal lies in A_k^kappa, and the phi-winding is 0 on D_k.
(ii) CLASSIFICATION: Crit(E) intersect D_k(0) = G_k exactly.
(iii) ATTRACTOR: G_k is the unique internal attractor of D_k(0) for the
    gradient flow (and any product H-LYAP flow), Lyapunov-stable; and
    the flow has NO rest point on the boundary of D_k(0).
```

Proof.
(i) For `(theta, phi) in D_k(0)`: `J_kappa(theta) <= E < 2 kappa` and
`w_theta = k`, so `theta in {J_kappa < 2 kappa} intersect Sigma_k =
A_k^kappa` (the factor dichotomy, P0.2b), whence `J_kappa(theta) >= m_k`.
For the phi-winding: a continuous path inside D_k(0) crossing
`T^N x Delta_phi` would pass a point with `E >= 2 lambda > 2 kappa`
(`J_lambda >= 2 lambda` there by M2a.3, all other terms >= 0; M2-PIN),
impossible below the barrier; G_k has w_phi = 0;
hence w_phi = 0 throughout.
(ii) At epsilon = 0, `Crit(E) = Crit(J_kappa) x Crit(J_lambda)`
(the gradient splits).  Inside D_k(0): the theta-component is a critical
point of J_kappa in A_k^kappa, hence on C_k (P0.2 + P0.2b); the
phi-component is a critical point of J_lambda with winding 0 and level
`J_lambda = E - J_kappa < 2 kappa - m_k <= 2 kappa < 2 lambda`; by the
factor classification, winding-0 critical points of J_lambda have level
0 (the constants C_0^phi) or, for mixed branches (p >= 1), level
`> 2 lambda` - excluded.  Hence the critical set is `C_k x C_0 = G_k`.
(iii) `E >= m_k` on D_k(0) with equality exactly on G_k: `J_kappa >= m_k`
on the theta-marginal (attained exactly on C_k, P0) and
`J_lambda >= 0` (attained exactly on the constants among winding-0
points).  The LaSalle/omega-limit argument and the W_eta
sublevel-neighborhood stability argument of P0.4 (repaired form) apply
verbatim on the product with the critical set G_k; positive invariance
of D_k(0) is the component argument.  Boundary: points of the boundary
have `E = 2 kappa` (component argument as in the factor case) and are
NOT on `T^N x Delta_phi` (E > 2 kappa there, by (i)'s estimate) nor on
`Delta_theta x T^N` (contact at the boundary level E = 2 kappa forces
EXACTLY one theta-pi-bond with all other theta-bonds zero and
J_lambda(phi) = 0 - two or more pi-bonds already push E >= 4 kappa,
off the boundary - but theta-bonds (pi, 0, ..., 0) sum to
`pi != 0 mod 2 pi`, violating the cyclic identity; no such
configuration exists - precision added at the C-2 Opus wave).  Rest points
on the boundary would be pairs of factor-critical points with levels
summing to exactly 2 kappa: the theta-level misses 2 kappa (C-1 level
analysis) so the phi-level would have to be positive; winding-0
phi-critical levels are 0 or > 2 lambda > 2 kappa - and boundary
points ARE winding-0 in phi: they have E = 2 kappa < 2 lambda, hence
lie off `T^N x Delta_phi` where w_phi is defined and locally constant,
and they are adherent to D_k(0), where w_phi = 0 by (i).  So no sum
hits 2 kappa.  Closure attraction (the form the C-1-hardened SR input
consumes): the closure of D_k(0) is positively invariant (flow
continuity + positive invariance of the open set); at a non-critical
boundary point the strict decrease `dE/dt = -|grad E|^2 < 0` pushes
the trajectory into `{E < 2 kappa}`, and a closure point of D_k(0)
lying in the open sublevel set lies in D_k(0) itself (open component
argument) - so every trajectory from the closure enters D_k(0) and
converges to G_k by the internal attraction above.  QED.

## Standard External Input SR-M2 (named)

The reversible FW rough exit bounds (SR-T2/SR-S2 family, closure form,
C-1-hardened): for the reversible diffusion with smooth energy E on the
compact T^{2N}, D a connected open positively invariant domain with
unique internal attractor K (closure attraction), and the action bound
`I_T(phi) >= E(phi(T)) - E(phi(0))` (the classical completed square
against grad E - the epsilon-free reversible case of the certified
S2.2/M1b.2 identity), the exit bounds hold with
`V_0(q) = 2 kappa - E(q)`:

```text
rows for D = D_k(epsilon): compactness/smoothness HOLD; positive
  invariance HOLDS (E non-increasing under the gradient flow + component
  argument); boundary level = 2 kappa HOLDS (component argument);
  whole-path telescoping quasipotential HOLDS;
  attractor + closure row = M2-ATTR(k, epsilon): PROVEN at epsilon = 0
  under M2-PIN (M2b.1), ASSUMED for epsilon > 0 (typed)
```

## Theorem M2b.2 (coupled persistence - conditional as typed)

For epsilon >= 0, under M2-SUB(k, epsilon) and M2-ATTR(k, epsilon)
(which at epsilon = 0 with M2-PIN is a THEOREM, M2b.1): for every
`q in D_k(epsilon)` and every `delta > 0`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_k^theta x T^N) ]
  >= 2 kappa - E(q)
P_q( w_theta(t) = k  for all t in [0, exp(beta (2 kappa - E(q) - delta))] ) -> 1.
```

Proof.  Exiting the sector cylinder requires hitting
`Delta_theta x T^N subset {E >= 2 kappa}` (M2a.3), and for continuous
paths from D_k the hitting time of `{E >= 2 kappa}` equals
`tau_exit(D_k)` (component argument), so
`{w_theta = k on [0, T]}` contains `{tau_exit(D_k) > T}`; apply SR-M2
with `V_0(q) = 2 kappa - E(q)`.  QED (conditional exactly as typed).

## Honest Boundary (recorded, not claimed)

```text
the rate 2 kappa - E(q) is measured from the JOINT energy: the coupling
  and the reference factor EAT protection margin (at q on G_k the rate
  is 2 kappa - M_k(epsilon), non-increasing in epsilon and strictly
  decreasing for k != 0; M_0(epsilon) = 0 keeps the k = 0 rate constant;
  M2-SUB is doing real work - for large epsilon the statement is vacuous and NOTHING is
  claimed)
M2-ATTR(k, epsilon) for epsilon > 0 = ASSUMPTION (perturbation pinning =
  typed tail; expected route: Morse-Bott persistence of G_k under the
  T^2 symmetry, NOT attempted here)
no sharpness, no upper bounds, no claims outside M2-PIN, no skew
```

## False Inference Firewall

```text
schema => epsilon > 0 persistence proven : BLOCKED (M2-ATTR typed)
epsilon = 0 theorem => coupled (epsilon > 0) theorem : BLOCKED
2 kappa - E(q) => sharp rate : BLOCKED (lower bound only)
persistence of w_theta => any agency/physics reading : BLOCKED (firewall)
```

## Verdict

```text
Lane-M2 Persistence Schema v1 = M2b-PINNED (schema + epsilon-zero pin)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-m2-coupled-separation-v1.md
```
