# Lane-C Exit-Time Lower Bound v1

Status:

```text
Lane-C Exit-Time Lower Bound v1 = T2-PINNED / KRAMERS-TYPE LOWER BOUND FOR THE ZERO SECTOR (NARROW) / NO PHYSICS CLAIMS
campaign = gate-v3 Lane-C, stage T2 (uses T1, itself CONFIRM-L-A1)
anti-quantization firewall = BINDING (sectors are mathematical labels; no physics vocabulary)
matching upper bounds / sharp prefactors = NOT CLAIMED
general-k sectors = NOT CLAIMED HERE (zero sector only; general k now via
  the completion package C1 rows + the gate-v5 pinning artifact)
persistence readouts (T3) = NOT CLAIMED HERE
assurance now = L-A2f (Opus 4.8 brief-only surface audit 2026-07-02: 0 errors / 0 gaps / 0 brief defects; three tightenings applied with the auditor's exact replacement text)
assurance target = L-A3 (external human reading, operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = Lane-C Sector Persistence Readout Theorem v1
```

## Standing Data (from T1)

```text
reversible diffusion on the compact manifold T^N with generator
  L f = beta^-1 div(grad f) - <grad J, grad f>   (= beta^-1 rho^-1 div(rho grad f);
  div(grad) = Laplace-Beltrami, written this way to reserve the symbol Delta
  for the antipodal set - L-A2f notation fix)
J(theta) = kappa sum_i (1 - cos(theta_{i+1} - theta_i)), smooth, min J = 0
  at constant configurations, all of which lie in Sigma_0 (T1.1)
J >= 2 kappa on the antipodal set Delta (T1.2a)
exiting Sigma_0 requires hitting Delta (T1.2b)
```

## Lemma T2.1 (sector purity of sublevel components)

Let `A` be the connected component of the open sublevel set `{J < 2 kappa}`
containing the constant configurations.  Then `A` is contained in `Sigma_0`,
and for the diffusion started at any `q in A`:

```text
tau_exit(Sigma_0) >= tau_hit({J >= 2 kappa})   almost surely.
```

Proof.  `{J < 2 kappa}` is disjoint from `Delta` by T1.2a, so on each of its
connected components the sector function w (locally constant off `Delta`,
T1.1) is constant; the constants' component carries `w = 0`, hence
`A subset Sigma_0`.  By T1.2b, exiting `Sigma_0` requires hitting `Delta`,
and `Delta subset {J >= 2 kappa}`; since paths are continuous and start in
`{J < 2 kappa}`, the hitting time of `{J >= 2 kappa}` is a lower bound for
the time of any visit to `Delta`, hence for the sector exit time.  QED.

## Standard External Input SR-T2 (named, with hypothesis mapping)

Statement used (Freidlin-Wentzell ROUGH exit lower bound, from the sample-path
large deviation principle; audit repair 2026-07-02 - the previous
potential-theoretic framing required nondegenerate minima, which this pair
does NOT have: the minimizers of J form a one-parameter circle of constant
configurations, the global-rotation zero mode of the Hessian): for the
diffusion `dX = -grad J(X) dt + sqrt(2 beta^-1) dW` on a compact smooth
manifold with smooth J, the LDP rate function
`I(phi) = (1/4) int |phi' + grad J(phi)|^2 dt` satisfies
`I(phi) >= J(phi(T)) - J(phi(0))` (complete the square:
`(1/4)|phi' + grad J|^2 = (1/4)|phi' - grad J|^2 + <phi', grad J>`; drop the
nonnegative first term and integrate the second, which telescopes to
`J(phi(T)) - J(phi(0))`; L-A2f tightening - the raw cross term alone gives
only half the increment), so reaching level `H` from `q` costs at
least `H - J(q)`, and for any connected component `A` of `{J < H}`, for
every `q in A`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(A) ] >= H - J(q).
```

Hypothesis mapping:

```text
compact smooth manifold = T^N                                    : HOLDS
reversible generator of the exact stated form                    : HOLDS (T1 pair)
J smooth                                                          : HOLDS
A = connected component of {J < H} with H = 2 kappa               : HOLDS (Lemma T2.1)
bottom condition = FW Ch.6 CONDITION (A), one-compactum reduction     : HOLDS
  [X4 CORRECTION 2026-07-19: the earlier generic "NONE NEEDED" was too
  broad - the exact source (Freidlin-Wentzell Ch.6, Cond. (A) p.150 +
  Thm 5.3 pp.176-177) is a COMPACT-ATTRACTOR theorem, not a no-bottom
  one. The concrete H = 2 kappa instance MATCHES it: the constants
  circle is the unique compact attractor (K_1), the strict ground set
  gives V_D(G,y) >= E(y)-e_0 > 0 outside G (no outside equivalence),
  closure-attraction captures every omega-limit, and grad E != 0 gives
  the regular boundary - the one-compactum Condition (A) case, which
  yields the STRONGER exponent 2 kappa - m_0 => 2 kappa - J(q). Verdict
  verdicts/X4-2026-07-19.md site 6.]
```

This is a named classical input under the SR discipline (as SR-1/2/3 in the
DE theorem); its non-reproduction is recorded, its hypotheses are checked,
and any strengthening (sharp prefactors, Eyring-Kramers constants) is
explicitly NOT imported.

## Theorem T2 (exit-time lower bound, zero sector)

For every `q` in the constants' sublevel component `A`:

```text
liminf_{beta -> infinity} beta^-1 log E_q[ tau_exit(Sigma_0) ] >= 2 kappa - J(q),
```

and in particular, from the sector bottom (any constant configuration):

```text
E_q[ tau_exit(Sigma_0) ] >= exp( beta * 2 kappa * (1 - o(1)) )  as beta -> infinity.
```

Proof.  Since `A subset Sigma_0` (Lemma T2.1), leaving `Sigma_0` cannot
occur before leaving A: `tau_exit(Sigma_0) >= tau_exit(A)` pathwise.
Moreover `tau_exit(A) = tau_hit({J >= 2 kappa}) <= tau_hit(Delta)` because A
is a component of `{J < 2 kappa}` and `Delta subset {J >= 2 kappa}`
(L-A2f tightening: exact event-order phrasing).
Apply SR-T2 to A with `H = 2 kappa`, `h = 0`.  QED.

Reading (mathematics only): the topological label `w = 0` persists for a
time growing exponentially in `beta`, with the explicit T1 barrier constant
`2 kappa` as the rate - the sector is metastable because leaving it costs
energy, and the cost is now a certified rate.

## False Inference Firewall

```text
lower bound => matching upper bound or sharp rate : BLOCKED (not claimed)
zero sector => general k : BLOCKED
exponential persistence => any physics/quantization reading : BLOCKED
T2 => T3 readout statements : BLOCKED (next macro)
reliance beyond the stated L-A1 : BLOCKED (next rung = L-A2f)
```

## Verdict

```text
Lane-C Exit-Time Lower Bound v1 = T2-PINNED (narrow, zero sector)
active next macro = Lane-C Sector Persistence Readout Theorem v1
expected output = pre-physics/lane-c-sector-persistence-readout-theorem-v1.md
```
