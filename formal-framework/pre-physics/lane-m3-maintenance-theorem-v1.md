# Lane-M3 Maintenance Theorem v1

Status:

```text
Lane-M3 Maintenance Theorem v1 = M3b-PINNED / THE MAINTENANCE THEOREM:
  BOUNDED ENERGY-FEEDBACK EXTENDS CERTIFIED LABEL PERSISTENCE BY THE
  FULL BUDGET (RATE + 2b IN THE DEEP REGION) / NO PHYSICS CLAIMS / NO
  AGENCY CLAIMS
campaign = gate-v9 stage M3b (final build stage); uses M3a, the Lane-C
  certified surface (A_k, C_k, P0.4, the C-1-hardened closure
  discharge - all L-A2f), and the classical reversible action bound
optimality of the 2b gain = NOT CLAIMED (needs upper bounds)
deep region {J <= 2 kappa - eta} = where the full gain is stated; the
  transition zone gets the interpolated gain (typed)
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v9 dual-lens wave 2026-07-03: zero false
  theorems; language leaks repaired (CERTIFIED qualifiers on rates and
  the gap; "protects" scoped to the measurability fact); transition
  zone re-typed [0, 2b]; deep-region nonvacuity typed; SR-M3
  conclusion displays and provenance pointers added; all findings
  integrated)
assurance now ALSO = L-A2f (phase C-4 dual-lens Opus blind wave
  2026-07-03: 2/2 GRANT - zero artifact-side errors; the single
  convergent finding (the 2b figure needs its deep-region scope) was
  BRIEF-side - this artifact already carries the qualifier in M3b.4;
  quasipotential arithmetic, event chain, and extension arithmetic all
  re-derived; brief = governance/c4-la2f-brief-gate-v9-surface-v1.md;
  record = governance/c4-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data (from M3a and the certified surface)

Controlled pair: `E_c = h(J)`, `h = id + g`, `g in G(b, eta)`,
`h' >= 1`; same critical set and sublevel components as J (M3a.2);
controlled barrier `E_c >= h(2 kappa) = 2 kappa + b` on Delta (M3a.3);
`rho_c` THE invariant measure (M3a.1).  From the certified Lane-C
surface: A_k, C_k, the P0.4 flow theorem (any smooth b with H-LYAP - J
a strict Lyapunov function whose derivative vanishes exactly on
Crit(J) - has A_k positively invariant, all trajectories converging to
C_k, Lyapunov-stable); `J = 2 kappa` on the boundary of A_k (elementary: <= by continuity
from inside the sublevel set; >= since a boundary point with
J < 2 kappa would lie in the open component A_k itself); Crit(J)
misses the level 2 kappa (proven in the C-1-hardened closure rows of
lane-s-skew-exit-time-robustness-v1.md SR-S2 and
lane-m1-state-dependent-exit-robustness-v1.md SR-M1: branch arithmetic
at the level + Niven with N = 4 excluded directly); the FW rough
exit bounds in closure form (SR-T2/SR-S2 family, C-1-hardened).

## Lemma M3b.1 (verbatim attractor transfer to the controlled flow)

The controlled deterministic flow is `x' = -grad E_c = -h'(J) grad J`.
Along it, `dJ/dt = -h'(J) |grad J|^2 <= 0`, vanishing exactly on
Crit(J): H-LYAP holds WITH J ITSELF as the Lyapunov function, so
Theorem P0.4 applies DIRECTLY (no reproof): A_k is positively
invariant, every trajectory from A_k converges to C_k, and C_k is
Lyapunov-stable - for every g in the class.  Closure attraction: the
boundary of A_k sits at `J = 2 kappa` where there are no critical
points (C-1 discharge), so no rest points of the controlled flow lie on
the boundary (`grad E_c = h'(J) grad J != 0` there); at a non-critical
boundary point `dJ/dt < 0` strictly pushes into `{J < 2 kappa}`, and a
closure point of A_k inside the open sublevel set lies in A_k (open
component argument); internal attraction finishes.  QED.

## Lemma M3b.2 (controlled action-energy bound)

The controlled pair is REVERSIBLE with energy E_c, so the classical
completed square against `grad E_c` (the certified identity family)
gives, for the rate functional `I_T(phi) = (1/4) int |phi' +
grad E_c(phi)|^2 dt`:

```text
I_T(phi) >= E_c(phi(T)) - E_c(phi(0))     for every path phi.
```

Whole-path telescoping: wandering cannot cheapen the E_c-increment.  QED.

## Standard External Input SR-M3 (named)

The reversible FW rough exit bounds (closure form, C-1-hardened family)
applied to `D = A_k` for the controlled pair, with rows:

```text
compact manifold; smooth drift; uniform nondegenerate diffusion : HOLD (M3a.1)
D = A_k positively invariant under the controlled flow           : HOLDS (M3b.1)
unique internal attractor C_k, compact, stable, closure
  attraction (no boundary rest points)                           : HOLDS (M3b.1)
quasipotential lower bound V_0(q) = h(2 kappa) - h(J(q)): every
  path from q to the boundary of A_k ends at J = 2 kappa, i.e.
  E_c = h(2 kappa); the M3b.2 bound telescopes over the whole
  path                                                           : HOLDS (M3b.2)
```

Conclusions drawn (both forms of the C-1-hardened family, as stated
from-q in the certified SR-T3 probability form of
lane-c-sector-persistence-readout-theorem-v1.md and the SR-S2/SR-M1
expectation forms - the probability leg is the one that consumes the
attractor/closure rows of M3b.1):

```text
liminf beta^-1 log E_q[ tau_exit(D) ] >= V_0(q)
P_q( tau_exit(D) <= exp(beta (V_0(q) - delta)) ) -> 0   for every delta > 0
```

## Theorem M3b.3 (THE MAINTENANCE THEOREM)

For every budget `b > 0`, every `g in G(b, eta)`, every admissible k
with C1-SUB(k), every `q in A_k`, every `delta > 0`, the controlled
pair satisfies:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_k) ]
    >= h(2 kappa) - h(J(q))  >=  2 kappa - J(q)
P_q( w(theta_t) = k for all t in [0, exp(beta (h(2 kappa) - h(J(q)) - delta))] ) -> 1,
```

and in the DEEP REGION `J(q) <= 2 kappa - eta` (nonempty precisely
when `m_k <= 2 kappa - eta` - always for k = 0, where m_0 = 0; typed
nonvacuity in the style of the C1-SUB audit note) the controlled
CERTIFIED rate - the exhibited lower bound - is EXACTLY the passive
certified rate plus the full budget:

```text
h(2 kappa) - h(J(q)) = (2 kappa + b) - (J(q) - b) = 2 kappa - J(q) + 2b.
```

Proof.  The event chain is the certified Lane-C chain (exiting Sigma_k
forces hitting Delta, where `E_c >= h(2 kappa)` by M3a.3; for
continuous paths from A_k the hitting time of `{E_c >= h(2 kappa)}` =
`{J >= 2 kappa}` (M3a.2, same sets) equals `tau_exit(A_k)`); apply
SR-M3 with `V_0(q) = h(2 kappa) - h(J(q))`.  The general inequality
`h(2 kappa) - h(J(q)) >= 2 kappa - J(q)` is `g(2 kappa) - g(J(q)) >= 0`
(g nondecreasing); the deep-region identity is `g(J(q)) = -b`,
`g(2 kappa) = +b`.  QED.

## Corollary M3b.4 (extension over the passive bound)

For q in the deep region, the certified persistence horizon of the
controlled pair exceeds the certified passive horizon by the factor

```text
exp( beta (2b - delta') )   for every delta' > 0 and beta large:
```

bounded feedback through the smooth energy readout extends the
topological label's certified persistence EXPONENTIALLY in the budget
times beta.  (Reading, mathematics only: within this declared class,
the CERTIFIED maintaining bound beats the certified lasting bound by
exactly the budget - and by M3a.5 the scalar readout through which the
law senses the state provably cannot recover the label whose certified
persistence it extends.)  QED (arithmetic from M3b.3 vs the passive T2/T3 bounds).

## Corollary M3b.5 (separation under feedback)

On the SAME controlled process, for every g in the class: the flat-mode
readout `F = e^{i Phi}` forgets at the EXACT UNCONTROLLED rate N/beta
(M3a.4 - the class cannot touch the flat mode), while the label
persists to `exp(beta(h(2 kappa) - h(J(q)) - delta))`.  The separation
ratio gains the factor `exp(beta(2b - delta'))` for every `delta' > 0`
in the deep region (M3b.4 arithmetic): feedback widens the CERTIFIED
persistence-forgetting gap without moving the forgetting side at all
(the forgetting side is an exact unchanged identity - M3a.4; the
persistence side is a lower-bound certificate, so nothing is claimed
about true-rate gaps).  QED.

## Honest Boundary (recorded, not claimed)

```text
METHOD-LEVEL remark on saturation: within this LOWER-BOUND certificate,
  a sup-norm budget b cannot contribute more than osc(U_c) <= 2b to the
  quasipotential increment (E_c-increment = J-increment + U_c-increment,
  and the U_c-increment between any two points is at most 2b) - the
  class achieves the maximum 2b.  This is a statement about the
  CERTIFICATE, not about true exit rates (no upper bounds anywhere).
OPTIMALITY of 2b among ALL bounded controls (non-gradient, non-energy-
  feedback): NOT CLAIMED (needs upper bounds and a wider class).
transition zone (2 kappa - eta < J(q) < 2 kappa): the gain interpolates
  as g(2 kappa) - g(J(q)) in [0, 2b] (both endpoints attainable at
  interior points of the zone for suitable class members: g may reach
  +b before 2 kappa, giving zero gain there, or remain at -b past
  2 kappa - eta, giving the full 2b); typed, not hidden.
general state-feedback u(theta); w-sensing (discontinuous) controls;
  feedback on the coupled pair (M2 x M3 composition)  = TYPED TAIL.
no sharpness; no upper bounds; no skew; no physics; no agency.
```

## False Inference Firewall

```text
maintenance theorem => agency/life/purpose claims : BLOCKED (a drift
  class and a rate bound; the reading sentences are reading aids)
+2b achieved => +2b optimal over all controls : BLOCKED (typed above)
extension factor => true rates known : BLOCKED (lower bounds only)
blind maintenance => intentionality : BLOCKED (measurability fact)
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-M3 Maintenance Theorem v1 = M3b-PINNED
gate-v9 build stages M3a -> M3b = COMPLETE (all L-A0)
the agency-ladder rung M3 first target statement = LANDED (narrow:
  energy-feedback class, deep region, lower bounds)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = dual-lens L-A1 wave, then
  governance/gate-v9-campaign-closeout-v1.md
```
