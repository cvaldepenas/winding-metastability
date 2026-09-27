# Lane-C T2 Exit-Time Lower-Bound Rate-Scope Erratum v1

Status:

```text
artifact = MATH ERRATUM / T2 MAINTENANCE / NO_NEW_THEOREM
authority = correction of the current Research reading only; no tag or release
scope = T2 RATE-SCOPE ONLY / ZERO SECTOR / ONE-SIDED LOWER BOUND
mathematical theorem and proof = UNCHANGED
math-v1.1 tag and released blobs = UNCHANGED
LS-MIN-MIG = SEPARATE / NOT ADJUDICATED OR AFFECTED HERE
Gate v20 = UNTOUCHED / GATED_ON_OPERATOR
physics / candidate selection / packet freeze / publication = CLOSED
```

## Authority and immutable source

Chris authorized only the bounded T2 semantic correction; this erratum does
not execute Gate v20 or open theorem expansion. The source is
`topo-t2-rate-scope-math-release-change-packet-v1.md` at Git blob
`cec0f4e23b305fd9b49c8ce0c1e1faecca216f5a`. Its immutable anchors are
the annotated `math-v1.1` tag object
`a0ad077d27a475f9759af08dc8108e0279abeac6`, peeled commit
`051b71444bd397b7072f5a2c57b70956b562d996`, and T2 source blob
`aeb5a6ce149b3c6abe6b44891efedb6d5c00ffcd` at
`formal-framework/pre-physics/lane-c-exit-time-lower-bound-v1.md`.

This additive erratum governs the current Research reading of the T2 v1
paragraph beginning `Reading (mathematics only)` and its verbatim copy in
`formal-framework/governance/f4-la2f-brief-lanec-surface-v1.md`. Those
historical bytes remain intact. Integration of this erratum into Research is
not a release, an update to `math-v1.1`, or an origin that PRE-PHYSICS may
present as an immutable released snapshot.

## Corrected reading

For `A`, the constants' connected component of `{J < 2 kappa}`, and every
`q in A`, the displayed Theorem T2 statement remains exactly the one-sided
lower bound on the zero-sector exit-time exponent:

```text
liminf_{beta -> infinity} beta^-1 log E_q[tau_exit(Sigma_0)]
    >= 2 kappa - J(q).
```

The existing X4 hypothesis mapping records a stronger *lower-only*
one-compactum consequence with `m_0 = 0`, namely the lower exponent
`2 kappa - m_0 = 2 kappa`, which implies the displayed bound. At a constant
configuration these lower bounds coincide. Neither supplies a matching upper
bound or equality for `tau_exit(Sigma_0)`. T1's `2 kappa` is an interface
floor, not a proved exact zero-sector crossing height, minimax barrier,
sharp sector-exit rate, or prefactor.

The precise event order for `q in A` is
`tau_exit(A) = tau_hit({J >= 2 kappa}) <= tau_exit(Sigma_0) =
tau_hit(Delta)`. An exact exponent for the smaller energy-domain exit does
not become an exact exponent for zero-sector/label exit. T2's expectation
lower bound is also not T3's separately proved high-probability persistence
statement.

## Source-condition correction

The concrete SR-T2 use invokes the Freidlin-Wentzell Chapter 6 Condition
(A) one-compactum setting and the associated compactum/mean-exit machinery
identified by the existing X4 correction. P0 supplies the internal
attractor input: the circle of constants is the unique compact attractor
in the working component; the strict ground property separates points
outside its neighborhood; closure attraction captures every omega-limit;
and the boundary is regular. The earlier `no bottom condition` and
`NONE NEEDED` summaries are superseded. A generic theorem for any connected
sublevel component without this mapping is not certified here. This
erratum does not claim to reproduce the external source.

## Consumer rule and boundaries

In a Lane-C descendant displaying only `liminf >=`, unqualified `rate` or
`certified rate` means that displayed one-sided lower bound on the exponent.
It never means equality without a separately cited two-sided theorem for
the same stopping-time object under the same hypotheses. The copied F4
paragraph and historical shorthand are read under this rule; neither is
silently rewritten.

```text
T1, T2 theorem display and proof, T3, P0, C1, C2 = UNCHANGED
finite-N strictness observation in the change packet = NOT PROMOTED
zero-sector exact label rate = NOT CLAIMED
later label-tower hypotheses = NOT TRANSFERRED TO T2
LS-MIN-MIG = SEPARATE / NO CHANGE HERE
core / Lean / GTPA / M5 = UNCHANGED
physics / candidate selection / packet freeze / publication = CLOSED
tag / math-v2.0.1 / any release / XPT dispatch = NOT AUTHORIZED
```
