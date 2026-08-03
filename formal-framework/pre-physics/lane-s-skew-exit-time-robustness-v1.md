# Lane-S Skew Exit-Time Robustness v1

Status:

```text
Lane-S Skew Exit-Time Robustness v1 = S2-PINNED / THE BARRIER IS
  SKEW-INVARIANT (LOWER BOUND, ALL ADMISSIBLE SECTORS) / NO PHYSICS CLAIMS
campaign = gate-v5 stage S2; uses S1 (skew family), P0 (attractor pinning),
  completion package C1 rows (C1-SUB(k), A_k, A_k subset Sigma_k),
  T1/T2.1 (topology, transferred by S1.4)
matching upper bounds / sharp rates under skew = NOT CLAIMED
state-dependent A(q) / variable G = NOT CLAIMED
anti-quantization firewall = BINDING (sectors are mathematical labels)
assurance now = L-A1 (gate-v5 wave 2026-07-03: zero errors, zero
  overclaims; the auditor re-derived the completed square, the Lyapunov
  cancellation, the SR-S2 honesty rows and the from-q exponent; LDP
  attribution moved under the SR umbrella)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data

From S1: `d theta = b dt + sqrt(2 beta^-1) dW`, `b = -grad J + ell`,
`ell = A grad J`, `<ell, grad J> = 0` pointwise; invariant measure
`rho_beta` for every constant antisymmetric A; topology (w, `Delta`,
`Sigma_k`, barrier `2 kappa`, sector purity) transferred verbatim.
From P0: for admissible k with C1-SUB(k), `A_k` is the unique component of
`{J < 2 kappa}` in `Sigma_k`, with unique internal attractor `C_k` for any
flow with the H-LYAP property.

## Lemma S2.1 (J is a strict Lyapunov function for the skew flow)

Along the deterministic flow `x' = b(x)`:

```text
dJ/dt = <grad J, b> = -|grad J|^2 + <grad J, ell> = -|grad J|^2
```

(the skew term cancels pointwise - the same antisymmetry identity that
powers the QCB crown).  Moreover b and grad J have the SAME zero set: for
`v != 0`, `|(I - A)v|^2 = |v|^2 + |Av|^2 - 2<v, Av> = |v|^2 + |Av|^2 > 0`,
so `I - A` is injective and `b = -(I - A) grad J = 0` iff `grad J = 0`.
Hence H-LYAP of Theorem P0.4 HOLDS for every constant antisymmetric A: the
skew flow has the same equilibria, the same Lyapunov decay rate profile,
and the same attractors `C_k` with the same stability.  QED.

## Lemma S2.2 (action-energy inequality - the unification identity)

The sample-path LDP rate function for the skew SDE is
`I_T(phi) = (1/4) int_0^T |phi' - b(phi)|^2 dt` - a named standard input of
the SR-T2/SR-T3 source family, certified by the SR-S2 rows below (smooth
drift, uniform nondegenerate diffusion, compact manifold); what this lemma
PROVES is only the algebraic action-energy inequality for that functional.
For every absolutely continuous path phi:

```text
|phi' - b|^2 = |(phi' - ell) + grad J|^2
             = |(phi' - ell) - grad J|^2 + 4 <phi' - ell, grad J>
             = |phi' - ell - grad J|^2 + 4 <phi', grad J>
```

(complete the square in `(phi' - ell)` against `grad J`; the cross term
`<ell, grad J>` vanishes by antisymmetry).  Dropping the nonnegative first
term and integrating the second, which telescopes:

```text
I_T(phi) >= J(phi(T)) - J(phi(0))     for every T and every phi,
```

IDENTICAL to the reversible bound.  The skew current ell is tangent to the
level sets of J and cannot cheapen climbing.  (The dropped term vanishes
iff `phi' = grad J + ell`, the reversed drift of the adjoint family
`A <-> -A`; noted as structure, nothing further claimed.)  QED.

## Lemma S2.3 (boundary level)

`J = 2 kappa` on the topological boundary of `A_k`.  Proof: boundary points
are limits of `A_k` points, so `J <= 2 kappa` there; a boundary point y
with `J(y) < 2 kappa` would lie in the open set `{J < 2 kappa}`, hence in
some component; being a limit of points of the open component `A_k`, it
would lie in `A_k` itself - contradicting `y` on the boundary of the open
set `A_k`.  Consequently, for a continuous path started in `A_k`,
`tau_exit(A_k) = tau_hit({J >= 2 kappa}) <= tau_hit(Delta)` (Delta is
contained in `{J >= 2 kappa}` by T1.2a).  QED.

## Standard External Input SR-S2 (named, with hypothesis mapping)

Statement used (Freidlin-Wentzell rough exit bounds, non-gradient form -
the classical FW theory is native to smooth non-gradient drifts; this is
the same source family as SR-T2/SR-T3, invoked WITHOUT any gradient
assumption): for `dX = b dt + sqrt(2 beta^-1) dW` with smooth b on a
compact smooth manifold, D a connected open positively invariant domain
whose flow has a unique internal attractor K (compact, Lyapunov-stable, all
trajectories from the CLOSURE of D converge to K - in particular no rest
point on the boundary of D; closure form installed 2026-07-03 after the
gate-v6 wave identified it as the honest classical hypothesis), and
quasipotential lower bound
`V(q -> boundary of D) >= V_0(q)`, then for every `q in D`, `delta > 0`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(D) ] >= V_0(q)
P_q( tau_exit(D) <= exp(beta (V_0(q) - delta)) ) -> 0.
```

Hypothesis mapping for `D = A_k` (each row a certificate):

```text
compact smooth manifold = T^N                                       : HOLDS
smooth drift b = -(I - A) grad J, uniform nondegenerate diffusion    : HOLDS (S1)
D = A_k connected open, positively invariant under the skew flow     : HOLDS (S2.1 + P0.4(i))
unique internal attractor K = C_k, compact, stable                   : HOLDS (S2.1 + P0.4(ii,iii))
no flow rest point on the boundary of A_k (closure attraction)
  : HOLDS - rest points of the skew flow = Crit(J) (S2.1), the boundary
  lies in {J = 2 kappa} (S2.3), and Crit(J) misses that level for
  N >= 3 (branch arithmetic at level 2 kappa: p = 0 forces
  cos(2 pi k/N) = 1 - 2/N, by Niven only N = 4 (value 1/2) is a
  candidate, excluded directly since cos(pi k/2) is in {0, +-1};
  p = 1 forces c = (N-2)/(N-2p) = 1, a single pi-bond, violating the
  cyclic sum and lying on Delta; p >= 2 with 2p < N forces
  c = (N-2)/(N-2p) > 1, impossible for a cosine; 2p >= N gives, with
  the low-branch convention c >= 0, J >= kappa N >= 3 kappa; moreover
  grad J != 0 on the boundary, so it is a smooth level hypersurface) -
  row installed 2026-07-03, discharge imported from the gate-v6 wave
  (lead-corrected at N = 4; case split completed and conventions
  pinned at the C-1 Opus wave)
V_0(q) = 2 kappa - J(q): every path from q to the boundary of A_k
  ends at level 2 kappa (S2.3), so its action is >= 2 kappa - J(q)
  by S2.2 - the bound telescopes over the WHOLE path, so wandering
  and re-descending cannot cheapen it                                : HOLDS (S2.2 + S2.3)
```

Non-reproduction of the FW machinery is recorded (SR discipline); sharp
prefactors and matching upper bounds are explicitly NOT imported.

## Theorem S2.4 (skew robustness of sector metastability - the unification theorem)

For EVERY constant antisymmetric A, every admissible k with C1-SUB(k)
(`m_k < 2 kappa`; k = 0 always qualifies with `m_0 = 0`), every `q in A_k`
and every `delta > 0`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_k) ] >= 2 kappa - J(q)
P_q( w(theta_t) = k  for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1.
```

Proof.  `A_k subset Sigma_k` (completion package + P0.2b), so
`tau_exit(Sigma_k) >= tau_exit(A_k)` pathwise; w equals k until the path
hits `Delta`, and `tau_hit(Delta) >= tau_hit({J >= 2 kappa}) =
tau_exit(A_k)` (S2.3), so the event `{ w(theta_t) = k for all t <= T }`
contains `{ tau_exit(A_k) > T }`.  Apply SR-S2 with `D = A_k`,
`V_0(q) = 2 kappa - J(q)`, and `T = exp(beta (2 kappa - J(q) - delta))`;
the expectation form gives the first display through the pathwise
inequality.  QED.

## Corollary S2.5 (what unification says, mathematics only)

The exit-rate lower bound `2 kappa - J(q)` - the certified content of
Lane-C metastability - is INVARIANT across the entire constant-skew family:
no constant non-reversible perturbation of the program's type can lower it.
The two certified branches of the program meet in one statement: the
antisymmetry identity `<A v, v> = 0` that cancels the skew term in the QCB
convergence chain is the same identity that (i) preserves the invariant
measure (S1.2), (ii) preserves the Lyapunov structure (S2.1), and (iii)
preserves the large-deviation cost of climbing (S2.2).

## Honest Boundary (recorded, not claimed)

```text
NO matching upper bounds: whether skew changes the TRUE exit rate (or its
  prefactor) is not claimed in either direction; only the lower bound with
  the same constant is certified.
NO sharpness of 2 kappa (as in T2/C1; saddle heights not computed).
NO state-dependent A(q): Div_col A terms would enter the drift and the
  Lyapunov cancellation would need re-derivation; future gated work.
NO spectral/relaxation claims under skew.
```

## False Inference Firewall

```text
lower-bound invariance => exit rates unchanged under skew : BLOCKED
  (upper bounds not claimed; skew may in principle change true rates)
constant-A robustness => state-dependent A(q) robustness : BLOCKED
skew robustness => any acceleration/sampling claim : BLOCKED (not studied)
anything here => physics : BLOCKED (firewall)
```

## Verdict

```text
Lane-S Skew Exit-Time Robustness v1 = S2-PINNED
the barrier constant 2 kappa = SKEW-INVARIANT (lower bound, all admissible
  sectors, entire constant antisymmetric family)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-s-skew-persistence-separation-v1.md
```
