/-
  QcbCfg.lean — B1(7): QCB-J-PD (F4 target T0-1) + the CFG drift ALGEBRA.
  MACHINE-CHECKED, SORRY-FREE (campaign #10, 2026-07-11: 5 theorems).
  VERIFICATION RECORD: lake env lean EXIT 0, zero sorries; #print axioms
  on all 5 = [propext, Classical.choice, Quot.sound] only; signatures
  byte-identical to the audited blueprint; trap sweep clean; toolchain
  pin as below.
  BLIND-LENS CAVEATS (recorded): qcb_scalar_sandwich is the SCALAR
  (m = n = 1 / worst-case-aligned) form - the vector bridge
  (Cauchy-Schwarz with ||M|| <= 1 + sign-selected instantiation
  y -> +-|y|, even in d) stays prose-level and is the load-bearing
  unformalized step for the R^m x R^n display; cfg_drift_domination
  certifies the Part-C CONSTANT BOOKKEEPING and case split (a, R, b_C
  formulae sound and uniform in r) GIVEN the generator inequality as a
  scalar hypothesis - the generator computation (Ito, trace, skew
  cancellation applied to the actual drift, W in C^2) is ANALYSIS and
  stays prose; no minorization/ergodicity is claimed anywhere here.
  SCOPE HONESTY (by design, recorded before proving):
    * QCB-J-PD is mechanized at the QUADRATIC-FORM level: the coupling
      pairing enters through the hypothesis |P x y| <= |x||y| (the
      corpus's ||M|| = 1), NOT through a matrix API - faithful to the
      display "kappa_0 I <= H <= kappa_1 I exists" with EXPLICIT
      kappa_0, kappa_1 (the corpus states existence; we exhibit the
      sharp scalar roots).
    * The CFG drift is mechanized as the Part-C ALGEBRA GIVEN the
      generator expansion as a hypothesis (steps C1-C5 of the canon
      display): the expansion itself (generator calculus, Dynkin) is
      ANALYSIS and stays prose - exactly the deterministic/analysis
      split the roadmap booked.
  Pin: leanprover/lean4:v4.32.0-rc1, mathlib 360da6fa66c1.
-/
import Mathlib

open Real

namespace QcbCfg

/-- **Q1a — the QCB quadratic form's two-sided eigenvalue sandwich,
    explicit roots**: under `QCB-J-PD (delta^2 < kx*ky)`, the coupled
    quadratic `q(x,y) = kx*x^2 + ky*y^2 - 2*d*x*y` (worst-case aligned
    pairing, scalarized: x = |x|, y = |y|) is sandwiched by the explicit
    roots `k0, k1 = ((kx+ky) MINUS/PLUS sqrt((kx-ky)^2 + 4 d^2))/2`. -/
theorem qcb_scalar_sandwich {kx ky d : ℝ} (hkx : 0 < kx) (hky : 0 < ky)
    (hpd : d ^ 2 < kx * ky) (x y : ℝ) :
    ((kx + ky - Real.sqrt ((kx - ky) ^ 2 + 4 * d ^ 2)) / 2) * (x ^ 2 + y ^ 2)
      ≤ kx * x ^ 2 + ky * y ^ 2 - 2 * d * x * y
    ∧ kx * x ^ 2 + ky * y ^ 2 - 2 * d * x * y
      ≤ ((kx + ky + Real.sqrt ((kx - ky) ^ 2 + 4 * d ^ 2)) / 2) * (x ^ 2 + y ^ 2) := by
  set s := Real.sqrt ((kx - ky) ^ 2 + 4 * d ^ 2) with hs_def
  have harg : (0:ℝ) ≤ (kx - ky) ^ 2 + 4 * d ^ 2 := by positivity
  have hs2 : s ^ 2 = (kx - ky) ^ 2 + 4 * d ^ 2 := Real.sq_sqrt harg
  have hs0 : 0 ≤ s := Real.sqrt_nonneg _
  have habs : |kx - ky| ≤ s := by
    rw [hs_def, ← Real.sqrt_sq_eq_abs]
    exact Real.sqrt_le_sqrt (by nlinarith [sq_nonneg d])
  have hA : 0 ≤ kx - ky + s := by
    have h := neg_abs_le (kx - ky); linarith
  have hB : 0 ≤ ky - kx + s := by
    have h := le_abs_self (kx - ky); linarith
  have hAB : (kx - ky + s) * (ky - kx + s) = 4 * d ^ 2 := by linear_combination hs2
  rcases eq_or_lt_of_le hA with hA0 | hApos
  · -- degenerate case: kx - ky + s = 0 forces d = 0 and s = ky - kx
    have hs_eq : s = ky - kx := by linarith
    have hd2 : d ^ 2 = 0 := by
      linear_combination (-1/4 : ℝ) * hs2 + ((s + ky - kx) / 4) * hs_eq
    have hd : d = 0 := by
      have := sq_eq_zero_iff.mp hd2; exact this
    have hkxky : kx ≤ ky := by linarith
    constructor
    · rw [hs_eq, hd]
      linarith [mul_le_mul_of_nonneg_right hkxky (sq_nonneg y)]
    · rw [hs_eq, hd]
      linarith [mul_le_mul_of_nonneg_right hkxky (sq_nonneg x)]
  · constructor
    · have key : (kx - ky + s) *
          ((kx - ky + s) * x ^ 2 + (ky - kx + s) * y ^ 2 - 4 * d * x * y)
          = ((kx - ky + s) * x - 2 * d * y) ^ 2 := by
        linear_combination y ^ 2 * hAB
      have hT : 0 ≤ (kx - ky + s) * x ^ 2 + (ky - kx + s) * y ^ 2 - 4 * d * x * y := by
        nlinarith [key, sq_nonneg ((kx - ky + s) * x - 2 * d * y), hApos]
      linarith [hT]
    · have key : (kx - ky + s) *
          ((ky - kx + s) * x ^ 2 + (kx - ky + s) * y ^ 2 + 4 * d * x * y)
          = ((kx - ky + s) * y + 2 * d * x) ^ 2 := by
        linear_combination x ^ 2 * hAB
      have hU : 0 ≤ (ky - kx + s) * x ^ 2 + (kx - ky + s) * y ^ 2 + 4 * d * x * y := by
        nlinarith [key, sq_nonneg ((kx - ky + s) * y + 2 * d * x), hApos]
      linarith [hU]
  -- BLUEPRINT: let s := sqrt((kx-ky)^2 + 4d^2); hs : s^2 = (kx-ky)^2 +
  --   4d^2 (Real.sq_sqrt, nonneg arg); hs0 : 0 <= s. LOWER: 2*(q - k0*(x²+y²))
  --   = (kx - ky + s)x² + (ky - kx + s)y² - 4dxy; both coefficients
  --   nonneg (s >= |kx - ky|: s² >= (kx-ky)² and s >= 0); the cross
  --   term: 4|d||x||y| <= 2*sqrt((s+(kx-ky))(s-(kx-ky)))|x||y| since
  --   (s+(kx-ky))(s-(kx-ky)) = s² - (kx-ky)² = 4d²... so it is EXACTLY
  --   a perfect-square domination: (sqrt(s+(kx-ky))|x| -
  --   sqrt(s-(kx-ky))|y|)² >= 0 expands to the needed bound. In Lean:
  --   nlinarith with staged haves [sq_nonneg (a*x - c*y) for suitable
  --   a c involving sqrt terms, Real.sq_sqrt, Real.sqrt_nonneg,
  --   sq_nonneg (x*y), sq_nonneg (x+y), sq_nonneg (x-y)] - give
  --   nlinarith the products it needs; if stuck, case on sign of d and
  --   xy. UPPER: symmetric with k1.

/-- **Q1b — positivity of the lower root** (the QCB-J-PD consequence
    `kappa_0 > 0`): `d^2 < kx*ky` gives `kx + ky > sqrt((kx-ky)^2 + 4 d^2)`. -/
theorem qcb_k0_pos {kx ky d : ℝ} (hkx : 0 < kx) (hky : 0 < ky)
    (hpd : d ^ 2 < kx * ky) :
    0 < (kx + ky - Real.sqrt ((kx - ky) ^ 2 + 4 * d ^ 2)) / 2 := by
  have h1 : Real.sqrt ((kx - ky) ^ 2 + 4 * d ^ 2) < kx + ky :=
    (Real.sqrt_lt' (by linarith)).mpr (by nlinarith)
  linarith

/-- **Q2a — skew self-pairing vanishes** (the NH-4 discharge, step C2):
    a pairing antisymmetric in its arguments vanishes on the diagonal. -/
theorem skew_self_pairing {α : Type*} [AddCommGroup α]
    (B : α → α → ℝ) (hskew : ∀ v w, B v w = -B w v) (v : α) :
    B v v = 0 := by
  have h := hskew v v
  linarith
  -- BLUEPRINT: have := hskew v v; linarith.

/-- **Q2b — THE CFG DRIFT DOMINATION (Part C, steps C3-C5, scalarized)**:
    given the generator bound in the radial variable `r = |q|`
    (hypothesis = the C1-C3 output) and the weight sandwich, the drift
    row `LW <= -a*W + bC * indicator(r <= R)` holds with the canon's
    explicit `a`, `R`, `bC`. Stated pointwise in `r >= 0` with the two
    canon dominations as the proof's skeleton. -/
theorem cfg_drift_domination {gm gp dd DA k0 k1 β : ℝ}
    (hgm : 0 < gm) (hgp : 0 < gp) (hdd : 0 < dd) (hDA : 0 ≤ DA)
    (hk0 : 0 < k0) (hk1 : 0 < k1) (hβ : 0 < β)
    (LW W r : ℝ) (hr : 0 ≤ r)
    (hLW : LW ≤ (gp * dd * k1) / β - gm * k0 ^ 2 * r ^ 2 + (DA * k1 / β) * r)
    (hW1 : 1 ≤ W) (hW : W ≤ 1 + (k1 / 2) * r ^ 2) :
    let a := gm * k0 ^ 2 / k1
    let R := max (4 * DA * k1 / (β * gm * k0 ^ 2))
      (Real.sqrt ((4 / (gm * k0 ^ 2)) * ((gp * dd * k1) / β + a)))
    let bC := (gp * dd * k1) / β + (DA * k1 / β) * R + a * (1 + (k1 / 2) * R ^ 2)
    (R < r → LW ≤ -a * W) ∧ (r ≤ R → LW + a * W ≤ bC) := by
  intro a R bC
  have hgm' : gm ≠ 0 := ne_of_gt hgm
  have hk0' : k0 ≠ 0 := ne_of_gt hk0
  have hk1' : k1 ≠ 0 := ne_of_gt hk1
  have hβ' : β ≠ 0 := ne_of_gt hβ
  have ha : a = gm * k0 ^ 2 / k1 := rfl
  have hbC : bC = (gp * dd * k1) / β + (DA * k1 / β) * R + a * (1 + (k1 / 2) * R ^ 2) := rfl
  have ha0 : 0 < a := by rw [ha]; positivity
  have hc1 : 0 < gp * dd * k1 / β := by positivity
  have hka : a * k1 = gm * k0 ^ 2 := by rw [ha]; field_simp
  have hak : a * (1 + (k1 / 2) * r ^ 2) = a + gm * k0 ^ 2 / 2 * r ^ 2 := by
    linear_combination (r ^ 2 / 2) * hka
  have haW : a * W ≤ a * (1 + (k1 / 2) * r ^ 2) :=
    mul_le_mul_of_nonneg_left hW ha0.le
  constructor
  · -- OFF C (R < r): LW + a*W ≤ [c1 + a] + c2*r - (g/2)r² < 0 by the two dominations
    intro hRr
    -- domination (i): c2*r ≤ (g/4)*r² from r > 4*DA*k1/(β*g)
    have hthr1 : 4 * DA * k1 / (β * gm * k0 ^ 2) < r :=
      lt_of_le_of_lt (le_max_left _ _) hRr
    have hkey1 : gm * k0 ^ 2 / 4 * r ^ 2 - DA * k1 / β * r
        = gm * k0 ^ 2 / 4 * r * (r - 4 * DA * k1 / (β * gm * k0 ^ 2)) := by
      field_simp
    have hpos1 : 0 ≤ gm * k0 ^ 2 / 4 * r * (r - 4 * DA * k1 / (β * gm * k0 ^ 2)) :=
      mul_nonneg (mul_nonneg (by positivity) hr) (sub_pos.mpr hthr1).le
    have hdom1 : DA * k1 / β * r ≤ gm * k0 ^ 2 / 4 * r ^ 2 := by linarith
    -- domination (ii): c1 + a ≤ (g/4)*r² from r > sqrt((4/g)(c1 + a))
    have hthr2 : Real.sqrt (4 / (gm * k0 ^ 2) * (gp * dd * k1 / β + a)) < r :=
      lt_of_le_of_lt (le_max_right _ _) hRr
    have hX0 : 0 ≤ 4 / (gm * k0 ^ 2) * (gp * dd * k1 / β + a) :=
      mul_nonneg (by positivity) (by linarith)
    have hr2 : 4 / (gm * k0 ^ 2) * (gp * dd * k1 / β + a) < r ^ 2 := by
      nlinarith [Real.sq_sqrt hX0,
        Real.sqrt_nonneg (4 / (gm * k0 ^ 2) * (gp * dd * k1 / β + a)), hthr2]
    have hkey2 : gm * k0 ^ 2 / 4 * (4 / (gm * k0 ^ 2) * (gp * dd * k1 / β + a))
        = gp * dd * k1 / β + a := by
      field_simp
    have hdom2 : gp * dd * k1 / β + a ≤ gm * k0 ^ 2 / 4 * r ^ 2 := by
      have h := mul_lt_mul_of_pos_left hr2
        (show (0:ℝ) < gm * k0 ^ 2 / 4 by positivity)
      linarith
    linarith
  · -- ON C (r ≤ R): monotonicity in r, all coefficients nonneg
    intro hrR
    have hgr0 : 0 ≤ gm * k0 ^ 2 * r ^ 2 := by positivity
    have hmono1 : DA * k1 / β * r ≤ DA * k1 / β * R :=
      mul_le_mul_of_nonneg_left hrR (div_nonneg (mul_nonneg hDA hk1.le) hβ.le)
    have hr2R : r ^ 2 ≤ R ^ 2 := by nlinarith
    have hmono2 : a * (1 + (k1 / 2) * r ^ 2) ≤ a * (1 + (k1 / 2) * R ^ 2) := by
      have hinner : 1 + (k1 / 2) * r ^ 2 ≤ 1 + (k1 / 2) * R ^ 2 := by nlinarith
      exact mul_le_mul_of_nonneg_left hinner ha0.le
    linarith [hbC.le, hbC.ge]
  -- BLUEPRINT: intro a R bC; constructor.
  --   OFF C (r > R): LW + aW <= [beta⁻¹gp d k1 + a] + (DA k1/beta) r
  --   - gm k0² r² + a(k1/2)r² = [..] + (DA k1/beta) r - (gm k0²/2) r²
  --   (since a k1/2 = gm k0²/2). Split (gm k0²/2) r² into two quarters:
  --   quarter 1 >= (DA k1/beta) r for r >= 4 DA k1/(beta gm k0²) <= R < r;
  --   quarter 2 >= beta⁻¹ gp d k1 + a for r² >= (4/(gm k0²))(..) - from
  --   r > R >= sqrt(..): r² > (..) via Real.sq_sqrt + sq_lt_sq'
  --   (both sides nonneg; Real.le_sqrt / Real.sqrt_le_left API). Total
  --   LW + aW <= 0. linarith staging.
  --   ON C (r <= R): LW + aW <= beta⁻¹ gp d k1 + (DA k1/beta) r +
  --   a(1 + (k1/2) r²) <= bC by monotonicity in r (r <= R, all
  --   coefficients nonneg; sq_le_sq' / pow_le_pow_left hr). nlinarith.

/-- **Q2c — the weight sandwich itself** (Part B): `k0 <= H-form <= k1`
    pointwise gives `1 + (k0/2) r^2 <= 1 + J <= 1 + (k1/2) r^2` for
    `J` between the half-forms. Pinned as pure arithmetic. -/
theorem weight_sandwich {k0 k1 J r : ℝ}
    (hJ0 : (k0 / 2) * r ^ 2 ≤ J) (hJ1 : J ≤ (k1 / 2) * r ^ 2) :
    1 + (k0 / 2) * r ^ 2 ≤ 1 + J ∧ 1 + J ≤ 1 + (k1 / 2) * r ^ 2 := by
  constructor <;> linarith
  -- BLUEPRINT: constructor <;> linarith.

end QcbCfg
