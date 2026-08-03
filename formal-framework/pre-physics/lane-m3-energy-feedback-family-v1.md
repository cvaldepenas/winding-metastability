# Lane-M3 Energy-Feedback Family v1

Status:

```text
Lane-M3 Energy-Feedback Family v1 = M3a-PINNED / CONTROLLED FAMILY
  DECLARED + INVARIANCE + FLAT-MODE IMMUNITY + THE MEASURABILITY FACT /
  NO PHYSICS CLAIMS / NO AGENCY CLAIMS
campaign = gate-v9 stage M3a; on the Lane-C single-loop pair (L-A2f)
maintenance theorem (M3b) = NOT CLAIMED HERE
control vocabulary = the DECLARED mathematical sense only: "control law"
  = a drift term in a declared class; "senses" / "blind" = measurability
  statements; nothing more
general state-feedback / topology-sensing controls = NOT IN SCOPE
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v9 dual-lens wave 2026-07-03: both lenses
  independently caught the SAME MAJOR - the M3a.5 measurability
  conclusion needed pushforward equivalence, supplied by the
  no-critical-value step from P0.2; boundary-level legs made explicit;
  control-is-function-of-J slippage repaired in the reading; lemma
  nickname dropped; all findings integrated)
assurance now ALSO = L-A2f (phase C-4 dual-lens Opus blind wave
  2026-07-03: 2/2 GRANT - the repaired measurability proof re-attacked
  and UPHELD (pushforward equivalence, boundary leg, exceptional sets
  all verified; C1-SUB(k != 0) nonvacuity checked at N >= 10); the
  rho~rho_c seam closed; brief = governance/c4-la2f-brief-gate-v9-surface-v1.md;
  record = governance/c4-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Controlled Family (declared)

On the Lane-C pair (`T^N`, `J = kappa sum_i (1 - cos d_i)`, N >= 3),
fix a budget `b > 0` and a transition width `eta in (0, 2 kappa)`, and
declare the ENERGY-FEEDBACK CLASS:

```text
G(b, eta) = { g in C^infinity(R) :  |g| <= b,  g' >= 0,
              g = -b on (-infinity, 2 kappa - eta],
              g = +b on [2 kappa, +infinity) }
```

(nonempty: standard smooth monotone step).  For `g in G(b, eta)`:

```text
control potential  U_c = g(J(theta))       (a function of the SMOOTH
                                            scalar readout J)
controlled energy  E_c = J + U_c = h(J),   h(t) = t + g(t),
                                            h' = 1 + g' >= 1 > 0
controlled pair    rho_c ~ exp(-beta E_c),
                   L_c f = beta^-1 rho_c^-1 div(rho_c grad f)
SDE                d theta = -grad E_c dt + sqrt(2 beta^-1) dW
                           = [ -grad J  +  u(theta) ] dt + noise,
                   u(theta) = -g'(J(theta)) grad J(theta)
```

The feedback reading (mathematics only): the added drift u is a
CLOSED-LOOP law - it is a fixed function of the state THROUGH the
scalar readout J(theta), with gain g'(J) and direction -grad J.  The
budget b bounds the control POTENTIAL's sup-norm; the drift magnitude
`|u| <= (sup g') sup|grad J|` is finite but is NOT the budgeted
quantity (typed honestly; the two budgets differ).

## Lemma M3a.1 (wellposedness + invariance)

E_c is smooth on the compact T^N (g, J smooth), so the standard family
applies (unique strong solution, global, conservative; diffusion
beta^-1 I - the control enters only the drift; core + uniqueness named
inputs): `rho_c` is THE invariant probability measure of the controlled
pair, for every g in the class.  QED.

## Lemma M3a.2 (exact structural transfer)

h is strictly increasing (h' >= 1), hence a homeomorphism of R.
Consequently, for every level c:

```text
{E_c < h(c)} = {J < c}      (LITERALLY the same subsets of T^N)
Crit(E_c) = Crit(J)         (grad E_c = h'(J) grad J, h' > 0)
E_c-critical levels = h(J-critical levels)
```

In particular the sublevel components A_k of `{J < 2 kappa}` ARE the
components of `{E_c < h(2 kappa)}`, and the critical circles C_k are
unchanged.  QED.

## Theorem M3a.3 (topology transfer + controlled barrier)

Sectors, windings and Delta are state-space objects - unchanged.
Barrier: on Delta, `J >= 2 kappa`, so `E_c = h(J) >= h(2 kappa) =
2 kappa + b` (g = +b there).  Sector purity for the controlled energy:
components of `{E_c < h(2 kappa)}` = components of `{J < 2 kappa}`
(M3a.2), on which w is constant.  Changing sector along a continuous
path forces controlled energy `>= 2 kappa + b`.  Path continuity: M3a.1.
QED.

## Theorem M3a.4 (flat-mode immunity: the control never touches Phi)

For EVERY g in the class:

```text
sum_i dE_c/dtheta_i = h'(J) sum_i dJ/dtheta_i = 0   identically,
```

so the total phase obeys `d Phi = sqrt(2 N beta^-1) dB` exactly (an
autonomous Brownian motion on the circle), and since `E_c = h(J)` is
invariant under the global rotation, `rho_c` is rotation-invariant and
`int e^{i Phi} drho_c = 0`.  Hence the flat-mode readout `F = e^{i Phi}`
decorrelates at the EXACT UNCONTROLLED rate:

```text
| E_q[ F(theta_t) ] - int F drho_c | = exp(-N t / beta)
```

for every starting point, every budget b, every g.  The control class
is structurally incapable of touching the flat mode (its drift is
proportional to grad J, which is orthogonal to the constant vector).
QED.

## Lemma M3a.5 (the label is not sigma(J)-measurable)

For every admissible `k != 0` with C1-SUB(k), the winding w is NOT a
function of J, even up to rho-null sets.  The open interval
`(m_k, 2 kappa)` lies in the image `J(A_k)` (J is continuous on the
connected A_k, attains its minimum m_k on C_k, and equals 2 kappa on
the nonempty boundary of A_k - elementary: <= by continuity from
inside; >= since a boundary point with J < 2 kappa would lie in the
open component A_k itself; the boundary is nonempty because A_k is a
proper open subset of the connected T^N) AND in `J(A_0)` (same
argument, m_0 = 0).  So the J-preimage of `(m_k, 2 kappa)` meets
`Sigma_k` and `Sigma_0` in the nonempty open sets
`O_k = A_k intersect J^-1((m_k, 2 kappa))` and
`O_0 = A_0 intersect J^-1((m_k, 2 kappa))`, on which w takes the
distinct values k and 0.  Moreover `(m_k, 2 kappa)` contains NO
critical value of J on A_k or A_0 (P0.2 + P0.2b: the internal critical
levels are m_k and 0), so J is a submersion on both open sets and both
J-pushforwards of rho are equivalent to Lebesgue measure on
`(m_k, 2 kappa)` (smooth positive density, nonvanishing gradient,
coarea); a measurable phi with `phi(J) = w` rho-a.e. would then
satisfy `phi = k` AND `phi = 0` Lebesgue-a.e. on `(m_k, 2 kappa)` -
contradiction.  (The same conclusion holds with rho_c in place of rho:
the two measures are mutually equivalent - both smooth strictly
positive densities on the compact T^N - so a.e. statements transfer;
C-4 note, closing the passive-vs-controlled measure seam.)  (MAJOR repair at the gate-v9 wave, caught by both
lenses: the rho-positivity of the two sets alone does not preclude
phi when the pushforwards are mutually singular; the no-critical-value
step supplies their equivalence.)  QED.

Reading (mathematics only): every control in the class senses the
state only through J - its potential U_c = g(J), its energy E_c = h(J)
and its scalar gain g'(J) are measurable functions of J alone (the
drift adds only the fixed actuation direction -grad J, which is part
of the class definition, not of the sensed information) - while the
label w is NOT a measurable function of J.  The scalar readout channel
through which the class is parameterized provably cannot recover the
label's value.  This is a measurability statement about a declared
drift class; nothing more is asserted.

## What M3a Does And Does Not Establish

```text
established = the controlled family is well-posed with THE invariant
  measure rho_c; exact structural transfer (same critical set, same
  sublevel components); controlled barrier 2 kappa + b on Delta;
  flat-mode immunity at every budget; the measurability fact
NOT established = any persistence/maintenance statement (M3b); anything
  about general state-feedback or w-sensing controls; optimality of
  anything; physics or agency of any kind
```

## False Inference Firewall

```text
"control/senses/blind" => agency claims : BLOCKED (declared drift class
  + measurability statements only)
flat-mode immunity => the controlled process mixes like the passive
  one : BLOCKED (one readout; rates of other observables not claimed)
same critical set => same exit rates : BLOCKED (that is M3b's business,
  and the rates CHANGE - that is the point)
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-M3 Energy-Feedback Family v1 = M3a-PINNED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-m3-maintenance-theorem-v1.md
```
