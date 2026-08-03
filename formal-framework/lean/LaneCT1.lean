/-
  LaneCT1.lean — MACHINE-CHECKED, SORRY-FREE (campaigns #1 + #5 2026-07-05,
  + campaign #8 2026-07-10: 19 theorems).
  CAMPAIGN #8 (carve-out closures): the T1.2(c) MIN-CLAUSE (J_nonneg +
  exists_Sigma0_J_eq_zero: min over Sigma_0 of J is 0, ATTAINED at the
  constant configuration) and the RHO_BETA TRANSFER of the R6 kill
  (no_measurable_readout_recovers_winding_rhoBeta: the Gibbs density
  e^{-beta J} is uniformly positive on the compact torus, so volume <<
  rho_beta and the sealed volume-form kill transfers for EVERY real
  beta).  HONEST SCOPE: rhoBeta is the UNNORMALIZED Gibbs measure
  (a.e. statements are normalization-insensitive - the corpus's
  normalized rho_beta shares its null sets); T1's remaining deferral
  is now ONLY the a.s.-diffusion wrapper of T1.2(c).
  CAMPAIGN #5 (REFLECTION PARITY / the R6 kill + T1.1(iv) pieces): the
  reflection R(θ) = -θ fixes J, flips windSum off Δ, preserves Haar volume;
  sectors are nonempty (equidistributed witness, 2k < N) and open at the
  windSum level; hence NO measurable function of the energy equals the
  winding sum volume-a.e. (no_measurable_readout_recovers_winding) — the
  information-honesty kill, Exhibit A's core, machine-verified.
  HONEST SCOPE of campaign #5 (blind-lens audited): VOLUME form (transfer to
  the invariant probability rho_beta = prose-level via positive-density
  equivalence); windSum (= 2π·w), not the integer label directly; k ≥ 0
  sectors only (negative by reflection, not mechanized); T1.1(iv)'s
  openness/nonemptiness sealed at the windSum level — the remaining T1
  deferrals are ONLY the min_{Σ0} J = 0 clause and the a.s.-diffusion
  wrapper of T1.2(c).
  THE CORPUS'S FIRST MACHINE-VERIFIED THEOREM: Lane-C T1 (sector pair +
  barrier lemma), statements AND proofs accepted by the Lean 4 compiler.

  VERIFICATION RECORD:
    * lake env lean: EXIT 0, zero errors, zero sorry warnings (one benign
      unused-binder lint on a statement variable, statement untouched).
    * AXIOM AUDIT: #print axioms on all 8 theorems = [propext,
      Classical.choice, Quot.sound] ONLY - the three standard Lean axioms;
      no sorryAx, no custom axioms, no native_decide.
    * STATEMENT FIDELITY: public signatures byte-identical to the audited
      blueprint (correspondence table: governance/lean-t1-blueprint-v1.md);
      proof agents were forbidden to alter statements and did not.
    * TOOLCHAIN PIN: leanprover/lean4:v4.32.0-rc1, mathlib rev
      360da6fa66c1273b76b6b2d8c5666fd5ac2e3b56.
    * PROVENANCE: blueprint Opus 4.8; statement-level fixes + 8-agent
      compile-in-the-loop proof campaign + merge + final re-verification
      by Fable 5 (the lead re-ran the full compile and the axiom audit).
  (Original blueprint prose below kept as history; its "UNCOMPILED /
   sorry" caveats are SUPERSEDED by this record.)

  Lean 4 / mathlib formalization blueprint for Lane-C T1: the sector-pair
  declaration + barrier lemma (T1.1, T1.2), the corpus's first topology
  theorem and the feasibility study's #1 recommended L-A4 target (Tier 0,
  zero missing mathlib infrastructure).

  STATUS = BLUEPRINT / UNCOMPILED / NO ASSURANCE CHANGE.
    * No Lean toolchain was available in the authoring environment, so this
      file is NOT machine-checked. It gains ZERO assurance rungs: the source
      artifact stays L-A2f, NOT L-A4. L-A4 requires a `sorry`-free proof that
      the compiler accepts.
    * Every DEFINITION and THEOREM STATEMENT is a faithful math->Lean
      translation (checkable by reading). Every PROOF is `sorry` with a
      BLUEPRINT comment naming the mathlib API a formalizer consumes - the
      standard mathlib-blueprint discipline (statements + dependency DAG now;
      tactic proofs when a compiler is present).
    * Source of truth: pre-physics/lane-c-sector-pair-declaration-and-barrier-
      lemma-v1.md (T1.1 (i)-(iv), T1.2 (a)-(c)). Statement-correspondence
      table: governance/lean-t1-blueprint-v1.md.
    * Definition drift is the L-A4-specific failure mode (feasibility caveat
      #3): the correspondence table is audit surface. Do not read an
      uncompiled `sorry` as a checked step.

  Mathlib model: T^N = (Fin N -> Real.Angle), Real.Angle = AddCircle (2*pi);
    d(x) = Real.Angle.toReal (range (-pi, pi]); cos = Real.Angle.cos.
-/
import Mathlib

open Real Finset MeasureTheory
open scoped Real

namespace LaneCT1

/-- Haar measure on `Real.Angle = AddCircle (2π)` requires `0 < 2π`. -/
instance : Fact (0 < 2 * π) := ⟨mul_pos two_pos Real.pi_pos⟩

/-- `Real.Angle` is a `def` (not `abbrev`) of `AddCircle (2π)`, so the measure
    instances are transported by definitional equality. -/
instance : MeasurableSpace Real.Angle :=
  inferInstanceAs (MeasurableSpace (AddCircle (2 * π)))
noncomputable instance : MeasureSpace Real.Angle :=
  inferInstanceAs (MeasureSpace (AddCircle (2 * π)))
instance : SigmaFinite (volume : Measure Real.Angle) :=
  inferInstanceAs (SigmaFinite (volume : Measure (AddCircle (2 * π))))

/-- A configuration on the torus `T^N = (ℝ/2πℤ)^N`. -/
abbrev Config (N : ℕ) := Fin N → Real.Angle

/-- The `i`-th bond `θ_{i+1} - θ_i` (indices cyclic: `Fin N` addition is mod N). -/
noncomputable def bond {N : ℕ} [NeZero N] (θ : Config N) (i : Fin N) : Real.Angle := θ (i + 1) - θ i

/-- The loop energy `J(θ) = κ Σ_i (1 - cos(bond_i))`. -/
noncomputable def J {N : ℕ} [NeZero N] (κ : ℝ) (θ : Config N) : ℝ :=
  κ * ∑ i : Fin N, (1 - (bond θ i).cos)

/-- The real winding sum `Σ_i d(bond_i)`, `d = toReal` the representative in `(-π, π]`. -/
noncomputable def windSum {N : ℕ} [NeZero N] (θ : Config N) : ℝ :=
  ∑ i : Fin N, (bond θ i).toReal

/-- The antipodal set `Δ = { θ : some bond equals π }`. In `Real.Angle`, `↑π = ↑(-π)`
    is the unique antipode. -/
def Delta (N : ℕ) [NeZero N] : Set (Config N) := {θ | ∃ i, bond θ i = (π : Real.Angle)}

/-- Telescoping: the cyclic sum of bonds is `0` in `Real.Angle`
    (the successor `i ↦ i+1` is a bijection of `Fin N`). -/
theorem sum_bond_eq_zero {N : ℕ} [NeZero N] (θ : Config N) :
    ∑ i : Fin N, bond θ i = 0 := by
  unfold bond
  rw [Finset.sum_sub_distrib, sub_eq_zero]
  exact Fintype.sum_equiv (Equiv.addRight (1 : Fin N)) _ _ (fun i => rfl)

/-- **T1.1 (i)** — winding is an integer with `|k| ≤ ⌊(N-1)/2⌋` off `Δ`. -/
theorem winding_integer {N : ℕ} [NeZero N] (hN : 3 ≤ N) (θ : Config N) (hθ : θ ∉ Delta N) :
    ∃ k : ℤ, windSum θ = 2 * π * k ∧ (k.natAbs : ℕ) ≤ (N - 1) / 2 := by
  -- (a) the winding sum maps to `0` in `Real.Angle`, hence is an integer multiple of `2π`
  have h1 : ((windSum θ : ℝ) : Real.Angle)
      = ∑ i : Fin N, (((bond θ i).toReal : ℝ) : Real.Angle) := by
    unfold windSum
    exact map_sum Real.Angle.coeHom (fun i => (bond θ i).toReal) Finset.univ
  have hcoe : ((windSum θ : ℝ) : Real.Angle) = 0 := by
    rw [h1]
    simp only [Real.Angle.coe_toReal]
    exact sum_bond_eq_zero θ
  obtain ⟨n, hn⟩ := Real.Angle.coe_eq_zero_iff.mp hcoe
  -- (b) off `Δ` each bond representative lies strictly inside `(-π, π)`
  have hbound : ∀ i : Fin N, |(bond θ i).toReal| < π := by
    intro i
    have hne : bond θ i ≠ (π : Real.Angle) := fun h => hθ ⟨i, h⟩
    have hmem := Real.Angle.toReal_mem_Ioc (bond θ i)
    have hlt : (bond θ i).toReal < π :=
      lt_of_le_of_ne hmem.2 fun h => hne (Real.Angle.toReal_eq_pi_iff.mp h)
    exact abs_lt.mpr ⟨hmem.1, hlt⟩
  have hunivne : (Finset.univ : Finset (Fin N)).Nonempty :=
    ⟨⟨0, by omega⟩, Finset.mem_univ _⟩
  have habs : |windSum θ| < N * π := by
    calc |windSum θ| ≤ ∑ i : Fin N, |(bond θ i).toReal| :=
          Finset.abs_sum_le_sum_abs _ _
      _ < ∑ _i : Fin N, π :=
          Finset.sum_lt_sum_of_nonempty hunivne fun i _ => hbound i
      _ = N * π := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  have habs_n : |((n : ℤ) : ℝ)| = (n.natAbs : ℝ) := by
    rw [← Int.cast_abs, Int.abs_eq_natAbs, Int.cast_natCast]
  refine ⟨n, ?_, ?_⟩
  · rw [← hn, zsmul_eq_mul]; ring
  · -- (c) from `|2πn| < Nπ` extract `2 * n.natAbs < N`, then Nat arithmetic
    have e : |windSum θ| = 2 * (n.natAbs : ℝ) * π := by
      rw [← hn, zsmul_eq_mul, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 2 * π), habs_n]
      ring
    have key : 2 * (n.natAbs : ℝ) * π < (N : ℝ) * π := e ▸ habs
    have key2 : 2 * (n.natAbs : ℝ) < (N : ℝ) := by nlinarith [Real.pi_pos]
    have key3 : 2 * n.natAbs < N := by exact_mod_cast key2
    omega

/-- The integer winding off `Δ` (well-defined by `winding_integer`). Packaged as a
    function via choice; `windSum θ = 2π * (w θ)`. -/
noncomputable def w {N : ℕ} [NeZero N] (hN : 3 ≤ N) (θ : Config N) : ℤ := by
  classical
  exact if h : θ ∉ Delta N then (winding_integer hN θ h).choose else 0

/-- Helper: `Real.Angle.toReal` is continuous away from the antipode `↑π`
    (it is `Subtype.val ∘ AddCircle.equivIoc (2π) (-π)` definitionally, and
    `equivIoc` is continuous away from the basepoint `↑(-π) = ↑π`). -/
private lemma continuousAt_angle_toReal {ψ : Real.Angle} (h : ψ ≠ (π : Real.Angle)) :
    ContinuousAt Real.Angle.toReal ψ := by
  have h' : ψ ≠ (((-π : ℝ) : Real.Angle)) := by
    rw [Real.Angle.coe_neg, Real.Angle.neg_coe_pi]
    exact h
  have hc : ContinuousAt (fun x : AddCircle (2 * π) =>
      ((AddCircle.equivIoc (2 * π) (-π) x : ℝ))) ψ :=
    continuous_subtype_val.continuousAt.comp
      (AddCircle.continuousAt_equivIoc (2 * π) (-π) h')
  exact hc

/-- Helper: off `Δ`, `windSum θ = 2π * (w hN θ)` — the spec of the choice in `w`. -/
private lemma windSum_eq_two_pi_mul_w {N : ℕ} [NeZero N] (hN : 3 ≤ N) {θ : Config N}
    (hθ : θ ∉ Delta N) : windSum θ = 2 * π * (w hN θ : ℝ) := by
  have hw : w hN θ = (winding_integer hN θ hθ).choose := dif_pos hθ
  rw [hw]
  exact (winding_integer hN θ hθ).choose_spec.1

/-- Helper: `windSum` is continuous at every `θ ∉ Δ` (each bond avoids the
    antipode there, so each `toReal` term is continuous at `θ`). -/
private lemma continuousAt_windSum {N : ℕ} [NeZero N] {θ : Config N} (hθ : θ ∉ Delta N) :
    ContinuousAt (windSum (N := N)) θ := by
  have hbond : ∀ i : Fin N, bond θ i ≠ (π : Real.Angle) := fun i hi => hθ ⟨i, hi⟩
  have hterm : ∀ i : Fin N, ContinuousAt (fun θ' : Config N => (bond θ' i).toReal) θ := by
    intro i
    have hb : Continuous (fun θ' : Config N => bond θ' i) := by
      unfold bond
      exact (continuous_apply (i + 1)).sub (continuous_apply i)
    exact ContinuousAt.comp (x := θ) (f := fun θ' : Config N => bond θ' i)
      (continuousAt_angle_toReal (hbond i)) hb.continuousAt
  show Filter.Tendsto (fun θ' : Config N => ∑ i : Fin N, (bond θ' i).toReal)
    (nhds θ) (nhds (∑ i : Fin N, (bond θ i).toReal))
  exact tendsto_finsetSum Finset.univ (fun i _ => hterm i)

/-- **T1.1 (ii)** — `w` is locally constant on the open set `T^N ∖ Δ`. -/
theorem w_locallyConstant {N : ℕ} [NeZero N] (hN : 3 ≤ N) :
    ∀ θ ∈ (Delta N)ᶜ, ∃ U ∈ nhds θ, ∀ θ' ∈ U, θ' ∈ (Delta N)ᶜ → w hN θ' = w hN θ := by
  intro θ hθ
  have hθΔ : θ ∉ Delta N := hθ
  have h2π : (0 : ℝ) < 2 * π := by positivity
  -- a neighborhood of θ on which windSum moves by less than 2π
  have hev0 : ∀ᶠ y in nhds (windSum θ), dist y (windSum θ) < 2 * π :=
    Metric.ball_mem_nhds _ h2π
  have hev : ∀ᶠ θ' in nhds θ, dist (windSum θ') (windSum θ) < 2 * π :=
    (continuousAt_windSum hθΔ).eventually hev0
  refine ⟨{θ' : Config N | dist (windSum θ') (windSum θ) < 2 * π}, hev, ?_⟩
  intro θ' hU hθ'Δ
  have hθ'Δ' : θ' ∉ Delta N := hθ'Δ
  have hd : |windSum θ' - windSum θ| < 2 * π := by
    rw [← Real.dist_eq]
    exact hU
  have e1 : windSum θ' = 2 * π * (w hN θ' : ℝ) := windSum_eq_two_pi_mul_w hN hθ'Δ'
  have e2 : windSum θ = 2 * π * (w hN θ : ℝ) := windSum_eq_two_pi_mul_w hN hθΔ
  have h3 : |2 * π * ((w hN θ' : ℝ) - (w hN θ : ℝ))| < 2 * π := by
    rw [mul_sub, ← e1, ← e2]
    exact hd
  rw [abs_mul, abs_of_pos h2π] at h3
  have h4 : |(w hN θ' : ℝ) - (w hN θ : ℝ)| < 1 :=
    (mul_lt_iff_lt_one_right h2π).mp h3
  have h5 : |w hN θ' - w hN θ| < 1 := by exact_mod_cast h4
  rw [abs_lt] at h5
  omega

/-- Each bond map `θ ↦ θ (i+1) - θ i` is continuous on the product torus. -/
private lemma continuous_bond {N : ℕ} [NeZero N] (i : Fin N) :
    Continuous (fun θ : Config N => bond θ i) := by
  unfold bond
  exact (continuous_apply (i + 1)).sub (continuous_apply i)

/-- `Δ` as a finite union of preimages of the antipode singleton. -/
private lemma Delta_eq_iUnion (N : ℕ) [NeZero N] :
    Delta N = ⋃ i : Fin N, (fun θ : Config N => bond θ i) ⁻¹' {(π : Real.Angle)} := by
  ext θ
  simp [Delta, Set.mem_iUnion, Set.mem_preimage, Set.mem_singleton_iff]

/-- `Δ` is closed. -/
theorem isClosed_Delta {N : ℕ} [NeZero N] : IsClosed (Delta N) := by
  rw [Delta_eq_iUnion]
  exact isClosed_iUnion_of_finite fun i =>
    isClosed_singleton.preimage (continuous_bond i)

/-! Helper instances for `volume_Delta_eq_zero`, transported from `AddCircle (2π)`
    by definitional equality (same discipline as the header instances). -/

/-- `AddCircle (2π)` is nontrivial (`↑π ≠ 0`); feeds the `PerfectSpace` →
    `(𝓝[≠] 0).NeBot` → `IsAddHaarMeasure.noAtoms` instance chain. -/
private instance : Nontrivial (AddCircle (2 * π)) :=
  ⟨⟨((π : ℝ) : AddCircle (2 * π)), 0, fun h => Real.Angle.pi_ne_zero h⟩⟩

private instance : NoAtoms (volume : Measure Real.Angle) :=
  inferInstanceAs (NoAtoms (volume : Measure (AddCircle (2 * π))))

private instance : MeasurableSingletonClass Real.Angle :=
  inferInstanceAs (MeasurableSingletonClass (AddCircle (2 * π)))

private instance : MeasurableSub₂ Real.Angle :=
  inferInstanceAs (MeasurableSub₂ (AddCircle (2 * π)))

/-- One antipodal bond constraint is Haar-null: split off the coordinate `i+1` with
    `piFinSuccAbove`, then Fubini (`prod_apply_symm`) reduces to the measure of a
    singleton slice `{↑π + θ i}` in one `Real.Angle` factor, which is `0` (no atoms). -/
private lemma volume_bond_eq_pi_eq_zero {n : ℕ} (i : Fin (n + 3)) :
    volume {θ : Config (n + 3) | bond θ i = (π : Real.Angle)} = 0 := by
  classical
  have hik : i ≠ i + 1 := by
    intro h
    have h1 : (1 : Fin (n + 3)) = 0 := left_eq_add.mp h
    have h2 := congrArg Fin.val h1
    simp at h2
  obtain ⟨j₀, hj₀⟩ := Fin.exists_succAbove_eq hik
  -- measurable equiv splitting off the coordinate `i + 1`
  set e := MeasurableEquiv.piFinSuccAbove (fun _ : Fin (n + 3) => Real.Angle) (i + 1) with he
  -- the corresponding set in the product `Real.Angle × (Fin (n+2) → Real.Angle)`
  set T : Set (Real.Angle × (Fin (n + 2) → Real.Angle)) :=
    {p | p.1 - p.2 j₀ = (π : Real.Angle)} with hTdef
  have hTm : MeasurableSet T := by
    have hmeas : Measurable fun p : Real.Angle × (Fin (n + 2) → Real.Angle) => p.1 - p.2 j₀ :=
      measurable_fst.sub ((measurable_pi_apply j₀).comp measurable_snd)
    exact hmeas (measurableSet_singleton (π : Real.Angle))
  have hpre : {θ : Config (n + 3) | bond θ i = (π : Real.Angle)} = e ⁻¹' T := by
    ext θ
    have h1 : θ ((i + 1).succAbove j₀) = θ i := by rw [hj₀]
    simp only [Set.mem_setOf_eq, Set.mem_preimage, hTdef, he, bond,
      MeasurableEquiv.piFinSuccAbove_apply, Fin.insertNthEquiv_symm_apply,
      Fin.removeNth_apply, h1]
  have hmp := MeasureTheory.measurePreserving_piFinSuccAbove
      (fun _ : Fin (n + 3) => (volume : Measure Real.Angle)) (i + 1)
  calc volume {θ : Config (n + 3) | bond θ i = (π : Real.Angle)}
      = Measure.pi (fun _ : Fin (n + 3) => (volume : Measure Real.Angle)) (e ⁻¹' T) := by
        rw [hpre, MeasureTheory.volume_pi]
    _ = ((volume : Measure Real.Angle).prod
          (Measure.pi fun _ : Fin (n + 2) => (volume : Measure Real.Angle))) T :=
        hmp.measure_preimage hTm.nullMeasurableSet
    _ = 0 := by
        rw [Measure.prod_apply_symm hTm]
        have hslice : ∀ y : Fin (n + 2) → Real.Angle,
            ((fun x => (x, y)) ⁻¹' T) = {(π : Real.Angle) + y j₀} := by
          intro y
          ext x
          simp [hTdef, sub_eq_iff_eq_add]
        simp [hslice]

/-- **T1.1 (iii)** — `Δ` is null for the Haar (volume) measure on the torus. -/
theorem volume_Delta_eq_zero {N : ℕ} [NeZero N] (hN : 3 ≤ N) :
    volume (Delta N) = 0 := by
  obtain ⟨n, rfl⟩ : ∃ n, N = n + 3 := ⟨N - 3, by omega⟩
  have hD : Delta (n + 3) = ⋃ i, {θ : Config (n + 3) | bond θ i = (π : Real.Angle)} := by
    ext θ
    simp [Delta, Set.mem_iUnion]
  rw [hD]
  exact measure_iUnion_null fun i => volume_bond_eq_pi_eq_zero i

/-- Any `Real.Angle` has cosine at most `1` (via the real representative). -/
private lemma angle_cos_le_one (φ : Real.Angle) : φ.cos ≤ 1 := by
  induction φ using Real.Angle.induction_on with
  | h x =>
    rw [Real.Angle.cos_coe]
    exact Real.cos_le_one x

/-- **T1.2 (a)** — barrier positivity: `J ≥ 2κ` everywhere on `Δ`. -/
theorem J_ge_two_kappa_on_Delta {N : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 < κ) (θ : Config N)
    (hθ : θ ∈ Delta N) : 2 * κ ≤ J κ θ := by
  obtain ⟨i, hi⟩ := hθ
  have hterm : 1 - (bond θ i).cos = 2 := by
    rw [hi, Real.Angle.cos_coe_pi]; norm_num
  have hnonneg : ∀ j : Fin N, j ∈ Finset.univ → 0 ≤ 1 - (bond θ j).cos := by
    intro j _
    have := angle_cos_le_one (bond θ j)
    linarith
  have hsum : 2 ≤ ∑ j : Fin N, (1 - (bond θ j).cos) := by
    calc 2 = 1 - (bond θ i).cos := hterm.symm
    _ ≤ ∑ j : Fin N, (1 - (bond θ j).cos) :=
      Finset.single_le_sum hnonneg (Finset.mem_univ i)
  have hmul : κ * 2 ≤ κ * ∑ j : Fin N, (1 - (bond θ j).cos) :=
    mul_le_mul_of_nonneg_left hsum hκ.le
  unfold J
  linarith

/-- The zero sector. -/
def Sigma0 (N : ℕ) [NeZero N] : Set (Config N) := {θ | θ ∉ Delta N ∧ ∀ h : 3 ≤ N, w h θ = 0}

/-- **T1.2 (b)** — any continuous path from `Σ_0` to a nonzero sector meets `Δ`. -/
theorem path_meets_Delta {N : ℕ} [NeZero N] (hN : 3 ≤ N) (γ : ℝ → Config N)
    (hγ : Continuous γ) (t₀ t₁ : ℝ) (h01 : t₀ ≤ t₁)
    (h0 : γ t₀ ∈ Sigma0 N) (h1 : γ t₁ ∉ Delta N) (h1' : w hN (γ t₁) ≠ 0) :
    ∃ t ∈ Set.Icc t₀ t₁, γ t ∈ Delta N := by
  by_contra hcon
  push Not at hcon
  -- `hcon : ∀ t ∈ Set.Icc t₀ t₁, γ t ∉ Delta N`
  -- The integer winding along the path.
  set f : ℝ → ℤ := fun t => w hN (γ t) with hf
  -- `f` is continuous on `Icc t₀ t₁`: at each point it is eventually constant
  -- within `Icc`, by local constancy of `w` off `Δ` (`w_locallyConstant`).
  have hcont : ContinuousOn f (Set.Icc t₀ t₁) := by
    intro t ht
    obtain ⟨U, hU, hUspec⟩ := w_locallyConstant hN (γ t) (hcon t ht)
    have h1 : ∀ᶠ t' in nhdsWithin t (Set.Icc t₀ t₁), γ t' ∈ U :=
      mem_nhdsWithin_of_mem_nhds (hγ.continuousAt.preimage_mem_nhds hU)
    have h2 : ∀ᶠ t' in nhdsWithin t (Set.Icc t₀ t₁), t' ∈ Set.Icc t₀ t₁ :=
      eventually_mem_nhdsWithin
    have hev : f =ᶠ[nhdsWithin t (Set.Icc t₀ t₁)] fun _ => f t := by
      filter_upwards [h1, h2] with t' hU' hIcc'
      exact hUspec (γ t') hU' (hcon t' hIcc')
    exact (continuousWithinAt_const (b := f t)).congr_of_eventuallyEq hev rfl
  -- A continuous ℤ-valued function on the preconnected `Icc` is constant.
  have hconst : f t₀ = f t₁ :=
    isPreconnected_Icc.constant hcont (Set.left_mem_Icc.mpr h01)
      (Set.right_mem_Icc.mpr h01)
  -- But `f t₀ = 0` (zero sector) while `f t₁ ≠ 0`.
  have h0w : f t₀ = 0 := h0.2 hN
  exact h1' (hconst.symm.trans h0w)
  -- BLUEPRINT: suppose not; then `γ '' Icc t₀ t₁ ⊆ (Delta N)ᶜ` and `w ∘ γ` is a
  --   continuous ℤ-valued (locally constant, `w_locallyConstant`) map on the
  --   connected `Icc t₀ t₁` (`isPreconnected_Icc`), hence constant
  --   (`IsPreconnected.subsingleton` on the image, or `IsLocallyConstant.apply_eq`
  --   on a preconnected set); contradicts `w (γ t₀) = 0 ≠ w (γ t₁)`.

/-- **T1.2 (c)** — exiting `Σ_0` forces the path over energy `≥ 2κ` (with
    `min_{Σ_0} J = 0`, so `2κ` above the zero-sector minimum). -/
theorem barrier_along_path {N : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 < κ) (hN : 3 ≤ N)
    (γ : ℝ → Config N) (hγ : Continuous γ) (t₀ t₁ : ℝ) (h01 : t₀ ≤ t₁)
    (h0 : γ t₀ ∈ Sigma0 N) (h1 : γ t₁ ∉ Delta N) (h1' : w hN (γ t₁) ≠ 0) :
    ∃ t ∈ Set.Icc t₀ t₁, 2 * κ ≤ J κ (γ t) := by
  obtain ⟨t, ht, hmem⟩ := path_meets_Delta hN γ hγ t₀ t₁ h01 h0 h1 h1'
  exact ⟨t, ht, J_ge_two_kappa_on_Delta hκ _ hmem⟩
  -- BLUEPRINT: `path_meets_Delta` gives `t` with `γ t ∈ Delta N`; then
  --   `J_ge_two_kappa_on_Delta` gives `2κ ≤ J κ (γ t)`.
  -- (The "= min_{Σ_0} J + 2κ" clause: constant configs have all bonds 0, so
  --   `J = 0` there and lie in `Σ_0`, giving `min_{Σ_0} J = 0`; a separate
  --   `J_const_config_eq_zero` lemma if the min form is wanted. Path continuity
  --   of the diffusion is the declared wellposedness input, external to T1.)

/-! ## Campaign #5: REFLECTION PARITY (Exhibit A / R6 core) + T1.1(iv).
    The reflection R(θ) = -θ fixes the energy, flips the winding, preserves
    Haar volume; sectors are open with positive volume (T1.1(iv) pieces);
    hence NO measurable function of the energy can equal the winding sum
    almost everywhere - the information-honesty kill, volume form.
    (The invariant-measure form transfers by equivalence of measures -
    rho_beta has a positive density - recorded as the prose-level step.) -/

/-- The coordinate reflection `R(θ) = -θ`. -/
noncomputable def refl (N : ℕ) : Config N → Config N := fun θ i => -(θ i)

/-- **P2** — reflection negates every bond. -/
theorem bond_refl {N : ℕ} [NeZero N] (θ : Config N) (i : Fin N) :
    bond (refl N θ) i = -(bond θ i) := by
  unfold bond refl
  abel

/-- **P3** — the energy is reflection-invariant: `J(Rθ) = J(θ)`. -/
theorem J_refl {N : ℕ} [NeZero N] (κ : ℝ) (θ : Config N) :
    J κ (refl N θ) = J κ θ := by
  unfold J
  congr 1
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [bond_refl, Real.Angle.cos_neg]

/-- **P4** — the antipodal set is reflection-invariant. -/
theorem delta_refl {N : ℕ} [NeZero N] (θ : Config N) :
    refl N θ ∈ Delta N ↔ θ ∈ Delta N := by
  constructor
  · rintro ⟨i, h⟩
    rw [bond_refl] at h
    refine ⟨i, ?_⟩
    rw [← Real.Angle.neg_coe_pi, neg_inj] at h
    exact h
  · rintro ⟨i, h⟩
    exact ⟨i, by rw [bond_refl, h, Real.Angle.neg_coe_pi]⟩

/-- **P5** — off `Δ`, reflection FLIPS the winding sum. -/
theorem windSum_refl {N : ℕ} [NeZero N] (θ : Config N) (hθ : θ ∉ Delta N) :
    windSum (refl N θ) = -windSum θ := by
  unfold windSum
  rw [← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [bond_refl]
  exact Real.Angle.toReal_neg_eq_neg_toReal_iff.2 (fun h => hθ ⟨i, h⟩)

/-- **T1.1(iv), nonemptiness** — the equidistributed configuration
    `e_k(j) = 2πkj/N` lies off `Δ` and has winding sum `2πk`
    (for `2k < N`, the admissible range with a positive margin). -/
theorem sector_nonempty {N : ℕ} [NeZero N] (hN : 3 ≤ N) (k : ℕ) (hk : 2 * k < N) :
    ∃ θ : Config N, θ ∉ Delta N ∧ windSum θ = 2 * π * k := by
  have hNpos : 0 < N := by omega
  have hNR : (0 : ℝ) < N := by exact_mod_cast hNpos
  have hN0 : (N : ℝ) ≠ 0 := ne_of_gt hNR
  -- all bonds of the equidistributed configuration equal ↑(2πk/N)
  have hbond : ∀ i : Fin N,
      bond (fun j : Fin N => ((2 * π * k * j.val / N : ℝ) : Real.Angle)) i
        = ((2 * π * k / N : ℝ) : Real.Angle) := by
    intro i
    have h1N : ((1 : Fin N) : ℕ) = 1 := by
      rw [Fin.val_one']; exact Nat.mod_eq_of_lt (by omega)
    have hval : ((i + 1 : Fin N) : ℕ) = (i.val + 1) % N := by
      rw [Fin.val_add, h1N]
    show ((2 * π * k * ((i + 1 : Fin N) : ℕ) / N : ℝ) : Real.Angle)
        - ((2 * π * k * (i : ℕ) / N : ℝ) : Real.Angle)
        = ((2 * π * k / N : ℝ) : Real.Angle)
    rw [← Real.Angle.coe_sub, Real.Angle.angle_eq_iff_two_pi_dvd_sub]
    rcases Nat.lt_or_ge (i.val + 1) N with hlt | hge
    · -- no wrap: (i+1).val = i.val + 1, the difference is exactly 2πk/N
      refine ⟨0, ?_⟩
      rw [hval, Nat.mod_eq_of_lt hlt]
      push_cast
      field_simp
      ring
    · -- wrap: i.val = N - 1 and (i+1).val = 0; the 2πk jump is a period multiple
      have hiv : i.val + 1 = N := by have := i.isLt; omega
      have hz : ((i + 1 : Fin N) : ℕ) = 0 := by rw [hval, hiv, Nat.mod_self]
      refine ⟨-k, ?_⟩
      rw [hz]
      have hcast : (i.val : ℝ) = (N : ℝ) - 1 := by
        have h : ((i.val : ℝ) + 1) = (N : ℝ) := by exact_mod_cast hiv
        linarith
      rw [hcast]
      push_cast
      field_simp
      ring
  -- the common bond value lies strictly inside the fundamental domain
  have hlt_pi : 2 * π * k / N < π := by
    rw [div_lt_iff₀ hNR]
    have hkN : (2 * (k : ℝ)) < N := by exact_mod_cast hk
    nlinarith [Real.pi_pos]
  have hnonneg : (0 : ℝ) ≤ 2 * π * k / N := by positivity
  have htoReal : ((2 * π * k / N : ℝ) : Real.Angle).toReal = 2 * π * k / N := by
    rw [Real.Angle.toReal_coe_eq_self_iff]
    exact ⟨by linarith [Real.pi_pos], le_of_lt hlt_pi⟩
  refine ⟨fun j : Fin N => ((2 * π * k * j.val / N : ℝ) : Real.Angle), ?_, ?_⟩
  · -- off Δ: the bond value ↑(2πk/N) is not ↑π (compare via toReal)
    rintro ⟨i, hi⟩
    rw [hbond i] at hi
    have hpi := htoReal
    rw [hi, Real.Angle.toReal_pi] at hpi
    linarith
  · -- winding sum: N equal terms of 2πk/N sum to 2πk
    unfold windSum
    rw [Finset.sum_congr rfl (fun i _ => by rw [hbond i, htoReal]),
      Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    field_simp
  -- BLUEPRINT: θ := fun j => ((2 * π * k * j / N : ℝ) : Real.Angle)
  --   (j.val cast). bond θ i = ↑(2πk/N) for every i INCLUDING the wrap
  --   (the coe eats the 2πk jump: at i = last, the real difference is
  --   2πk/N - 2πk ≡ 2πk/N mod 2π - AddCircle.coe_add / coe_sub +
  --   AddCircle.coe_period-style: ↑(x - 2πk) = ↑x since 2πk ∈ zmultiples
  --   (2π); grep AddCircle.coe_eq_coe / QuotientAddGroup.mk for the
  --   period-kill lemma... simplest: show bond θ i = ↑(2*π*k/N) by
  --   computing θ(i+1) - θ i in Real.Angle with push_cast on Fin vals and
  --   case-split i = last vs not, killing the 2πk multiple with
  --   Real.Angle.coe_2pi-style / AddCircle coe zsmul period lemma).
  --   Off Delta: ↑(2πk/N) ≠ ↑π since |2πk/N| < π (2k < N) and both in the
  --   fundamental domain: use Real.Angle.coe_inj-style via toReal
  --   (Real.Angle.toReal_coe_eq_self_iff for |2πk/N| ≤ π... strict here)
  --   vs toReal ↑π = π. windSum: each toReal = 2πk/N (same lemma), sum =
  --   N * (2πk/N) = 2πk (field_simp, N ≠ 0).

/-- **T1.1(iv), openness (windSum-level)** — off `Δ` the winding sum is
    locally constant, so windSum-level sets `{windSum = c}` off `Δ` are open. -/
theorem isOpen_sector {N : ℕ} [NeZero N] (hN : 3 ≤ N) (c : ℝ) :
    IsOpen {θ : Config N | θ ∉ Delta N ∧ windSum θ = c} := by
  rw [isOpen_iff_mem_nhds]
  rintro θ ⟨hθΔ, hθc⟩
  have h2π : (0 : ℝ) < 2 * π := by positivity
  -- (Delta N)ᶜ is a neighborhood of θ
  have hΔopen : (Delta N)ᶜ ∈ nhds θ :=
    (isClosed_Delta (N := N)).isOpen_compl.mem_nhds hθΔ
  -- a neighborhood of θ on which windSum moves by less than 2π
  have hev0 : ∀ᶠ y in nhds (windSum θ), dist y (windSum θ) < 2 * π :=
    Metric.ball_mem_nhds _ h2π
  have hev : ∀ᶠ θ' in nhds θ, dist (windSum θ') (windSum θ) < 2 * π :=
    (continuousAt_windSum hθΔ).eventually hev0
  filter_upwards [hΔopen, hev] with θ' hθ'Δ hd'
  have hθ'Δ' : θ' ∉ Delta N := hθ'Δ
  refine ⟨hθ'Δ', ?_⟩
  have hd : |windSum θ' - windSum θ| < 2 * π := by
    rw [← Real.dist_eq]
    exact hd'
  have e1 : windSum θ' = 2 * π * (w hN θ' : ℝ) := windSum_eq_two_pi_mul_w hN hθ'Δ'
  have e2 : windSum θ = 2 * π * (w hN θ : ℝ) := windSum_eq_two_pi_mul_w hN hθΔ
  have h3 : |2 * π * ((w hN θ' : ℝ) - (w hN θ : ℝ))| < 2 * π := by
    rw [mul_sub, ← e1, ← e2]
    exact hd
  rw [abs_mul, abs_of_pos h2π] at h3
  have h4 : |(w hN θ' : ℝ) - (w hN θ : ℝ)| < 1 :=
    (mul_lt_iff_lt_one_right h2π).mp h3
  have h5 : |w hN θ' - w hN θ| < 1 := by exact_mod_cast h4
  rw [abs_lt] at h5
  have hw : w hN θ' = w hN θ := by omega
  rw [e1, hw, ← e2, hθc]
  -- BLUEPRINT: for θ in the set: (Delta N)ᶜ is open (isClosed_Delta);
  --   windSum is CONTINUOUS at θ (the in-file private continuity route of
  --   w_locallyConstant: continuousAt_angle_toReal at every bond ≠ ↑π,
  --   summed — grep this file for continuousAt / the private helpers and
  --   reuse them; if they are private, re-derive locally in a new private
  --   helper); windSum is integer-2π-valued off Δ (winding_integer), a
  --   continuous function into a discrete-ish set is locally constant:
  --   pick the neighborhood where |windSum θ' - windSum θ| < 2π forces
  --   equality (the w_locallyConstant proof pattern - reuse it).
  --   Conclude with isOpen_iff_mem_nhds.

/-- **P7** — the reflection preserves the Haar volume. -/
theorem measurePreserving_refl {N : ℕ} :
    MeasureTheory.MeasurePreserving (refl N)
      MeasureTheory.volume MeasureTheory.volume := by
  have hneg : MeasureTheory.MeasurePreserving (fun x : Real.Angle => -x)
      MeasureTheory.volume MeasureTheory.volume := by
    have h : MeasureTheory.MeasurePreserving (fun x : AddCircle (2 * π) => -x)
        MeasureTheory.volume MeasureTheory.volume :=
      MeasureTheory.Measure.measurePreserving_neg _
    exact h
  exact MeasureTheory.volume_preserving_pi (fun _ : Fin N => hneg)
  -- BLUEPRINT: refl = pointwise negation on the product (Fin N → Real.Angle).
  --   Route A: componentwise: negation on AddCircle (2π) preserves Haar
  --   (grep: Measure.IsNegInvariant for Haar on abelian groups -
  --   MeasureTheory.Measure.IsAddHaarMeasure gives instances; look for
  --   Measure.map_neg_eq_self / IsNegInvariant (volume : Measure (AddCircle
  --   p))); then the Pi map: MeasurePreserving.pi (grep
  --   MeasureTheory.MeasurePreserving.pi / measurePreserving_pi) applied to
  --   the family of negations. Route B: negation on the product group
  --   directly: volume on the Pi IS the pi of Haars (MeasureSpace.pi) and
  --   (fun θ i => -(θ i)) = Neg.neg on the product group; if the product
  --   volume is registered IsAddHaarMeasure use the same neg-invariance
  --   instance. Measurability of refl: continuous (continuous_neg
  --   componentwise / Pi.continuous_...) → measurable.

/-- Haar volume on `Real.Angle` is positive on nonempty opens, transported from
    `AddCircle (2π)` by definitional equality (same discipline as the header
    instances); feeds the `pi.isOpenPosMeasure` instance on the product torus. -/
private instance : Measure.IsOpenPosMeasure (volume : Measure Real.Angle) :=
  inferInstanceAs (Measure.IsOpenPosMeasure (volume : Measure (AddCircle (2 * π))))

/-- **P8 — THE INFORMATION-HONESTY KILL (Exhibit A / R6, volume form)**:
    NO measurable function of the energy equals the winding sum a.e. -/
theorem no_measurable_readout_recovers_winding {N : ℕ} [NeZero N]
    (hN : 3 ≤ N) {κ : ℝ} (hκ : 0 < κ) :
    ¬ ∃ φ : ℝ → ℝ, Measurable φ ∧
      (∀ᵐ θ : Config N ∂MeasureTheory.volume, φ (J κ θ) = windSum θ) := by
  rintro ⟨φ, hφ, hae⟩
  -- (1) pull the a.e. identity back along the measure-preserving reflection
  have hae2 : ∀ᵐ θ : Config N ∂volume, φ (J κ (refl N θ)) = windSum (refl N θ) :=
    (measurePreserving_refl (N := N)).quasiMeasurePreserving.ae hae
  -- (2) almost every configuration is off the null antipodal set `Δ`
  have aeDelta : ∀ᵐ θ : Config N ∂volume, θ ∉ Delta N := by
    rw [MeasureTheory.ae_iff]
    simpa using volume_Delta_eq_zero hN
  -- (3) combine: a.e. `windSum θ = -windSum θ`, hence `windSum θ = 0` a.e.
  have hzero : ∀ᵐ θ : Config N ∂volume, windSum θ = 0 := by
    filter_upwards [hae, hae2, aeDelta] with θ h1 h2 hΔ
    rw [J_refl, windSum_refl θ hΔ] at h2
    linarith
  -- (4) contradiction with the open, nonempty (hence positive-volume) `k = 1` sector
  obtain ⟨θ₀, hθ₀Δ, hθ₀w⟩ := sector_nonempty hN 1 (by omega)
  set S : Set (Config N) :=
    {θ : Config N | θ ∉ Delta N ∧ windSum θ = 2 * π * (1 : ℕ)} with hS
  have hSopen : IsOpen S := isOpen_sector hN _
  have hSne : S.Nonempty := ⟨θ₀, hθ₀Δ, hθ₀w⟩
  have hSpos : 0 < volume S := hSopen.measure_pos volume hSne
  have hsub : S ⊆ {θ : Config N | ¬ windSum θ = 0} := by
    rintro θ ⟨-, hw⟩
    simp only [Set.mem_setOf_eq, hw, Nat.cast_one, mul_one]
    positivity
  exact absurd (measure_mono_null hsub (MeasureTheory.ae_iff.mp hzero)) hSpos.ne'
  -- BLUEPRINT: rintro ⟨φ, hφm, hae⟩.
  --   (1) Pull back along the reflection: measurePreserving_refl gives
  --   ∀ᵐ θ, φ (J κ (refl N θ)) = windSum (refl N θ) (MeasurePreserving
  --   .quasiMeasurePreserving.ae / ae_map_iff — grep MeasurePreserving +
  --   ae: `(measurePreserving_refl.quasiMeasurePreserving).ae hae`-style,
  --   or Measure.map_eq + ae_map_iff with measurability of the predicate...
  --   pragmatic route: MeasurePreserving.ae_comp or filter_upwards over the
  --   preimage null set).
  --   (2) volume(Delta) = 0 (volume_Delta_eq_zero hN): a.e. θ ∉ Delta.
  --   (3) On the a.e. intersection: φ(J θ) = windSum θ AND φ(J θ) =
  --   φ(J (refl θ)) = windSum (refl θ) = -windSum θ (J_refl, windSum_refl,
  --   delta_refl to keep refl θ off Delta) ⟹ windSum θ = 0 a.e.
  --   (4) Contradiction: the k = 1 sector S := {θ ∉ Delta ∧ windSum = 2π}
  --   is open (isOpen_sector) and nonempty (sector_nonempty hN 1 (by
  --   omega)) hence has POSITIVE volume: grep IsOpen.measure_pos - needs
  --   (volume : Measure (Config N)).IsOpenPosMeasure: the pi of Haar
  --   measures is open-positive (grep IsOpenPosMeasure instances for pi /
  --   Haar; Route: Measure.pi of open-positive is open-positive -
  --   MeasureTheory.Measure.pi... if the instance is missing, prove
  --   positivity directly on a box neighborhood via Measure.pi_pi and
  --   positivity of Haar on AddCircle opens). On S, windSum = 2π ≠ 0
  --   (Real.pi_ne_zero) but windSum = 0 a.e. - a positive-measure set
  --   where a.e.-zero fails: measure_mono_null contradiction.

/-! ## Campaign #8 (carve-out closures): the T1.2(c) min-clause and the
    rho_beta transfer of the R6 kill. -/

/-- **M1a** — the loop energy is nonnegative (half of the min-clause). -/
theorem J_nonneg {N : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 ≤ κ) (θ : Config N) :
    0 ≤ J κ θ := by
  unfold J
  refine mul_nonneg hκ (Finset.sum_nonneg fun i _ => ?_)
  have := angle_cos_le_one (bond θ i)
  linarith
  -- BLUEPRINT: J = κ * Σ (1 - cos); each term ≥ 0 (Real.cos_le_one);
  --   Finset.sum_nonneg; mul_nonneg.

/-- **M1b** — the zero sector attains energy zero (the constant
    configuration): with M1a this is `min_{Σ₀} J = 0`, T1.2(c)'s
    remaining min-clause. -/
theorem exists_Sigma0_J_eq_zero {N : ℕ} [NeZero N] (hN : 3 ≤ N) (κ : ℝ) :
    ∃ θ : Config N, θ ∈ Sigma0 N ∧ J κ θ = 0 := by
  have hbond : ∀ i : Fin N, bond (fun _ => (0 : Real.Angle) : Config N) i = 0 := by
    intro i
    simp [bond]
  have hΔ : (fun _ => (0 : Real.Angle) : Config N) ∉ Delta N := by
    rintro ⟨i, hi⟩
    rw [hbond i] at hi
    exact Real.Angle.pi_ne_zero hi.symm
  have hwind : windSum (fun _ => (0 : Real.Angle) : Config N) = 0 := by
    unfold windSum
    simp [hbond]
  refine ⟨fun _ => (0 : Real.Angle), ⟨hΔ, fun h => ?_⟩, ?_⟩
  · have hspec := windSum_eq_two_pi_mul_w h hΔ
    rw [hwind] at hspec
    have h2π : (2 * π : ℝ) ≠ 0 := by positivity
    have hcast : ((w h (fun _ => (0 : Real.Angle)) : ℤ) : ℝ) = 0 :=
      (mul_eq_zero.mp hspec.symm).resolve_left h2π
    exact_mod_cast hcast
  · unfold J
    simp [hbond, Real.Angle.cos_zero]
  -- BLUEPRINT: θ := fun _ => (0 : Real.Angle). bond θ i = 0 - 0 = 0;
  --   (0 : Real.Angle) ≠ π (toReal 0 = 0 ≠ π, Real.pi_ne_zero /
  --   Real.Angle.toReal_coe... or Real.Angle.toReal_zero + toReal_pi);
  --   so θ ∉ Delta. windSum θ = Σ toReal 0 = 0 (Real.Angle.toReal_zero),
  --   so w = 0 via the winding_integer uniqueness route or directly:
  --   w is DEFINED by choice from winding_integer - use w_locallyConstant?
  --   Simpler: Sigma0 needs `∀ h : 3 ≤ N, w h θ = 0`; w h θ is the chosen
  --   integer with windSum θ = 2π k; windSum = 0 forces k = 0
  --   (2π k = 0, pi_ne_zero). Grep the file for how w is pinned
  --   (choice_spec) and reuse that spec lemma. J: cos 0 = 1
  --   (Real.Angle.cos_zero), each term 0, sum 0, mul_zero.

/-- The (unnormalized) Gibbs measure `rho_beta = e^{-beta J} dvol`. A.e.
    statements are insensitive to normalization, and the corpus's rho_beta
    is this measure normalized - recorded honestly in the docstring. -/
noncomputable def rhoBeta {N : ℕ} [NeZero N] (κ β : ℝ) : MeasureTheory.Measure (Config N) :=
  MeasureTheory.volume.withDensity
    (fun θ => ENNReal.ofReal (Real.exp (-β * J κ θ)))

/-- **M2 — the R6 kill transfers to the invariant (Gibbs) measure**: no
    measurable readout of the energy recovers the winding rho_beta-a.e.
    Closes campaign #5's declared volume-form carve-out (the corpus
    consumes the kill at rho_beta; the density is strictly positive, so
    the null sets agree). -/
theorem no_measurable_readout_recovers_winding_rhoBeta {N : ℕ} [NeZero N]
    (hN : 3 ≤ N) {κ : ℝ} (hκ : 0 < κ) (β : ℝ) :
    ¬ ∃ φ : ℝ → ℝ, Measurable φ ∧
      (∀ᵐ θ : Config N ∂(rhoBeta κ β), φ (J κ θ) = windSum θ) := by
  rintro ⟨φ, hφ, hae⟩
  -- uniform strictly positive lower bound for the Gibbs density:
  -- 0 ≤ J κ θ ≤ κ * (N * 2), hence exp (-β * J) ≥ exp (-(|β| * (κ * (N * 2)))) > 0
  have hlb : ∀ θ : Config N,
      ENNReal.ofReal (Real.exp (-(|β| * (κ * (N * 2))))) ≤
        ENNReal.ofReal (Real.exp (-β * J κ θ)) := by
    intro θ
    have hcos_le : ∀ i : Fin N, (bond θ i).cos ≤ 1 := fun i => by
      rw [← Real.Angle.cos_toReal]; exact Real.cos_le_one _
    have hcos_ge : ∀ i : Fin N, -1 ≤ (bond θ i).cos := fun i => by
      rw [← Real.Angle.cos_toReal]; exact Real.neg_one_le_cos _
    have hJ0 : 0 ≤ J κ θ := by
      unfold J
      exact mul_nonneg hκ.le (Finset.sum_nonneg fun i _ => by
        have := hcos_le i; linarith)
    have hJub : J κ θ ≤ κ * (N * 2) := by
      unfold J
      refine mul_le_mul_of_nonneg_left ?_ hκ.le
      calc ∑ i : Fin N, (1 - (bond θ i).cos)
          ≤ ∑ _i : Fin N, (2 : ℝ) :=
            Finset.sum_le_sum fun i _ => by have := hcos_ge i; linarith
        _ = N * 2 := by
            rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    refine ENNReal.ofReal_le_ofReal (Real.exp_le_exp.mpr ?_)
    rw [neg_mul]
    have hβJ : β * J κ θ ≤ |β| * (κ * (N * 2)) :=
      calc β * J κ θ ≤ |β| * J κ θ :=
            mul_le_mul_of_nonneg_right (le_abs_self β) hJ0
        _ ≤ |β| * (κ * (N * 2)) :=
            mul_le_mul_of_nonneg_left hJub (abs_nonneg β)
    linarith
  -- the volume is absolutely continuous w.r.t. the Gibbs measure
  have habs : (volume : Measure (Config N)) ≪ rhoBeta κ β := by
    refine Measure.AbsolutelyContinuous.mk fun s hs hs0 => ?_
    have key : rhoBeta κ β s
        = ∫⁻ θ in s, ENNReal.ofReal (Real.exp (-β * J κ θ)) ∂volume :=
      withDensity_apply _ hs
    have hle : ENNReal.ofReal (Real.exp (-(|β| * (κ * (N * 2))))) * volume s
        ≤ rhoBeta κ β s := by
      rw [key, ← setLIntegral_const s]
      exact lintegral_mono fun θ => hlb θ
    rw [hs0] at hle
    exact (mul_eq_zero.mp (le_zero_iff.mp hle)).resolve_left
      (ENNReal.ofReal_pos.mpr (Real.exp_pos _)).ne'
  -- transfer the rhoBeta-a.e. identity to volume and feed the sealed kill
  exact no_measurable_readout_recovers_winding hN hκ ⟨φ, hφ, habs.ae_le hae⟩
  -- BLUEPRINT: reduce to no_measurable_readout_recovers_winding. Key:
  --   volume ≪ rhoBeta because the density e^{-βJ} is EVERYWHERE > 0
  --   (Real.exp_pos), so a rhoBeta-null set is volume-null:
  --   rhoBeta s = ∫⁻_s ofReal(exp(-βJ)) dvol = 0 (withDensity_apply,
  --   needs measurability of the density: J measurable - J is continuous?
  --   bond continuous (continuous sub of continuous evals on the product;
  --   Real.Angle.continuous_cos), so J κ measurable via Continuous
  --   .measurable; grep the file - measurability of J may already be a
  --   have inside no_measurable_readout or isOpen_sector machinery),
  --   then setLIntegral_eq_zero_iff / lintegral_eq_zero_iff gives
  --   ofReal(exp) = 0 a.e. on s, but ofReal(exp x) > 0 always
  --   (ENNReal.ofReal_pos.mpr (Real.exp_pos _)) - contradiction unless
  --   vol s = 0. Package as: Measure.AbsolutelyContinuous volume
  --   (rhoBeta κ β) via ae_le / null-set argument, then
  --   (habs.ae_le hae : ∀ᵐ ∂volume, ...) feeds the sealed kill.
  --   Alternative mathlib route: MeasureTheory.withDensity_ae_eq /
  --   Measure.withDensity_absolutelyContinuous' with hf : ∀ᵐ x, f x ≠ 0
  --   and f ≠ ⊤ - grep for withDensity_absolutelyContinuous variants.

/-! ## Campaign #23 (SH.2\'-LOCAL Stage B): the ROTATION-ORBIT geometry -
    the L3 core sealed. The ground sets of the SH.2\'-LOCAL repair are
    rotation orbits (diagonal circles) in angle space; here: the orbit
    map, its bond/energy/winding-sum invariance, its 2*pi periodicity,
    and the ISOMETRIC-EMBEDDING distance identity (the orbit carries
    exactly the circle metric - the explicit-diameter input that kills
    X3 defect 3\'s connectedness hand-wave). Quasiconvexity of the tube
    stays prose (L3, stage C). -/

/-- The rotation-orbit map: the diagonal circle through `θ₀`. -/
noncomputable def orbitMap {N : ℕ} (θ₀ : Config N) (t : ℝ) : Config N :=
  fun i => θ₀ i + (t : Real.Angle)

/-- **O1 — bonds are orbit-constant**: the bond field never changes
    along the rotation orbit. -/
theorem bond_orbitMap {N : ℕ} [NeZero N] (θ₀ : Config N) (t : ℝ)
    (i : Fin N) : bond (orbitMap θ₀ t) i = bond θ₀ i := by
  simp [bond, orbitMap]

/-- **O2 — energy is orbit-constant**: `J` never changes along the
    rotation orbit (the orbit is a flat level set). -/
theorem J_orbitMap {N : ℕ} [NeZero N] (κ : ℝ) (θ₀ : Config N) (t : ℝ) :
    J κ (orbitMap θ₀ t) = J κ θ₀ := by
  unfold J
  congr 1
  exact Finset.sum_congr rfl fun i _ => by rw [bond_orbitMap]

/-- **O3 — the antipodal set is orbit-invariant**: the orbit either
    stays entirely on `Δ` or entirely off it. -/
theorem delta_orbitMap {N : ℕ} [NeZero N] (θ₀ : Config N) (t : ℝ) :
    orbitMap θ₀ t ∈ Delta N ↔ θ₀ ∈ Delta N := by
  unfold Delta
  constructor
  · rintro ⟨i, hi⟩
    exact ⟨i, by rwa [bond_orbitMap] at hi⟩
  · rintro ⟨i, hi⟩
    exact ⟨i, by rwa [bond_orbitMap]⟩

/-- **O4 — the winding sum is orbit-constant** (with O3: the winding
    label is constant along the orbit off `Δ`). -/
theorem windSum_orbitMap {N : ℕ} [NeZero N] (θ₀ : Config N) (t : ℝ) :
    windSum (orbitMap θ₀ t) = windSum θ₀ := by
  unfold windSum
  exact Finset.sum_congr rfl fun i _ => by rw [bond_orbitMap]

/-- **O5 — the orbit closes at `2π`**: the rotation orbit is a circle,
    period `2π`. -/
theorem orbitMap_periodic {N : ℕ} (θ₀ : Config N) (t : ℝ) :
    orbitMap θ₀ (t + 2 * π) = orbitMap θ₀ t := by
  funext i
  unfold orbitMap
  have h : ((t + 2 * π : ℝ) : Real.Angle) = (t : Real.Angle) := by
    rw [Real.Angle.coe_add]
    simp [Real.Angle.coe_two_pi]
  rw [h]

/-- **O6 — THE ISOMETRIC-EMBEDDING IDENTITY (the L3 core)**: the
    distance between two orbit points is EXACTLY the circle distance
    of their parameters - the rotation orbit carries the metric of
    `S¹` with no distortion (sup metric on the configuration torus).
    This is the explicit-geometry input that replaces X3 defect 3\'s
    compactness hand-wave: chain counts along the ground are counts
    on a literal circle. HONEST SCOPE (lens): SUP-metric specific
    (mathlib's product metric; in the L2 metric the same orbit
    stretches by sqrt N - the conversion the SH.2'-LOCAL prose
    carries); a SINGLE-orbit identity (two points of ONE orbit), not
    the statement that the rotation acts by isometries on the whole
    torus; circle distance capped at pi = the orbit's intrinsic
    diameter in this metric. -/
theorem dist_orbitMap {N : ℕ} [NeZero N] (θ₀ : Config N) (t s : ℝ) :
    dist (orbitMap θ₀ t) (orbitMap θ₀ s)
      = dist (t : Real.Angle) (s : Real.Angle) := by
  have hcoord : ∀ i : Fin N,
      dist (orbitMap θ₀ t i) (orbitMap θ₀ s i)
        = dist (t : Real.Angle) (s : Real.Angle) := by
    intro i
    unfold orbitMap
    exact dist_add_left (θ₀ i) _ _
  apply le_antisymm
  · refine (dist_pi_le_iff dist_nonneg).mpr fun i => ?_
    rw [hcoord i]
  · have h0 := dist_le_pi_dist (orbitMap θ₀ t) (orbitMap θ₀ s)
      (0 : Fin N)
    rw [hcoord 0] at h0
    exact h0

end LaneCT1
