# Lane-S Skew Persistence And Separation v1

Status:

```text
Lane-S Skew Persistence And Separation v1 = S3-PINNED / READOUT THEOREM +
  SEPARATION UNDER SKEW (CIRCULANT CLASS, GENERAL SECTOR) / NO PHYSICS CLAIMS
campaign = gate-v5 stage S3 (final build stage); uses S1, S2, P0, and the
  C2 lemma structure of the completion package
S3-CIRC row (A 1 = 0) = TYPED CONDITION for the separation leg; persistence
  leg needs NO such condition
generic smooth readouts = STILL NOT CLAIMED (as in C2)
matching upper bounds = NOT CLAIMED
anti-quantization firewall = BINDING (sectors are mathematical labels)
assurance now = L-A1 (gate-v5 wave 2026-07-03: one MINOR phrasing error
  (undefined "metastable sector") fixed with the typed condition; the
  auditor also verified NECESSITY of A 1 = 0 for flat-mode autonomy via
  span grad J = 1-perp; all findings integrated)
assurance now ALSO = L-A2f (phase C-1 Opus blind brief wave 2026-07-03:
  2/2 GRANT AFTER TIGHTENINGS, zero theorem-level errors; the two briefs are governance/c1-la2f-brief-gate-v{5,6}-surface-v1.md; record =
  governance/c1-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Theorem S3.1 (persistence readout under skew, general sector)

For every constant antisymmetric A, the three legs of T3 hold for the skew
process, with (iii) upgraded to every admissible sector k with C1-SUB(k):

```text
(i) READOUT ADMISSIBILITY: unchanged verbatim (w is a state readout; its
    admissibility statement contains no dynamics beyond path continuity,
    which S1.1 supplies).
(ii) EQUILIBRIUM NON-TRIVIALITY: unchanged VERBATIM - rho_beta is
    invariant for the skew process (S1.2), and is THE invariant measure by
    the named uniqueness input S1.1(b), so rho_beta(Sigma_k) > 0 for every
    admissible k is the same statement as in T3(ii).
(iii) PERSISTENCE: for every admissible k with C1-SUB(k), every q in A_k,
    every delta > 0:
    P_q( w(theta_t) = k for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1.
```

Proof.  (i), (ii) as indicated.  (iii) is the probability display of
Theorem S2.4.  QED.

## The Separation Pair Under Skew

Total phase `Phi(theta) = sum_i theta_i mod 2 pi`, readout `F = exp(i Phi)`.

Lemma S3.2 (flat-mode drift under skew).  Under the skew SDE
`d theta = (-grad J + A grad J) dt + sqrt(2 beta^-1) dW`:

```text
d Phi = -<A 1, grad J> dt + sqrt(2 N beta^-1) dB
```

for a standard scalar Brownian motion B (the gradient part contributes
`-sum_i dJ/dtheta_i = 0` identically, as in C2.1; the skew part contributes
`<1, A grad J> = -<A 1, grad J>`).  QED.

Row S3-CIRC (typed): `A 1 = 0` (the constant vector is in the kernel of A).

```text
S3-CIRC holds for the ENTIRE circulant antisymmetric class - the natural
loop-symmetric skews: A circulant with first row (a_0, ..., a_{N-1}),
antisymmetry = a_0 = 0, a_m = -a_{N-m}; every row sums to sum_m a_m = 0
(terms cancel in pairs; for N even the middle term satisfies
a_{N/2} = -a_{N/2} = 0).  The class is nonempty and nontrivial for every
N >= 3: A = S - S^T (S = cyclic shift) is the basic loop current.
S3-CIRC also holds for any non-circulant antisymmetric A with zero row
sums (equivalently zero column sums: antisymmetry gives A^T 1 = -A 1, so
both conditions coincide with A 1 = 0).
```

Lemma S3.3 (exact decorrelation under S3-CIRC).  If `A 1 = 0`, then `Phi`
is an autonomous Brownian motion on the circle with variance rate
`2 N / beta` (Lemma S3.2), and for every starting point q:

```text
E_q[ F(theta_t) ] = exp(i Phi(q)) exp(-N t / beta),   int F drho_beta = 0
```

(the first display as in C2.2: `E[exp(i sigma B_t)] = exp(-sigma^2 t / 2)`
with `sigma^2 = 2 N / beta`; the second is unchanged from C2.2 because the
invariant measure is the SAME rho_beta (S1.2), rotation-invariant).  QED.

## Theorem S3.4 (separation theorem, skew + general sector)

For every constant antisymmetric A with `A 1 = 0`, every admissible k with
C1-SUB(k), every `q in A_k`, every `delta > 0`: on one and the same skew
process,

```text
the specific flat-mode readout F = exp(i Phi) forgets its initial value
  on timescale beta / N (EXACT equality, special to this readout - no
  claim for generic smooth readouts):
  | E_q[ F(theta_t) ] - int F drho_beta | = exp(-N t / beta);
the topological readout w persists exponentially:
  P_q( w(theta_t) = k for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1,
```

and for every `delta in (0, 2 kappa - J(q))` (nonempty since
`J(q) < 2 kappa` on A_k) the ratio of the persistence horizon to the
forgetting timescale, `(N / beta) exp(beta (2 kappa - J(q) - delta))`,
diverges as `beta -> infinity` (the restricted delta range makes the
exponent positive).

Proof.  Lemma S3.3 and Theorem S3.1(iii).  QED.

Reading (mathematics only): the persistence-vs-forgetting separation of the
completion package is not an artifact of reversibility, and not a
property of the zero sector alone: it survives the entire loop-symmetric
non-reversible family, in every admissible sector with C1-SUB(k), with the same explicit
rates on both sides.

## Honest Boundary (recorded, not claimed)

```text
A 1 != 0: the flat mode picks up the configuration-coupled drift
  -<A 1, grad J> dt and is no longer autonomous; NOTHING is claimed for
  this class (typed future work; the persistence leg S3.1 still holds
  there - only the separation leg needs S3-CIRC).
generic smooth readouts: still not claimed (intra-well relaxation modulo
  the rotation mode remains future gated work, as typed in C2).
upper bounds / sharp rates: not claimed, either leg.
```

## False Inference Firewall

```text
S3-CIRC separation => arbitrary-A separation : BLOCKED (flat mode couples)
F-separation => generic smooth readouts mix fast : BLOCKED (as in C2)
general-sector persistence => sectors without C1-SUB(k) : BLOCKED
  (their sublevel sets are EMPTY - P0.2b; nothing further exists to claim)
separation => any quantization/physics reading : BLOCKED (firewall)
```

## Verdict

```text
Lane-S Skew Persistence And Separation v1 = S3-PINNED
gate-v5 build stages P0 -> S1 -> S2 -> S3 = COMPLETE (all L-A1 after the
  gate-v5 wave)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = L-A1 audit wave, then
  governance/gate-v5-campaign-closeout-v1.md
```
