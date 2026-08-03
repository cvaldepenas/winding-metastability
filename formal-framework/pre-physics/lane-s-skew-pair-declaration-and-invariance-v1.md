# Lane-S Skew Pair Declaration And Invariance v1

Status:

```text
Lane-S Skew Pair Declaration And Invariance v1 = S1-PINNED / SKEW FAMILY
  DECLARED + INVARIANCE + TOPOLOGY TRANSFER / NO PHYSICS CLAIMS
campaign = gate-v5 stage S1; extends the T1 pair (L-A2f) to the full
  constant-skew family; FD2-GA drift convention respected
exit-time robustness (S2) = NOT CLAIMED HERE
persistence/separation (S3) = NOT CLAIMED HERE
state-dependent A(q) / variable G = NOT CLAIMED (constant A, G = I only)
anti-quantization firewall = BINDING (sectors are mathematical labels)
assurance now = L-A1 (gate-v5 wave 2026-07-03: zero theorem-level errors;
  named-input seams closed - core/uniqueness inputs named, T2.1 source
  cited; all findings integrated)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Family (declared)

For each constant real antisymmetric N x N matrix A (`A^T = -A`), on the T1
pair (`X = T^N`, J the loop energy, `rho_beta` proportional to
`exp(-beta J)`), declare the generator in the program's weighted-divergence
normal form (FD2-GA with G = I):

```text
L_A f = beta^-1 rho_beta^-1 div( rho_beta (I + A) grad f ).
```

Expansion (constant A): `div(A grad f) = sum_{ij} A_ij d_i d_j f = 0`
(antisymmetric matrix against the symmetric Hessian), and
`<grad rho_beta, (I + A) grad f> = -beta rho_beta <(I - A) grad J, grad f>`
(moving A to the other slot flips its sign), so

```text
L_A f = beta^-1 Laplacian f - <(I - A) grad J, grad f>,
SDE:  d theta = b(theta) dt + sqrt(2 beta^-1) dW,   b = -(I - A) grad J.
```

This matches the FD2-GA drift convention `b = -(G - A) grad J + beta^-1
Div_col A` with `G = I` and `Div_col A = 0` (constant A).  Write

```text
ell := A grad J,   so   b = -grad J + ell,   <ell, grad J> = 0 pointwise
```

(antisymmetry: `<A v, v> = 0`).  A = 0 recovers the T1 pair.

## Lemma S1.1 (wellposedness, conservativity - named standard input)

Smooth coefficients on the compact smooth manifold `T^N`: unique strong
solution, global, conservative; diffusion matrix `beta^-1 I` uniformly
nondegenerate BECAUSE the skew part contributes no second-order term
(`div(A grad f) = 0`), so A enters only the drift - this single fact is
what makes the ellipticity, core and uniqueness inputs applicable
family-wide (Opus L-A2f note).  (Same SR row family as T1; hypothesis rows: compactness,
smoothness - both HOLD for every constant A.)

Additionally named from the same standard family (uniformly elliptic
diffusion, smooth coefficients, compact connected manifold):

```text
(a) CORE: C-infinity is a core for the generator, so infinitesimal
    invariance (int L_A f drho = 0 for all smooth f) upgrades to
    invariance of the measure for the semigroup
(b) UNIQUENESS: the invariant probability measure is unique (strong
    Feller + irreducibility on the compact connected T^N)
hypothesis rows: uniform ellipticity (beta^-1 I) / smoothness / compact
  connected manifold : ALL HOLD for every constant A
```

## Theorem S1.2 (invariance of rho_beta under every skew)

For every constant antisymmetric A, `rho_beta` is invariant for `L_A`:

```text
int L_A f  drho_beta = beta^-1 int div( rho_beta (I + A) grad f ) dtheta = 0
```

for all smooth f, by the divergence theorem on the closed manifold `T^N`
(no boundary); by the named core input S1.1(a) this infinitesimal
invariance upgrades to semigroup invariance, and by the named uniqueness
input S1.1(b) `rho_beta` is THE invariant probability measure of every
member of the family.  QED.

## Lemma S1.3 (genuine non-reversibility for A != 0)

In `L^2(rho_beta)` the generator splits as `L_A = S + Gamma_A` with
`S = L_0` symmetric (the T1 pair) and `Gamma_A f = <ell, grad f>`
antisymmetric: for smooth f, g,

```text
int g <ell, grad f> drho_beta + int f <ell, grad g> drho_beta
  = int <ell, grad(fg)> drho_beta = beta^-1 int div(rho_beta A grad(fg)) dtheta = 0
```

(the pointwise identity `rho_beta <ell, grad h> = beta^-1
div(rho_beta A grad h)`, valid for constant skew A since
`div(A grad h) = 0` and `<grad rho_beta, A grad h> = beta rho_beta
<ell, grad h>`, applied with h = fg and integrated over the closed
manifold).  For `A != 0` the
antisymmetric part is a nonzero operator: `ell = A grad J` does not vanish
identically (shown below), and since ell is smooth, choosing f locally
affine in the direction `ell(theta_0)` near a point theta_0 with
`ell(theta_0) != 0` gives `Gamma_A f != 0` in `L^2(rho_beta)`.  Precisely: the span of `{grad J(theta) : theta in T^N}` is
EXACTLY the hyperplane `1-perp`.  Containment: `sum_i dJ/dtheta_i = 0`
identically (J depends on bond differences only), so `grad J` is always
orthogonal to `1`.  Fullness: fix `j < N` and, for any epsilon with `sin(epsilon) != 0` (e.g.
`0 < epsilon < pi`), set the bonds `d_j = epsilon`, `d_N = -epsilon`, all
others 0 (an admissible configuration: the bonds sum to 0); then
`grad J = kappa sin(epsilon) [(e_{j+1} - e_j) - (e_1 - e_N)]` (for j = 1
and j = N-1 two contributions coalesce on one coordinate and the same
formula results), and the N-1 vectors
`{f_j - f_N : j = 1..N-1}` (where `f_j = e_{j+1} - e_j`) are linearly
independent, spanning the (N-1)-dimensional `1-perp` (a dependence
`sum c_j (f_j - f_N) = 0` forces, via `f_N = -sum_{j<N} f_j` and the
independence of `{f_j : j < N}`, first `c_j = -C` for all j and then
`N C = 0`, so all `c_j = 0`).  Hence `A grad J = 0` identically would force
`A` to annihilate `1-perp`, giving `rank A <= 1`; antisymmetric matrices
have even rank, so `A = 0`.  This realizes the
program's `S_mu + A_mu` split on the torus: the skew family is the
non-reversible extension of the topological pair, with the SAME invariant
measure.

## Theorem S1.4 (verbatim topology transfer)

The objects `w`, `Delta`, `Sigma_k` are functions and sets on the STATE
SPACE only; T1.1 (sector function: integer-valued, locally constant off the
closed null set `Delta`, sectors open, admissible range
`|k| <= floor((N-1)/2)`) holds verbatim - no dynamics enters its statement
or proof.  T1.2 (barrier positivity: `J >= 2 kappa` on `Delta`; any
continuous path from `Sigma_0` to another sector meets `Delta`; exiting
`Sigma_0` forces energy `>= 2 kappa`) uses only path continuity, which
Lemma S1.1 supplies for every A.  Both transfer to the entire skew family
unchanged, as does Lemma T2.1 (sector purity of sublevel components,
proven in pre-physics/lane-c-exit-time-lower-bound-v1.md: purely
topological - sublevel sets miss Delta, w locally constant).  QED (by
inspection of the T1/T2.1 proofs; no step uses the dynamics beyond path
continuity).

## What S1 Does And Does Not Establish

```text
established = the skew family L_A is well-posed, leaves rho_beta invariant
  for EVERY constant antisymmetric A, is genuinely non-reversible for
  A != 0, and inherits the full sector topology and barrier geometry
  verbatim
NOT established = any exit-time bound, persistence, or separation statement
  under skew (S2/S3); any state-dependent A(q) or variable-G statement;
  any rate or spectral statement
```

## False Inference Firewall

```text
same invariant measure => same dynamics/rates : BLOCKED (S2/S3 must prove
  what survives; nothing is inherited for free beyond the measure)
topology transfer => exit-time transfer : BLOCKED (that is S2)
constant-A family => state-dependent A(q) : BLOCKED
anything here => physics : BLOCKED (firewall)
```

## Verdict

```text
Lane-S Skew Pair Declaration And Invariance v1 = S1-PINNED
the two certified branches now share one object: the non-reversible skew
  family ON the topological pair, with invariant measure rho_beta
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-s-skew-exit-time-robustness-v1.md
```
