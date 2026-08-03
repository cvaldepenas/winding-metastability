# Lean T1 Blueprint v1 — statement-correspondence + honest status

Status:

```text
role = LEAN MECHANIZATION RECORD (was: blueprint) / T1 = MACHINE-CHECKED SORRY-FREE 2026-07-05 / L-A4 rung LANDED for Lane-C T1
artifact = ../lean/LaneCT1.lean (Lean 4 / mathlib blueprint for Lane-C T1)
what it is = the first concrete Lean artifact of the corpus: faithful math->Lean
  STATEMENTS (definitions + theorem signatures) for T1.1 (i)-(iii) and T1.2 (a)-(c)
  (T1.1(iv) and the min clause of T1.2(c) deferred - see the deferral note below),
  each proof a `sorry` with a mathlib-dependency comment (the standard blueprint
  discipline: statements + dependency DAG now, tactic proofs when a compiler is present).
SUPERSEDED 2026-07-05 (same day): a toolchain WAS then installed in-session (elan +
  mathlib, ~/leanwork/lanec) and the full campaign ran: statements compiled (2 typeclass
  fixes), 8 compile-in-the-loop proof agents (all 8 PROVED), lead merge + re-verification.
  FINAL STATE: lean/LaneCT1.lean is SORRY-FREE, compiler-accepted, axiom-audited
  ([propext, Classical.choice, Quot.sound] only), toolchain-pinned
  (lean4 v4.32.0-rc1, mathlib 360da6fa66c1). Lane-C T1 carries the L-A4 rung.
why T1 first = the F4 feasibility study (governance/f4-lean-feasibility-study-v1.md)
  recommends Lane-C T1 as the #1 L-A4 target: a COMPLETE theorem (not a fragment),
  ZERO missing mathlib infrastructure (torus topology, Haar measure, locally constant
  maps, path connectedness all mature), and the cheapest credible rung (2-4 PM).
execution of mechanization = OPERATOR GATE (L-A4). This blueprint authorizes nothing;
  it de-risks the eventual campaign by pinning the definitions and the dependency DAG.
physics = CLOSED / core = SEALED
```

## Reconciliation: the spine-dossier Lean order vs the feasibility study

The spine-hardening dossier (`spine-hardening-dossier-v1.md`) ordered the Lean targets
by LOAD-BEARING-ness (SR-SH2/SR-SH1 first — the keystones everything rides on). That is
the right RISK ranking but the WRONG EXECUTION order, and the two must not be confused:

```text
LOAD-BEARING-first (dossier)     : SR-SH2/SR-SH1 are the biggest RESIDUAL RISK.
EXECUTABLE-first (this blueprint): SR-SH2/SR-SH1 are Tier-2 in mathlib - sample-path
  large deviations (FW) and are ABSENT from the ecosystem (~1-3 person-YEARS each,
  from-scratch LDP formalization). They CANNOT be the first Lean target.
RESOLUTION: the first Lean target is Lane-C T1 (Tier 0, zero-gap, complete). The FW /
  detailed-balance inputs remain the biggest residual risk AND the eventual Lean
  obligation, but they are the LAST executable step, not the first. The dossier's
  "target order" is the risk order; THIS is the execution order.
```

Corrected execution order (feasibility Tier structure): **T1 (this) -> CFG algebraic
core (T0-1/2/3) -> [Tier-1 SDE infrastructure] -> ... -> [Tier-2 FW/PDE, the residual
risk], each a separate operator gate.**

## Statement-correspondence table (audit surface — feasibility caveat #3)

Maps each Lean declaration in `../lean/LaneCT1.lean` to the source rows of
`pre-physics/lane-c-sector-pair-declaration-and-barrier-lemma-v1.md`.

```text
LEAN DECLARATION                SOURCE ROW                         MATHLIB CONSUMED
Config N                        "state space X = T^N"              Fin N -> Real.Angle
bond θ i                        "theta_{i+1} - theta_i" (cyclic)   Fin N add (mod N)
J κ θ                           "J = kappa sum (1 - cos ...)"      Real.Angle.cos, Finset.sum
windSum θ                       "w = (1/2π) sum d(...)"  (×2π)      Real.Angle.toReal
Delta N                         "Delta = {some bond = pi}"         Real.Angle, ↑π
sum_bond_eq_zero                telescoping "= 0 mod 2π"           Finset.sum_sub_distrib,
                                                                   Equiv.addRight reindex
winding_integer     (T1.1 i)    "w integer, |w|<=floor((N-1)/2)"   AddCircle.coe_eq_zero_iff,
                                                                   Real.Angle.toReal_mem_Ioc,
                                                                   toReal_eq_pi_iff
w hN θ                          the integer sector label           choice on winding_integer
w_locallyConstant   (T1.1 ii)   "w locally constant off Delta"     Real.Angle.continuousAt_
                                                                   toReal, IsLocallyConstant
isClosed_Delta                  "Delta is closed"                  isClosed_iUnion, cont. bond
volume_Delta_eq_zero (T1.1 iii) "Delta Lebesgue-null" (the ρ_β(Δ)=0  AddCircle Haar, codim-1
                                corollary via the density:
                                unmechanized, immediate)
                                                                   fibre nullity (Fubini)
J_ge_two_kappa_on_Delta (T1.2a) "J >= 2 kappa on Delta"            Real.cos_pi, cos_le_one,
                                                                   Finset.single_le_sum
Sigma0 N                        "Sigma_0 = w^{-1}(0)"              set-builder
path_meets_Delta    (T1.2 b)    "continuous path Σ0->Σk meets Δ"   isPreconnected_Icc,
                                                                   IsLocallyConstant.apply_eq
barrier_along_path  (T1.2 c)    "sup J >= 2 kappa along exit"      (a)+(b) composition
```

Not yet in the blueprint (deliberately deferred, faithful to the source's own scoping):
T1.1(iv) sector openness/disjointness/covering/nonemptiness (follows from (ii) + the
equidistributed witness `θ_j = 2πkj/N`); the `min_{Σ_0} J = 0` clause of T1.2(c)
(constant configs, all bonds 0). Both are one-lemma additions when the file is compiled.

## Definition-drift watch (the L-A4-specific failure mode)

```text
- Real.Angle model: `↑π = ↑(-π)` in Real.Angle is the SINGLE antipode - Delta uses the
  one element `(π : Real.Angle)`, matching the source's "difference = pi (mod 2π)". A
  formalizer must NOT model Delta as two points.
- toReal range is the half-open `(-π, π]`; OFF Delta each bond ≠ ↑π so toReal lands in
  the OPEN `(-π, π)` - this openness is what gives the STRICT `|windSum| < Nπ` and the
  bound `|k| ≤ ⌊(N-1)/2⌋`. Using the closed interval would weaken the bound.
- `w` is defined by choice on `winding_integer`; the compiled version should prove
  `windSum θ = 2π * (w θ)` as a lemma so `w` is pinned, not just existentially chosen.
```

## False inference firewall

```text
T1 mechanized => the CORPUS is machine-checked : BLOCKED (ONE theorem carries
  L-A4; everything else stays at its recorded rung)
T1 mechanized => the FW/keystone inputs are near : BLOCKED (those are Tier-2,
  person-years of LDP formalization absent from mathlib)
T1 at L-A4 => cross-provider / human rungs substituted : BLOCKED (the ladder's
  rungs are independent; L-A2/L-A3 remain operator gates)
agent-written proofs => trust without the audit trail : BLOCKED (the checks
  are the record: sorry-free compile + axiom audit + signature fidelity +
  trap sweep, all re-run by the lead - not agent claims)
anything here => physics / new claim : BLOCKED
```

Provenance: `../lean/LaneCT1.lean`; source `pre-physics/lane-c-sector-pair-declaration-
and-barrier-lemma-v1.md`; feasibility `f4-lean-feasibility-study-v1.md`;
spine `spine-hardening-dossier-v1.md`.
