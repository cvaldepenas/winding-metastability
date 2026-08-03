# lean/ — Lean 4 / mathlib formalization (LIVE MECHANIZATION TRACK)

```text
status = LIVE MECHANIZATION TRACK / FOUR FILES MACHINE-CHECKED SORRY-FREE
toolchain = LIVE since 2026-07-05 (elan + mathlib at ~/leanwork/lanec on the
  workstation, OUTSIDE the spaced repo path; lean4 v4.32.0-rc1, mathlib
  360da6fa66c1). The canonical .lean files live HERE; the build project is
  scratch infrastructure.
method = blueprint (faithful statements + sorry) -> statement compile ->
  per-lemma compile-in-the-loop agent fleet on separate copies (statements
  frozen) -> lead merge -> lead re-verification (full compile + #print axioms
  + signature fidelity + trap sweep). Twenty-six campaigns, 170/170 lemmas
  (six on 2026-07-05, one day; #7-#8 on 2026-07-10; #9-#16 on
  2026-07-11; #17-#22 on 2026-07-18/19; #23-#26 on 2026-07-19/20).
```

## What this is

The Lean (L-A4) track of the assurance ladder, executed in-session with a live
toolchain and compile-in-the-loop agent fleets. The F4 feasibility study
estimated the first rung at 2-4 person-months of an expert formalizer; the
fleet pattern closed it (and three further campaigns) in one day - the compiler in
the loop collapses formalization estimates by ~two orders of magnitude.

## Files

- `LaneCT1.lean` — CAMPAIGN #23 (2026-07-19, SH.2'-LOCAL Stage B):
  the ROTATION-ORBIT geometry (L3 core) - orbitMap; bond/energy/
  Delta/windSum invariance along the orbit; 2 pi periodicity; the
  ISOMETRIC-EMBEDDING distance identity (the orbit carries exactly
  the circle metric, sup-metric, single-orbit scope per the lens) -
  6 theorems. Tube quasiconvexity stays prose (Stage C).
  Lane-C T1 (sector pair + barrier lemma) + CAMPAIGN #5:
  REFLECTION PARITY (Exhibit A's R6 kill: no measurable readout recovers the
  winding, volume form) + T1.1(iv) sector nonemptiness/openness. MACHINE-
  CHECKED, SORRY-FREE (19 theorems with campaign #8): the corpus's first
  L-A4 rung. CAMPAIGN #8 (2026-07-10): the T1.2(c) MIN-CLAUSE (attained
  zero at the constant config) + the RHO_BETA TRANSFER of the R6 kill
  (uniformly positive Gibbs density; every beta) - T1's remaining
  deferral is ONLY the a.s.-diffusion wrapper. Record:
  `../governance/lean-t1-blueprint-v1.md` + the correspondence tables.
- `LabelTowerCore.lean` — the label tower's deterministic-arithmetic core
  (campaign #2, 2026-07-05). MACHINE-CHECKED, SORRY-FREE: P0.2-given-P0.1
  classification below the barrier; the saddle identity phi_k(pi - a_k) = S_k;
  THE LADDER's upper rung 2 kappa < S_k; the Jensen engine of the repaired K4
  step; the sharp C1-SUB endpoints (m_1(10) < 2 kappa < m_1(9)). Honest scope
  in the file header: P0.1 (gradient computation) is hypothesis, not
  mechanized; Jensen is the convex-range engine, not the full ridge law.
  CAMPAIGN #4 (2026-07-05) DISCHARGED P0.1: slice + angle-variation
  criticality forms, the angle<->bond range bridge, and the composed
  P0.1+P0.2 classification - 5 more theorems, same verification record.
  CAMPAIGN #6 (2026-07-05): the v18 TUBE-TRICK inference + W* >= 0; the
  SHARP C1-SUB thresholds k = 2 (N = 39/40) and k = 3 (N = 88/89); the
  LS.4 HESSIAN CORE (negative witness, transversal positivity, slice
  nondegeneracy) - 11 more theorems, same verification record.
  CAMPAIGN #7 (2026-07-10): LS.6 - the off-Delta WINDING-1 CRITICAL
  CLASSIFICATION (equal-sines form, N >= 5: exactly C_1 or SP_1; the
  p >= 2 families are NONEXISTENT off Delta, sharper than the prose's
  level exclusion) - 6 more theorems, same verification record.
  CAMPAIGN #8 (2026-07-10): the COMPOSED CRITICAL LS.6 corollary; the
  RIDGE MAXIMALITY max phi_k = S_k (strict monotone/anti pair, regime
  N >= 4k+1); the LADDER'S MIDDLE RUNGS 2 kappa < L_k < S_k - LS.1's
  ladder is machine-checked END TO END - 5 more theorems, same record.
  CAMPAIGN #9 (2026-07-11): THE BAND - LP.1(i) in bond-quadratic form
  (the linear term cancels EXACTLY on the winding slice) + the
  UNCONDITIONAL TUBE EXCLUSION (v18's tube trick with its band
  hypothesis discharged; metric-tube conversion stays prose) - 6 more
  theorems, same verification record.
  CAMPAIGN #10 (2026-07-11): ROW PROD-SHELL k = 1 SEALED (N >= 5,
  strict; the phi-monotonicity engine) + the M2P/WC/h-class ledger
  arithmetic - 9 more theorems, same record (5 more in QcbCfg.lean).
  CAMPAIGN #11 (2026-07-11): THE FLOOR LP.1(ii) LINEARIZED with the
  EXACT projected-Hessian identity and EXPLICIT constant
  cos(a_k)(N-2)/N + the metric (L_fr) layer in bond-sup form - 6
  more theorems, same record. One drafted statement KILLED by the
  blind lens pre-landing (vacuous vertex-lift tube: cyclic real
  lifts cannot carry winding - the B0 rule's existence proof).
  CAMPAIGN #12 (2026-07-11): GATE v19 = PROD-TRANSFER, the
  transferable core - the GENUINE composed criticality transfer,
  the composed Hessian floor comparison, MC-SUB, the FLAGSHIP
  Delta_phi barrier composing the sealed PROD-SHELL, the class
  strict-monotonicity, the h-ladder + ground-level - 10 theorems.
  The blind lens flagged the first draft as 'named-suggestively
  abstract'; three strengthening theorems + an honest relabel
  answered it (house law). Flow-line rerun stays prose (only level
  and criticality transfer at eps>0, per the corpus's own typing).
  CAMPAIGN #13 (2026-07-11): closes the #12 lens caveat - the
  composed criticality transfer INSTANTIATED at the concrete
  bond energy E (via sealed hasFDerivAt_E) + its on-slice form
  chained to the equal-sines classification - 2 theorems.
  CAMPAIGN #14 (2026-07-11): THE GROUND MORSE-BOTT MINIMUM (index 0)
  - the coercive Taylor lower-bound engine + the ground coercive
  band (G_k a strict transverse minimum on the winding slice) + a
  flagship with EXHIBITED positive coercivity - 3 theorems,
  complementing the sealed saddle (index 1) structure. Honest scope:
  constrained (slice) + local (cos>=m basin), transverse index-0 gap.
  CAMPAIGN #15 (2026-07-11): THE G_{k,j} TRAP-TORI CENSUS (the v20
  pinning tori the numerics probed) - the exact coupled level, the
  above-saddle separation (decoupled AND full E_eps for all eps>=0),
  the single-factor trap criticality - 4 theorems. Honest scope
  (lens-adopted): single-factor criticality only, vs the saddle not
  the band top, k=1, pin as hypothesis.
  CAMPAIGN #16 (2026-07-11): the COUPLED trap criticality closed -
  Gkj_trap_second_order_flat (second-order flatness of the ACTUAL
  coupled energy at the trap, all eps, the lens-driven genuine form)
  + the M2P.3 single-pi-bond exclusion (principal branch; multi-pi
  parity case unstated) - 4 theorems.
  CAMPAIGN #17 (2026-07-18): THE BAND TOP - the trap separation
  strengthened from the saddle S_1 to S_1 + c_H (campaign #15's lens
  caveat closed): S_1 < 4 kappa newly SEALED (was numerics-only), c_H
  defined + positive, and the sharp form S_1 + 4 c_H <= trap level -
  4 theorems. Honest scope (lens-adopted, sixth straight sharpening):
  c_H is an N-dependent vanishing margin; pointwise level inequality
  at the trap configuration, not a spectral band statement; eps >= 0
  only; pin as hypothesis; k = 1.
  CAMPAIGN #18 (2026-07-18): the MULTI-PI PARITY case + the DELTA
  CROSSING FAMILY - two pi-bonds DO carry bond-sum 2*pi (level 4*kappa
  exactly); the one-pi-bond family with equidistributed remainder has
  exact level kappa*(2+(N-1)(1-cos(pi/(N-1)))), approaches the 2*kappa
  floor, and sits STRICTLY BELOW the saddle level S_1 (N >= 4); the
  floor is STRICT with NO range hypothesis (lens-strengthened pure
  integer-parity form) - 7 theorems. Honest scope: prices the single
  pi-DEFECT, not winding (which is cheap); no path/barrier content;
  min-max reconciliation = named prose target.
  CAMPAIGN #19 (2026-07-18): the WINDING-ZERO classification - the
  w = 0 mirror of LS.6: off Delta the zero-winding sector has NO
  saddle; the unique slice-critical config is the ground e_0 at level
  exactly 0 - 3 theorems (equal-sines form, dE form, level). With
  LS.6 (w = 1) and the multi-pi parity floor (on-Delta), all three
  inputs of the min-max reconciliation are sealed; only the
  mountain-pass engine itself stays prose. Honest scope: constrained
  (slice) criticality; level = value, not minimality (kappa-sign
  unused).
  CAMPAIGN #20 (2026-07-18): the k < 0 TRANSPORT - the reflection
  functor mechanized: E even in the bond field; the w = -1
  classification (both forms) via the sealed winding-one
  classification; levels transport (ground at m_1, saddle at S_k
  general k); the slice-Hessian FORM transports (lens-driven
  second-order leg) - 6 theorems. Honest scope: value identities +
  form transport; the negated-sector Morse/index statements are not
  made; |k| >= 2 classification unstated.
  CAMPAIGN #21 (2026-07-19): the negated-sector MORSE layer - the
  index-1 witness pair (negative witness + coordinate-hyperplane
  positivity) and the ground coercive band transported to k < 0
  through the reflection legs - 3 theorems. Honest scope inherited
  from LS.4/#14 (criticality = the classification layer; interlacing
  to the zero-sum slice = prose; band local + conditional).
  CAMPAIGN #22 (2026-07-19): the CORRECTED product-saddle ontology
  (X3 Finding 1 sealed): Z = SP_k x C_0 IS E_eps-critical at EVERY
  coupling (the former corpus premise was FALSE - the first genuine
  mathematical correction from the cross-provider axis), exact level
  S_k(kappa) + eps S_k(1), plus the two inertia scalar cores - 6
  theorems. Honest scope: first-order + scalar cores; mode
  decomposition prose.
  CAMPAIGN #24 (2026-07-20, master-theorem H1): the GENERAL-k
  enumeration - the naive ground-or-saddle dichotomy is FALSE at
  k >= 2 (p-hot families exist, sealed 2-hot counterexample); the
  exhaustive two-value classification (shape), its true variational
  form, and the CONDITIONAL ground/saddle isolation (hclimb = named
  hypothesis; discharging it = the E_p monotonicity target) - 10
  theorems, fleet-proved. N >= 4k+1 strict.
  CAMPAIGN #25 (2026-07-20, master-theorem H1 residual): hclimb
  DISCHARGED - the E_p ladder is strictly increasing (the exact
  psi-collapse route; margins ~1/N^3 kill slack bounds), so every
  p >= 2 family exceeds S_k - 4 theorems (+4 private helpers),
  fleet-proved, lens-cured record (aux dedup + private helpers +
  honest comments). #24's conditional isolation composes to the
  unconditional form = campaign #26 target (LANDED same day).
  CAMPAIGN #26 (2026-07-20, the composition): the UNCONDITIONAL
  general-k isolation winding_k_energy_isolates_ground_saddle_
  unconditional - #24 conditional theorem + #25 climb bound fused
  by the filter-split identity E = kappa(N - (N-2p) cos alpha) for
  p-hot profiles; 1 theorem, no helpers, single prover, first pass,
  lens 3/3 PASS (the first campaign with a full-PASS lens). Master
  theorem Part I isolation now carries NO residual hypothesis.
- `RidgeLaw.lean` — THE FULL RIDGE LAW LS.2(i) (campaign #3, 2026-07-05).
  MACHINE-CHECKED, SORRY-FREE: `E κ d ≥ φ_k(M_abs)` pointwise (general form
  with the residual-mean hypothesis r ∈ [0, 3/4]; flagship corollary k = 1,
  N ≥ 10 discharges it automatically) via the TANGENT-LINE proof - found
  during mechanization, simpler and airtight where the prose was loose,
  backported to lane-ls. The label tower's deterministic keystone (K4) now
  carries a machine seal.
- `QcbCfg.lean` — B1(7): QCB-J-PD (F4's T0-1) + the CFG DRIFT ALGEBRA
  (campaign #10, 2026-07-11). MACHINE-CHECKED, SORRY-FREE (5 theorems):
  the QCB quadratic sandwich with EXPLICIT sharp roots (scalar form;
  vector bridge prose), skew discharge, the Part-C drift-domination
  constant bookkeeping (generator computation stays analysis/prose).
  Honest scope in the file header.
- `HarrisDiscrete.lean` — discrete-time Harris/HLM (B3 spike 2026-07-10,
  **UPGRADED 2026-07-19 by the roadmap-v3 L1 fleet: 4/5 MACHINE-CHECKED
  sorry-free** - invariant_iterK, drift_iterate (lintegral-induction
  helper, geometric telescoping), sa_transfer,
  readout_domination_transfer; statements FROZEN byte-identical;
  standard axioms each). The remaining sorry is harris_geometric (S4):
  OPEN AT THE MATHLIB BOUNDARY (invariant-measure existence not
  constructible at the pin - no topology on the bare MeasurableSpace
  for Krylov-Bogolyubov, no weighted-TV completeness for the HM
  fixed-point route). Still excluded from verify.py (not sorry-free). Record + outcome grid + correspondence table:
  `../governance/b3-harris-discrete-scoping-v1.md`.

## To verify locally (anyone, anytime)

AUTOMATED (B4): `python verify.py` runs the full sweep (compile + axiom
audit on the three canonical files) against the pinned build project and
writes `repro/axioms-transcript.txt`. The repro kit (`repro/`: pinned
toolchain manifest + 3-step recipe, an input to the cross-provider kit)
reconstructs the build on a fresh machine.

Manual form:
1. Install elan; create a mathlib project pinned to the toolchain above (or reuse
   ~/leanwork/lanec); copy a .lean file in.
2. `lake env lean <file>.lean` must exit 0 with zero errors and zero sorries.
3. Append `#print axioms <namespace>.<theorem>` lines: every theorem must
   report `[propext, Classical.choice, Quot.sound]` only.

## Honesty

A machine-checked file certifies exactly its own statements relative to its
definitions - the statement-correspondence tables are the audit surface for
faithfulness to the corpus. Each file's header records its honest scope
(deferred pieces named). Mechanizing a file raises ONLY that file's content to
L-A4; nothing citing it inherits the rung.
