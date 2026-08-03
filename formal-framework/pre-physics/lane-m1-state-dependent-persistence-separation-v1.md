# Lane-M1 State-Dependent Persistence And Separation v1

Status:

```text
Lane-M1 State-Dependent Persistence And Separation v1 = M1c-PINNED /
  READOUT THEOREM + SEPARATION UNDER STATE-DEPENDENT SKEW (M1-CIRC CLASS,
  GENERAL SECTOR) / NO PHYSICS CLAIMS
campaign = gate-v6 stage M1c (final build stage); uses M1a, M1b, P0, and
  the C2/S3 lemma structure
M1-CIRC row (A(theta) 1 = 0 pointwise) = TYPED SUFFICIENT condition for
  the separation leg; NECESSITY IS NOT CLAIMED (unlike the constant case
  S3, where it was verified); persistence leg needs NO such condition
generic smooth readouts = STILL NOT CLAIMED
matching upper bounds = NOT CLAIMED
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v6 wave 2026-07-03: zero errors; reading
  re-quantified with C1-SUB(k); M1-CIRC witness-subclass phrasing;
  delta-range nonemptiness recorded; all findings integrated)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Theorem M1c.1 (persistence readout, every smooth field, general sector)

For every smooth antisymmetric field A(theta), the three legs of T3 hold
for the state-dependent skew process, with (iii) for every admissible
sector k with C1-SUB(k):

```text
(i) READOUT ADMISSIBILITY: verbatim (state-space facts + path continuity,
    which M1a.1 supplies).
(ii) EQUILIBRIUM NON-TRIVIALITY: verbatim - rho_beta is THE invariant
    measure of the state-dependent process (M1a.2 + named uniqueness
    input), so rho_beta(Sigma_k) > 0 for every admissible k is unchanged.
(iii) PERSISTENCE: for every admissible k with C1-SUB(k), q in A_k,
    delta > 0:
    P_q( w(theta_t) = k for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1.
```

Proof.  (i), (ii) as indicated; (iii) is the probability display of
Theorem M1b.4.  QED.

## The Separation Pair Under State-Dependent Skew

Total phase `Phi = sum_i theta_i mod 2 pi`, readout `F = exp(i Phi)`.

Lemma M1c.2 (flat-mode drift).  Under the M1a SDE:

```text
d Phi = [ -<A(theta) 1, grad J(theta)> + beta^-1 div(A(theta) 1)(theta) ] dt
        + sqrt(2 N beta^-1) dB
```

(the gradient part contributes `-sum_i dJ/dtheta_i = 0` identically, as
in C2.1; the
skew part contributes `<1, A grad J> = -<A 1, grad J>` pointwise; the
divergence part contributes `beta^-1 <1, Div_col A> = beta^-1 sum_i d_i
(A 1)_i = beta^-1 div(A 1)`; noise aggregation by the Levy
characterization as in C2.1).  QED.

Row M1-CIRC (typed, SUFFICIENT): `A(theta) 1 = 0 AT EVERY POINT`.  Then
BOTH drift terms vanish (`A 1 = 0` kills the first; `div(A 1) = div(0) =
0` kills the second) and `Phi` is an exact autonomous Brownian motion with
variance rate `2 N / beta`.

```text
M1-CIRC witness subclass (shows the class nonempty, genuinely
state-dependent): pointwise-circulant fields  A(theta) = sum_{m=1}^{floor((N-1)/2)} a_m(theta) (S^m - (S^m)^T)
with arbitrary smooth scalar functions a_m; each S^m - (S^m)^T kills the
constant vector, at every point.  Example: a_1(theta) =
sin(theta_1 - theta_2), all other a_m = 0.
NECESSITY of M1-CIRC for flat-mode autonomy is NOT CLAIMED here: the
drift is the SUM of two theta-dependent terms and could in principle
vanish by cancellation between them for special non-M1-CIRC fields; no
classification is attempted (honest boundary).
```

Lemma M1c.3 (exact decorrelation under M1-CIRC).  Verbatim C2.2/S3.3:
`E_q[F(theta_t)] = exp(i Phi(q)) exp(-N t / beta)` and
`int F drho_beta = 0` (the invariant measure is the SAME rho_beta - M1a.2 -
and is invariant under the global rotation, which multiplies F by
`exp(i N c)`).  QED.

## Theorem M1c.4 (separation theorem, state-dependent skew + general sector)

For every smooth antisymmetric field with `A(theta) 1 = 0` pointwise,
every admissible k with C1-SUB(k), every `q in A_k`, every `delta > 0`:
on one and the same process, for the SPECIFIC flat-mode readout
`F = exp(i Phi)` (the exact equality below is special to it; no claim
for generic smooth readouts),

```text
| E_q[ F(theta_t) ] - int F drho_beta | = exp(-N t / beta)
P_q( w(theta_t) = k for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1,
```

and for `delta in (0, 2 kappa - J(q))` (nonempty since `J(q) < 2 kappa`
on A_k) the ratio
`(N / beta) exp(beta (2 kappa - J(q) - delta))` diverges as
`beta -> infinity`.

Proof.  Lemma M1c.3 and Theorem M1c.1(iii).  QED.

Reading (mathematics only): the persistence-vs-forgetting separation is
robust to smooth state-dependent modulation of the non-reversible
geometry within the loop-symmetric class: however the modulation depends
on the configuration, the smooth readout still forgets on the polynomial
timescale while the topological label persists on the exponential one, in
every admissible sector with C1-SUB(k).

## Honest Boundary (recorded, not claimed)

```text
A(theta) 1 != 0: nothing claimed (the flat mode couples to the
  configuration through BOTH drift terms); the persistence leg M1c.1
  holds regardless.
NECESSITY of M1-CIRC: not claimed (see the row; contrast with S3, where
  necessity WAS verified for constant A).
generic smooth readouts / upper bounds / sharp rates: not claimed.
```

## False Inference Firewall

```text
M1-CIRC separation => arbitrary-field separation : BLOCKED
M1-CIRC sufficiency => M1-CIRC necessity : BLOCKED (typed above)
F-separation => generic smooth readouts mix fast : BLOCKED
separation => any gauge/current/physics reading : BLOCKED (firewall)
```

## Verdict

```text
Lane-M1 State-Dependent Persistence And Separation v1 = M1c-PINNED
gate-v6 build stages M1a -> M1b -> M1c = COMPLETE (all L-A1 after the
  gate-v6 wave)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = L-A1 audit wave, then
  governance/gate-v6-campaign-closeout-v1.md
```
