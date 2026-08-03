# Lane-M1 State-Dependent Skew Family v1

Status:

```text
Lane-M1 State-Dependent Skew Family v1 = M1a-PINNED / FAMILY DECLARED +
  INVARIANCE FOR EVERY SMOOTH FIELD + SILENT CLASS TYPED / NO PHYSICS CLAIMS
campaign = gate-v6 stage M1a; extends Lane-S (constant A, L-A1) to smooth
  antisymmetric FIELDS A(theta); FD2-GA drift convention respected
exit-time robustness (M1b) = NOT CLAIMED HERE
persistence/separation (M1c) = NOT CLAIMED HERE
variable G(theta) = NOT CLAIMED (G = I only)
finite-beta deterministic Lyapunov structure = NOT CLAIMED (typed D1)
anti-quantization firewall = BINDING (no gauge/current/physics vocabulary;
  "field" is used in the plain matrix-valued-function sense)
assurance now = L-A1 (gate-v6 wave 2026-07-03: statement-level zero
  errors; missing beta^-1 constant repaired in the M1a.3 display; D1
  requalified - "REQUIRED"/"beta-DEPENDENT" hold in general, refuted on
  the silent class by the file's own example; all findings integrated)
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

For each SMOOTH map `theta -> A(theta)` into the real antisymmetric N x N
matrices, on the Lane-C pair (`T^N`, J, `rho_beta ~ exp(-beta J)`), declare
the generator in the program's weighted-divergence normal form (G = I):

```text
L_A f = beta^-1 rho_beta^-1 div( rho_beta (I + A(theta)) grad f ).
```

Expansion (now with state dependence): `div(A grad f) = <Div_col A, grad f>`
(the Hessian contraction vanishes by antisymmetry pointwise; the new term
carries the column divergence `(Div_col A)_j = sum_i d_i A_ij`), and
`<grad rho_beta, A grad f> = beta rho_beta <A grad J, grad f>`, so

```text
L_A f = beta^-1 Laplacian f - <grad J, grad f>
        + <A grad J, grad f> + beta^-1 <Div_col A, grad f>
SDE:  d theta = b_beta dt + sqrt(2 beta^-1) dW,
      b_beta = -(I - A(theta)) grad J + beta^-1 Div_col A(theta).
```

This is exactly the FD2-GA drift convention `b = -(G - A) grad J +
beta^-1 Div_col A` with G = I.  Constant A recovers Lane-S verbatim
(`Div_col A = 0`).  Write:

```text
b_inf := -(I - A(theta)) grad J = -grad J + ell,   ell(theta) = A(theta) grad J(theta)
d(theta) := Div_col A(theta),   so   b_beta = b_inf + beta^-1 d
<ell(theta), grad J(theta)> = 0 AT EVERY POINT (pointwise antisymmetry)
```

Typed structural fact D1 (honest, load-bearing for M1b): the drift is
beta-DEPENDENT in general; the `beta^-1 d` term is in general required for
exact invariance of rho_beta (dropping it breaks invariance exactly when
`<Div_col(rho_beta A), grad J> != 0`; on the silent class it is droppable)
and is NOT orthogonal to grad J in general, so J is NOT claimed
to be a Lyapunov function for the finite-beta deterministic flow.  The
Lyapunov structure lives at the LIMIT drift `b_inf` (M1b).

## Lemma M1a.1 (wellposedness + named standard inputs)

For each beta, smooth coefficients on the compact smooth manifold `T^N`:
unique strong solution, global, conservative; diffusion matrix `beta^-1 I`
uniformly nondegenerate BECAUSE the state-dependent skew part contributes
no second-order term (the Hessian contraction dies pointwise), so A(theta)
enters only the drift (Opus L-A2f note).  Additionally named (same standard family,
uniformly elliptic + smooth + compact connected): (a) CORE - infinitesimal
invariance upgrades to semigroup invariance; (b) UNIQUENESS - the
invariant probability measure is unique.  Hypothesis rows: all HOLD for
every smooth field A and every beta.

## Theorem M1a.2 (invariance of rho_beta for EVERY smooth field)

```text
int L_A f drho_beta = beta^-1 int div( rho_beta (I + A(theta)) grad f ) dtheta = 0
```

for all smooth f, by the divergence theorem on the closed manifold - the
weighted-divergence form absorbs the state dependence entirely.  By the
named inputs M1a.1(a)/(b), rho_beta is THE invariant probability measure
of every member of the family.  QED.

## Lemma M1a.3 (antisymmetric split + the SILENT CLASS, typed honestly)

In `L^2(rho_beta)`: `L_A = L_0 + Gamma_A` with
`Gamma_A f = <ell, grad f> + beta^-1 <d, grad f> = <ell_beta, grad f>`,
`ell_beta := A grad J + beta^-1 Div_col A`, and Gamma_A is antisymmetric:
one integration by parts (using the pointwise identity
`rho_beta Gamma_A f = beta^-1 div(rho_beta A grad f)` proved below) gives
`<Gamma_A f, g>_rho = -beta^-1 int <grad g, A grad f> drho_beta`, and the
integrand flips sign under exchanging f and g by POINTWISE antisymmetry
of A(theta).

Degeneracy classification (this is where state dependence differs from
Lane-S): `Gamma_A` is a first-order operator with coefficient field
`ell_beta`, and

```text
Gamma_A = 0  (i.e. L_A = L_0)   IFF   Div_col( rho_beta A ) = 0 identically.
```

Proof of the classification: `rho_beta Gamma_A f = beta^-1 div(rho_beta A
grad f)` and for any antisymmetric field B, `div(B grad f) =
<Div_col B, grad f>`; so `Gamma_A f = beta^-1 rho^-1 <Div_col(rho A),
grad f>`, which vanishes for all f iff its coefficient vanishes (take f
locally a coordinate function).  QED.

```text
SILENT CLASS (typed, NONEMPTY): fields with Div_col(rho_beta A) = 0, e.g.
  A(theta) = exp(beta J(theta)) C for any constant antisymmetric C - these
  give L_A = L_0 EXACTLY (the skew part is invisible to the dynamics).
CONSEQUENCE: "A != 0 implies non-reversible" is FALSE for state-dependent
  fields (unlike the constant case, where S1.3 proved it).  Genuine
  non-reversibility = A outside the silent class.  All M1 theorems are
  stated for ARBITRARY smooth fields and hold trivially on the silent
  class (where the process IS the reversible one).
```

## Theorem M1a.4 (verbatim topology transfer)

As in S1.4: `w`, `Delta`, `Sigma_k` are state-space objects; T1.1 uses no
dynamics; T1.2 uses only path continuity, and Lemma T2.1 (sector purity,
proven in pre-physics/lane-c-exit-time-lower-bound-v1.md) is purely
topological (uses no dynamics at all); path continuity is what M1a.1
supplies for every smooth field and every beta.  QED.

## What M1a Does And Does Not Establish

```text
established = the state-dependent skew family is well-posed; rho_beta is
  THE invariant measure for EVERY smooth antisymmetric field; the
  antisymmetric split with the exact degeneracy classification (silent
  class); verbatim topology transfer
NOT established = exit-time/persistence/separation under state-dependent
  skew (M1b/M1c); any finite-beta Lyapunov statement; variable G; any
  claim distinguishing silent-class members from L_0 (there is nothing to
  distinguish - they are equal)
```

## False Inference Firewall

```text
invariance for every field => dynamics/rates unchanged : BLOCKED (M1b must prove)
A != 0 => non-reversible : BLOCKED (FALSE here; silent class typed above)
state-dependent skew field => gauge/current/physics reading : BLOCKED (firewall)
M1a => variable G(theta) : BLOCKED
```

## Verdict

```text
Lane-M1 State-Dependent Skew Family v1 = M1a-PINNED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-m1-state-dependent-exit-robustness-v1.md
```
