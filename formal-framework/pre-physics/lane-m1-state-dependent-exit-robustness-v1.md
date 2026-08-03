# Lane-M1 State-Dependent Exit Robustness v1

Status:

```text
Lane-M1 State-Dependent Exit Robustness v1 = M1b-PINNED / THE BARRIER IS
  INVARIANT UNDER EVERY SMOOTH ANTISYMMETRIC FIELD (LOWER BOUND) / NO
  PHYSICS CLAIMS
campaign = gate-v6 stage M1b; uses M1a (family), P0 (attractor pinning),
  completion package C1 rows, T1/T2.1 topology (transferred by M1a.4),
  Lane-S S2 (S2.3/S2.4 arguments reused verbatim)
NEW NAMED INPUT = SR-M1 (LDP/exit transfer for beta-dependent drift via
  same-noise Gronwall coupling) - flagged for the audit wave as the
  campaign's genuinely new import
matching upper bounds / sharp rates = NOT CLAIMED
finite-beta deterministic Lyapunov structure = NOT CLAIMED (typed D1)
variable G(theta) = NOT CLAIMED
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v6 wave 2026-07-03: SR-M1 attacked as the
  primary target and UPHELD - the auditor verified the coupling, the
  start-uniformity, and that the window iteration uses fixed windows
  only; the closure-attraction hypothesis was identified as the honest
  classical form and DISCHARGED via branch arithmetic at level 2 kappa,
  lead-corrected at N = 4; all findings integrated)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data (from M1a)

```text
b_beta = b_inf + beta^-1 d,   b_inf = -grad J + ell,
ell(theta) = A(theta) grad J(theta),   d(theta) = Div_col A(theta),
<ell(theta), grad J(theta)> = 0 at every point;
rho_beta invariant for every smooth field; topology transferred verbatim.
From P0: for admissible k with C1-SUB(k), A_k = the unique component of
{J < 2 kappa} in Sigma_k; unique internal attractor C_k for any H-LYAP flow.
```

## Lemma M1b.1 (the LIMIT flow has the full Lyapunov structure)

Along `x' = b_inf(x)`:

```text
dJ/dt = -|grad J|^2 + <grad J, A(theta) grad J> = -|grad J|^2
```

(POINTWISE antisymmetry - the cancellation needs no constancy).  Zero set:
`|(I - A(theta))v|^2 = |v|^2 + |A(theta)v|^2 > 0` for `v != 0` at every
point, so `b_inf = 0` iff `grad J = 0`.  Hence H-LYAP of Theorem P0.4
HOLDS for the limit flow of EVERY smooth antisymmetric field: same
equilibria, same decay profile, attractors C_k with the same stability.
(The FINITE-beta flow `x' = b_beta(x)` is NOT claimed to descend J: the
`beta^-1 <grad J, d>` term has no sign.  This is typed D1 and is exactly
what SR-M1 below is for.)  QED.

## Lemma M1b.2 (action-energy bound for the limit functional)

For `I_T(phi) = (1/4) int_0^T |phi' - b_inf(phi)|^2 dt` (the limit-drift
rate functional; its LDP role is certified by SR-M1 below) and every
absolutely continuous phi:

```text
|phi' - b_inf|^2 = |(phi' - ell) + grad J|^2
                 = |phi' - ell - grad J|^2 + 4 <phi', grad J>
```

(completed square; the cross term `<ell(phi(t)), grad J(phi(t))>` vanishes
AT EVERY TIME by pointwise antisymmetry).  Dropping the nonnegative term
and integrating the telescoping second term:

```text
I_T(phi) >= J(phi(T)) - J(phi(0)),
```

identical to the reversible and constant-skew bounds.  QED.

## Lemma M1b.3 (boundary level - unchanged)

`J = 2 kappa` on the boundary of `A_k`, and for a continuous path started
in `A_k`: `tau_exit(A_k) = tau_hit({J >= 2 kappa}) <= tau_hit(Delta)`.
(Verbatim S2.3: purely topological; T1.2a via M1a.4.)  QED.

## Standard External Input SR-M1 (named, NEW - with mechanism sketch)

Statement used: for the small-noise family
`dX = b_beta dt + sqrt(2 beta^-1) dW` on a compact smooth manifold with
`b_beta = b_inf + beta^-1 d`, b_inf and d smooth, the sample-path LDP and
the Freidlin-Wentzell rough exit bounds hold with the LIMIT-drift data:
rate functional `(1/4) int |phi' - b_inf|^2`, and for D a connected open
domain, positively invariant under the LIMIT flow with unique internal
attractor K (compact, stable, all limit-flow trajectories from the
CLOSURE of D converge to K - in particular the limit flow has no rest
point on the boundary of D) and quasipotential lower bound `V(q -> boundary of D) >= V_0(q)`:

```text
liminf beta^-1 log E_q[ tau_exit(D) ] >= V_0(q)
P_q( tau_exit(D) <= exp(beta (V_0(q) - delta)) ) -> 0   for every delta > 0.
```

Mechanism sketch (recorded so the import is inspectable, NOT a
reproduction of the machinery): couple X^beta (drift b_beta) and Y^beta
(drift b_inf) with the SAME Brownian path and the same start; the noise
terms cancel exactly (additive, identical coefficient), so the difference
obeys a pathwise ODE bound and Gronwall gives

```text
sup_{[0,T]} dist(X, Y) <= beta^-1 ||d||_inf T e^{L T}   (deterministic),
```

with L the Lipschitz constant of b_inf - vanishing as beta -> infinity for
every fixed window T.  Hence the two families are exponentially
equivalent on every fixed window, UNIFORMLY over starting points (the
bound is deterministic and start-independent), share the (uniform) LDP
with the b_inf rate functional, and the window-iterated FW rough exit
estimates - which invoke the LDP only on fixed beta-independent windows,
chained by the strong Markov property - transfer with the limit-flow
attractor hypotheses.  Hypothesis mapping:

```text
compact smooth manifold = T^N                                     : HOLDS
b_inf, d smooth (hence Lipschitz; ||d||_inf < infinity)            : HOLDS (M1a, compactness)
uniform drift gap = beta^-1 ||Div_col A||_inf -> 0                 : HOLDS
D = A_k positively invariant under the LIMIT flow                  : HOLDS (M1b.1 + P0.4(i))
unique internal attractor K = C_k, compact, stable (limit flow)    : HOLDS (M1b.1 + P0.4(ii,iii))
no limit-flow rest point on the boundary of A_k (closure attraction)
  : HOLDS - rest points of b_inf = Crit(J) (M1b.1), the boundary lies
  in {J = 2 kappa} (M1b.3), and Crit(J) misses that level for N >= 3
  by the P0.2 branch arithmetic at level 2 kappa: p = 0 forces
  cos(2 pi k/N) = 1 - 2/N, and by Niven (a rational cosine of a
  rational angle lies in {0, +-1/2, +-1}) the only candidate in range
  N >= 3 is N = 4 with value 1/2, excluded directly since
  cos(pi k / 2) is in {0, +-1}; p = 1 forces c = (N-2)/(N-2p) = 1, a
  single pi-bond with all other bonds 0, violating the cyclic
  constraint and lying on Delta; p >= 2 with 2p < N forces
  c = (N-2)/(N-2p) > 1, impossible for a cosine; 2p >= N gives, with
  the low-branch convention c >= 0, J >= kappa N >= 3 kappa; moreover
  grad J != 0 on the boundary, so it is a smooth level hypersurface
  (audit-wave discharge; lead-corrected at N = 4; case split completed
  and conventions pinned at the C-1 Opus wave)
V_0(q) = 2 kappa - J(q) (whole-path telescoping bound)             : HOLDS (M1b.2 + M1b.3)
```

Non-reproduction of the LDP/FW machinery is recorded (SR discipline);
sharp prefactors and upper bounds are explicitly NOT imported.  This row
is the campaign's genuinely new import and is flagged as the primary
audit target.

## Theorem M1b.4 (barrier robustness under every smooth field)

For EVERY smooth antisymmetric field A(theta), every admissible k with
C1-SUB(k), every `q in A_k`, every `delta > 0`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_k) ] >= 2 kappa - J(q)
P_q( w(theta_t) = k  for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1.
```

Proof.  The event chain is verbatim S2.4 (purely topological, transferred
by M1a.4): `tau_exit(Sigma_k) >= tau_exit(A_k)` pathwise and
`{w = k on [0,T]}` contains `{tau_exit(A_k) > T}` via M1b.3.  Apply SR-M1
with `D = A_k`, `V_0(q) = 2 kappa - J(q)`,
`T = exp(beta (2 kappa - J(q) - delta))`.  QED.

Reduction check: constant A gives `d = 0`, SR-M1 degenerates to SR-S2, and
M1b.4 reduces to Theorem S2.4 exactly.

## Corollary M1b.5 (what M1b says, mathematics only)

The topological protection constant `2 kappa` (lower bound) is invariant
not only under constant non-reversible perturbations (Lane-S) but under
ARBITRARY SMOOTH STATE-DEPENDENT MODULATION of the antisymmetric geometry:
within the program's G = I class, no smooth choice of A(theta) - however
the modulation depends on the configuration - can lower the certified
persistence rate of the topological label.  The pointwise identity
`<A(theta) v, v> = 0` carries the entire load.

## Honest Boundary (recorded, not claimed)

```text
NO matching upper bounds (whether some field CHANGES the true rate is not
  claimed in either direction).
NO sharpness of 2 kappa (saddle heights not computed).
NO finite-beta Lyapunov claims (typed D1; only the limit flow descends J).
NO variable G(theta): the diffusion geometry is untouched; changing G
  changes the rate functional and the quasipotential - different lane.
SR-M1 is a NEW named input (beta-dependent drift); its mechanism is
  sketched, not reproduced.
```

## False Inference Firewall

```text
lower-bound invariance => rates unchanged under state-dependent skew : BLOCKED
M1b => variable-G robustness : BLOCKED
M1b => feedback/readout-dependent drift statements (M3) : BLOCKED
robustness => any gauge/current/physics reading : BLOCKED (firewall)
```

## Verdict

```text
Lane-M1 State-Dependent Exit Robustness v1 = M1b-PINNED
the barrier constant 2 kappa = INVARIANT UNDER EVERY SMOOTH ANTISYMMETRIC
  FIELD (lower bound, all admissible sectors)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-m1-state-dependent-persistence-separation-v1.md
```
