# Lane-C Attractor Pinning General-k v1

Status:

```text
Lane-C Attractor Pinning General-k v1 = P0-PINNED / CRITICAL-POINT
  CLASSIFICATION BELOW THE BARRIER (ALL ADMISSIBLE k) / NO PHYSICS CLAIMS
campaign = gate-v5 stage P0 (Lane-C tail item 1); uses T1 (L-A2f) and the
  C1 schema of the completion package
upgrades = row C1-ATTR(k): ASSUMPTION-EXPLICIT (k != 0) -> PROVEN (all admissible k under C1-SUB(k));
  boundary row "m_k >= 2 kappa NOT COVERED" -> RESOLVED-EMPTY (corollary)
sharpness of 2 kappa from Sigma_k = STILL NOT CLAIMED
skew dynamics = NOT CLAIMED HERE (P0.4 states the Lyapunov-flow form for
  later import by Lane-S; the skew instantiation happens in Lane-S)
assurance now = L-A1 (gate-v5 wave 2026-07-03: statement-level zero errors; / PARTIAL L-A4 (2026-07-05): P0.2's classification-below-the-barrier machine-checked in Lean 4 GIVEN the critical equation (lean/LabelTowerCore.lean, sorry-free, standard-axioms-only; P0.1 DISCHARGED 2026-07-05 campaign #4: criticality-on-the-winding-slice <-> equal sines machine-checked in slice AND angle-variation form, with the angle<->bond variation range bridge as a Lean lemma, and the P0.1+P0.2 composition classification_below_barrier_critical sealed end-to-end; remaining prose-level = the definitional torus-J <-> bond-E identification and the kappa != 0 bare-sine/dE equivalence (the blind lens's catch); the off-Delta clause is ASSUMED via the open-interval range hypothesis, not derived; k >= 0 only - negative windings by the reflection d -> -d, not mechanized; campaign #8 2026-07-10 added the COMPOSED CRITICAL winding-1 corollary winding_one_classification_critical - dE-criticality through critical_slice_iff into the campaign-7 classification, k = 1, one-directional, open-branch)
  the P0.4(iii) proof step was repaired with the auditor's corrected
  argument, statement independently re-proved; all findings integrated)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data (imports)

From T1 (L-A2f): the pair on `T^N` (N >= 3) with
`J(theta) = kappa sum_i (1 - cos(theta_{i+1} - theta_i))`, bond differences
`d_i = theta_{i+1} - theta_i`, antipodal set `Delta`, winding `w`, sectors
`Sigma_k` nonempty exactly for `|k| <= floor((N-1)/2)`.
From the completion package: `e_k` equidistributed, `m_k = N kappa (1 -
cos(2 pi k / N))`, row C1-SUB(k) `m_k < 2 kappa`, component `A_k` of
`{J < 2 kappa}` containing `e_k`, with `A_k subset Sigma_k`.
Notation: `C_k` = the rotation circle of `e_k`, i.e. the set of
`theta_j = c + 2 pi k j / N (mod 2 pi)`, `c in [0, 2 pi)`.

## Standard External Input SR-P0 (named)

Omega-limit facts for a smooth flow on a compact manifold with a smooth
strict Lyapunov function (LaSalle): omega-limit sets are nonempty, compact,
connected, invariant, and contained in the set where the Lyapunov derivative
vanishes; along the flow the Lyapunov function is non-increasing.
Hypothesis rows: smooth complete flow on compact `T^N` : HOLDS (smooth
vector fields on compact manifolds are complete); strict Lyapunov function =
J with `dJ/dt = -|grad J|^2` for the gradient flow : HOLDS.

## Lemma P0.1 (critical point equation)

`grad J(theta) = 0` iff all bond sines agree:
`sin d_1 = sin d_2 = ... = sin d_N`.

Proof.  `dJ/dtheta_i = kappa (sin d_{i-1} - sin d_i)` (the two bonds
containing `theta_i`); the cyclic chain of equalities `sin d_{i-1} = sin d_i`
for all i is equivalent to all sines agreeing.  QED.

## Theorem P0.2 (classification below the barrier)

Let `theta` be a critical point of J with `J(theta) < 2 kappa`.  Then all
bonds are EQUAL to a common value `d in (-pi, pi)`, `theta` lies off `Delta`
with winding `k = N d / (2 pi)`, admissible, and `theta in C_k` with
`J(theta) = m_k`.  Consequently:

```text
Crit(J) intersect {J < 2 kappa} = union over admissible k with m_k < 2 kappa
  of the circles C_k, and each C_k consists entirely of critical points
  at level m_k.
```

Proof.  Let s be the common sine (Lemma P0.1) and `c = sqrt(1 - s^2) in
[0, 1]`; each bond has `cos d_i = +c` (low branch) or `-c` (high branch);
when c = 0 the branches coincide and every bond is labeled low-branch (any
labeling satisfies the identity below).  Let p = number of high-branch
bonds.  Then

```text
J = kappa sum_i (1 - cos d_i) = kappa [ N - (N - 2p) c ].
```

If `2p >= N` and `p >= 1`: `-(N - 2p) c >= 0`, so `J >= kappa N >= 3 kappa
> 2 kappa` (N >= 3).  If `1 <= p` and `2p < N`: using `c <= 1`,
`J >= kappa [N - (N - 2p)] = 2 p kappa >= 2 kappa`.  Both contradict
`J < 2 kappa`; hence p = 0.  Then every bond has `sin d_i = s` AND
`cos d_i = c`, so all bonds are equal as elements of `R / 2 pi Z`; call the
value d.  If `d = pi` then `cos d = -1 < 0`, while p = 0 forces
`cos d = +c >= 0` - contradiction; hence `d != pi`, the
representative lies in `(-pi, pi)`, `theta` is off `Delta`, and the winding
is `w = N d / (2 pi) =: k` (each d-term equals d), which forces
`d = 2 pi k / N` and `theta in C_k` (all bonds equal d determines theta up
to the global rotation constant), with `J(theta) = N kappa (1 - cos d) =
m_k < 2 kappa`.  Conversely every point of C_k has all bonds equal, hence
all sines equal, hence is critical (Lemma P0.1), at level m_k.  Windings of
distinct admissible k are distinct, so the union is disjoint.  QED.

## Corollary P0.2b (sector sublevel dichotomy - resolves a boundary row)

For every admissible k:

```text
if m_k < 2 kappa : {J < 2 kappa} intersect Sigma_k = A_k  (a single
  connected component, containing C_k)
if m_k >= 2 kappa : {J < 2 kappa} intersect Sigma_k = EMPTY
```

Proof.  Any connected component U of the open set `{J < 2 kappa}` misses
`Delta` (T1.2a), so w is constant on U, say k; U is forward-invariant under
the gradient flow (J non-increasing along the continuous trajectory, which
therefore stays in `{J < 2 kappa}`; a trajectory point near its limit lies
in a ball inside `{J < 2 kappa}`, so limits taken inside the open sublevel
set stay in the same component).  By SR-P0 the omega-limit of any point of
U is a nonempty subset of `Crit(J) intersect {J < 2 kappa}` lying in U
(same-component argument as above).  Hence U contains critical points below
the barrier with winding k; by Theorem P0.2 these lie on C_k, so
`m_k < 2 kappa` and U meets the connected set C_k.  Since `C_k subset A_k`
(C_k is connected, contains e_k, and J = m_k < 2 kappa on it) and components
are disjoint-or-equal, U = A_k.  So: at most one component per sector, equal
to A_k, existing only when `m_k < 2 kappa`.  QED.

## Lemma P0.3 (Morse-Bott nondegeneracy of C_k)

At any point of C_k the Hessian of J is

```text
Hess J = kappa gamma L_N,   gamma = cos(2 pi k / N),
```

where `L_N = 2 I - S - S^T` is the graph Laplacian of the N-cycle (S = the
cyclic shift).  Under C1-SUB(k), `gamma > 1 - 2/N >= 1/3 > 0`, so Hess J is
positive semidefinite with kernel exactly `span(1)` = the tangent line of
C_k: C_k is a nondegenerate (Morse-Bott) critical circle whose transverse
Hessian is positive definite (minimum type).

Proof.  `d^2 J / dtheta_a dtheta_b = kappa [ cos d_{a-1} (delta_{b,a} -
delta_{b,a-1}) - cos d_a (delta_{b,a+1} - delta_{b,a}) ]`; on C_k all
`cos d_i = gamma`, giving `kappa gamma (2 delta_{ab} - delta_{b,a-1} -
delta_{b,a+1}) = kappa gamma (L_N)_{ab}`.  L_N has eigenvalues
`2 - 2 cos(2 pi m / N) >= 0` with kernel `span(1)` (connected cycle), and
`1` is the tangent of `c -> c 1 + e_k`.  C1-SUB(k) reads
`N (1 - gamma) < 2`, i.e. `gamma > 1 - 2/N`, and `N >= 3` gives
`1 - 2/N >= 1/3`.  QED.

## Theorem P0.4 (attractor row discharge, stated for flow import)

Let b be any smooth vector field on `T^N` with (H-LYAP): J is a strict
Lyapunov function for b whose derivative vanishes exactly on `Crit(J)`
(the gradient flow `b = -grad J` satisfies this with derivative
`-|grad J|^2`).  Then for every admissible k with C1-SUB(k):

```text
(i) A_k is positively invariant under the flow of b;
(ii) every trajectory started in A_k converges to the circle C_k
     (distance to the set tends to 0);
(iii) C_k is Lyapunov-stable: every neighborhood of C_k contains a
     positively invariant neighborhood.
```

Hence row C1-ATTR(k) of the completion package HOLDS for every admissible k
with C1-SUB(k): the unique internal attractor of A_k is C_k (compact,
stable, flat direction = the rotation).  The C1 conditional statement is
therefore UNCONDITIONAL under C1-SUB(k) alone (same SR-T2/SR-T3 inputs).

Proof.  (i) is the component argument of Corollary P0.2b (J non-increasing).
(ii) By SR-P0 the omega-limit is a nonempty subset of the vanishing set of
the Lyapunov derivative inside A_k, i.e. of `Crit(J) intersect A_k = C_k`
(Theorem P0.2 + Corollary P0.2b); if the trajectory did not converge to the
set C_k, some subsequence would stay at distance `>= epsilon` while its
limit points lie in C_k - a contradiction.  (iii) (Proof step repaired at the gate-v5 L-A1 wave: the auditor re-proved
the statement and supplied the corrected argument integrated here.)  For
any `x in A_k`, part (ii) gives `J(x) >= m_k`: J is non-increasing along
the trajectory of b (H-LYAP), whose omega-limit lies in C_k at level m_k.
Hence the minimum of J over A_k is m_k, attained exactly on C_k: a point
`x* in A_k` with `J(x*) = m_k` must be critical - otherwise the H-LYAP
derivative is strictly negative at x* and the trajectory of b takes J
strictly below m_k while staying in A_k, contradicting `J >= m_k` on A_k -
hence `x* in Crit(J) intersect A_k = C_k` (Theorem P0.2 + Corollary
P0.2b).  Now fix a neighborhood V of C_k and let `W_eta` = the component
of `{J < m_k + eta}` containing C_k; W_eta is open, contains C_k, and lies
in A_k once `m_k + eta < 2 kappa` (connected, meets A_k, inside the open
sublevel set).  If no W_eta were contained in V, then points
`x_eta in W_eta minus V` for eta -> 0 would accumulate (compactness of
T^N) at some x* with `J(x*) = m_k` (upper bound from `x_eta in W_eta`;
lower bound from `J >= m_k` on A_k, since `J(x*) < 2 kappa` places x*, a
limit of A_k points inside the open sublevel set, in A_k itself); the
complement of the open V is closed, so `x* notin V`, while the previous
paragraph gives `x* in C_k subset V` - contradiction.  Each W_eta is
positively invariant by the argument of (i).  QED.

## What P0 Does And Does Not Establish

```text
established = complete classification of critical points below the barrier;
  the sector sublevel dichotomy; the Morse-Bott spectral structure (P0.3)
  and Lyapunov stability (P0.4) of every C_k; the
  C1-ATTR(k) row for ALL admissible k with C1-SUB(k), for any flow with the
  H-LYAP property (gradient flow included)
NOT established = sharpness of 2 kappa from Sigma_k (saddle heights above
  the barrier are not computed); anything about sectors at or above the
  barrier beyond emptiness of their sublevel sets; any exit-time or
  persistence statement (those remain T2/T3/C1 with this row discharged);
  any skew statement (Lane-S instantiates H-LYAP there)
```

## False Inference Firewall

```text
pinning => sharp barrier from Sigma_k : BLOCKED (saddles not computed)
classification below 2 kappa => classification of all critical points : BLOCKED
H-LYAP flow form => any non-Lyapunov dynamics : BLOCKED
C1-ATTR(k) discharge => C1 rows beyond C1-SUB(k) range : BLOCKED (dichotomy:
  those sublevel sets are EMPTY; nothing further is claimed)
anything here => physics : BLOCKED (sectors are mathematical labels)
```

## Verdict

```text
Lane-C Attractor Pinning General-k v1 = P0-PINNED
row C1-ATTR(k) = PROVEN (all admissible k under C1-SUB(k)); completion
  package upgrade to be applied at gate-v5 integration
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-s-skew-pair-declaration-and-invariance-v1.md
```
