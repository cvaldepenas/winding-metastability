/-
  RidgeLaw.lean — MACHINE-CHECKED, SORRY-FREE (2026-07-05, campaign #3).
  THE FULL RIDGE LAW (LS.2(i)) VERIFIED BY THE LEAN 4 COMPILER:
  E κ d ≥ φ_k(M_abs) pointwise — the load-bearing deterministic keystone of
  the label tower — via the NEW tangent-line proof found during mechanization
  (simpler and airtight where the corpus prose was loose; backported to
  lane-ls-label-sharpness-v1.md with this file as its machine seal).

  VERIFICATION RECORD:
    * lake env lean: zero errors, zero sorries (7/7 fleet, lead-merged and
      lead re-verified).
    * AXIOM AUDIT: #print axioms on all 7 theorems = [propext,
      Classical.choice, Quot.sound] only.
    * STATEMENT FIDELITY: public signatures byte-identical to the audited
      blueprint; trap sweep clean.
    * TOOLCHAIN PIN: leanprover/lean4:v4.32.0-rc1, mathlib rev
      360da6fa66c1273b76b6b2d8c5666fd5ac2e3b56.
  (Original blueprint header follows.)

  THE FULL RIDGE LAW (LS.2(i)): `E κ d ≥ φ_k(M_abs)` pointwise — the absolute-
  bond ridge law, the load-bearing deterministic keystone (K4) of the label
  tower ("the label barrier is the one-bond saddle").

  PROOF ROUTE (NEW — the tangent-line argument, found during mechanization):
  the corpus prose proof (lane-ls LS.2(i), including the 2026-07-05 K4-repaired
  boundary step) argues via constrained minimization; its convexity clause is
  loose (residual bonds can individually exceed π/2 where 1 - cos is concave).
  The airtight route: the TANGENT LINE at the residual mean μ,
      1 - cos x ≥ (1 - cos μ) + sin μ (x - μ)   for ALL x ∈ [-π, π], μ ∈ [0, 3/4],
  summed over the residual bonds makes the linear term VANISH at the mean —
  Jensen on the whole range, no minimizer, no exchange argument; the negative-
  max branch contributes a POSITIVE bonus term sin μ (m - d_{i*}) ≥ 0.
  On machine-check, this proof is to be BACKPORTED to the lane prose.

  MODEL: bond space, self-contained (E, ridgeEnv duplicated verbatim from
  LabelTowerCore.lean — definitional identity by inspection; single-file
  check discipline). Flagship instantiation k = 1, N ≥ 10 in the corollary.
-/
import Mathlib

open Real Finset

namespace RidgeLaw

/-- Bond-space energy (verbatim = LabelTowerCore.E). -/
noncomputable def E {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) : ℝ :=
  κ * ∑ i, (1 - Real.cos (d i))

/-- The ridge envelope (verbatim = LabelTowerCore.ridgeEnv). -/
noncomputable def ridgeEnv (N : ℕ) (κ : ℝ) (k : ℕ) (m : ℝ) : ℝ :=
  κ * ((1 - Real.cos m) + ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - m) / ((N : ℝ) - 1))))

/-- **A1**: `μ sin μ ≥ 1 - cos μ` on `[0, 3/4]` (the tangent bound's `x = 0`
    endpoint). -/
theorem mu_sin_ge_one_sub_cos {μ : ℝ} (h0 : 0 ≤ μ) (h1 : μ ≤ 3 / 4) :
    1 - Real.cos μ ≤ μ * Real.sin μ := by
  rcases eq_or_lt_of_le h0 with h | h
  · simp [← h]
  · have hs : μ - μ ^ 3 / 4 < Real.sin μ :=
      Real.sin_gt_sub_cube h (by linarith)
    have hc : 1 - μ ^ 2 / 2 ≤ Real.cos μ :=
      Real.one_sub_sq_div_two_le_cos
    have h3 : μ * (μ - μ ^ 3 / 4) < μ * Real.sin μ :=
      mul_lt_mul_of_pos_left hs h
    have h4 : (0:ℝ) ≤ μ ^ 2 * (2 - μ ^ 2) :=
      mul_nonneg (sq_nonneg μ) (by nlinarith)
    nlinarith [h3, h4, hc]
  -- BLUEPRINT: f(t) := t sin t - 1 + cos t; f 0 = 0; deriv f t = t cos t ≥ 0 on
  --   [0, 3/4] (cos t > 0 for t < π/2; Real.cos_pos_of_mem_Ioo / cos_nonneg).
  --   monotoneOn_of_deriv_nonneg (or MonotoneOn via HasDerivAt: f' t =
  --   sin t + t cos t - sin t = t cos t; use Real.hasDerivAt_sin/cos + arith),
  --   then f μ ≥ f 0 = 0. Alternative: nlinarith with Real.sin_gt_sub_cube-ish
  --   bounds may be fragile; the deriv route is robust.

/-- **A2**: the tangent bound's `x = π` endpoint:
    `1 + cos μ ≥ sin μ (π - μ)` on `[0, 3/4]`. -/
private lemma hasDerivAt_g_pi (t : ℝ) :
    HasDerivAt (fun s : ℝ => 1 + Real.cos s - Real.sin s * (π - s))
      (-(Real.cos t * (π - t))) t := by
  have h2 : HasDerivAt (fun s : ℝ => π - s) (-1) t := by
    simpa using (hasDerivAt_id t).const_sub π
  have h3 : HasDerivAt (fun s : ℝ => Real.sin s * (π - s))
      (Real.cos t * (π - t) + Real.sin t * (-1)) t :=
    (Real.hasDerivAt_sin t).mul h2
  have h1 : HasDerivAt (fun s : ℝ => 1 + Real.cos s) (-Real.sin t) t :=
    (Real.hasDerivAt_cos t).const_add 1
  have h4 := h1.sub h3
  have heq : -(Real.cos t * (π - t))
      = -Real.sin t - (Real.cos t * (π - t) + Real.sin t * (-1)) := by ring
  rw [heq]
  exact h4

theorem endpoint_pi : ∀ μ : ℝ, 0 ≤ μ → μ ≤ 3 / 4 →
    Real.sin μ * (π - μ) ≤ 1 + Real.cos μ := by
  intro μ hμ0 hμ1
  have hπ3 : (3:ℝ) < π := Real.pi_gt_three
  -- g(t) := 1 + cos t - sin t (π - t) is antitone on [0, 3/4]
  have hanti : AntitoneOn (fun s : ℝ => 1 + Real.cos s - Real.sin s * (π - s))
      (Set.Icc 0 (3 / 4)) := by
    apply antitoneOn_of_deriv_nonpos (convex_Icc 0 (3 / 4))
    · exact fun t _ => (hasDerivAt_g_pi t).continuousAt.continuousWithinAt
    · exact fun t _ => (hasDerivAt_g_pi t).differentiableAt.differentiableWithinAt
    · intro t ht
      rw [interior_Icc] at ht
      rw [(hasDerivAt_g_pi t).deriv]
      have hcos : 0 ≤ Real.cos t := by
        apply Real.cos_nonneg_of_mem_Icc
        constructor
        · linarith [ht.1]
        · linarith [ht.2]
      have hπt : 0 ≤ π - t := by linarith [ht.2]
      have := mul_nonneg hcos hπt
      linarith
  have hmem1 : μ ∈ Set.Icc (0:ℝ) (3 / 4) := ⟨hμ0, hμ1⟩
  have hmem2 : (3 / 4 : ℝ) ∈ Set.Icc (0:ℝ) (3 / 4) := ⟨by norm_num, le_refl _⟩
  have hge := hanti hmem1 hmem2 hμ1
  simp only at hge
  -- Numerics at the right endpoint: g(3/4) ≥ 0.
  have hc : (23:ℝ) / 32 ≤ Real.cos (3 / 4) := by
    have h := Real.one_sub_sq_div_two_le_cos (x := (3 / 4 : ℝ))
    norm_num at h
    linarith
  have hs : Real.sin (3 / 4) ≤ 5703 / 8192 := by
    have hb := Real.sin_bound (x := (3 / 4 : ℝ)) (by rw [abs_of_nonneg] <;> norm_num)
    have h := (abs_sub_le_iff.mp hb).1
    rw [abs_of_nonneg (by norm_num : (0:ℝ) ≤ 3 / 4)] at h
    norm_num at h
    linarith
  have hsn : 0 ≤ Real.sin (3 / 4) :=
    Real.sin_nonneg_of_nonneg_of_le_pi (by norm_num) (by linarith)
  have hπu : π < 3.141593 := Real.pi_lt_d6
  have hprod : Real.sin (3 / 4) * (π - 3 / 4) ≤ (5703 / 8192) * (3.141593 - 3 / 4) :=
    mul_le_mul hs (by linarith) (by linarith) (by norm_num)
  have hg34 : (0:ℝ) ≤ 1 + Real.cos (3 / 4) - Real.sin (3 / 4) * (π - 3 / 4) := by
    have : (5703 / 8192 : ℝ) * (3.141593 - 3 / 4) ≤ 23 / 32 + 1 := by norm_num
    linarith
  linarith
  -- BLUEPRINT: g(μ) := 1 + cos μ - sin μ (π - μ); g' = -cos μ · (π - μ) ≤ 0 on
  --   [0, 3/4] (cos ≥ 0 there, π - μ ≥ 0), so g monotone decreasing
  --   (antitoneOn_of_deriv_nonpos); g(3/4) ≥ 0 numerically:
  --   cos(3/4) ≥ 1 - (3/4)²/2 = 0.71875 (Real.one_sub_sq_div_two_le_cos);
  --   sin(3/4) ≤ 3/4 - (3/4)³/6 + (3/4)⁵/120 ≈ 0.68167 (grep for the cubic/
  --   quintic sin bounds: Real.sin_lt / sin_gt_sub_cube / "sin_bound" in
  --   Mathlib Analysis SpecialFunctions Trigonometric Bounds + Complex
  --   Trigonometric; fallback: sin(3/4) ≤ some rational via sin_bound);
  --   π ≤ 3.141593 (Real.pi_lt_d6). Then g(3/4) ≥ 1.71875 - 0.6817·2.3916 >
  --   0.08 > 0; nlinarith staged with explicit rationals.

/-- Private helper for A3: `h(y) = (cos μ - cos y) - sin μ (y - μ)`; the goal of
    the tangent bound is `0 ≤ h x`. -/
private noncomputable def tangAux (μ : ℝ) : ℝ → ℝ :=
  fun y => (Real.cos μ - Real.cos y) - Real.sin μ * (y - μ)

private lemma tangAux_hasDerivAt (μ y : ℝ) :
    HasDerivAt (tangAux μ) (Real.sin y - Real.sin μ) y := by
  unfold tangAux
  have h1 : HasDerivAt (fun z : ℝ => Real.cos μ - Real.cos z) (0 - -Real.sin y) y :=
    (hasDerivAt_const y (Real.cos μ)).sub (Real.hasDerivAt_cos y)
  have h2 : HasDerivAt (fun z : ℝ => Real.sin μ * (z - μ)) (Real.sin μ * 1) y :=
    HasDerivAt.const_mul (Real.sin μ) ((hasDerivAt_id y).sub_const μ)
  have h3 : HasDerivAt (fun z : ℝ => (Real.cos μ - Real.cos z) - Real.sin μ * (z - μ))
      ((0 - -Real.sin y) - Real.sin μ * 1) y := h1.sub h2
  have h4 : (0 - -Real.sin y) - Real.sin μ * 1 = Real.sin y - Real.sin μ := by ring
  exact h4 ▸ h3

private lemma tangAux_deriv (μ y : ℝ) :
    deriv (tangAux μ) y = Real.sin y - Real.sin μ :=
  (tangAux_hasDerivAt μ y).deriv

private lemma tangAux_diff (μ : ℝ) : Differentiable ℝ (tangAux μ) :=
  fun y => (tangAux_hasDerivAt μ y).differentiableAt

private lemma tangAux_self (μ : ℝ) : tangAux μ μ = 0 := by
  unfold tangAux; ring

/-- **A3 — THE TANGENT-LINE BOUND** (the engine): for `μ ∈ [0, 3/4]` the
    tangent at `μ` lies below `1 - cos` on ALL of `[-π, π]`. -/
theorem tangent_line_bound {μ x : ℝ} (hμ0 : 0 ≤ μ) (hμ1 : μ ≤ 3 / 4)
    (hx : x ∈ Set.Icc (-π) π) :
    (1 - Real.cos μ) + Real.sin μ * (x - μ) ≤ 1 - Real.cos x := by
  obtain ⟨hxl, hxr⟩ := hx
  have hπ3 : (3 : ℝ) < π := Real.pi_gt_three
  have key : 0 ≤ tangAux μ x := by
    rcases le_or_gt x μ with hc1 | hc1
    · -- (P1) x ∈ [-π, μ]: h antitone there, h x ≥ h μ = 0
      have hanti : AntitoneOn (tangAux μ) (Set.Icc (-π) μ) := by
        refine antitoneOn_of_deriv_nonpos (convex_Icc _ _)
          (tangAux_diff μ).continuous.continuousOn
          (tangAux_diff μ).differentiableOn ?_
        intro y hy
        rw [interior_Icc] at hy
        obtain ⟨hy1, hy2⟩ := hy
        rw [tangAux_deriv]
        have hsμ : 0 ≤ Real.sin μ :=
          Real.sin_nonneg_of_nonneg_of_le_pi hμ0 (by linarith)
        rcases le_or_gt y 0 with hy0 | hy0
        · have := Real.sin_nonpos_of_nonpos_of_neg_pi_le hy0 hy1.le
          linarith
        · have : Real.sin y ≤ Real.sin μ :=
            Real.strictMonoOn_sin.monotoneOn
              ⟨by linarith, by linarith⟩ ⟨by linarith, by linarith⟩ hy2.le
          linarith
      have hthis := hanti ⟨hxl, hc1⟩ ⟨by linarith, le_refl μ⟩ hc1
      rw [tangAux_self] at hthis
      exact hthis
    · rcases le_or_gt x (π - μ) with hc2 | hc2
      · -- (P2) x ∈ [μ, π - μ]: h monotone there, h x ≥ h μ = 0
        have hmono : MonotoneOn (tangAux μ) (Set.Icc μ (π - μ)) := by
          refine monotoneOn_of_deriv_nonneg (convex_Icc _ _)
            (tangAux_diff μ).continuous.continuousOn
            (tangAux_diff μ).differentiableOn ?_
          intro y hy
          rw [interior_Icc] at hy
          obtain ⟨hy1, hy2⟩ := hy
          rw [tangAux_deriv]
          rcases le_or_gt y (π / 2) with hy2' | hy2'
          · have : Real.sin μ ≤ Real.sin y :=
              Real.strictMonoOn_sin.monotoneOn
                ⟨by linarith, by linarith⟩ ⟨by linarith, hy2'⟩ hy1.le
            linarith
          · have : Real.sin μ ≤ Real.sin (π - y) :=
              Real.strictMonoOn_sin.monotoneOn
                ⟨by linarith, by linarith⟩ ⟨by linarith, by linarith⟩ (by linarith)
            rw [Real.sin_pi_sub] at this
            linarith
        have hthis := hmono ⟨le_refl μ, by linarith⟩ ⟨hc1.le, hc2⟩ hc1.le
        rw [tangAux_self] at hthis
        exact hthis
      · -- (P3) x ∈ [π - μ, π]: h antitone there, h x ≥ h π ≥ 0 (endpoint_pi)
        have hanti : AntitoneOn (tangAux μ) (Set.Icc (π - μ) π) := by
          refine antitoneOn_of_deriv_nonpos (convex_Icc _ _)
            (tangAux_diff μ).continuous.continuousOn
            (tangAux_diff μ).differentiableOn ?_
          intro y hy
          rw [interior_Icc] at hy
          obtain ⟨hy1, hy2⟩ := hy
          rw [tangAux_deriv]
          have : Real.sin (π - y) ≤ Real.sin μ :=
            Real.strictMonoOn_sin.monotoneOn
              ⟨by linarith, by linarith⟩ ⟨by linarith, by linarith⟩ (by linarith)
          rw [Real.sin_pi_sub] at this
          linarith
        have h1 : tangAux μ π ≤ tangAux μ x :=
          hanti ⟨hc2.le, hxr⟩ ⟨by linarith, le_refl π⟩ hxr
        have hend : Real.sin μ * (π - μ) ≤ 1 + Real.cos μ :=
          endpoint_pi μ hμ0 hμ1
        have hπv : tangAux μ π = (Real.cos μ + 1) - Real.sin μ * (π - μ) := by
          unfold tangAux; rw [Real.cos_pi]; ring
        linarith
  unfold tangAux at key
  linarith
  -- BLUEPRINT: h(x) := (cos μ - cos x) - sin μ (x - μ); goal h x ≥ 0; h μ = 0;
  --   h' x = sin x - sin μ. Piecewise monotone analysis (all deriv-sign
  --   arguments; h differentiable everywhere; use monotoneOn_of_deriv_nonneg /
  --   antitoneOn_of_deriv_nonpos on each piece):
  --   (P1) on [-π, μ]: sin x ≤ sin μ (for x ∈ [0, μ]: strictMonoOn_sin on
  --        [-π/2, π/2] since μ ≤ 3/4 < π/2; for x ∈ [-π, 0]: sin x ≤ 0 ≤ sin μ)
  --        so h antitone on [-π, μ], hence h x ≥ h μ = 0 for x ≤ μ.
  --   (P2) on [μ, π - μ]: sin x ≥ sin μ (if x ≤ π/2 by monotonicity; if
  --        x > π/2 use sin x = sin (π - x) with π - x ∈ [μ, π/2]) so h monotone
  --        increasing, h x ≥ h μ = 0.
  --   (P3) on [π - μ, π]: h antitone (sin x ≤ sin μ via sin x = sin(π-x),
  --        π - x ≤ μ), so h x ≥ h π = (cos μ + 1) - sin μ (π - μ) ≥ 0 = A2.
  --   Assemble by rcases on x vs μ, π - μ. Note μ ≤ 3/4 < π/2 < π - μ keeps
  --   the pieces ordered (needs 3/4 < π/2: π > 3/2 from Real.pi_gt_three).

/-- **A4 — Jensen-via-tangent on the WHOLE range**: summed tangent bound; the
    linear term is explicit (vanishes at the exact mean). -/
theorem sum_tangent {M : ℕ} {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 3 / 4)
    (c : Fin M → ℝ) (hrange : ∀ i, c i ∈ Set.Icc (-π) π) :
    (M : ℝ) * (1 - Real.cos t) + Real.sin t * ((∑ i, c i) - M * t)
      ≤ ∑ i, (1 - Real.cos (c i)) := by
  calc (M : ℝ) * (1 - Real.cos t) + Real.sin t * ((∑ i, c i) - M * t)
      = ∑ i : Fin M, ((1 - Real.cos t) + Real.sin t * (c i - t)) := by
        simp only [Finset.sum_add_distrib, ← Finset.mul_sum,
          Finset.sum_sub_distrib, Finset.sum_const, card_univ,
          Fintype.card_fin, nsmul_eq_mul]
        ring
    _ ≤ ∑ i, (1 - Real.cos (c i)) :=
        Finset.sum_le_sum fun i _ => tangent_line_bound ht0 ht1 (hrange i)

/-- **A5**: the max bound absorbs the sum: `∑ d ≤ N · |d i⋆|` under `hmax`. -/
theorem sum_le_card_mul_max {N : ℕ} (d : Fin N → ℝ) (istar : Fin N)
    (hmax : ∀ j, |d j| ≤ |d istar|) :
    (∑ i, d i) ≤ (N : ℝ) * |d istar| := by
  calc (∑ i, d i) ≤ ∑ _i : Fin N, |d istar| := by
        exact Finset.sum_le_sum fun i _ => (le_abs_self (d i)).trans (hmax i)
    _ = (N : ℝ) * |d istar| := by
        rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  -- BLUEPRINT: d i ≤ |d i| ≤ |d istar| (le_abs_self); Finset.sum_le_sum then
  --   sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul.

/-- **A6 — THE RIDGE LAW** (general form): if the residual mean
    `r = (2πk - |d i⋆|)/(N-1)` lies in `[0, 3/4]`, then `E κ d ≥ φ_k(|d i⋆|)`. -/
theorem ridge_law {N : ℕ} {κ : ℝ} {k : ℕ} (hκ : 0 < κ) (hN : 3 ≤ N)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (istar : Fin N)
    (hmax : ∀ j, |d j| ≤ |d istar|)
    (hr : (2 * π * k - |d istar|) / ((N : ℝ) - 1) ∈ Set.Icc 0 (3 / 4)) :
    ridgeEnv N κ k (|d istar|) ≤ E κ d := by
  have hNR : (0:ℝ) < (N:ℝ) - 1 := by
    have h3 : (3:ℝ) ≤ (N:ℝ) := by exact_mod_cast hN
    linarith
  have hne : ((N:ℝ) - 1) ≠ 0 := ne_of_gt hNR
  obtain ⟨hr0, hr1⟩ := hr
  set m := |d istar| with hm
  set r := (2 * π * (k:ℝ) - m) / ((N : ℝ) - 1) with hrdef
  have key : ((N:ℝ) - 1) * r = 2 * π * (k:ℝ) - m := by
    rw [hrdef, mul_comm]
    exact div_mul_cancel₀ _ hne
  have hsinr : 0 ≤ Real.sin r := by
    apply Real.sin_nonneg_of_nonneg_of_le_pi hr0
    have hpi := Real.pi_gt_three
    linarith
  have hcard : (Finset.univ.erase istar).card = N - 1 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ istar), Finset.card_univ,
      Fintype.card_fin]
  have hcardR : ((Finset.univ.erase istar).card : ℝ) = (N:ℝ) - 1 := by
    rw [hcard, Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]
  have hesum : ∑ j ∈ Finset.univ.erase istar, d j = 2 * π * (k:ℝ) - d istar := by
    have h := Finset.add_sum_erase Finset.univ d (Finset.mem_univ istar)
    linarith [hsum, h]
  have htan : ∀ j ∈ Finset.univ.erase istar,
      (1 - Real.cos r) + Real.sin r * (d j - r) ≤ 1 - Real.cos (d j) := by
    intro j _
    have hj := hrange j
    rw [Set.mem_Ioo] at hj
    exact tangent_line_bound hr0 hr1 (Set.mem_Icc.mpr ⟨hj.1.le, hj.2.le⟩)
  have hLHS : ∑ j ∈ Finset.univ.erase istar,
        ((1 - Real.cos r) + Real.sin r * (d j - r))
      = ((N:ℝ) - 1) * (1 - Real.cos r)
        + Real.sin r * ((2 * π * (k:ℝ) - d istar) - ((N:ℝ) - 1) * r) := by
    have e1 : ∑ _j ∈ Finset.univ.erase istar, (1 - Real.cos r)
        = ((N:ℝ) - 1) * (1 - Real.cos r) := by
      rw [Finset.sum_const, nsmul_eq_mul, hcardR]
    have e2 : ∑ j ∈ Finset.univ.erase istar, Real.sin r * (d j - r)
        = Real.sin r * ((2 * π * (k:ℝ) - d istar) - ((N:ℝ) - 1) * r) := by
      rw [← Finset.mul_sum, Finset.sum_sub_distrib, Finset.sum_const,
        nsmul_eq_mul, hcardR, hesum]
    rw [Finset.sum_add_distrib, e1, e2]
  have hstep : ((N:ℝ) - 1) * (1 - Real.cos r)
      ≤ ∑ j ∈ Finset.univ.erase istar, (1 - Real.cos (d j)) := by
    have h1 := Finset.sum_le_sum htan
    rw [hLHS] at h1
    have h2 : Real.sin r * ((2 * π * (k:ℝ) - d istar) - ((N:ℝ) - 1) * r)
        = Real.sin r * (m - d istar) := by
      rw [key]; ring
    rw [h2] at h1
    have h3 : 0 ≤ Real.sin r * (m - d istar) := by
      apply mul_nonneg hsinr
      rw [hm]
      linarith [le_abs_self (d istar)]
    linarith
  have hsplit : ∑ i, (1 - Real.cos (d i))
      = (1 - Real.cos m) + ∑ j ∈ Finset.univ.erase istar, (1 - Real.cos (d j)) := by
    rw [hm, Real.cos_abs]
    exact (Finset.add_sum_erase _ _ (Finset.mem_univ istar)).symm
  show ridgeEnv N κ k m ≤ E κ d
  unfold ridgeEnv E
  rw [← hrdef]
  refine mul_le_mul_of_nonneg_left ?_ hκ.le
  rw [hsplit]
  linarith [hstep]
  -- BLUEPRINT: m := |d istar|; r := (2πk - m)/(N-1).
  --   (1) split E's sum at istar (Finset.add_sum_erase); the istar term:
  --       1 - cos (d istar) = 1 - cos m via Real.cos_abs.
  --   (2) the erased sum: apply sum_tangent on the erase-set — NOTE
  --       sum_tangent is stated over Fin M / univ; adapt: either restate the
  --       sum over univ.erase istar directly by summing tangent_line_bound
  --       over the erase set (Finset.sum_le_sum on erase; then
  --       Finset.sum_const, Finset.card_erase_of_mem, card_univ:
  --       (N-1) terms) — RECOMMENDED (avoid re-indexing to Fin (N-1)).
  --       Each c j ∈ Icc: from Ioo ⊆ Icc (le_of_lt).
  --   (3) residual sum: ∑_{erase} d j = 2πk - d istar (from hsum,
  --       add_sum_erase). Linear term: sin r · ((2πk - d istar) - (N-1) r)
  --       = sin r · (m - d istar) ≥ 0: sin r ≥ 0 (r ∈ [0, 3/4] ⊂ [0, π];
  --       Real.sin_nonneg_of_nonneg_of_le_pi), m - d istar = |d istar| -
  --       d istar ≥ 0 (neg_abs_le / le_abs_self).
  --   (4) (N-1) r = 2πk - m by field_simp ((N:ℝ) - 1 ≠ 0 from hN); assemble:
  --       E/κ ≥ (1 - cos m) + (N-1)(1 - cos r) + (nonneg) ≥ ridgeEnv/κ;
  --       multiply by κ > 0 (mul_le_mul_of_nonneg_left); unfold ridgeEnv.
  --   Cast care: (univ.erase istar).card = N - 1 in ℕ; cast with
  --   Nat.cast_sub (1 ≤ N).

/-- **A7 — flagship instantiation (k = 1, N ≥ 10)**: the residual-mean
    hypothesis holds AUTOMATICALLY (the max is at least the mean `2π/N`, so
    `r ≤ 2π/N ≤ π/5 < 3/4`). -/
theorem ridge_law_flagship {N : ℕ} {κ : ℝ} (hκ : 0 < κ) (hN : 10 ≤ N)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π) (istar : Fin N)
    (hmax : ∀ j, |d j| ≤ |d istar|) :
    ridgeEnv N κ 1 (|d istar|) ≤ E κ d := by
  have hNR : (10 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hNpos : (0 : ℝ) < (N : ℝ) := by linarith
  have hN1 : (0 : ℝ) < (N : ℝ) - 1 := by linarith
  have hpi := Real.pi_pos
  have hpiub : π < 3.141593 := Real.pi_lt_d6
  have hm_lt : |d istar| < π := abs_lt.mpr ⟨(hrange istar).1, (hrange istar).2⟩
  have hmean : 2 * π ≤ (N : ℝ) * |d istar| := by
    have h := sum_le_card_mul_max d istar hmax
    rw [hsum] at h
    exact h
  have hlower : 0 ≤ (2 * π - |d istar|) / ((N : ℝ) - 1) :=
    div_nonneg (by linarith) hN1.le
  have hupper : (2 * π - |d istar|) / ((N : ℝ) - 1) ≤ 3 / 4 := by
    rw [div_le_iff₀ hN1]
    have h2piN : 2 * π ≤ 3 / 4 * (N : ℝ) := by linarith
    have hprod : 0 ≤ ((N : ℝ) - 1) * (3 / 4 * (N : ℝ) - 2 * π) :=
      mul_nonneg hN1.le (by linarith)
    nlinarith [hmean, hprod, hNpos]
  refine ridge_law hκ (by omega) d hrange ?_ istar hmax ?_
  · push_cast
    rw [mul_one]
    exact hsum
  · rw [Set.mem_Icc]
    push_cast
    rw [mul_one]
    exact ⟨hlower, hupper⟩
  -- BLUEPRINT: apply ridge_law with k = 1 (push_cast: 2π·1 = 2π); discharge hr:
  --   m := |d istar|. LOWER: 2π - m ≥ 2π - π = π > 0 (m < π from hrange istar:
  --   |d istar| < π via abs_lt; Real.pi_pos); (N:ℝ) - 1 > 0; div_nonneg.
  --   UPPER: m ≥ 2π/N: from sum_le_card_mul_max: 2π = ∑ d ≤ N·m, so m ≥ 2π/N
  --   (div_le_iff₀). Then r = (2π - m)/(N-1) ≤ (2π - 2π/N)/(N-1) = 2π/N
  --   (sub/div algebra: 2π - m ≤ 2π - 2π/N = 2π(N-1)/N, divide by N-1 > 0).
  --   2π/N ≤ 2π/10 = π/5 ≤ 3/4 ⟺ 4π ≤ 15 ⟺ π ≤ 3.75: Real.pi_lt_d6 →
  --   π < 3.141593 < 3.75; div_le_div_of_nonneg_left with N ≥ 10. nlinarith.

end RidgeLaw
