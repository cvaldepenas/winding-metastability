# Lane-C Sector Pair Declaration And Barrier Lemma v1

Status:

```text
Lane-C Sector Pair Declaration And Barrier Lemma v1 = T1-PINNED / SECTOR PAIR DECLARED + BARRIER LEMMA PROVEN (k = 0, NARROW) / NO PHYSICS CLAIMS
campaign = gate-v3 Lane-C, stage T1
anti-quantization firewall = BINDING (scoping map): sectors are mathematical
  labels; no quantization, particle, charge, or physics vocabulary; the
  Wallstrom-type overread is the named blocked inference
exit-time bounds (T2) = NOT CLAIMED HERE
sector persistence readouts (T3) = NOT CLAIMED HERE
general-k barrier constants = NOT CLAIMED (k = 0 first rung only)
assurance now = L-A2f + L-A4 MECHANIZATION (2026-07-05: T1.1(i)-(iii) + T1.2(a)-(c) statements AND proofs machine-checked in Lean 4/mathlib - lean/LaneCT1.lean, sorry-free; campaign #5 2026-07-05 sealed T1.1(iv)'s openness + nonemptiness at the windSum level AND the reflection-parity R6 kill; remaining deferral = ONLY T1.2(c)'s a.s.-diffusion wrapper (campaign #8 2026-07-10 sealed the min-clause: J_nonneg + exists_Sigma0_J_eq_zero - min over Sigma_0 of J = 0, attained), axiom audit = the three standard Lean axioms only, toolchain pinned; statement-correspondence table = governance/lean-t1-blueprint-v1.md. Prior: L-A2f Opus brief-only surface audit 2026-07-02, 0 errors / 0 gaps; L-A1 audits prior)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = Lane-C Exit-Time Lower Bound v1
```

## The Pair (declared)

```text
state space X = T^N = (R / 2 pi Z)^N, N >= 3, theta = (theta_1..theta_N),
  indices mod N; compact smooth manifold, no boundary
energy J(theta) = kappa sum_i (1 - cos(theta_{i+1} - theta_i)), kappa > 0;
  smooth, J >= 0, global minimum 0 at constant configurations
target law rho_beta proportional to exp(-beta J); Z_beta < infinity (compact)
generator (first rung, reversible): L f = beta^-1 rho^-1 div(rho grad f)
  (G = I, A = 0; skew extensions are later, gated work)
wellposedness/conservativity = named standard input: smooth coefficients on
  a compact smooth manifold give a unique strong solution, global and
  conservative (SR discipline; hypothesis rows: compactness, smoothness)
d(x) = the unique representative of x in (-pi, pi]
antipodal set Delta = { theta : exists i with theta_{i+1} - theta_i = pi (mod 2 pi) }
```

## Lemma T1.1 (sector function)

Define, for `theta` outside `Delta`:

```text
w(theta) = (1 / 2 pi) sum_{i=1}^N d(theta_{i+1} - theta_i)
```

Then: (i) w is well-defined and integer-valued with `|w| <= floor((N-1)/2)`;
(ii) w is locally constant on the open set `T^N minus Delta`; (iii) `Delta`
is closed with Lebesgue measure zero, hence `rho_beta(Delta) = 0`; (iv) the
sectors `Sigma_k = w^-1(k)` are open, disjoint, cover `T^N minus Delta`, and
`Sigma_k` is nonempty exactly for `|k| <= floor((N-1)/2)`.

Proof. (i) Off `Delta` each difference has a unique representative in the
open interval `(-pi, pi)`, so each `d` term is defined and the sum is a real
number in `(-N pi, N pi)`.  The unlifted differences telescope to `0 mod 2 pi`
around the loop, and each `d(theta_{i+1} - theta_i)` differs from any lift of
the difference by a multiple of `2 pi`; hence the sum is `= 0 mod 2 pi`, i.e.
equal to `2 pi k` for an integer k, and `|2 pi k| < N pi` gives
`|k| <= floor((N-1)/2)`.  (ii) Each `d` is continuous on `(-pi, pi)`, so w is
continuous off `Delta`; a continuous integer-valued function on an open set
is locally constant.  (iii) `Delta` is a finite union of the closed sets
`{theta_{i+1} - theta_i = pi}`, each a coset of a codimension-one subtorus, of Lebesgue
measure zero; `rho_beta` has a density, so `rho_beta(Delta) = 0`.  (iv)
Openness/disjointness/covering follow from (ii); for nonemptiness take the
equidistributed configuration `theta_j = 2 pi k j / N`, whose differences
`2 pi k / N` lie in `(-pi, pi)` iff `|k| < N/2`, and whose w equals k; emptiness for larger |k| is immediate from (i).  QED.

## Lemma T1.2 (barrier positivity, k = 0)

```text
(a) J >= 2 kappa everywhere on Delta.
(b) every continuous path gamma : [0,1] -> T^N with gamma(0) in Sigma_0 and
    gamma(1) in Sigma_k for some k != 0 meets Delta at some time.
(c) consequently sup_t J(gamma(t)) >= 2 kappa = min_{Sigma_0} J + 2 kappa,
    and since diffusion paths are continuous, exiting Sigma_0 forces the
    path through configurations of energy at least 2 kappa above the
    zero-sector minimum, almost surely.
```

Proof. (a) On `Delta` some bond difference equals `pi`, contributing
`kappa (1 - cos pi) = 2 kappa`; all other bond terms are nonnegative.
(b) If gamma never met `Delta`, then `w o gamma` would be a continuous
integer-valued function on the connected interval `[0,1]` (by T1.1(ii)),
hence constant, contradicting `k != 0`.  (c) An exit point of the open set `Sigma_0` lies either in `Delta` (then
(a) applies directly) or in some `Sigma_k` with `k != 0` (then the path met
`Delta` by (b), and (a) applies at that meeting time).  Combine with
`min_{Sigma_0} J = 0` (constant configurations lie in `Sigma_0` since all
differences vanish); path continuity of the diffusion is part of the
declared wellposedness input.  QED.

## What T1 Does And Does Not Establish

```text
established = the topological sector structure is a measurable, locally
  constant STATE function; sector changes are events of strictly positive
  energy excess (explicit constant 2 kappa for the zero sector)
NOT established = any exit-time bound (T2), any persistence/readout
  statement (T3), any general-k barrier constant, anything outside the
  declared reversible pair
```

## False Inference Firewall

```text
barrier positivity => exit times are long : BLOCKED (that is T2, not T1)
sector labels => quantization of anything : BLOCKED (firewall)
this pair => any QCB or FD2-GA result transfers : BLOCKED (different pair)
k = 0 lemma => general-k barrier : BLOCKED
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-C Sector Pair Declaration And Barrier Lemma v1 = T1-PINNED
the program's first topology theorem = LANDED (narrow, k = 0)
active next macro = Lane-C Exit-Time Lower Bound v1
expected output = pre-physics/lane-c-exit-time-lower-bound-v1.md
```
