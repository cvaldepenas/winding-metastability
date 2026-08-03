# Lane-C Completion Package v1

Status:

```text
Lane-C Completion Package v1 = C1-UNCONDITIONAL (under C1-SUB(k)) + C2-PINNED / NO PHYSICS CLAIMS
campaign = gate-v4 Lane-C completion; uses T1/T2/T3 (all L-A1)
C1 general-k barriers = UNCONDITIONAL UNDER C1-SUB(k) (row C1-ATTR(k)
  DISCHARGED for all admissible k by the gate-v5 pinning artifact
  lane-c-attractor-pinning-general-k-v1.md; discharge provenance = L-A1
  2026-07-03, postdates the 2026-07-02 L-A2f pass on this package)
C2 separation theorem = PINNED / SELF-CONTAINED LEMMAS (no NEW SR inputs; persistence leg = T3(iii) import at L-A1)
anti-quantization firewall = BINDING (sectors are mathematical labels)
assurance now = L-A2f (Opus 4.8 brief-only surface audit 2026-07-02: 0 errors / 0 gaps)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = Lane-C Completion Audit And Closeout v1
```

## C1: General-k Sector Barrier Schema (typed rows)

For `|k| <= floor((N-1)/2)` let `e_k` denote the equidistributed
configuration `(e_k)_j = 2 pi k j / N`, with

```text
J(e_k) = m_k := N kappa (1 - cos(2 pi k / N)).
```

Row C1-SUB(k): `m_k < 2 kappa` (explicit arithmetic condition on k, N;
invoked only jointly with the admissible sector range `|k| <= floor((N-1)/2)`
from T1.1 - the bare inequality alone can be met by inadmissible k, for
which nothing is claimed; L-A2f note).
Under C1-SUB(k), the connected component `A_k` of `{J < 2 kappa}` containing
`e_k` is well-defined and, by the sector-purity argument of Lemma T2.1
(verbatim: the sublevel set misses `Delta`, w is locally constant) together
with `w(e_k) = k` (T1.1(iv): each d-term equals `2 pi k / N`), satisfies
`A_k subset Sigma_k`.

Row C1-ATTR(k): the internal critical set of `A_k` is exactly the rotation
circle of `e_k` (compact invariant set; flat direction).
Status: PROVEN for k = 0 (T3 audit, recorded in the T3 artifact); PROVEN
for ALL admissible k with C1-SUB(k) since gate-v5 (Theorems P0.2/P0.4 of
lane-c-attractor-pinning-general-k-v1.md: critical-point classification
below the barrier + Lyapunov-stable unique attractor; L-A1 2026-07-03).

Statement, UNCONDITIONAL under C1-SUB(k) since gate-v5 (same SR-T2/SR-T3
inputs, same mapping rows; C1-ATTR(k) discharged): for every `q in A_k`
and every
`delta > 0` (nonvacuity note: C1-SUB(k) for k != 0 requires N large, roughly
N > pi^2 k^2, and forces cos(2 pi k/N) > 1/3, making the e_k circle a
local-minimum circle modulo the flat mode - audit note),

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_k) ] >= 2 kappa - J(q)
P_q( w(theta_t) = k for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1
```

Proof: identical to T2/T3 with `A_k` in place of A and `w = k` in place of
`w = 0`; sector purity gives the event inclusion, the FW rough inputs give
the rates.  QED (unconditional under C1-SUB(k); gate-v5 upgrade).

Boundary rows (honest):

```text
C1 for k with m_k >= 2 kappa = RESOLVED-EMPTY (Corollary P0.2b of the
  pinning artifact: {J < 2 kappa} intersect Sigma_k is EMPTY; nothing
  exists there to claim)
sharpness of 2 kappa as the true barrier from Sigma_k = NOT CLAIMED
  (the relevant saddle heights are not computed here)
```

## C2: Persistence-vs-Mixing Separation Theorem (self-contained)

Define the total phase `Phi(theta) = sum_i theta_i mod 2 pi` and the bounded
smooth readout `F = exp(i Phi)`.

Lemma C2.1 (the flat mode is exactly Brownian).  Since J depends only on the
differences `theta_{i+1} - theta_i`, we have `sum_i dJ/dtheta_i = 0`
identically, so under the T1 dynamics
`d theta_i = -(dJ/dtheta_i) dt + sqrt(2 beta^-1) dW_i` the total phase obeys

```text
d Phi = sqrt(2 beta^-1) sum_i dW_i = sqrt(2 N beta^-1) dB
```

for a standard one-dimensional Brownian motion B: `Phi` is an autonomous
Brownian motion on the circle with variance rate `2 N / beta`.

Lemma C2.2 (exact decorrelation).  For every starting point q:

```text
E_q[ F(theta_t) ] = exp(i Phi(q)) exp(-N t / beta),
```

and the equilibrium mean vanishes: `int F drho_beta = 0` (rho_beta is
invariant under the global rotation `theta -> theta + c`, under which
`F -> exp(i N c) F`; invariance for all c forces the integral to be 0).

Proof: `E[exp(i sigma B_t)] = exp(-sigma^2 t / 2)` with
`sigma^2 = 2N/beta` gives the first display; the symmetry argument gives the
second.  QED.

Theorem C2 (separation).  On the same process, for every `q in A` (the
constants' component) and every `delta > 0`:

```text
the smooth readout F forgets its initial value on timescale beta / N:
  | E_q[ F(theta_t) ] - int F drho_beta | = exp(-N t / beta),
  which is <= epsilon for all t >= (beta/N) log(1/epsilon);
the topological readout w persists exponentially:
  P_q( w(theta_t) = 0 for all t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1
  (T3(iii), L-A1).
```

In particular, for every `delta in (0, 2 kappa - J(q))` (a nonempty range
since `q in A` gives `J(q) < 2 kappa`; audit tightening - the unrestricted
quantifier would be false), the ratio of the persistence horizon to the
forgetting timescale grows like `(N / beta) exp(beta (2 kappa - J(q) - delta))
-> infinity` as `beta -> infinity`.

Proof: Lemma C2.2 and T3(iii).  QED.

Reading (mathematics only): on one and the same diffusion, a natural smooth
readout provably forgets its initial condition on a polynomially short
timescale, while the topological label provably persists on an exponentially
long one.  The separation resolves, for THIS specific readout pair, the
boundary T3 recorded honestly; a statement for generic smooth readouts
remains future work (intra-well relaxation estimates).

## False Inference Firewall

```text
C1 unconditional => coverage beyond C1-SUB(k) or sharpness : BLOCKED
  (beyond-range sublevels are empty - P0.2b; saddle heights still not computed)
C2 for F = exp(i Phi) => generic smooth readouts mix fast : BLOCKED
separation => any quantization/physics reading : BLOCKED
2 kappa => sharp barrier : BLOCKED (not claimed)
reliance beyond the stated L-A1 : BLOCKED (next rung = L-A2f)
```

## Verdict

```text
Lane-C Completion Package v1 = C1-UNCONDITIONAL (under C1-SUB(k)) + C2-PINNED
the honest boundary of T3 = RESOLVED FOR A SPECIFIC READOUT PAIR (C2, self-contained)
active next macro = Lane-C Completion Audit And Closeout v1
```
