/-
  HarrisDiscrete.lean — discrete-time Harris/HLM (B3 spike, upgraded).
  STATUS = 4/5 MACHINE-CHECKED SORRY-FREE (roadmap-v3 L1 fleet,
  2026-07-19): invariant_iterK, drift_iterate (+ its lintegral
  induction helper), sa_transfer, readout_domination_transfer are
  PROVED (standard axioms only; statements byte-identical to the
  blueprint - FROZEN discipline held). The ONE remaining sorry is
  harris_geometric (S4 itself), OPEN AT THE MATHLIB BOUNDARY: the
  invariant-probability EXISTENCE construction is not buildable at
  this pin - no Krylov-Bogolyubov without a TopologicalSpace on the
  bare MeasurableSpace, no weighted-TV CompleteSpace instance on
  Measure/ProbabilityMeasure for the Hairer-Mattingly fixed-point
  route, and the CompleteLattice route yields only 0 and top. This is
  a LIBRARY boundary, not a mathematical one (obstruction record in
  the L1 fleet notes + b3 governance record).
    * This file is still NOT in verify.py's canonical list (it is not
      sorry-free); the 4 proved lemmas individually carry standard-
      axiom audits. Deliverable record:
      governance/b3-harris-discrete-scoping-v1.md.
    * TRANSPOSITION CAVEAT (the spike's declared risk): the corpus's
      HLM engine is CONTINUOUS-TIME (semigroup P_t, generator drift
      L W <= -a W + b 1_C; theorem-classes/harris-lyapunov-minorization).
      No discrete-time display exists in the corpus. The statements
      below are the discrete transposition: kernel iterates in place of
      P_t, the INTEGRATED drift at the t_0-sample (Part G G3 form,
      gamma = exp(-a t_0)) in place of the generator row, H3-D's
      sampled-time minorization verbatim. The correspondence table maps
      each statement to its continuous display + transposition rationale.
    * The abstract kernel here is NOT claimed to be the SDE-generated
      P_{t_0} (that tie is exactly the ground on which the SH.1-discrete
      spike was CUT; it stays BOUNDARY).
  Pin: leanprover/lean4:v4.32.0-rc1, mathlib 360da6fa66c1.
-/
import Mathlib

open MeasureTheory ProbabilityTheory
open scoped ENNReal

namespace HarrisDiscrete

variable {α : Type*} [MeasurableSpace α]

/-! ## The discrete-time objects (local defs; outcome data in themselves) -/

/-- n-step iterate of a Markov kernel (the discrete-time semigroup). -/
noncomputable def iterK (κ : Kernel α α) : ℕ → Kernel α α
  | 0 => Kernel.id
  | n + 1 => (iterK κ n).comp κ

instance iterK_isMarkov (κ : Kernel α α) [IsMarkovKernel κ] (n : ℕ) :
    IsMarkovKernel (iterK κ n) := by
  induction n with
  | zero => unfold iterK; infer_instance
  | succ n ih => unfold iterK; haveI := ih; infer_instance

/-- Invariance of a measure under a kernel: `mu P = mu` (H3's `mu P_t = mu`,
    discrete form). Local def to stay name-robust at the pin. -/
def Invariant (κ : Kernel α α) (μ : Measure α) : Prop := μ.bind κ = μ

/-- The WEIGHTED TOTAL-VARIATION distance `||mu - nu||_W`, in the
    INTEGRAL form: `∫ W d|mu - nu|` with `|mu - nu|` the total-variation
    measure of the signed difference. DEFINITIONAL FORK (recorded in the
    outcome grid): the corpus displays the dual sup form
    `sup_{|f| <= W} |mu(f) - nu(f)|`; the two agree for measurable W >= 1
    up to the standard duality, which is itself UNPROVED here - a
    faithfulness surface, not a formality. ENNReal-valued for
    well-definedness. -/
noncomputable def wdist (W : α → ℝ) (μ ν : Measure α)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] : ℝ≥0∞ :=
  ∫⁻ x, ENNReal.ofReal (W x) ∂(μ.toSignedMeasure - ν.toSignedMeasure).totalVariation

/-- Discrete drift row (H3-C at the t_0-sample, integrated Part-G form):
    one kernel step contracts the weight up to a bounded kick on C.
    Integrability is PART OF THE ROW (the blind lens's catch: Lean's
    Bochner integral is 0 on non-integrable integrands, so the bare
    inequality alone can hold vacuously - the textbook row includes
    W in L^1 of every one-step law). -/
def DriftRow (κ : Kernel α α) (W : α → ℝ) (C : Set α) (γ b : ℝ) : Prop :=
  ∀ x, Integrable W (κ x) ∧
    ∫ y, W y ∂(κ x) ≤ γ * W x + Set.indicator C (fun _ => b) x

/-- Minorization row (H3-D verbatim, discrete): the small set C admits
    `kappa(x, .) >= eps nu(.)` for every x in C. -/
def MinorizationRow (κ : Kernel α α) (C : Set α) (ε : ℝ≥0∞)
    (ν : Measure α) : Prop :=
  ∀ x ∈ C, ε • ν ≤ κ x

/-! ## The statement set -/

/-- **S1 (feasibility anchor)** — invariance passes to every iterate. -/
theorem invariant_iterK (κ : Kernel α α) [IsMarkovKernel κ] (μ : Measure α)
    (h : Invariant κ μ) (n : ℕ) : Invariant (iterK κ n) μ := by
  -- `Invariant κ μ` is `μ.bind κ = μ`, i.e. `κ ∘ₘ μ = μ` in the measure-comp
  -- notation. Induct on `n`; base case is `Measure.id_comp`, the step uses
  -- `Measure.comp_assoc` (bind associativity) to peel off one kernel and then
  -- the invariance hypothesis `h` to collapse `κ ∘ₘ μ` back to `μ`.
  unfold Invariant at h ⊢
  induction n with
  | zero =>
    simp only [iterK]
    exact Measure.id_comp
  | succ n ih =>
    simp only [iterK]
    rw [← Measure.comp_assoc, h]
    exact ih

/-- Private helper for `drift_iterate`: the drift row iterates in the lower
    Lebesgue integral, carrying the EXACT geometric partial sum as the additive
    term (so the induction telescopes). Uses `Kernel.lintegral_comp` for the
    one-step decomposition and the `DriftRow` (with its integrability clause)
    for the pointwise contraction. -/
private theorem drift_iterate_aux1 (κ : Kernel α α) [IsMarkovKernel κ] (W : α → ℝ)
    (C : Set α) (γ b : ℝ) (hγ0 : 0 ≤ γ) (hb : 0 ≤ b)
    (hW : ∀ x, 1 ≤ W x) (hWm : Measurable W)
    (hdrift : DriftRow κ W C γ b) (n : ℕ) (x : α) :
    ∫⁻ y, ENNReal.ofReal (W y) ∂(iterK κ n x)
      ≤ ENNReal.ofReal (γ ^ n * W x + b * ∑ k ∈ Finset.range n, γ ^ k) := by
  have hWnonneg : ∀ z, (0 : ℝ) ≤ W z := fun z => le_trans zero_le_one (hW z)
  have hofReal_meas : Measurable fun y => ENNReal.ofReal (W y) := hWm.ennreal_ofReal
  induction n generalizing x with
  | zero =>
    simp [iterK, Kernel.id_apply, lintegral_dirac' x hofReal_meas]
  | succ n ih =>
    rw [show iterK κ (n + 1) = (iterK κ n).comp κ from rfl,
        Kernel.lintegral_comp _ _ _ hofReal_meas]
    refine le_trans (lintegral_mono fun z => ih z) ?_
    have hf : Integrable (fun z => γ ^ n * W z) (κ x) := (hdrift x).1.const_mul (γ ^ n)
    have hg : Integrable (fun _ : α => b * ∑ k ∈ Finset.range n, γ ^ k) (κ x) :=
      integrable_const _
    have hNonneg : 0 ≤ᵐ[κ x] fun z => γ ^ n * W z + b * ∑ k ∈ Finset.range n, γ ^ k :=
      Filter.Eventually.of_forall fun z =>
        add_nonneg (mul_nonneg (pow_nonneg hγ0 n) (hWnonneg z))
          (mul_nonneg hb (Finset.sum_nonneg fun k _ => pow_nonneg hγ0 k))
    have hInt : Integrable (fun z => γ ^ n * W z + b * ∑ k ∈ Finset.range n, γ ^ k) (κ x) :=
      hf.add hg
    have hEq : ∫⁻ z, ENNReal.ofReal (γ ^ n * W z + b * ∑ k ∈ Finset.range n, γ ^ k) ∂(κ x)
        = ENNReal.ofReal (∫ z, (γ ^ n * W z + b * ∑ k ∈ Finset.range n, γ ^ k) ∂(κ x)) :=
      (ofReal_integral_eq_lintegral_ofReal hInt hNonneg).symm
    rw [hEq]
    apply ENNReal.ofReal_le_ofReal
    rw [integral_add hf hg, integral_const_mul, integral_const]
    have huniv : (κ x).real Set.univ = 1 := by simp
    rw [huniv, smul_eq_mul, one_mul]
    have hind : Set.indicator C (fun _ => b) x ≤ b := by
      by_cases h : x ∈ C
      · exact le_of_eq (Set.indicator_of_mem h _)
      · rw [Set.indicator_of_notMem h]; exact hb
    have hdr : ∫ y, W y ∂(κ x) ≤ γ * W x + b := by
      have h := (hdrift x).2; linarith
    have hγn : (0 : ℝ) ≤ γ ^ n := pow_nonneg hγ0 n
    rw [pow_succ, Finset.sum_range_succ]
    nlinarith [mul_le_mul_of_nonneg_left hdr hγn]

/-- **S2 (the discrete Part-G G3 display)** — the drift row iterates:
    `E_x[W(X_n)] <= gamma^n W(x) + b/(1-gamma)`. -/
theorem drift_iterate (κ : Kernel α α) [IsMarkovKernel κ] (W : α → ℝ)
    (C : Set α) (γ b : ℝ) (hγ0 : 0 ≤ γ) (hγ1 : γ < 1) (hb : 0 ≤ b)
    (hW : ∀ x, 1 ≤ W x) (hWm : Measurable W)
    (hdrift : DriftRow κ W C γ b) (x : α) (n : ℕ) :
    ∫ y, W y ∂(iterK κ n x) ≤ γ ^ n * W x + b / (1 - γ) := by
  have hWnonneg : ∀ z, (0 : ℝ) ≤ W z := fun z => le_trans zero_le_one (hW z)
  rw [integral_eq_lintegral_of_nonneg_ae (Filter.Eventually.of_forall hWnonneg)
      hWm.aestronglyMeasurable]
  have key := drift_iterate_aux1 κ W C γ b hγ0 hb hW hWm hdrift n x
  have hRHSnn : (0 : ℝ) ≤ γ ^ n * W x + b * ∑ k ∈ Finset.range n, γ ^ k :=
    add_nonneg (mul_nonneg (pow_nonneg hγ0 n) (hWnonneg x))
      (mul_nonneg hb (Finset.sum_nonneg fun k _ => pow_nonneg hγ0 k))
  have hle : (∫⁻ y, ENNReal.ofReal (W y) ∂(iterK κ n x)).toReal
      ≤ γ ^ n * W x + b * ∑ k ∈ Finset.range n, γ ^ k := by
    calc (∫⁻ y, ENNReal.ofReal (W y) ∂(iterK κ n x)).toReal
        ≤ (ENNReal.ofReal (γ ^ n * W x + b * ∑ k ∈ Finset.range n, γ ^ k)).toReal :=
          ENNReal.toReal_mono ENNReal.ofReal_ne_top key
      _ = γ ^ n * W x + b * ∑ k ∈ Finset.range n, γ ^ k := ENNReal.toReal_ofReal hRHSnn
  refine le_trans hle ?_
  have hd : (0 : ℝ) < 1 - γ := by linarith
  have hgeom : (∑ k ∈ Finset.range n, γ ^ k) * (1 - γ) = 1 - γ ^ n := by
    have h := geom_sum_mul γ n
    linear_combination -h
  have hγn : (0 : ℝ) ≤ γ ^ n := pow_nonneg hγ0 n
  have hbound : b * ∑ k ∈ Finset.range n, γ ^ k ≤ b / (1 - γ) := by
    rw [le_div_iff₀ hd]
    have hmul : b * (∑ k ∈ Finset.range n, γ ^ k) * (1 - γ) = b * (1 - γ ^ n) := by
      rw [mul_assoc, hgeom]
    rw [hmul]
    nlinarith [mul_nonneg hb hγn]
  linarith

/-- **S3 (S/A Lyapunov transfer lemma)** — the theorem-package's transfer
    row, discrete-coefficient form: an `eta`-dominated antisymmetric kick
    preserves the drift AND the combined coefficient STAYS CONTRACTIVE
    (the lemma's actual payoff - the package's `(1-eta)a` analogue;
    hardened after the blind lens flagged the payoff as unstated). -/
theorem sa_transfer (W : α → ℝ) (C : Set α) (γ b η bA : ℝ)
    (S A : α → ℝ)
    (hS : ∀ x, S x ≤ γ * W x + Set.indicator C (fun _ => b) x)
    (hA : ∀ x, A x ≤ η * (1 - γ) * W x + Set.indicator C (fun _ => bA) x)
    (hγ0 : 0 ≤ γ) (hγ1 : γ < 1) (hη0 : 0 ≤ η) (hη1 : η < 1) :
    0 ≤ γ + η * (1 - γ) ∧ γ + η * (1 - γ) < 1 ∧
    ∀ x, S x + A x
      ≤ (γ + η * (1 - γ)) * W x + Set.indicator C (fun _ => b + bA) x := by
  refine ⟨?_, ?_, ?_⟩
  · -- coefficient nonneg: γ ≥ 0 and η*(1-γ) ≥ 0
    nlinarith [mul_nonneg hη0 (show (0:ℝ) ≤ 1 - γ by linarith)]
  · -- coefficient contractive: 1 - (γ + η*(1-γ)) = (1-η)*(1-γ) > 0
    nlinarith [mul_pos (show (0:ℝ) < 1 - η by linarith) (show (0:ℝ) < 1 - γ by linarith)]
  · -- pointwise drift: add the two rows, indicator splits on x ∈ C
    intro x
    have hSx := hS x
    have hAx := hA x
    have hdist : (γ + η * (1 - γ)) * W x = γ * W x + η * (1 - γ) * W x := by ring
    by_cases hx : x ∈ C
    · simp only [Set.indicator_of_mem hx] at hSx hAx ⊢
      linarith
    · simp only [Set.indicator_of_notMem hx] at hSx hAx ⊢
      linarith
  -- BLUEPRINT: coefficient clauses by nlinarith ((1-eta)(1-gamma) > 0);
  --   pointwise clause via Set.indicator_add + linarith (split on x in C).

/-- **S4 — THE TARGET (discrete-time geometric Harris / HLM-TV).**
    Drift + minorization on the SAME small set, with the aperiodicity
    supplied by the one-step minorization itself (strong aperiodicity:
    the H3-E/DE Part-E pinned formulation), give a unique invariant
    probability and geometric W-weighted TV convergence:
    `||kappa^n(x,.) - mu||_W <= M W(x) r^n`. M, r existence-only (the
    corpus never computes them - CV3 closure scope). -/
theorem harris_geometric (κ : Kernel α α) [IsMarkovKernel κ]
    (W : α → ℝ) (C : Set α) (hC : MeasurableSet C)
    (γ b : ℝ) (hγ0 : 0 ≤ γ) (hγ1 : γ < 1) (hb : 0 ≤ b)
    (hW : ∀ x, 1 ≤ W x) (hWm : Measurable W)
    (hdrift : DriftRow κ W C γ b)
    (ε : ℝ≥0∞) (hε : 0 < ε) (ν : Measure α) [IsProbabilityMeasure ν]
    (hminor : MinorizationRow κ C ε ν)
    -- the drift must actually point INTO C: the small set contains a
    -- W-sublevel STRICTLY above the Hairer-Mattingly critical constant
    -- 2b/(1-gamma) (strictness = the contraction margin; hardened after
    -- the blind lens flagged the non-strict form as razor-thin)
    (R : ℝ) (hR : 2 * b / (1 - γ) < R) (hlevel : C ⊇ {x | W x ≤ R}) :
    ∃ μ : ProbabilityMeasure α, Invariant κ ↑μ ∧
      (∀ μ' : ProbabilityMeasure α, Invariant κ ↑μ' → μ' = μ) ∧
      ∃ M : ℝ≥0∞, M < ⊤ ∧ ∃ r : ℝ≥0∞, r < 1 ∧
        ∀ x n, wdist W (iterK κ n x) ↑μ
          ≤ M * ENNReal.ofReal (W x) * r ^ n := by
  sorry
  -- BLUEPRINT (the full package = F4's 6-18 PM estimate; NOT this spike):
  --   coupling construction from the minorization (Nummelin splitting /
  --   the Hairer-Mattingly weighted-contraction proof: the semi-norm
  --   ||.||_{beta W} contracts in one step for a tuned beta); existence
  --   via Krylov-Bogolyubov on the drift; uniqueness from convergence.
  --   Requires: wdist duality (the fork), iterK measurability plumbing,
  --   and the HM contraction lemma - the three named needs-X items.

/-- **S5 (the readout domination-transfer lemma)** — the PRIMITIVE behind
    HLM-R: a W-dominated readout's mean gap is controlled by the weighted
    TV distance. HLM-R itself = this composed with S4's conclusion (a
    one-line chain, recorded in the correspondence table). Restated in
    primitive form after the blind lens flagged the earlier shape as an
    assumed-bound manipulation overselling "convergence". -/
theorem readout_domination_transfer (W : α → ℝ) (μ₁ μ₂ : Measure α)
    [IsFiniteMeasure μ₁] [IsFiniteMeasure μ₂]
    (R : α → ℝ) (hRm : Measurable R) (CR : ℝ) (hCR : 0 ≤ CR)
    (hdom : ∀ x, |R x| ≤ CR * W x)
    (hint₁ : Integrable R μ₁) (hint₂ : Integrable R μ₂) :
    ENNReal.ofReal |∫ y, R y ∂μ₁ - ∫ y, R y ∂μ₂|
      ≤ ENNReal.ofReal CR * wdist W μ₁ μ₂ := by
  -- BLUEPRINT: |mu1(R) - mu2(R)| <= ∫|R| d|mu1 - mu2| <= CR ∫W d|mu1 - mu2|
  --   = CR * wdist: the signed-measure triangle inequality + domination.
  --   This is where the wdist INTEGRAL form pays: NO duality needed for
  --   this direction (the dual-sup fork is consumed only by S4's proof).
  -- The total-variation measure of s = μ₁ - μ₂ (signed) is (μ₁ - μ₂) + (μ₂ - μ₁),
  -- via the mathlib Jordan-decomposition-of-a-difference lemma.
  have htv : (μ₁.toSignedMeasure - μ₂.toSignedMeasure).totalVariation
      = (μ₁ - μ₂) + (μ₂ - μ₁) := by
    have hdef : (μ₁.toSignedMeasure - μ₂.toSignedMeasure).totalVariation
        = (μ₁.toSignedMeasure - μ₂.toSignedMeasure).toJordanDecomposition.posPart
          + (μ₁.toSignedMeasure - μ₂.toSignedMeasure).toJordanDecomposition.negPart := rfl
    rw [hdef, Measure.toJordanDecomposition_toSignedMeasure_sub,
      Measure.jordanDecompositionOfToSignedMeasureSub_posPart,
      Measure.jordanDecompositionOfToSignedMeasureSub_negPart]
  -- Integrability of R against the two Jordan parts (each `≤` one source measure).
  have hRp : Integrable R (μ₁ - μ₂) := hint₁.mono_measure Measure.sub_le
  have hRq : Integrable R (μ₂ - μ₁) := hint₂.mono_measure Measure.sub_le
  -- The measure identity μ₁ + (μ₂ - μ₁) = μ₂ + (μ₁ - μ₂).
  have hmeas_eq : μ₁ + (μ₂ - μ₁) = μ₂ + (μ₁ - μ₂) := by
    rw [← Measure.toSignedMeasure_eq_toSignedMeasure_iff, Measure.toSignedMeasure_add,
      Measure.toSignedMeasure_add]
    have hs := Measure.sub_toSignedMeasure_eq_toSignedMeasure_sub (μ := μ₁) (ν := μ₂)
    rw [sub_eq_sub_iff_add_eq_add] at hs
    rw [hs]; abel
  -- Transfer to the readout means: integrate the measure identity against R.
  have hint_eq : (∫ y, R y ∂μ₁) + (∫ y, R y ∂(μ₂ - μ₁))
      = (∫ y, R y ∂μ₂) + (∫ y, R y ∂(μ₁ - μ₂)) := by
    rw [← integral_add_measure hint₁ hRq, ← integral_add_measure hint₂ hRp, hmeas_eq]
  have hAeq : (∫ y, R y ∂μ₁) - (∫ y, R y ∂μ₂)
      = (∫ y, R y ∂(μ₁ - μ₂)) - (∫ y, R y ∂(μ₂ - μ₁)) := by linarith
  -- The real domination inequality: |gap| ≤ ∫|R| d|s| ≤ CR ∫W d|s| (real form).
  have hR_tv : Integrable R ((μ₁ - μ₂) + (μ₂ - μ₁)) := hRp.add_measure hRq
  have hAbs_tv : Integrable (fun y => |R y|) ((μ₁ - μ₂) + (μ₂ - μ₁)) := hR_tv.abs
  have hreal : |(∫ y, R y ∂μ₁) - (∫ y, R y ∂μ₂)|
      ≤ ∫ y, |R y| ∂((μ₁ - μ₂) + (μ₂ - μ₁)) := by
    rw [hAeq]
    calc |(∫ y, R y ∂(μ₁ - μ₂)) - (∫ y, R y ∂(μ₂ - μ₁))|
        ≤ |∫ y, R y ∂(μ₁ - μ₂)| + |∫ y, R y ∂(μ₂ - μ₁)| := abs_sub _ _
      _ ≤ (∫ y, |R y| ∂(μ₁ - μ₂)) + (∫ y, |R y| ∂(μ₂ - μ₁)) :=
            add_le_add abs_integral_le_integral_abs abs_integral_le_integral_abs
      _ = ∫ y, |R y| ∂((μ₁ - μ₂) + (μ₂ - μ₁)) :=
            (integral_add_measure hRp.abs hRq.abs).symm
  -- Unfold wdist to the total-variation lintegral.
  have hwd : wdist W μ₁ μ₂ = ∫⁻ y, ENNReal.ofReal (W y) ∂((μ₁ - μ₂) + (μ₂ - μ₁)) := by
    unfold wdist; rw [htv]
  rw [hwd]
  -- Bridge the real Bochner bound to the ENNReal lintegral and apply domination.
  calc ENNReal.ofReal |(∫ y, R y ∂μ₁) - (∫ y, R y ∂μ₂)|
      ≤ ENNReal.ofReal (∫ y, |R y| ∂((μ₁ - μ₂) + (μ₂ - μ₁))) :=
        ENNReal.ofReal_le_ofReal hreal
    _ = ∫⁻ y, ENNReal.ofReal |R y| ∂((μ₁ - μ₂) + (μ₂ - μ₁)) :=
        ofReal_integral_eq_lintegral_ofReal hAbs_tv (ae_of_all _ (fun y => abs_nonneg _))
    _ ≤ ∫⁻ y, ENNReal.ofReal (CR * W y) ∂((μ₁ - μ₂) + (μ₂ - μ₁)) :=
        lintegral_mono (fun y => ENNReal.ofReal_le_ofReal (hdom y))
    _ = ∫⁻ y, ENNReal.ofReal CR * ENNReal.ofReal (W y) ∂((μ₁ - μ₂) + (μ₂ - μ₁)) := by
        simp_rw [ENNReal.ofReal_mul hCR]
    _ = ENNReal.ofReal CR * ∫⁻ y, ENNReal.ofReal (W y) ∂((μ₁ - μ₂) + (μ₂ - μ₁)) :=
        lintegral_const_mul' _ _ ENNReal.ofReal_ne_top

end HarrisDiscrete
