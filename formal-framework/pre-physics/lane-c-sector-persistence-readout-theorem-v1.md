# Lane-C Sector Persistence Readout Theorem v1

Status:

```text
Lane-C Sector Persistence Readout Theorem v1 = T3-PINNED / PERSISTENCE READOUT THEOREM (NARROW, ZERO SECTOR) / NO PHYSICS CLAIMS
campaign = gate-v3 Lane-C, stage T3 (final); uses T1 + T2 (both L-A1)
anti-quantization firewall = BINDING (sectors are mathematical labels)
mixing-contrast claim = EXPLICITLY NOT CLAIMED (see honest boundary: the
  degenerate rotation mode relaxes on a beta-dependent timescale, so naive
  O(1) intra-well mixing statements are FALSE for this pair; a rigorous
  contrast needs intra-well relaxation estimates = future gated work)
general-k persistence / upper bounds / skew extensions = NOT CLAIMED
assurance now = L-A2f (Opus 4.8 brief-only surface audit 2026-07-02: 0 errors / 0 gaps; L-A1 audits prior)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = Lane-C Campaign Closeout v1
```

## Standing Data

From T1 (L-A1): sectors `Sigma_k`, w locally constant off the closed null set
`Delta`, `rho_beta(Delta) = 0`, exiting `Sigma_0` requires hitting `Delta`,
`tau_exit(Sigma_0) = tau_hit(Delta)` from within `Sigma_0` (T1.2b/c gives >=;
the reverse is the one-line boundary argument: all sectors are open and
disjoint, so the boundary of `Sigma_0` lies in `Delta`; audit tightening).
From T2 (L-A1): the sublevel component A (constants) with barrier `2 kappa`.

## Standard External Input SR-T3 (named, with hypothesis mapping)

Statement used (Freidlin-Wentzell exit lower bound, PROBABILITY form, from
the sample-path LDP - same source family as SR-T2, which stated the
expectation corollary): under the SR-T2 setting (compact smooth manifold,
`dX = -grad J dt + sqrt(2 beta^-1) dW`, J smooth, A a connected component of
`{J < H}`), for every `q in A` and every `delta > 0`:

```text
P_q( tau_exit(A) <= exp(beta (H - J(q) - delta)) ) -> 0   as beta -> infinity.
```

Hypothesis mapping: identical rows to SR-T2 (all HOLD), plus the
instance-level row recorded by the T3 audit rather than resting on the
general no-bottom phrase:

```text
unique internal attractor of A = the constants circle (compact, stable,
  degenerate flat direction): critical points of J have all bond sines
  equal, and inside A (J < 2 kappa, zero winding) this forces the constant
  configurations; FW rough theory covers a compact degenerate attractor : HOLDS
```

## Theorem T3 (sector persistence as a readout)

```text
(i) READOUT ADMISSIBILITY: w is a bounded measurable state readout
    (|w| <= floor((N-1)/2)), defined rho_beta-a.e.; along any diffusion path
    started at q in Sigma_0 it is defined and EQUAL TO 0 for every
    t < tau_hit(Delta).
(ii) EQUILIBRIUM NON-TRIVIALITY: for every fixed beta > 0 and every
    admissible k (|k| <= floor((N-1)/2)), rho_beta(Sigma_k) > 0: the label
    is a genuinely finite-valued random variable at equilibrium with
    positive mass on every value.
(iii) PERSISTENCE: for every q in A and every delta > 0,
    P_q( w(theta_t) = 0 for ALL t in [0, exp(beta (2 kappa - J(q) - delta))] ) -> 1
    as beta -> infinity.
```

Proof.  (i) Boundedness and measurability are T1.1(i)-(ii); `rho_beta`-a.e.
definedness is T1.1(iii); before `tau_hit(Delta)` the path stays in the open
set `Sigma_0` where w = 0 (T1.2b applied as in Lemma T2.1).  (ii) Each
`Sigma_k` is open and nonempty (T1.1(iv)) and `rho_beta` has a smooth
strictly positive density on the compact `T^N`, so every open nonempty set
has positive mass.  (iii) By Lemma T2.1 the event
`{ w(theta_t) = 0 for all t <= T }` contains `{ tau_exit(A) > T }` up to the
inclusion `tau_exit(Sigma_0) >= tau_exit(A)`; apply SR-T3 with `H = 2 kappa`
and `T = exp(beta (2 kappa - J(q) - delta))`.  QED.

Reading (mathematics only, the campaign's target statement): a discrete,
finitely-valued label defined by the topology of the state alone is (ii) a
nontrivial equilibrium observable and (iii) persists along paths for times
exponentially long in beta, with an explicit barrier constant.  Discreteness
here survives noise not by assumption but as a theorem.

## Honest Boundary (recorded, not claimed)

```text
NO mixing contrast: the minimizer circle is a flat direction (Hessian zero
  mode), so the rotation coordinate relaxes diffusively on a
  beta-dependent timescale; any claim that generic smooth readouts mix at
  O(1) is false for this pair and is NOT made.  A rigorous
  persistence-vs-mixing separation theorem is future gated work.
NO general-k persistence CLAIMED HERE (general k now provided by the
  completion package C1 rows, unconditional under C1-SUB(k) since the
  gate-v5 pinning artifact).
NO upper bounds or sharp rates.  NO skew (A != 0) extensions.
```

## False Inference Firewall

```text
persistence => quantization/physics reading : BLOCKED
(iii) => persistence from arbitrary q or arbitrary sector : BLOCKED
(ii) => equilibrium mass asymptotics as beta -> infinity : NOT CLAIMED HERE
T3 => campaign claims beyond T1+T2+T3 : BLOCKED
reliance beyond the stated L-A1 : BLOCKED (next rung = L-A2f)
```

## Verdict

```text
Lane-C Sector Persistence Readout Theorem v1 = T3-PINNED (narrow)
gate-v3 Lane-C campaign staging T1 -> T2 -> T3 = COMPLETE
active next macro = Lane-C Campaign Closeout v1
expected output = ../governance/lane-c-campaign-closeout-v1.md
```
