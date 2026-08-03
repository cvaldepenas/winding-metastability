# Lean Correspondence Tables v1 — the prose<->machine audit surface

Status:

```text
role = STANDING AUDIT SURFACE for the Lean (L-A4) track / NO NEW CLAIMS
produced by = B0 of the ratified attack-roadmap (2026-07-05): BLIND
  back-translation (three agents read ONLY comment-stripped Lean code -
  zero prose access - and re-derived the mathematical meaning of every
  statement) -> sighted correspondence audit vs the corpus prose ->
  seam audit of every assurance-line claim.
verdicts = correspondence FAITHFUL_WITH_FINDINGS (24/24 lemmas: no
  mathematical drift; 7 precision findings) + seam DRIFT_FOUND (12
  findings: 5 OVERCLAIMs, 2 DRIFTs, minors - ALL FIXED 2026-07-05,
  same session; the fixes are in the cited files).
STANDING RULE (ratified roadmap): every future Lean campaign ships its
  per-lemma correspondence table here + one blind back-translation lens.
why blind matters = the compiler is an independent axis for PROOFS, but
  STATEMENTS are same-provider text; the blind back-translation is what
  keeps the machine axis from silently collapsing back into our own
  sigma-algebra (grammar P4).
```

## Key honest-scope facts (fixed claims, post-B0)

```text
LaneCT1.lean       seals T1.1(i)-(iii) + T1.2(a)-(c); T1.1(iv) and the
                   min-clause / a.s. wrapper of T1.2(c) DEFERRED.
LabelTowerCore     P0.2 GIVEN P0.1; off-Delta ASSUMED (not derived);
                   k >= 0 only (negative windings by reflection, not
                   mechanized); ladder = the UPPER rung only (L_k rung
                   absent); Jensen = convex-range engine only.
RidgeLaw           the pointwise law under the EXPLICIT hypothesis
                   r in [0, 3/4] (auto-discharged at the flagship AND,
                   via C1-SUB - the B0-supplied, lead-verified argument -
                   at every admissible k); the MAXIMALITY half
                   (max_m phi_k = S_k) NOT mechanized; the
                   torus<->bond-space bridge is prose-level (no Lean
                   bridge lemma yet).
```

## The audited correspondence table (B0, 2026-07-05)

## Definitions (drift-watch items, audited first)

| Lean def (file) | Corpus row | Verdict |
|---|---|---|
| `Config` (LaneCT1) | lane-c T1 "state space X = T^N = (R/2πZ)^N" | exact (product topology + product Haar, unnormalized — measure-zero claims insensitive) |
| `bond` (LaneCT1) | "theta_{i+1} - theta_i, indices mod N" | exact (cyclic, wrap at N-1→0; only NeZero N needed) |
| `J` (LaneCT1) | "J = κ Σ (1 - cos(θ_{i+1}-θ_i)), κ > 0" | exact (κ unrestricted in def; positivity carried by the theorems, as in prose) |
| `windSum` (LaneCT1) | "w = (1/2π) Σ d(θ_{i+1}-θ_i)", d(x) = unique rep in (-π,π] | exact ×2π (rescaling recorded in blueprint table; toReal branch (-π,π] with +π included = prose d(x) exactly) |
| `Delta` (LaneCT1) | "Delta = {∃i : θ_{i+1}-θ_i = π (mod 2π)}" | exact — SINGLE antipode `(π : Real.Angle)`, exactly as the blueprint drift-watch demands; not two points |
| `w` (LaneCT1) | the integer sector label of T1.1 | exact off Delta (choice-pinned by private lemma windSum = 2π·w, exactly what the drift-watch asked for); conventional 0 on Delta (prose defines w only off Delta — harmless extension) |
| `Sigma0` (LaneCT1) | "Σ_0 = w^{-1}(0)" | exact for N≥3 (proof-quantification quirk for N<3 unused: every consumer carries hN : 3 ≤ N) |
| `E` (LabelTowerCore, RidgeLaw) | J in bond coordinates (lane-ls Standing Data) | exact per the header's bond-space correspondence note (see finding 7) |
| `groundLevel` (LTC) | m_k = Nκ(1-cos(2πk/N)) | exact |
| `saddleParam` (LTC) | a_k = (2πk-π)/(N-2) | exact (N=2 div-by-zero total-function artifact; all consumers carry N≥3) |
| `saddleLevel` (LTC) | S_k = κ[(1+cos a_k)+(N-1)(1-cos a_k)] | exact — algebraically identical display κ(2+(N-2)(1-cos a_k)); both = κ[N-(N-2)cos a_k] |
| `ridgeEnv` (LTC, RidgeLaw) | φ_k(m) = κ[(1-cos m)+(N-1)(1-cos((2πk-m)/(N-1)))] | exact (RidgeLaw copy verbatim-duplicated, recorded as by-inspection identity) |

## The 24 mechanized lemmas

| # | Lean declaration | Corpus row | Verdict |
|---|---|---|---|
| 1 | LaneCT1.sum_bond_eq_zero | T1.1(i) proof: "unlifted differences telescope to 0 mod 2π" | **exact** (in R/2πZ, all θ, no Delta exclusion — as in prose) |
| 2 | LaneCT1.winding_integer | T1.1(i): w integer-valued, \|w\| ≤ ⌊(N-1)/2⌋ | **exact** (∃k: windSum = 2πk ∧ natAbs k ≤ (N-1)/2 nat-floor = prose bound; off-Delta strictness used exactly as prose's open-interval argument; uniqueness trivial, pinned by companion lemma) |
| 3 | LaneCT1.w_locallyConstant | T1.1(ii): w locally constant on the open set T^N∖Delta | **exact** (stated in relative form — equality claimed only on U ∩ Delta-complement; composed with isClosed_Delta in the same file it is the prose claim verbatim; two-line composition not spelled out) |
| 4 | LaneCT1.isClosed_Delta | T1.1(iii) first half: "Delta is closed" | **exact** (holds for all N ≥ 1, more general than the N≥3 frame) |
| 5 | LaneCT1.volume_Delta_eq_zero | T1.1(iii): "Delta ... Lebesgue measure zero, hence ρ_β(Delta) = 0" | **narrower-with-honest-scope** (Lebesgue/Haar-null mechanized, N≥3 matching the declared frame; the ρ_β(Δ)=0 clause NOT mechanized — no ρ_β object in Lean; blueprint row conflates the two clauses → finding 5) |
| 6 | LaneCT1.J_ge_two_kappa_on_Delta | T1.2(a): J ≥ 2κ everywhere on Delta | **exact** (κ>0 as prose; needs only N≠0) |
| 7 | LaneCT1.path_meets_Delta | T1.2(b): continuous path Σ_0 → Σ_k (k≠0) meets Delta | **exact** modulo inessential strengthening (Continuous on ALL of ℝ vs prose [0,1] — constant extension closes the gap trivially; redundant hypothesis h1 given w=0-on-Delta convention → finding 6; conclusion t ∈ [t0,t1] closed = prose "at some time") |
| 8 | LaneCT1.barrier_along_path | T1.2(c): sup_t J(γ(t)) ≥ 2κ along any Σ_0-exit | **narrower-with-honest-scope** (∃t with J ≥ 2κ = the sup clause, exact; the "= min_{Σ_0}J + 2κ" clause and the a.s.-diffusion wrapper NOT mechanized — min clause deferral recorded in blueprint, a.s. clause is the SR-wellposedness probabilistic wrapper outside Lean scope → finding 1) |
| 9 | LabelTowerCore.no_minus_branch_below_barrier | P0.2 proof, the p = 0 step ("both regimes contradict J < 2κ; hence p = 0") | **exact** (two-branch dichotomy cos d_i ∈ {c,-c} taken as given, exactly the position of the step in the prose proof; N≥2 more general than prose N≥3) |
| 10 | LabelTowerCore.eq_of_sin_eq_of_cos_eq | P0.2 proof: "sin d_i = s AND cos d_i = c, so all bonds are equal" | **exact** (supporting step, in the open fundamental domain (-π,π) = bond-space rendering of "equal as elements of R/2πZ" off Delta) |
| 11 | LabelTowerCore.classification_below_barrier | P0.2: critical + J < 2κ ⇒ all bonds equal 2πk/N (θ ∈ C_k, J = m_k) | **narrower-with-honest-scope** (P0.2-GIVEN-P0.1: equal sines is the hypothesis, gradient computation not mechanized — recorded in header AND in lane-c-attractor status line. Unrecorded narrowings: k : ℕ only, negative admissible windings not covered → finding 3; off-Delta is ASSUMED via hrange : Ioo(-π,π) whereas prose DERIVES it → finding 4; converse direction "every C_k point is critical" is P0.1-dependent, covered by the given-P0.1 framing) |
| 12 | LabelTowerCore.ridgeEnv_at_saddle | LS.1 slice / canon: "the saddle identity φ_k(π - a_k) = S_k" | **exact** (pure identity, both S_k displays algebraically equal; the surrounding LS.1 slice-maximality analysis not claimed mechanized — canon claims only the identity) |
| 13 | LabelTowerCore.saddleLevel_gt_two_kappa | LS.1 ladder, upper rung: 2κ < S_k | **exact** (hypothesis 2k+1 < N is IMPLIED by prose's standing C1-SUB(k) — C1-SUB gives cos(2πk/N) > 1-2/N > 0 ⇒ k < N/4 — so Lean is a mild generalization, no narrowing) |
| 14 | LabelTowerCore.jensen_one_sub_cos | LS.2(i) repaired K4 boundary step, the Jensen/equidistribution engine | **narrower-with-honest-scope** (convex-range engine on the CLOSED [-π/2,π/2] only; header explicitly disclaims "NOT the full ridge law LS.2(i)"; the step it powered is superseded by the RidgeLaw tangent proof, supersession recorded in both prose and canon) |
| 15 | LabelTowerCore.groundLevel_ten_lt_two | Standing Data / canon C1-SUB endpoint: m_1(10) = 1.910κ < 2κ | **exact** (κ=1 normalization; m_1 ∝ κ so the κ-free content N(1-cos(2π/N)) < 2 is the full claim) |
| 16 | LabelTowerCore.groundLevel_nine_gt_two | C1-SUB endpoint: m_1(9) = 2.106κ > 2κ (threshold sharp at N=10) | **exact** (same normalization; the pair pins the k=1 threshold exactly as prose states) |
| 17 | LabelTowerCore.ladder | LS.1: m_k < 2κ < L_k < S_k | **narrower-with-honest-scope** (proves only the upper rung 2κ < S_k; the left conjunct m_k < 2κ is the C1-SUB hypothesis handed back — matching prose, where m_k < 2κ IS C1-SUB, an assumption; the L_k middle rung ABSENT from Lean entirely; canon honestly claims only "the ladder's upper rung 2κ < S_k") |
| 18 | RidgeLaw.mu_sin_ge_one_sub_cos (A1) | LS.2(i) tangent section, endpoint fact 1: "μ sin μ ≥ 1 - cos μ" on [0,3/4] | **exact** (hard-coded 3/4 matches prose's "one numeric endpoint at μ = 3/4") |
| 19 | RidgeLaw.endpoint_pi (A2) | endpoint fact 2: "1 + cos μ ≥ sin μ(π - μ)" on [0,3/4] | **exact** (vacuous h0 : 0 ≤ 0 signature artifact carries no content) |
| 20 | RidgeLaw.tangent_line_bound (A3) | THE TANGENT BOUND: 1-cos x ≥ (1-cos μ) + sin μ(x-μ) for ALL x ∈ [-π,π], μ ∈ [0,3/4] | **exact** (verbatim, closed x-interval including ±π as prose "for ALL x in [-π, π]"; μ-restriction to [0,3/4] identical) |
| 21 | RidgeLaw.sum_tangent (A4) | "Summing the tangent bound at μ = r over the N-1 residual bonds" | **exact** (general-M summed form; that ridge_law re-derives it inline is proof-plumbing, not statement drift) |
| 22 | RidgeLaw.sum_le_card_mul_max (A5) | "m ≥ the bond average 2πk/N" (Σd ≤ N·max\|d\|) | **exact** (max-realizing index as hypothesis pair (istar, hmax) — equivalent to prose's M_abs := max, since Fin N is nonempty finite and callers instantiate it) |
| 23 | RidgeLaw.ridge_law (A6) | LS.2(i) POINTWISE: J ≥ φ_k(M_abs) for winding-k x off Delta | **narrower-with-honest-scope** (general form carries r = (2πk-\|d_i*\|)/(N-1) ∈ [0,3/4] as an EXPLICIT hypothesis — the lane prose's MACHINE SEAL paragraph records exactly this narrowing and its flagship auto-discharge, the model case of honest scope; canon summary line omits the caveat → finding 2; k : ℕ nonneg only; conclusion delivers the φ_k branch directly for BOTH signs of d_i*, slightly stronger than prose's min(φ_k, φ_k^-) phrasing in the covered range) |
| 24 | RidgeLaw.ridge_law_flagship (A7) | LS.2(i) flagship: "discharged automatically at k = 1, N ≥ 10" | **exact** (r-hypothesis discharged internally from N≥10 + Σd = 2π via A5, exactly the prose route; unconditional at k=1, N≥10 as claimed in canon and lane) |

**Tally: 17 exact, 7 narrower-with-honest-scope, 0 DRIFT.** Every narrowing is either recorded at the point of claim (P0.1-given, Jensen-engine-only, ladder-upper-rung, r∈[0,3/4] in the lane) or is a trivially-closable gap (relative local constancy, ℝ-continuity, κ=1 scaling); the findings below are the residual recording gaps.


## Campaign #4 appendix (P0.1, 2026-07-05; blind lens per the standing rule)

```text
LEAN DECLARATION                     CORPUS ROW                    VERDICT
dE                                   the differential formula      def only (its
                                     kappa sin(d_i) v_i              correctness IS G1)
hasFDerivAt_E (G1)                   P0.1's gradient computation   exact (ambient
                                     dJ/dtheta_i via bonds           Frechet derivative)
zero_sum_iff_bond_image (G3)         the angle<->bond variation    exact (the seam,
                                     correspondence (prose-level     now a Lean lemma;
                                     until now)                      CYCLIC differences)
critical_slice_iff (G4)              P0.1: grad = 0 iff all bond   exact MODULO the
                                     sines equal                     blind lens's catch:
                                                                     stated with BARE
                                                                     sin (no kappa) - it
                                                                     equals dE-criticality
                                                                     iff kappa != 0
critical_angle_iff (G5)              P0.1 in angle-variation form  exact (same kappa
                                                                     caveat)
classification_below_barrier_        P0.2 FULL (criticality +      exact for k >= 0;
  critical (G6)                        sub-barrier => C_k)           consumed under
                                                                     kappa > 0 where
                                                                     bare-sine = dE-crit
```

Blind-lens caveats recorded verbatim in the campaign record; the kappa != 0
subtlety and the definitional torus-J <-> bond-E identification are the two
remaining prose-level steps of the P0 chain.


## Campaign #5 appendix (reflection parity / R6 + T1.1(iv), 2026-07-05; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                     VERDICT
refl / bond_refl / J_refl /       gate-v12 parity: R fixes J,    exact (pointwise,
  delta_refl / windSum_refl         flips w, fixes Delta           windSum flip
                                                                   CONDITIONAL off Delta)
sector_nonempty                   T1.1(iv) nonemptiness          exact for 0 <= k,
                                    (equidistributed witness)      2k < N (negative k
                                                                   by reflection: not
                                                                   mechanized)
isOpen_sector                     T1.1(iv) openness              exact at the windSum
                                                                   level (arbitrary
                                                                   real level c)
measurePreserving_refl            R preserves the invariant      VOLUME (Haar) form -
                                    measure                       rho_beta transfer =
                                                                   prose-level
no_measurable_readout_            R6 / Exhibit A: no phi with    exact, VOLUME form;
  recovers_winding                  phi(J) = w a.e.                phi : R -> R
                                                                   measurable; windSum
                                                                   (= 2 pi w), not the
                                                                   integer label
```

Blind-lens caveats (verbatim-class): the a.e. is over Haar VOLUME, not the
invariant probability (positive-density equivalence = the prose step); the
windSum flip genuinely FAILS on Delta (the antipode is negation-fixed);
k : Nat only. The two remaining T1 deferrals: T1.2(c) min-clause + a.s.
wrapper.


## Campaign #6 appendix (tube trick / C1-SUB k=2,3 / LS.4 core, 2026-07-05; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
Wstar / Wstar_nonneg              the standard coupling W* >= 0   exact (bond form)
tube_self_exclusion               gate-v18 LP.2 (F2) the tube     the INFERENCE sealed;
                                    self-excludes above the cap     the BAND |E0-S|<=Cr^2
                                                                    is a HYPOTHESIS
                                                                    (LP.1(i) = prose)
groundLevel_{40,39,89,88}...      C1-SUB k=2 <=> N>=40,           exact, kappa = 1
                                    k=3 <=> N>=89 (sharp)           normalization
cos_saddleParam_pos               a_1 in (0, pi/2) for N >= 5     exact (k = 1 only)
hessForm / hessBilin / spBond     the LS.4 transversal Hessian    STATED forms (the
                                    data in bond coordinates        second-derivative
                                                                    identification =
                                                                    prose-level)
hessForm_spBond                   the two-value display           exact
hess_negative_witness             LS.4 index >= 1                 exact (explicit
                                                                    zero-sum witness)
hess_pos_on_perp                  LS.4 transversal positivity     exact (on v0 = 0;
                                                                    zero-sum not needed)
hess_nondegenerate                LS.4 nondegeneracy on the       exact (pairing-kill
                                    slice                           => v = 0; N >= 3,
                                                                    cos a_k > 0 hyp)
```

Blind-lens caveats: the tube band is hypothesis, not proved; hessForm carries
no claim of being a second derivative; index-1 is witness-based, not
spectral; cos-positivity beyond k = 1 is hypothesis.


## Campaign #7 appendix (LS.6 winding-1 classification, 2026-07-10; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
mem_arcsin_branches               (implicit trig fact in LS.6(b)  exact; branches
                                    "at most two branches")         non-exclusive at
                                                                    +-pi/2
no_winding_with_nonpos_sine       LS.6(b) negative-branch         exact; sin <= 0
                                    infeasibility                   covers s = 0 too
bonds_two_valued                  LS.6(b) "bonds on at most two   exact; vacuous for
                                    branches {alpha, pi - alpha}"   s > 1, collapses
                                                                    at s = 1 (both
                                                                    unreachable here)
count_equation                    LS.6(b) the p-count constraint  exact bookkeeping;
                                                                    p := #{d i != alpha}
count_dichotomy                   LS.6(b) p = 0 -> C_1,           exact + SHARPER:
                                    p = 1 -> SP_1, p >= 2           p >= 2 nonexistent
                                    excluded                        off Delta (corpus
                                                                    used level >= 4k);
                                                                    N >= 5 LOAD-BEARING
                                                                    (fails at N = 4)
winding_one_classification        LS.6(b) full classification     exact in equal-sines
                                    (k = 1)                         form; "critical" =
                                                                    P0.1 hypothesis;
                                                                    on-Delta excluded
                                                                    by open range;
                                                                    one-directional
```

Blind-lens caveats (campaign #7): "critical point" is never formalized in
these signatures - the equal-sines hypothesis is P0.1's conclusion (the
bridge critical_slice_iff is in the same file; the composed corollary is
not stated); winding one = the equation sum d = 2*pi on N reals in the open
branch, no curve/geometry in the types; the conclusion does not assert
existence or distinctness of the two families; N >= 5 is essential (at
N = 4 the p = 2 case makes the count equation an identity in alpha);
composability of the six statements was checked at the type level - no
hypothesis gap.


## Campaign #8 appendix (carve-out closures, 2026-07-10; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
J_nonneg                          min-clause half: J >= 0         exact (all of
                                                                    Config N; 0 <= kappa)
exists_Sigma0_J_eq_zero           min_{Sigma_0} J = 0 attained    exact (constant
                                    (T1.2(c) clause)                config IS in Sigma_0
                                                                    at the type level)
rhoBeta (def)                     the Gibbs measure rho_beta      UNNORMALIZED (a.e.-
                                                                    equivalent; flag if
                                                                    ever reused where
                                                                    normalization bites)
no_measurable_readout_..._rhoBeta R6 kill at the invariant        exact modulo the
                                    measure                         normalization note;
                                                                    EVERY real beta
                                                                    (beta = 0 = volume)
winding_one_classification_critical  LS.6(b) composed with P0.1   exact; k = 1 only,
                                                                    one-directional,
                                                                    open branch,
                                                                    Lagrange-slice form
ridgeEnv_strictMonoOn/AntiOn      LS.1 slice family monotone      exact; TRUE REGIME
                                    structure                       N >= 4k+1 (mono) /
                                                                    N >= 4k (anti); hsub
                                                                    and ha equivalent
                                                                    (harmless redundancy)
ridgeEnv_le_saddleLevel           max_m phi_k(m) = S_k            the <= half; attained
                                    (K4 maximality)                 max = caller-composed
                                                                    with ridgeEnv_at_saddle
                                                                    (sealed); N = 4k seam
                                                                    not covered
ladder_middle                     LS.1 middle rungs               exact, strict both
                                    2 kappa < L_k < S_k             sides; N >= 4k
```

Blind-lens caveats (campaign #8): the ridge statements never touch J or
Config N (closed-form slice family; the J-bridge is via the sealed
classification + saddle identity, k = 1); rhoBeta is unnormalized and
beta-unrestricted (harmless HERE because the density is uniformly positive
on the compact torus - a real definitional gap if reused elsewhere);
composability of ladder_middle + le_saddleLevel + at_saddle checked at the
type level on N >= 4k+1.


## Campaign #9 appendix (the LP.1(i) band + unconditional tube exclusion, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
one_sub_cos_taylor_bound          (Taylor engine for the band)    exact; universal
E_spBond                          E at SP_k = S_k (bond display)  exact identity
saddle_band                       LP.1(i) BAND |E0 - S_k| <=      exact IN BOND-
                                    C_Z r^2, theta-factor           QUADRATIC FORM
                                                                    (C = kappa/2);
                                                                    distance to ONE
                                                                    saddle copy;
                                                                    slice-exact hsum
ground_band                       phi-factor band at C_0          upper + bare >= 0
                                                                    (no coercive lower)
product_band                      LP.1(i) for E_0 near Z          exact in the
                                                                    weighted quadratic
                                                                    form
tube_exclusion_unconditional      LP.2 (F2) tube self-exclusion   THE BAND HYPOTHESIS
                                    with the band discharged        DISCHARGED; tube =
                                                                    sublevel of the
                                                                    SAME form (metric-
                                                                    ball conversion =
                                                                    prose L_fr layer);
                                                                    eps*W* inert BY
                                                                    DESIGN (domination)
```

Blind-lens caveats (campaign #9): the tube is the quadratic-form
sublevel, not a metric ball - the exclusion is the band restated plus
strictness (that IS the trick; the residual conversion to max-norm
radii is the ledger's frame layer, prose); no coercive lower bound
outside the tube (one direction of the saddle argument, as consumed);
hsum = bond-sum equation (torus bridge = standing prose caveat);
content requires eps' < S_k (caller-imposed, per the corpus eps'_0
ledger); k unrestricted (barrier readings are separate sealed rows).


## Campaign #10 appendix (carried-forward arithmetic B1(6)/(7), 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
s_sin_gt_one_sub_cos              phi-slope engine (PROD-SHELL)   exact; s <= 2 cap
                                                                    essential
prod_shell_k1                     ROW PROD-SHELL(N,1)             SEALED N >= 5,
                                                                    STRICT, no uniform
                                                                    margin (gap ~ 1/N);
                                                                    k >= 2 stays typed
coupled_ground_level              M2-SUB ground identity          EVALUATION at the
                                    M_k(eps)                        aligned pair (not a
                                                                    minimization; the
                                                                    lam-term vanishes
                                                                    there by design)
coupled_ground_below_cap_iff      epsilon_0 third entry           exact iff; w > 0
                                                                    only (k = 0 mode
                                                                    separate, vacuous
                                                                    per the corpus)
slice_floor_arith                 M2P.5 Step 2 / WC item 5        exact; symbolic c,H
Wv_aligned                        WC (A5) w_j identity            sum_const (the
                                                                    aligned-makes-
                                                                    constant step is
                                                                    definitional)
w2_member_psd                     WC.4 second member (A4)         exact scalar; N >= 7
                                                                    suffices BECAUSE
                                                                    consumed C1-SUB tori
                                                                    need N >= 10 (no
                                                                    N = 5..9 gap; the
                                                                    blind lens's worry
                                                                    resolves via C1-SUB)
deep_case_gain / mc_no_harm       LT.1 deep case / MC.6 no-harm   SUBSTITUTION
                                                                    identities; plateau
                                                                    values are
                                                                    HYPOTHESES (class
                                                                    derivation = prose);
                                                                    b sign-free
qcb_scalar_sandwich / qcb_k0_pos  QCB-J-PD (F4 T0-1)              scalar worst-case
                                                                    form with EXPLICIT
                                                                    sharp roots (corpus
                                                                    states existence);
                                                                    vector bridge
                                                                    (CS + sign-selected
                                                                    instantiation) =
                                                                    prose
skew_self_pairing                 NH-4 skew discharge (C2)        exact (pairing form)
cfg_drift_domination              CFG Part C steps C3-C5          the constants a,R,b_C
                                                                    + case split SOUND
                                                                    given C1-C3's output
                                                                    as hypothesis; the
                                                                    generator computation
                                                                    = analysis, prose
weight_sandwich                   CFG Part B                      plumbing (hypothesis
                                                                    restated + 1)
```

Blind-lens caveats (campaign #10): names oversell in four places
(ground/gain/no-harm/weight are hypothesis-fed identities - recorded in
the headers); roughly a third of the batch is deliberate plumbing that
pins DISPLAYS, not derivations; prod_shell_k1 is the batch's real
theorem, with s_sin_gt_one_sub_cos its engine and qcb_scalar_sandwich
the second substantive seal.


## Campaign #11 appendix (the floor LP.1(ii) linearized + metric layer, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
sin_taylor_bound                  (Taylor engine, gradient side)  exact; universal
slice_grad_sq_identity            LP.1(ii) linearized core        EXACT closed form
                                                                    (design discovery);
                                                                    projected Hessian,
                                                                    NOT grad E
slice_coord_bound                 (slice ingredient)              exact
slice_grad_floor                  LP.1(ii) FLOOR, linearized      EXPLICIT constant
                                    |grad E_0| >= c_Z dist          cos(a_k)(N-2)/N,
                                                                    SQUARED form (all k;
                                                                    bites only N > 4k);
                                                                    NONLINEAR floor NOT
                                                                    stated (l4 step
                                                                    missing, named)
bond_sq_le_maxnorm                L_fr layer (vertex->bond)       exact standalone;
                                                                    upper direction only
metric_tube_exclusion_bond        LP.2 tube in metric form        bond-SUP form;
                                                                    REPLACES the drafted
                                                                    vertex-lift form -
                                                                    KILLED BY THE LENS
                                                                    (vacuous k >= 1:
                                                                    cyclic lift sums
                                                                    telescope to 0,
                                                                    compiler-confirmed)
```

B0-RULE EXHIBIT (the vacuity kill): the drafted vertex-lift
metric_tube_exclusion COMPILED with a completed proof - a theorem with
unsatisfiable hypotheses is still provable, and neither the proving
agent nor the compiler can flag it. The blind back-translation lens
caught it from the SIGNATURE alone (hesum identically true while hsum
identically false for k >= 1). This is the standing rule's existence
proof: proof-compilation certifies validity, only statement audit
certifies content.


## Campaign #12 appendix (gate v19 PROD-TRANSFER core, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
composed_hasFDerivAt              composed-energy chain rule      exact; abstract
composed_critical_iff            (criticality-nullity piece)      exact; abstract
composed_energy_critical_iff      Crit(h o J) = Crit(J)          GENUINE transfer
                                    (STRENGTHENING)                 (V1+V2 composed);
                                                                    torus instantiation
                                                                    f:=J stays prose
composed_floor_ge                 MC.1 c_1^c >= c_1              exact min-monotonicity
composed_ground_below_cap_iff     MC-SUB                         exact iff; w > 0
composed_delta_phi_barrier        MC.2 barrier (abstract)        exact transitivity
                                                                    (free reals)
composed_delta_phi_barrier_       MC.2 barrier, flagship          GENUINE: INVOKES the
  flagship (STRENGTHENING)          k=1 N>=5                        sealed prod_shell_k1
composed_h_ladder                 T2 h-ladder transfer           exact; StrictMono h
hclass_strictMono (STRENGTHENING) h = id+g controlled class       DERIVES StrictMono
                                                                    from g monotone
composed_ground_level             MC E_c(G_k) = h(m_k)+eps w_k   EVALUATION at the
                                                                    aligned pair (not a
                                                                    minimization)
```

B0-RULE EXHIBIT (second in two campaigns): the blind lens returned
"NOT FULLY HONEST" on the first draft - six of seven theorems were
abstract real-analysis/order lemmas whose identification with the
energies was carried by variable NAMING (the Delta_phi barrier did not
actually invoke the sealed shell; criticality transfer sat in two
un-composed pieces; the ladder assumed its monotonicity). Per house
law (auditor findings are INPUTS, re-verified both ways) the lead
CONFIRMED the catch and answered it with three strengthening theorems
(genuine composed criticality transfer; flagship barrier that invokes
prod_shell_k1; class strict-monotonicity) AND relabeled the header
honestly. The lens did not kill content here (as in campaign #11) - it
forced the batch from "named-suggestively abstract" to
"genuinely-composed where cheap, prose where not." The standing rule
earned its cost twice running.


## Campaign #13 appendix (closing the #12 lens caveat, 2026-07-11)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
composed_E_critical_iff           composed criticality =          GENUINE, CONCRETE:
                                    energy criticality, the         instantiates the V8
                                    ACTUAL bond energy E            transfer at E via the
                                                                    sealed hasFDerivAt_E
                                                                    (no abstract f);
                                                                    unconstrained level
composed_slice_critical_iff       composed on-slice criticality   the CORPUS-USED form:
                                    iff all bond sines equal        a nonzero rescaling
                                                                    preserves slice-
                                                                    criticality, chained
                                                                    to critical_slice_iff
```

Closes the campaign-12 blind-lens caveat ("the abstract criticality
transfer's instantiation at the torus energy J stays prose") for the
criticality transfer. Residual prose (unchanged): the manifold-Hessian
identification and the flow-line rerun under h.


## Campaign #14 appendix (the ground index-0 Morse-Bott minimum, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
one_sub_cos_taylor_lower          coercivity engine (index-0)     exact; LOWER
                                                                    Taylor bound,
                                                                    cos >= m on the
                                                                    segment (local)
ground_coercive_band              G_k is a strict transverse      GENUINE finite
                                    MINIMUM (M2P stability base)    quadratic lower
                                                                    bound; CONSTRAINED
                                                                    (slice Sum=2pik) +
                                                                    LOCAL (cos>=m); m
                                                                    supplied, vacuous
                                                                    at m=0
ground_coercive_band_flagship     the concrete stability gap      GENUINE: EXHIBITS
                                                                    cos(a+rho)>0 on a
                                                                    bounded ball - m>0
                                                                    proved, not
                                                                    supplied
```

Blind-lens verdict (adopted): honest ONLY with the scope qualifier - the minimum is a strict COERCIVE CONSTRAINED minimum on the fixed-winding slice, LOCAL to the cosine->=m basin, the TRANSVERSE index-0 gap (not the full Morse-Bott orbit manifold). The lens's 'm>0 is caller-supplied, existence not established' was answered proactively by the flagship corollary (a proved-positive cos(a+rho)). Not a kill (campaign #11) nor an overclaim-in-types (campaign #12) - a labeling discipline the header now carries.


## Campaign #15 appendix (the G_{k,j} trap census, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
Gkj_level                         G_{k,j} coupled level           exact identity
                                                                    (evaluation; sums
                                                                    of constants) - a
                                                                    LEVEL, not
                                                                    criticality
Gkj_above_saddle                  trap above S_1 (decoupled)      arithmetic, k=1,
                                                                    eps=0, pin as hyp,
                                                                    composes prod_shell
Gkj_above_saddle_coupled          trap above S_1, ALL eps >= 0    STRENGTHENING: the
                                    (the numerics separation)       full coupled E_eps
                                                                    via W* >= 0; still
                                                                    vs S_1 not band top
equidistributed_slice_critical    single-factor trap criticality  GENUINE but
                                                                    SINGLE-FACTOR (the
                                                                    W* coupling piece
                                                                    stays prose)
```

Blind-lens verdict (adopted): the label 'trap census sealed' would overclaim on three axes - criticality (only single-factor sealed, X3; coupling prose), the separation is vs the SADDLE S_1 not the band top S_k+c_H, and k=1 not a census. Two strengthenings applied per house law: Gkj_above_saddle_coupled (answers 'eps=0 only' - the full E_eps for all eps>=0 via W*>=0) and equidistributed_slice_critical (answers 'criticality unproven' for the single factor). The header carries the residual caveats. Fourth straight campaign where the lens sharpened the honest scope.


## Campaign #16 appendix (coupled trap criticality + M2P.3, 2026-07-11; blind lens per the standing rule)

```text
LEAN DECLARATION                  CORPUS ROW                      VERDICT
Gkj_coupled_slice_critical        (directional coefficients)      the ALGEBRAIC
                                                                    SHADOW (lens catch:
                                                                    free constants x
                                                                    zero-sums; energy
                                                                    identification =
                                                                    prose)
Gkj_trap_second_order_flat        the traps are E_eps-critical    THE GENUINE FORM:
                                    for every eps (M2P.1)           second-order
                                                                    flatness of the
                                                                    ACTUAL coupled
                                                                    energy, all eps,
                                                                    all zero-sum pairs
E_ge_two_kappa_of_pi_bond         Delta_theta energy floor        exact, sharp for
                                                                    single-pi
single_pi_bond_excluded           M2P.3 single-pi exclusion       exact; PRINCIPAL
                                                                    BRANCH only (open
                                                                    range load-bearing);
                                                                    multi-pi parity
                                                                    case unstated
```

Lens flow (fifth straight sharpening): Y1 was flagged as 'an identity dressed as coupled criticality' - CONFIRMED and answered with Y4, which proves the flatness ON THE ENERGY (the lens-driven strengthening pattern now standard). Y2/Y3 honest and sharp within hypotheses; Y3's principal-branch narrowing and the unstated multi-pi parity case are recorded above.


## Campaign #17 appendix (the band top, 2026-07-18; blind lens per the standing rule)

```text
LEAN DECLARATION              CORPUS ROW                      VERDICT
saddle_lt_four_kappa          c_H ledger entry 2:             NEW SEAL (was
                                S_1 < 4 kappa (B2a checked      numerics-only);
                                to N = 2000)                    N >= 5 load-bearing
                                                                (equality at N=3,4)
cH (def) + cH_pos             c_H = (1/4)min(m_1+2k-S_1,      exact v18 ledger
                                4k-S_1) > 0                     form; N-DEPENDENT
                                                                margin, vanishes as
                                                                N -> inf (lens)
Gkj_above_band_top            the trap clears the BAND TOP    the v20-consumed
                                S_1 + c_H (all eps >= 0)        separation; LEVEL
                                                                inequality at the
                                                                trap config (lens:
                                                                pointwise, not
                                                                spectral)
Gkj_above_band_top_sharp      margin >= 4 c_H                 lens-driven
                                                                strengthening;
                                                                4c_H <= m_1+2k-S_1
                                                                exactly
```

Lens flow (sixth straight sharpening): Z1 HONEST-AS-STATED; Z2 NEEDS-QUALIFIER (c_H is an N-dependent margin decaying to 0, the binding min-entry flips with N) - qualifier ADOPTED into the docstring and header; Z3 OVERCLAIM-RISK (single-configuration level inequality read as a spectral band statement; coupling discharged, not used; pin smuggles lambda > 0) - all three catches verified true and ADOPTED as honest scope, and the lens's 'understates the actual clearance' observation was converted into the strengthening Z4 (S_1 + 4 c_H <= trap level, exact). House law held: findings re-verified both ways before adoption.


## Campaign #18 appendix (multi-pi parity + Delta family, 2026-07-18; blind lens per the standing rule)

```text
LEAN DECLARATION              CORPUS ROW                      VERDICT
two_pi_bonds_sum/_energy      M2P.3 parity remark: two        exact; existence half
                                pi-bonds CAN carry w=1          of the parity case
                                (level 4*kappa)                 (bond-sum sense)
delta_family_sum/_level/_le   Delta contains w-carrying       exact level + upper
                                configs approaching the         bound 2k+k*pi^2/
                                2*kappa floor                   (2(N-1))
delta_family_below_saddle     (NEW - design discovery)        the Delta family is
                                                                CHEAPER than S_1 for
                                                                N >= 4 (lens: N>=5
                                                                slack tightened;
                                                                ties at N=3)
pi_bond_winding_strict        M2P.3 strict form               lens-STRENGTHENED:
                                                                range hypothesis
                                                                DROPPED (pure
                                                                integer parity);
                                                                prices the pi-
                                                                defect, not winding
```

Lens flow (seventh straight sharpening): all seven verdicts HONEST or NEEDS-QUALIFIER; the lens (a) tightened V4's hypothesis N>=5 -> N>=4 (verified: 3.5k < 4k at N=4; ties at N=3), (b) proved V5's range hypothesis non-load-bearing -> DROPPED (the integer-parity argument is the whole content; strictly stronger theorem), (c) named the honest frame adopted into the header: '2*kappa is the core energy of a single localized pi-kink, exactly approachable but not attainable' - NOT a topological barrier statement. The 'saddleLevel not shown to be a saddle' caveat is TRUE within the seven and DISCHARGED by the sealed LS.4/LS.6 layer (cross-ref in docstring). NEW NAMED PROSE TARGET (from the campaign's design work): the min-max reconciliation - the Delta family sits BELOW S_1, yet the mountain-pass level of the passage remains S_1 because minimax levels are critical values and no critical value lies in [2*kappa, S_1); mechanizing this needs a mountain-pass engine (not booked).


## Campaign #19 appendix (winding-zero classification, 2026-07-18; blind lens per the standing rule)

```text
LEAN DECLARATION                    CORPUS ROW                    VERDICT
winding_zero_classification         w = 0 mirror of LS.6          exact; sign-of-sine
                                      (never previously stated)     argument, one pass
winding_zero_classification_        slice-critical w = 0 config   exact mirror of the
  critical                            = ground e_0                 LS.6 dE interface
winding_zero_critical_level         the w = 0 critical VALUE = 0  lens: value-not-
                                                                    minimality (kappa
                                                                    sign unused)
```

Lens flow (eighth straight): U1/U2 HONEST-AS-STATED - the lens CONFIRMED the constrained form is STRONGER than the naive reading (it kills the equal-nonzero-sine splays, which live exactly outside the open branch); U3 NEEDS-QUALIFIER (level = value at the unique constrained critical point, NOT minimality - kappa's sign unused) - ADOPTED into the docstring. Min-max reconciliation status after #19: w = 1 input = LS.6 (sealed), w = 0 input = campaign #19 (sealed), on-Delta input = the multi-pi parity floor (sealed); the mountain-pass engine = the only remaining prose step.


## Campaign #20 appendix (the k < 0 transport, 2026-07-18; blind lens per the standing rule)

```text
LEAN DECLARATION                     CORPUS ROW                  VERDICT
E_reflect                            reflection R6 layer:        exact (cos even);
                                       energy leg                 the functor's
                                                                  energy identity
winding_neg_one_classification       k < 0 transport (roadmap    exact mirror of
  (+ _critical)                        residual, now closed)      LS.6 via negation;
                                                                  N >= 5, k = -1
E_neg_ground / E_neg_spBond          negated levels = m_1 / S_k  VALUE identities
                                                                  (lens: names index
                                                                  forms, structure =
                                                                  #14/LS.4 layer)
hessForm_reflect                     second-order transport      lens-driven: the
                                                                  FORM is even -
                                                                  answers the lens's
                                                                  gap with a theorem
```

Lens flow (ninth straight): W1-W3 HONEST-AS-STATED (the lens independently verified satisfiability and the N = 4 degeneracy - defect meets uniform); W4/W5 NEEDS-QUALIFIER (ground/saddle names carry second-order claims the five did not prove) - ADOPTED as docstring scope AND answered with W6 (hessForm_reflect): the third lens-driven strengthening pattern this window - the second-order FORM transports as a theorem, not a qualifier. Residuals honestly named: negated-sector Morse statement (composition of W6 with #14/LS.4, cheap, unstated), |k| >= 2 classification.


## Campaign #21 appendix (negated-sector Morse layer, 2026-07-19; blind lens per the standing rule)

```text
LEAN DECLARATION              CORPUS ROW                      VERDICT
hess_negative_witness_neg     k < 0 index-1 direction         exact transport of
                                (campaign #20 residual)         H2 via W6; same
                                                                witness verbatim
hess_pos_on_perp_neg          k < 0 transversal positivity    exact transport of
                                                                H3; lens: coord
                                                                hyperplane, not
                                                                zero-sum tangent
                                                                (inherited scope)
ground_coercive_band_neg      k < 0 ground coercive band      #14 engine mirrored
                                                                (cos evenness on
                                                                the uIcc window);
                                                                hN inherited-unused
                                                                (lens; residual)
```

Lens flow (tenth straight): 3/3 HONEST-AS-STATED. The lens independently reconstructed the exact witness value kappa*cos(s)*(N-1)*(2-N) and NOTED (without being told) that equal saddle sines make the profile critical - convergent with the sealed classification layer. Adopted qualifiers: coordinate-hyperplane scope on Y2n (interlacing = prose, as in LS.4); hN-inherited-unused note on Y3n (joint tightening with #14 = named residual). The lens's 'no energy ordering between basin and saddle' remark is discharged CORPUS-WIDE by the sealed ladder (m_k < 2k < S_k) - not restated per-campaign.


## Campaign #22 appendix (corrected product-saddle ontology, 2026-07-19; blind lens per the standing rule)

```text
LEAN DECLARATION                 CORPUS ROW                   VERDICT
sin_spBond                       (engine) sin(pi-a) = sin a   exact, all i/N/k
Wstar_spBond_zero                W* at (sp, 0) = S_k(1)       exact; hN inherited
prod_saddle_level                E_eps(Z) = S_k + eps S_k(1)  X3 F1 level sealed;
                                                               lambda-layer 0 BY
                                                               DESIGN (at C_0)
prod_saddle_coupled_critical     Z E_eps-critical ALL eps     X3 F1 ontology
                                   (replaces the FALSE 'not     sealed; first-order;
                                   critical for eps>0')         constants die on
                                                               zero-sum directions
prod_saddle_stable_mode_pos /    X3 inertia derivation        scalar cores sealed;
  prod_saddle_hot_mode_det_neg     (2N-3, 1, 2 zeros)           block identification
                                                               = X3 prose (lens)
```

Context: X3 (cross-provider spine audit) REFUTED the standing K10 premise; the lead confirmed by direct derivation and swept the premise from lane-lp, lane-lt, the reader packet, and canon (4 sites) - the sweep also DISCHARGED BY IDENTITY the typed 'eps-perturbed saddle continuation' need (PROD-CROSS now needs only the eps-shadowing lemma). Lens flow (eleventh straight): 4 HONEST + qualifiers adopted (lambda-at-ground by design; hot-mode determinant identification = prose; hN inherited). The correction STRENGTHENS the corpus: the saddle is located - it never moves.


## Campaign #23 appendix (rotation-orbit geometry / L3 core, 2026-07-19; blind lens per the standing rule)

```text
LEAN DECLARATION        CORPUS ROW                VERDICT
orbitMap + O1-O5        SH.2'-LOCAL L3: the       exact; the orbit is a
                          ground is a rotation      flat exact symmetry
                          orbit (circle)            (energy/bonds/winding
                                                    constant; period 2pi)
dist_orbitMap (O6)      L3 explicit diameter      ISOMETRIC EMBEDDING of
                          (kills X3 defect 3)       S^1; SUP-metric; single
                                                    orbit; diameter pi
                                                    (L2 conversion sqrt N =
                                                    prose, as designed)
```

Lens flow (twelfth straight): 4 HONEST + 2 qualifiers ADOPTED
(windSum invariance = this symmetry only, not homotopy
invariance; O6 sup-metric/single-orbit/pi-cap scope). Residual
prose for Stage C: tube quasiconvexity, group-acts-by-isometries
(if ever needed), L2 conversion.


## Campaign #24 appendix (H1 general-k enumeration, 2026-07-20; blind lens per the standing rule)

```text
LEAN DECLARATION                     CORPUS ROW                VERDICT
count_equation_k/_dichotomy_k        the winding count at      exact engine; N>=4k+1
                                       general k                 STRICT load-bearing
winding_k_classification(_critical)  Part I general-k:         EXHAUSTIVE shape
                                       2k-family enumeration     classification (two
                                                                 values pinned; p=0
                                                                 included; placement
                                                                 C(N,p); lens: no
                                                                 energetics inside)
two_hot_critical_off_classification  the sealed COUNTEREXAMPLE existence, k>=2; the
                                       to naive generalization   design finding now
                                                                 a THEOREM
winding_k_energy_isolates_ground_    conditional isolation     REDUCTION (lens:
  saddle                               under E<=S_k              hclimb is a named
                                                                 HYPOTHESIS; E_p
                                                                 monotonicity target
                                                                 discharges it)
```

Lens flow (fourteenth straight): 4 HONEST + 1 NEEDS-QUALIFIER
(the isolation is a reduction, not a proven ordering) - adopted
into header and docstring reading. Design-phase honesty note: the
FALSE naive target was caught at blueprint time (risk-flag
discipline) and became a sealed existence theorem instead of a
fleet-proved falsehood.

## Campaign #25 appendix (2026-07-20) — the E_p monotonicity ladder (hclimb discharge)

```text
Lean name                  | role                                    | prose home
---------------------------+-----------------------------------------+---------------------------
sin_sub_mul_cos_pos        | W25a engine: x cos x < sin x, (0,pi/2)  | master-theorem H1 residual
step_path_decreases        | W25b psi-collapse: G(1) < G(0) under    | master-theorem H1 residual
                           |   2 <= c, 2c+1 <= u (TIGHT regime)      |
Ep_strict_mono             | W25c integer ladder: E_p < E_{p+1}      | master-theorem H1 residual
Ep_above_saddle            | W25d discharge: S_k = E_1 < E_p, p >= 2 | master-theorem H1 residual
(private) step_path_decreases_aux2, Ep_above_saddle_aux1/2/3/4       | helpers, not public API

verification = fleet 4/4 PROVED first pass (wf_66426665-753); merged
  full-file compile EXIT 0, zero errors, zero sorries; #print axioms
  on all 4 targets = [propext, Classical.choice, Quot.sound] (sorryAx
  vanished at merge as designed - W25c/W25d cited then-sorried
  siblings, now proved).
blind lens (fresh, no-history, 3 reviewers) = math PASS + freeze PASS
  + hygiene FAIL -> 3 MAJOR record cures applied by the lead:
  (1) step_path_decreases_aux1 DELETED (byte-identical duplicate of
  sin_sub_mul_cos_pos; the target now cites the single source),
  (2) stale '(still sorried)' comments removed post-merge,
  (3) aux2 made private + doc reworded off the vocabulary list
  ('field identity' -> algebraic identity) with the derivation
  spelled out. Two NOTEs declined with reason: 'engine' has in-file
  precedent and is neither physics nor agency vocabulary; W25a-d
  labels are load-bearing cross-refs to this appendix.
design record = numerics probe ep_monotonicity_probe.json (zero
  violations, worst margin ~2.58e-06 at k=25, N=101, gap ~1/N^3);
  the tight-regime choice hu : 2c+1 <= u is load-bearing (freeze
  lens confirmed W25b never uses the stronger 2c+2 bound - at
  N = 4k+1 the seam 2(2k-p)+1 <= N-2p is EXACTLY 4k+1 <= N).
consumer = winding_k_energy_isolates_ground_saddle (campaign #24)
  composes with Ep_above_saddle to the unconditional isolation;
  the in-file corollary is campaign #26's frozen statement.
```

## Campaign #26 appendix (2026-07-20) — the unconditional isolation (composition)

```text
Lean name                                          | role
---------------------------------------------------+----------------------
winding_k_energy_isolates_ground_saddle_           | #24 conditional (+)
  unconditional (doc label W26)                    |   #25 climb, fused

statement = frozen by the lead BEFORE the prover ran (same freeze
  discipline as fleet campaigns; single statement, single prover).
discharge = the filter-split identity E kappa d = kappa(N - (N-2p)
  cos alpha) for p-hot profiles + the alpha-solve from the winding
  constraint + Ep_above_saddle. No helpers, fully inline.
verification = prover full-file compile zero errors/sorries + lead
  independent merge + recompile; #print axioms = [propext,
  Classical.choice, Quot.sound] exactly.
blind lens (fresh, 3 reviewers: math / consumption / hygiene) =
  3/3 PASS - the first full-PASS lens of the fleet era. Findings:
  2 MINOR. Applied: doc label W25e -> W26 (campaign numbering).
  Declined with reason: climb/p-hot vocabulary (established in-file
  terminology from campaign #24; hclimb is the literal binder name).
  Math lens confirmed the degenerate alpha = pi/2 case is both
  impossible under the premises (forces 4k = N vs 4k+1 <= N) and
  structurally harmless (partition by decidable predicate).
stale-comment cures at landing: #24 HK.8 doc + trailing blueprint
  note now point at #25/#26; the #25 header notes the landing.
consumers = master-theorem Part I: the isolation row is UNCONDITIONAL
  in-file; hclimb no longer exists as a hypothesis anywhere in the
  corpus statement set.
```
