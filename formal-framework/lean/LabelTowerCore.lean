/-
  LabelTowerCore.lean — MACHINE-CHECKED, SORRY-FREE (campaigns #2 + #4 + #6
  2026-07-05, + #7-#11 2026-07-10/11, + #12-#16 2026-07-11 + #17-#20 2026-07-18 + #21-#22 2026-07-19
  + #24 (H1) 2026-07-20: 128 theorems - the 10 campaign
  statements + 9 public fleet helpers; 3 further helpers private).
  CAMPAIGN #16 (the coupled trap criticality + M2P.3): closing campaign
  #15's main residual. Gkj_trap_second_order_flat is the GENUINE
  criticality content (lens-driven): perturbing the doubly-constant trap
  along ANY zero-sum pair direction changes the FULL coupled energy
  E_eps by at most a quadratic in t - first-order flatness proven ON THE
  ENERGY via the sealed Taylor engine (with the reusable taylor_group
  inner bound). Gkj_coupled_slice_critical is HONESTLY the algebraic
  shadow (the lens's catch: constant coefficients times zero-sum sums -
  the identification of the coefficients as partial derivatives is
  definitional/prose; the ENERGY-level fact is Y4, not Y1).
  E_ge_two_kappa_of_pi_bond (a pi-bond costs the full barrier, sharp)
  and single_pi_bond_excluded (M2P.3: a single-pi-bond config at exact
  level 2*kappa cannot carry winding - the cyclic-sum obstruction).
  HONEST SCOPE of campaign #16 (blind-lens audited): Y3 is proven in the
  PRINCIPAL-BRANCH representation (the open-range hypothesis excludes
  the zero-cost winding bonds +-2*pi - load-bearing); the MULTI-pi case
  is intrinsically a parity statement (two pi-bonds CAN carry winding 1)
  and stays unstated; Y2's 2*kappa is sharp for single-pi, loose for
  multi-pi.
  CAMPAIGN #17 (the band top, 2026-07-18): the trap separation
  STRENGTHENED from the saddle S_1 to the BAND TOP S_1 + c_H (closing
  campaign #15's lens caveat). saddle_lt_four_kappa seals S_1 < 4*kappa
  for N >= 5 (the c_H ledger's second entry, previously numerics-only;
  equality holds at N = 3, 4, so the hypothesis is load-bearing); cH is
  defined as the v18 ledger's (1/4)min(m_1 + 2k - S_1, 4k - S_1) and
  cH_pos composes the sealed PROD-SHELL with the new seal; the coupled
  trap level clears S_1 + c_H (Gkj_above_band_top) and, in sharp form,
  S_1 + 4*c_H (Gkj_above_band_top_sharp, the lens-driven strengthening:
  4*c_H <= m_1 + 2*kappa - S_1 exactly).
  HONEST SCOPE of campaign #17 (blind-lens audited, sixth straight
  sharpening): c_H is an N-DEPENDENT margin (vanishes as N -> infinity;
  the binding min-entry flips with N - NOT a uniform constant); the
  separation is a LEVEL inequality at the specific doubly-constant trap
  configuration (pointwise, not a sector-infimum/spectral statement -
  "band top" is the v18 ledger's naming convention, the identification
  lives in prose); the coupling term is discharged via eps >= 0,
  W* >= 0 (energy-lowering couplings eps < 0 not covered); the pin
  2*kappa <= m_j(lambda) is a hypothesis (it forces lambda > 0
  implicitly); kappa-side is k = 1.
  CAMPAIGN #18 (the multi-pi parity case + the Delta crossing family,
  2026-07-18): campaign #16's named residual closed. TWO pi-bonds DO
  carry bond-sum 2*pi, at level exactly 4*kappa (the parity existence
  half). THE DELTA CROSSING FAMILY (one pi-bond + N-1 equidistributed):
  bond-sum 2*pi, exact level kappa*(2 + (N-1)(1-cos(pi/(N-1)))), at
  most 2*kappa + kappa*pi^2/(2(N-1)) - winding-carrying configurations
  ON Delta approach the 2*kappa floor - and the family sits STRICTLY
  BELOW the saddle LEVEL S_1 for N >= 4 (phi-engine monotonicity).
  The floor is STRICT: pi_bond_winding_strict (lens-STRENGTHENED: no
  range hypothesis at all - pure integer-sum parity) gives E > 2*kappa
  for ANY config with a pi-bond and bond-sum 2*pi*k.
  HONEST SCOPE of campaign #18 (blind-lens audited, seventh straight
  sharpening; the lens's summary adopted): these seven facts price the
  SINGLE-pi-DEFECT core energy at exactly 2*kappa - approachable, not
  attainable - they are NOT a topological-barrier statement: winding
  itself is cheap (m_k -> 0), no path/dynamics content, and within
  campaign #18 saddleLevel is a defined constant (its saddle structure
  is the sealed LS.4/LS.6 layer; the min-max reconciliation - the
  passage level remains S_1 despite the cheaper Delta points the family
  exhibits - is PROSE, a named target).
  CAMPAIGN #19 (the winding-zero classification, 2026-07-18): the w = 0
  mirror of LS.6, sealing the min-max reconciliation's w = 0 input:
  OFF Delta THE ZERO-WINDING SECTOR HAS NO SADDLE - equal sines force
  a common sign on every bond, the zero sum kills it, and off Delta a
  vanishing sine is a zero bond: the unique slice-critical w = 0
  config is the ground e_0, at level exactly 0 (winding_zero_
  classification in equal-sines form; _critical in the dE form
  mirroring LS.6; _level for the value).
  HONEST SCOPE of campaign #19 (blind-lens audited, eighth straight
  sharpening): "critical" = constrained (zero-sum-slice) criticality -
  which is STRONGER content than free criticality here (it kills the
  equal-nonzero-sine splays); "level 0" is the VALUE at the unique
  constrained critical point, NOT a minimality claim (kappa's sign is
  unused; for kappa < 0 the value 0 is a maximum); the excluded
  nontrivial equilibria live exactly outside the open branch (on/past
  Delta), which is where LS.6 and the parity floor take over.
  CAMPAIGN #20 (the k < 0 transport, 2026-07-18): the REFLECTION
  FUNCTOR mechanized - E is EVEN in the bond field (E_reflect), so the
  sealed winding-one classification transports verbatim to w = -1
  (winding_neg_one_classification, equal-sines + dE forms: negated
  ground or negated saddle profile, N >= 5), the levels transport
  (E_neg_ground at m_1; E_neg_spBond at S_k, GENERAL k), and the
  slice-Hessian FORM transports (hessForm_reflect - the lens-driven
  second-order leg). Closes the roadmap's "k < 0 transport" residual.
  HONEST SCOPE of campaign #20 (blind-lens audited, ninth straight):
  W4/W5 are VALUE identities - "ground"/"saddle" index the closed
  forms; the minimality/index-1 STRUCTURE is the sealed #14/LS.4
  layer for +k, and what transports here is the Hessian FORM (W6),
  not a negated-sector Morse statement; |k| >= 2 classification
  unstated (levels ARE general-k); N = 3, 4 genuinely degenerate
  (defect meets uniform at N = 4).
  CAMPAIGN #21 (the negated-sector MORSE layer, 2026-07-19): campaign
  #20's named residual closed - the index-1 witness pair and the
  ground coercive band transport to k < 0 through the sealed
  reflection legs: hess_negative_witness_neg + hess_pos_on_perp_neg
  (the SAME witness/slice arguments at the negated saddle profile, via
  hessForm_reflect) and ground_coercive_band_neg (the #14 engine at
  the negated ground, cos-window mirrored through evenness).
  HONEST SCOPE of campaign #21 (blind-lens audited, tenth straight):
  inherited from LS.4/#14 - criticality of the profiles is the sealed
  classification layer (not restated); v 0 = 0 is the COORDINATE
  hyperplane (exact-Morse-index transfer to the zero-sum slice =
  interlacing, prose); the band is local + conditional (cos >= m
  window, m assumed); hN in Y3n inherited-unused (joint tightening =
  named residual); cos(saddleParam) > 0 load-bearing (H0 discharges
  it for k = 1, N >= 5).
  CAMPAIGN #22 (the corrected product-saddle ontology, 2026-07-19):
  X3 Finding 1 SEALED - the corpus's former premise "Z = SP_k x C_0
  is NOT E_eps-critical for eps > 0" was FALSE (cross-provider X3,
  lead-confirmed). sin_spBond (constant sine - the engine),
  Wstar_spBond_zero + prod_saddle_level (exact coupled level
  S_k(kappa) + eps S_k(1) at EVERY eps - the saddle never moves),
  prod_saddle_coupled_critical (both coupled first-order chains
  constant, killed by zero-sum variations), and the two X3 inertia
  scalar cores (stable-mode positive definite; hot-mode determinant
  negative under the pin kappa < lambda) - 6 theorems.
  HONEST SCOPE of campaign #22 (blind-lens audited, eleventh
  straight): first-order criticality only in Z22d (second-order =
  the inertia FORMS, mode decomposition = prose as in LS.4); the
  hot-mode scalar's identification as the Hessian-block determinant
  is X3's prose derivation; the lambda-layer contributes level 0 BY
  DESIGN (it sits at its ground C_0).
  CAMPAIGN #24 (H1: the GENERAL-k ENUMERATION, 2026-07-20; master-
  theorem Part I's gap closed): the k = 1 dichotomy is FALSE at
  k >= 2 - the p-hot two-value families {alpha_p, pi - alpha_p} with
  alpha_p = (2k-p)pi/(N-2p) exist off Delta for 0 <= p < 2k. Sealed:
  the count engine (count_equation_k/count_dichotomy_k), THE
  EXHAUSTIVE ENUMERATION winding_k_classification (+ the true
  variational form _critical), the 2-hot EXISTENCE
  two_hot_critical_off_classification (k >= 2 - the sealed
  counterexample to the naive generalization), and the CONDITIONAL
  isolation winding_k_energy_isolates_ground_saddle - 10 statement theorems
  + 12 fleet helpers (9 public, counted by verify; 3 private),
  statements frozen byte-identical.
  HONEST SCOPE of campaign #24 (blind-lens audited, fourteenth
  straight): the classification is of SHAPE (each bond pinned to two
  values; p = 0 ground included; hot-index placement a C(N,p) family;
  no energetics/index/attainment content in the enumeration itself);
  the isolation is a REDUCTION - hclimb (every p >= 2 family sits
  strictly above S_k) is a HYPOTHESIS, not derived; discharging it =
  the E_p monotonicity lemma (DISCHARGED by campaign #25). N >= 4k+1
  STRICT is load-bearing (N = 4k degenerates to the all-pi/2 slice);
  the classification hypothesis N >= 4k+1 is WEAKER than the C1-SUB
  ladder thresholds (N >= 40/89 at k = 2/3) - distinct regimes, both
  recorded. Below the barrier the classification was already
  general-k (classification_below_barrier); campaign #24 is the
  ABOVE-barrier structure.
  CAMPAIGN #25 (the E_p MONOTONICITY LADDER, 2026-07-20; hclimb
  DISCHARGED): E_p = kappa(N - (N-2p) cos alpha_p) is STRICTLY
  INCREASING in the reflected-count p on the admissible range, so
  every p >= 2 family sits strictly above S_k. Sealed: the engine
  sin_sub_mul_cos_pos (x cos x < sin x on (0, pi/2)), the psi-collapse
  step_path_decreases (the path derivative is -2(sin psi - psi cos
  psi) < 0 exactly), Ep_strict_mono (integer ladder), Ep_above_saddle
  (S_k = E_1 < E_p for 2 <= p < 2k) - 4 statement theorems + 4 private
  helpers, statements frozen byte-identical, fleet-proved.
  HONEST SCOPE of campaign #25 (blind-lens audited, fifteenth
  straight): the ladder is proved for the CLOSED-FORM levels E_p;
  composing it with #24's conditional isolation into the in-file
  unconditional corollary = campaign #26 (LANDED same day). N >= 4k+1
  remains the strict regime (the tight case 2c+1 = u survives; N = 4k
  degenerates). The probe margins ~1/N^3 are why the proof routes
  through the exact psi-identity, not slack bounds
  (ep_monotonicity_probe.json).
  CAMPAIGN #15 (THE G_{k,j} TRAP-TORI CENSUS): the doubly-equidistributed
  pinning tori the B2 numerics probed for gate v20. Gkj_level (the exact
  coupled level m_k(κ) + m_j(λ) + ε N(1-cos(2π(k-j)/N))); Gkj_above_
  saddle + Gkj_above_saddle_coupled (for k=1, under the pin 2κ ≤ m_j(λ),
  the trap level - decoupled AND the full coupled E_ε for every ε ≥ 0
  via W* ≥ 0 - exceeds the saddle S_1, composing the SEALED prod_shell);
  equidistributed_slice_critical (the single-factor slice-criticality:
  a constant-bond config's slice-differential is a multiple of the sum
  functional, killing zero-sum directions - the reason the traps are
  critical).
  HONEST SCOPE of campaign #15 (blind-lens audited, caveats adopted + two
  strengthenings applied): (a) the FULL trap criticality is NOT sealed -
  only the SINGLE-FACTOR slice-criticality (X3); the coupling term W*'s
  telescoping contribution stays prose. (b) the separation is above the
  SADDLE S_1, NOT the band top S_1 + c_H (the stronger numerics claim
  needs a stronger pin, stays numerics/prose). (c) k = 1 flagship (not a
  census over all k). (d) the pin 2κ ≤ m_j(λ) is a HYPOTHESIS (the
  M2-PIN-type condition, discharged elsewhere), not derived. The lens's
  'ε=0 only' catch was answered by Gkj_above_saddle_coupled (the coupled
  E_ε form, W* ≥ 0); its 'criticality unproven' catch partially by X3.
  CAMPAIGN #14 (THE GROUND MORSE-BOTT MINIMUM, index 0): the coercive
  stability floor at the equidistributed ground G_k, COMPLEMENTING the
  sealed saddle (index 1) structure - new theory (the pinning/stability
  of M2P and gate v20's setup rest on G_k being a strict transverse
  minimum). The coercive Taylor LOWER-bound engine
  (one_sub_cos_taylor_lower, integral route, sibling of campaign #9's
  upper band); the ground coercive band (ground_coercive_band: the
  energy exceeds m_k by a coercive quadratic on the winding slice); the
  FLAGSHIP concrete-coercivity corollary (ground_coercive_band_flagship:
  an EXHIBITED positive constant cos(a+rho) on a bounded-deviation ball).
  HONEST SCOPE of campaign #14 (blind-lens audited, its qualifiers
  adopted): the minimum is (a) CONSTRAINED - on the fixed-winding slice
  Sum d = 2*pi*k (the linear-term cancellation REQUIRES this exact
  constraint; off-slice the gradient survives), (b) LOCAL - inside the
  cosine-`>= m` basin the hcos hypothesis carves out (1-cos is periodic
  with infinitely many minima), (c) the TRANSVERSE index-0 gap, NOT the
  degenerate Morse-Bott orbit manifold (rotation/k family not in these
  types). In ground_coercive_band the coercivity m >= 0 is a HYPOTHESIS
  (vacuous at m = 0); ground_coercive_band_flagship answers this by
  EXHIBITING cos(a+rho) > 0 concretely on the bounded-deviation ball
  (the lens's "existence not established" catch, closed for that case).
  CAMPAIGN #13 (closing the campaign-12 lens caveat): the composed
  criticality transfer, INSTANTIATED at the actual bond-space energy E
  (composed_E_critical_iff, via the sealed hasFDerivAt_E - no abstract
  f) and in the corpus's on-slice form chained to the equal-sines
  classification (composed_slice_critical_iff via critical_slice_iff).
  The lens's "f := J stays prose" caveat is now closed for the
  criticality transfer; the manifold-Hessian identification and the
  flow-line rerun remain prose (unchanged).
  CAMPAIGN #12 (GATE v19 = PROD-TRANSFER, the transferable core): the
  corpus types PROD-TRANSFER honestly - at eps > 0 the composed flow is
  NOT a reparametrization of the coupled flow, so only LEVEL and
  CRITICALITY transfer as-is. This campaign mechanizes that transfer
  MACHINERY for the controlled family (h = id + g, g monotone <=>
  h' >= 1).
  BLIND-LENS CORRECTION (recorded, house law): the first seven drafted
  theorems (composed chain rule, criticality-nullity iff, floor
  min-monotonicity, MC-SUB, the Delta_phi barrier, the h-ladder, the
  ground-level identity) were flagged by the lens as ABSTRACT lemmas
  over free reals whose energy connection was carried by NAMING - the
  Delta_phi barrier took `S - m < 2 kappa` as a free hypothesis rather
  than invoking the sealed shell, the criticality transfer lived in two
  un-composed pieces, and the ladder ASSUMED StrictMono. Three
  STRENGTHENING theorems answer it: composed_energy_critical_iff
  (V1+V2 composed into a GENUINE criticality transfer: fderiv of h o f
  vanishes <-> f's does, any energy f), composed_delta_phi_barrier_
  flagship (ACTUALLY invokes the sealed prod_shell_k1 at k=1, N>=5),
  hclass_strictMono (DERIVES StrictMono from g monotone = the class
  definition). HONEST SCOPE after the fix: the transfer machinery is
  sealed and, where it composes/instantiates cheaply, genuinely
  composed; what remains PROSE is (a) the instantiation of the abstract
  criticality transfer at the specific torus energy J (f := J_kappa),
  (b) the composed-Hessian manifold identification, (c) the flow-line
  rerun LP.4a/LP.4b under h - the genuinely per-family analysis the
  corpus itself types as non-transferable at eps > 0. This gate
  delivers PROD-TRANSFER's DETERMINISTIC-ARITHMETIC + criticality core;
  it does NOT claim the full gate.
  CAMPAIGN #11 (THE FLOOR, LP.1(ii), linearized + the metric layer):
  the slice-projected LINEARIZED gradient at the saddle has EXACT
  closed-form norm (slice_grad_sq_identity: |h(v)|^2 =
  cos(a_k)^2(|v|^2 - (4/N)v_0^2) on the zero-sum slice - the design
  discovery, same collapse as the band) giving the floor with EXPLICIT
  constant cos(a_k)(N-2)/N (slice_grad_floor, via the coordinate bound
  v_0^2 <= (1-1/N)|v|^2); the sine Taylor engine (sin_taylor_bound);
  the bond Lipschitz layer (bond_sq_le_maxnorm) and the sup-norm tube
  exclusion (metric_tube_exclusion_bond, composing campaign #9).
  HONEST SCOPE of campaign #11 (blind-lens audited; ONE DRAFTED
  STATEMENT KILLED BY THE LENS): (1) the floor here is LINEARIZED -
  the statements contain the projected Hessian expression, NOT
  |grad E|; the NONLINEAR floor |grad_slice E(d)| >= c_Z|v| - C|v|^2
  is NOT stated (its composition needs an l2-aggregation of the
  per-index Taylor remainders - an l4/l2 step - plus the
  mean-centering contraction and P(sin sp) = 0; typed as the named
  next target); (2) the constant is SQUARED in the statements, so
  they hold for all k but are VACUOUS at cos(a_k) = 0 (N = 4k);
  the floor bites only for N > 4k, and prose consuming c_Z unsigned
  must use |cos(a_k)|; (3) distances are to ONE representative
  (hot slot 0, one lift) - orbit coverage is prose; (4) THE LENS
  KILL: the drafted vertex-lift metric tube was VACUOUS for k >= 1
  (cyclic real-lift bond sums telescope to 0, compiler-confirmed;
  the proving agent's proof compiled anyway - blind back-translation
  is what caught it); replaced by the bond-sup form; the vertex/wrap
  layer stays PROSE with bond_sq_le_maxnorm as its true standalone
  ingredient.
  CAMPAIGN #10 (the carried-forward arithmetic, B1(6)): ROW PROD-SHELL
  k = 1 SEALED for N >= 5 (S_1 - m_1 < 2 kappa, STRICT, via the
  phi(s) = (1-cos s)/s monotonicity engine s_sin_gt_one_sub_cos) - the
  row every family's Delta_phi chain consumes, numerics-checked to
  N = 2000 and never sealed until now; the M2P coupled-ground ledger
  arithmetic (coupled_ground_level = the EVALUATION at the aligned
  pair, NOT a minimization - "ground" is the corpus's identification;
  the epsilon_0 third-entry iff, w > 0 only - the k = 0 mode is
  separate; the slice-floor arithmetic); the WC substitution identities
  (Wv_aligned; w2_member_psd - the W_2 member's PSD scalar, N >= 7,
  consumed only at C1-SUB tori which need N >= 10, so no gap); and the
  h-class deep-case algebra (deep_case_gain, mc_no_harm - SUBSTITUTION
  identities given the plateau values as hypotheses; the class
  derivation of those values stays prose).
  HONEST SCOPE of campaign #10 (blind-lens audited): PROD-SHELL k = 1
  only (k >= 2 stays the open typed row, first-mapped by B2a numerics);
  STRICTNESS with NO uniform margin (the gap -> 0 like 1/N - consumers
  need only strictness, per the honesty note); the closed forms'
  identification with model ground/saddle energies is the sealed
  E_spBond + groundLevel definitions.
  CAMPAIGN #9 (THE BAND, LP.1(i) in bond form + THE UNCONDITIONAL TUBE
  EXCLUSION): on the winding slice the linear Taylor term at the saddle
  cancels EXACTLY (equal saddle sines x fixed bond sum - the design
  discovery), so the Morse-Bott band is a quadratic-remainder theorem:
  |E kappa d - S_k| <= (kappa/2)|d - sp|^2 (saddle_band), plus the
  ground bound, the product band, and tube_exclusion_unconditional -
  v18's tube trick with the band hypothesis DISCHARGED: inside the
  weighted quadratic tube of level eps'/2, E_eps stays strictly above
  S_k - eps' for every eps >= 0.
  HONEST SCOPE of campaign #9 (blind-lens audited): the "tube" here is
  the SUBLEVEL SET of the same weighted quadratic form the band uses -
  the conversion to the prose's METRIC (max-norm) tube radius (the
  L_fr/frame layer of the v18 ledger) stays prose-level; distances are
  to ONE saddle representative (slot-0 hot bond; the orbit/relabeling
  reading is by isometry, per the B2a finding); hsum is the exact
  bond-sum equation (the torus-winding bridge is the standing
  prose-level identification); the eps*W* term is inert by design
  (domination is the trick); content lives in eps' < S_k (the corpus's
  eps'_0 ledger imposes this; the statement does not); k unrestricted
  (criticality/barrier readings of "saddle" are separate theorems).
  CAMPAIGN #8 (carve-out closures): the COMPOSED CRITICAL LS.6 corollary
  (winding_one_classification_critical: dE-criticality on the slice,
  kappa != 0, composed through critical_slice_iff - closes campaign #7's
  blind-lens caveat); the RIDGE MAXIMALITY HALF max_m phi_k(m) = S_k
  (ridgeEnv_strictMonoOn / strictAntiOn via the derivative sign
  kappa(sin m - sin r(m)) with the saddle fixed point r(pi - a_k) = a_k,
  + ridgeEnv_le_saddleLevel; closes the K4 supersession note's declared
  gap); and the LADDER'S MIDDLE RUNGS 2 kappa < L_k < S_k (ladder_middle,
  L_k = phi_k(pi)) - LS.1's ladder m_k < 2 kappa < L_k < S_k is now
  machine-checked END TO END jointly with the sealed endpoints.
  HONEST SCOPE of campaign #8 (blind-lens audited): the ridge suite's
  true regime is N >= 4k+1 (hsub and ha are EQUIVALENT hypotheses, both
  iff N >= 4k, hrange iff N >= 4k+1 subsumes them - harmless redundancy;
  ladder_middle and strictAntiOn reach N >= 4k; the N = 4k seam has a
  degenerate mono-interval and is not covered by the le_saddleLevel
  route); the composite "attained max over [2 pi k/N, pi] = S_k" is
  ASSEMBLED BY THE CALLER from le_saddleLevel + ridgeEnv_at_saddle (both
  sealed) - not a single named theorem; the ridge statements are about
  the closed-form slice family, the bridge to J is via the (sealed)
  classification + saddle identity; the composed corollary is k = 1,
  one-directional, open-branch.
  CAMPAIGN #7 (LS.6, the off-Delta winding-1 critical classification): a
  bond vector in the OPEN branch (every d i in (-pi, pi)) with winding sum
  2*pi and ALL SINES EQUAL is EXACTLY the ground circle C_1 (equidistributed,
  d i = 2*pi/N) or the one-bond saddle SP_1 (one bond pi - a_1, the rest
  a_1) — for N >= 5 (N = 4 genuinely fails: p = 2 gives an identity there).
  Chain: arcsin branch trichotomy -> nonpositive common sine cannot sum to
  2*pi -> two-valued bonds {arcsin s, pi - arcsin s} -> the count equation
  p*pi + (N - 2p)*alpha = 2*pi -> the dichotomy p in {0, 1}.  STRONGER than
  the prose on the p >= 2 sub-branch: the corpus excludes those families by
  LEVEL (>= 4*kappa); the machine shows they DO NOT EXIST off Delta at all.
  HONEST SCOPE of campaign #7 (blind-lens audited): "critical" enters ONLY
  as the equal-sines hypothesis (= P0.1's conclusion; the bridge
  critical_slice_iff/critical_angle_iff IS mechanized in this file, but the
  composed torus-critical corollary is not stated); winding is the equation
  sum d = 2*pi on the open branch — on-Delta configurations (some bond
  = +-pi, the corpus's degenerate p >= 2 families) are excluded by
  hypothesis, not classified; the conclusion is one-directional (existence/
  distinctness of the two families is not asserted here); k = 1 only.
  CAMPAIGN #6: the v18 TUBE-TRICK inference (tube_self_exclusion, abstract:
  band + domination + r(eps') => the tube stays strictly above the cap; plus
  the concrete input Wstar >= 0); the SHARP C1-SUB thresholds for k = 2
  (N = 39/40) and k = 3 (N = 88/89); and the LS.4 HESSIAN CORE at the
  one-bond saddle (two-value display, explicit negative zero-sum witness =
  index >= 1, positive definiteness on the transversal complement,
  nondegeneracy on the zero-sum slice).
  HONEST SCOPE of campaign #6 (blind-lens audited): the tube BAND |E0-S| <=
  C r^2 is a HYPOTHESIS (LP.1(i)'s Morse-Bott Taylor argument stays
  prose-level - the trick's INFERENCE is what is sealed); hessForm is the
  slice-constrained Hessian form in bond coordinates - its identification
  with the manifold second derivative is prose-level; cos(a_k) > 0 is proved
  for k = 1, N >= 5 (cos_saddleParam_pos) and is a hypothesis otherwise;
  index-1 is witnessed (negative direction + positive complement +
  nondegeneracy), not stated spectrally.
  The label tower's deterministic-arithmetic core, verified by the Lean 4
  compiler: P0.2-given-P0.1 (the classification below the barrier), the
  saddle identity + THE LADDER's upper rung (2κ < S_k), the Jensen engine of
  the repaired K4 boundary step, and the sharp C1-SUB endpoints (N=10 / N=9).

  VERIFICATION RECORD:
    * lake env lean: zero errors, zero sorries (9/9 lemmas proved by the
      compile-in-the-loop fleet, merged and re-verified by the lead).
    * AXIOM AUDIT: #print axioms on all 9 theorems = [propext,
      Classical.choice, Quot.sound] only.
    * STATEMENT FIDELITY: public signatures byte-identical to the audited
      blueprint; trap sweep clean.
    * TOOLCHAIN PIN: leanprover/lean4:v4.32.0-rc1, mathlib rev
      360da6fa66c1273b76b6b2d8c5666fd5ac2e3b56 (same as LaneCT1).
  HONEST SCOPE (updated, campaign #4 2026-07-05): P0.1 IS NOW MECHANIZED
  in slice form (critical_slice_iff: the differential kills every zero-sum
  direction <-> equal sines) and angle-variation form (critical_angle_iff,
  via the range bridge zero_sum_iff_bond_image = the angle<->bond variation
  correspondence, now a Lean lemma); hasFDerivAt_E proves dE is the true
  differential; classification_below_barrier_critical composes P0.1 + P0.2
  end-to-end.  Remaining prose-level: the identification of torus J with
  bond-space E at a configuration (definitional) and the kappa != 0
  equivalence of bare-sine vs dE-criticality (the blind lens's catch; the
  composed form is consumed under kappa > 0 where they coincide).  k >= 0
  only; off-Delta assumed via the range hypothesis.  The Jensen lemma
  remains the convex-range engine, NOT the full ridge law (that is
  RidgeLaw.lean).
  (Original blueprint header follows.)

  The deterministic algebraic core of the LABEL TOWER: the P0 critical-point
  classification below the barrier (keystone K11, the corpus's most-consumed
  internal result), the saddle/ladder arithmetic (m_k < 2κ < S_k — "the label
  barrier sits STRICTLY ABOVE the domain cap"), the C1-SUB numeric endpoints
  (k = 1 ⟺ N ≥ 10), and the Jensen/equidistribution engine of the ridge law
  (the repaired K4 step, machine-checked).

  MODEL (correspondence note): BOND SPACE. A winding-k torus configuration is
  represented by its bond vector d : Fin N → ℝ with Σ d i = 2πk and each
  d i ∈ (-π, π) (off Delta). This is the corpus's own working representation
  (lane-ls Standing Data; lane-c-attractor-pinning P0). The torus critical
  equation (P0.1: grad J = 0 iff all bond sines equal) is TAKEN AS THE
  HYPOTHESIS here (`hcrit`): this file mechanizes P0.2 GIVEN P0.1; the
  gradient computation itself is the deferred calculus piece, recorded
  honestly. The saddle/ladder/Jensen lemmas are unconditional arithmetic.

  SOURCES: lane-c-attractor-pinning-general-k-v1.md (P0.2); lane-ls-label-
  sharpness-v1.md (LS.1 saddle arithmetic, LS.2(i) repaired boundary step,
  C1-SUB); spine-hardening-dossier-v1.md (K11, K4 fix).
-/
import Mathlib

open Real Finset

namespace LabelTowerCore

/-- Bond-space energy `E κ d = κ Σ (1 - cos (d i))`. -/
noncomputable def E {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) : ℝ :=
  κ * ∑ i, (1 - Real.cos (d i))

/-- The equidistributed (ground) level `m_k = N κ (1 - cos(2πk/N))`. -/
noncomputable def groundLevel (N : ℕ) (κ : ℝ) (k : ℕ) : ℝ :=
  N * κ * (1 - Real.cos (2 * π * k / N))

/-- The one-bond saddle parameter `a_k = (2πk - π)/(N - 2)`. -/
noncomputable def saddleParam (N : ℕ) (k : ℕ) : ℝ :=
  (2 * π * k - π) / ((N : ℝ) - 2)

/-- The saddle level `S_k = κ (2 + (N-2)(1 - cos a_k))`. -/
noncomputable def saddleLevel (N : ℕ) (κ : ℝ) (k : ℕ) : ℝ :=
  κ * (2 + ((N : ℝ) - 2) * (1 - Real.cos (saddleParam N k)))

/-- The ridge envelope `φ_k(m) = κ[(1 - cos m) + (N-1)(1 - cos((2πk - m)/(N-1)))]`. -/
noncomputable def ridgeEnv (N : ℕ) (κ : ℝ) (k : ℕ) (m : ℝ) : ℝ :=
  κ * ((1 - Real.cos m) + ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - m) / ((N : ℝ) - 1))))

/-- **P0 two-branch step**: below `2κ`, no bond can sit on the negative cosine
    branch. (The two-branch counting `J = κ[N - (N-2p)c] ≥ 2κ` for `p ≥ 1`,
    in its consumed form.) -/
theorem no_minus_branch_below_barrier {N : ℕ} {κ c : ℝ} (hN : 2 ≤ N) (hκ : 0 < κ)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) (d : Fin N → ℝ)
    (hcos : ∀ i, Real.cos (d i) = c ∨ Real.cos (d i) = -c)
    (hE : E κ d < 2 * κ) (i : Fin N) : Real.cos (d i) = c := by
  by_contra hne
  have hi : Real.cos (d i) = -c := (hcos i).resolve_left hne
  have hNR : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hsplit : ∑ j, (1 - Real.cos (d j))
      = (1 - Real.cos (d i)) + ∑ j ∈ Finset.univ.erase i, (1 - Real.cos (d j)) :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ i)).symm
  have hbound : ∀ j ∈ Finset.univ.erase i, (1 - c) ≤ 1 - Real.cos (d j) := by
    intro j _
    rcases hcos j with h | h
    · rw [h]
    · rw [h]; linarith
  have hcard : ((Finset.univ.erase i).card : ℝ) = (N : ℝ) - 1 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ i), Finset.card_univ, Fintype.card_fin,
      Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]
  have hsum_lb : ((N : ℝ) - 1) * (1 - c)
      ≤ ∑ j ∈ Finset.univ.erase i, (1 - Real.cos (d j)) := by
    have h := Finset.card_nsmul_le_sum (Finset.univ.erase i) _ _ hbound
    rw [nsmul_eq_mul] at h
    rw [← hcard]
    exact h
  have hEeq : E κ d
      = κ * ((1 - Real.cos (d i)) + ∑ j ∈ Finset.univ.erase i, (1 - Real.cos (d j))) := by
    unfold E
    rw [hsplit]
  have hkey : κ * ((1 + c) + ((N : ℝ) - 1) * (1 - c)) ≤ E κ d := by
    rw [hEeq, hi]
    have hrw : (1 : ℝ) - -c = 1 + c := by ring
    rw [hrw]
    exact mul_le_mul_of_nonneg_left (by linarith) hκ.le
  nlinarith [hkey, hE, mul_nonneg (mul_nonneg hκ.le (by linarith : (0:ℝ) ≤ (N : ℝ) - 2))
    (by linarith : (0:ℝ) ≤ 1 - c)]

/-- Angles in the open branch are determined by (sin, cos). -/
theorem eq_of_sin_eq_of_cos_eq {x y : ℝ} (hx : x ∈ Set.Ioo (-π) π) (hy : y ∈ Set.Ioo (-π) π)
    (hs : Real.sin x = Real.sin y) (hc : Real.cos x = Real.cos y) : x = y := by
  have h : (x : Real.Angle) = (y : Real.Angle) := Real.Angle.cos_sin_inj hc hs
  have hx' : (x : Real.Angle).toReal = x :=
    Real.Angle.toReal_coe_eq_self_iff.2 ⟨hx.1, hx.2.le⟩
  have hy' : (y : Real.Angle).toReal = y :=
    Real.Angle.toReal_coe_eq_self_iff.2 ⟨hy.1, hy.2.le⟩
  rw [← hx', ← hy', h]

/-- **P0.2 (classification below the barrier, given the critical equation)**:
    a sub-`2κ` bond vector with all sines equal is EXACTLY equidistributed —
    the ground circle `C_k`, level `m_k`. -/
theorem classification_below_barrier {N : ℕ} {κ : ℝ} {k : ℕ} (hN : 3 ≤ N) (hκ : 0 < κ)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k)
    (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j))
    (hE : E κ d < 2 * κ) :
    ∀ i, d i = 2 * π * k / N := by
  have hNpos : 0 < N := by omega
  let i0 : Fin N := ⟨0, hNpos⟩
  set s : ℝ := Real.sin (d i0) with hs_def
  set c : ℝ := Real.sqrt (1 - s ^ 2) with hc_def
  have hs2 : s ^ 2 ≤ 1 := Real.sin_sq_le_one _
  have h1s : 0 ≤ 1 - s ^ 2 := by linarith
  have hc0 : 0 ≤ c := Real.sqrt_nonneg _
  have hc1 : c ≤ 1 := by
    rw [hc_def]
    exact Real.sqrt_le_one.mpr (by linarith [sq_nonneg s])
  have hcsq : c ^ 2 = 1 - s ^ 2 := Real.sq_sqrt h1s
  -- every cosine is ±c
  have hcos : ∀ i, Real.cos (d i) = c ∨ Real.cos (d i) = -c := by
    intro i
    have hsin : Real.sin (d i) = s := hcrit i i0
    have hsq : Real.cos (d i) ^ 2 = c ^ 2 := by
      have hpyth := Real.sin_sq_add_cos_sq (d i)
      rw [hsin] at hpyth
      linarith
    have habs : |Real.cos (d i)| = c := by
      rw [← Real.sqrt_sq_eq_abs, hsq, Real.sqrt_sq hc0]
    exact (abs_eq hc0).mp habs
  -- no minus branch below the barrier
  have hcosall : ∀ i, Real.cos (d i) = c := fun i =>
    no_minus_branch_below_barrier (by omega) hκ hc0 hc1 d hcos hE i
  -- all bonds equal
  have heq : ∀ i, d i = d i0 := fun i =>
    eq_of_sin_eq_of_cos_eq (hrange i) (hrange i0) (hcrit i i0)
      (by rw [hcosall i, hcosall i0])
  -- sum gives the value
  have hNne : (N : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hsum' : (N : ℝ) * d i0 = 2 * π * k := by
    calc (N : ℝ) * d i0 = ∑ _i : Fin N, d i0 := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
      _ = ∑ i, d i := Finset.sum_congr rfl (fun i _ => (heq i).symm)
      _ = 2 * π * k := hsum
  intro i
  rw [heq i, eq_div_iff hNne]
  linarith
  -- BLUEPRINT: s := sin (d ⟨0,_⟩); c := √(1 - s²) with 0 ≤ c ≤ 1
  --   (Real.sin_sq_le_one, Real.sqrt_le_one, Real.sqrt_nonneg). Each cos (d i)
  --   = ±c: cos² = 1 - sin² = c² (Real.sin_sq_add_cos_sq), then sq_eq_sq' /
  --   abs_eq (Real.sq_sqrt). no_minus_branch_below_barrier forces cos (d i) = c
  --   for all i. Pairwise d i = d j by eq_of_sin_eq_of_cos_eq. All equal to t;
  --   ∑ = N • t = 2πk (Finset.sum_const) gives t = 2πk/N (N ≠ 0 cast).

/-- **LS.1 saddle identity**: the ridge envelope at the saddle parameter IS the
    saddle level: `φ_k(π - a_k) = S_k`. -/
theorem ridgeEnv_at_saddle {N : ℕ} {κ : ℝ} {k : ℕ} (hN : 3 ≤ N) :
    ridgeEnv N κ k (π - saddleParam N k) = saddleLevel N κ k := by
  have hN3 : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have h1 : (N : ℝ) - 1 ≠ 0 := by
    apply sub_ne_zero_of_ne
    intro h
    linarith
  have h2 : (N : ℝ) - 2 ≠ 0 := by
    apply sub_ne_zero_of_ne
    intro h
    linarith
  have key : (2 * π * k - (π - saddleParam N k)) / ((N : ℝ) - 1) = saddleParam N k := by
    unfold saddleParam
    field_simp
    ring
  unfold ridgeEnv saddleLevel
  rw [key, Real.cos_pi_sub]
  ring
  -- BLUEPRINT: key algebra: (2πk - (π - a))/(N-1) = a for a = (2πk - π)/(N-2)
  --   (field_simp with (N:ℝ) - 1 ≠ 0, (N:ℝ) - 2 ≠ 0 from hN; ring). Then
  --   Real.cos_pi_sub (cos(π - a) = -cos a); unfold and ring:
  --   (1 + cos a) + (N-1)(1 - cos a) = 2 + (N-2)(1 - cos a).

/-- **The ladder, upper rung**: the saddle level sits STRICTLY ABOVE the domain
    cap: `2κ < S_k` (for admissible k ≥ 1, 2k + 1 < N). -/
theorem saddleLevel_gt_two_kappa {N : ℕ} {κ : ℝ} {k : ℕ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (h2k : 2 * (k : ℝ) + 1 < N) :
    2 * κ < saddleLevel N κ k := by
  have hπ := Real.pi_pos
  have hk' : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have ha_pos : 0 < saddleParam N k := by
    unfold saddleParam
    apply div_pos _ hN2
    nlinarith
  have ha_lt : saddleParam N k < π := by
    unfold saddleParam
    rw [div_lt_iff₀ hN2]
    nlinarith
  have hcos : Real.cos (saddleParam N k) < 1 := by
    have h := Real.strictAntiOn_cos (Set.left_mem_Icc.mpr hπ.le)
      ⟨ha_pos.le, ha_lt.le⟩ ha_pos
    rwa [Real.cos_zero] at h
  unfold saddleLevel
  nlinarith [mul_pos hN2 (by linarith : (0:ℝ) < 1 - Real.cos (saddleParam N k))]

/-- **The Jensen/equidistribution engine** (the repaired K4 boundary step, in
    its honest convex-range form): on `[-π/2, π/2]`, fixed-sum bond blocks
    minimize `Σ(1 - cos)` at equidistribution. -/
theorem jensen_one_sub_cos {M : ℕ} (hM : 0 < M) (d : Fin M → ℝ)
    (hrange : ∀ i, d i ∈ Set.Icc (-(π / 2)) (π / 2)) :
    M * (1 - Real.cos ((∑ i, d i) / M)) ≤ ∑ i, (1 - Real.cos (d i)) := by
  have hM' : (0 : ℝ) < M := by exact_mod_cast hM
  have hMne : (M : ℝ) ≠ 0 := ne_of_gt hM'
  have hconc : ConcaveOn ℝ (Set.Icc (-(π / 2)) (π / 2)) Real.cos :=
    strictConcaveOn_cos_Icc.concaveOn
  have hw : ∀ i ∈ (Finset.univ : Finset (Fin M)), (0 : ℝ) ≤ (M : ℝ)⁻¹ :=
    fun _ _ => inv_nonneg.mpr hM'.le
  have hsum1 : ∑ _i : Fin M, (M : ℝ)⁻¹ = 1 := by
    simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    exact mul_inv_cancel₀ hMne
  have hjensen := hconc.le_map_sum hw hsum1 (fun i _ => hrange i)
  have hmean : (∑ i : Fin M, (M : ℝ)⁻¹ • d i) = (∑ i, d i) / M := by
    rw [← Finset.smul_sum, smul_eq_mul, div_eq_inv_mul]
  rw [hmean] at hjensen
  have hjensen' : (∑ i, Real.cos (d i)) ≤ M * Real.cos ((∑ i, d i) / M) := by
    have h1 : (M : ℝ)⁻¹ * (∑ i, Real.cos (d i)) ≤ Real.cos ((∑ i, d i) / M) := by
      simpa only [smul_eq_mul, ← Finset.mul_sum] using hjensen
    have h2 := mul_le_mul_of_nonneg_left h1 hM'.le
    calc (∑ i, Real.cos (d i)) = (M : ℝ) * ((M : ℝ)⁻¹ * ∑ i, Real.cos (d i)) := by
          field_simp
      _ ≤ M * Real.cos ((∑ i, d i) / M) := h2
  have hexp : (∑ i, (1 - Real.cos (d i))) = (M : ℝ) - ∑ i, Real.cos (d i) := by
    rw [Finset.sum_sub_distrib]
    simp
  rw [hexp, mul_one_sub]
  linarith [hjensen']

/-- **C1-SUB endpoint, N = 10 (k = 1)**: `m_1(10) < 2κ` — with `κ = 1`:
    `10(1 - cos(π/5)) < 2`. (Route: `cos x ≥ 1 - x²/2` gives
    `10(1 - cos(π/5)) ≤ π²/5 < 2 ⟺ π² < 10`.) -/
theorem groundLevel_ten_lt_two : groundLevel 10 1 1 < 2 := by
  unfold groundLevel
  push_cast
  have hcos : 1 - (2 * π * 1 / 10) ^ 2 / 2 ≤ Real.cos (2 * π * 1 / 10) :=
    Real.one_sub_sq_div_two_le_cos
  have hpi := Real.pi_lt_d6
  have hpi0 := Real.pi_pos
  nlinarith [hcos, hpi, hpi0]

/-- **C1-SUB endpoint, N = 9 (k = 1)**: `m_1(9) > 2κ` — the threshold is sharp:
    `9(1 - cos(2π/9)) > 2 ⟺ cos(2π/9) < 7/9`. -/
theorem groundLevel_nine_gt_two : 2 < groundLevel 9 1 1 := by
  have hπl : (3.141592 : ℝ) < π := Real.pi_gt_d6
  have hπu : π < 3.141593 := Real.pi_lt_d6
  have hx0 : (0.698131 : ℝ) < 2 * π / 9 := by nlinarith
  have hx1 : 2 * π / 9 < 0.698132 := by nlinarith
  have hxpos : (0 : ℝ) < 2 * π / 9 := by nlinarith
  have hxabs : |2 * π / 9| ≤ 1 := by
    rw [abs_of_pos hxpos]; nlinarith
  have hb := Real.cos_bound hxabs
  rw [abs_of_pos hxpos] at hb
  have hcos : Real.cos (2 * π / 9) ≤
      1 - (2 * π / 9) ^ 2 / 2 + (2 * π / 9) ^ 4 * (5 / 96) := by
    have h1 := (abs_sub_le_iff.1 hb).1
    linarith
  have hx2 : (0.487386 : ℝ) < (2 * π / 9) ^ 2 := by nlinarith
  have hx2u : (2 * π / 9) ^ 2 < 0.487389 := by nlinarith
  have hx4 : (2 * π / 9) ^ 4 < 0.237553 := by nlinarith [hx2u, sq_nonneg (2 * π / 9)]
  have hcos2 : Real.cos (2 * π / 9) < 7 / 9 := by linarith
  have harg : 2 * π * ((1 : ℕ) : ℝ) / ((9 : ℕ) : ℝ) = 2 * π / 9 := by
    push_cast; ring
  unfold groundLevel
  rw [harg]
  push_cast
  nlinarith [hcos2]
  -- BLUEPRINT: needs the quartic UPPER bound on cos: Real.cos_bound
  --   (|cos x - (1 - x²/2)| ≤ |x|⁴ · (5/96) for |x| ≤ 1 — grep
  --   Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds; 2π/9 < 0.7 < 1 ✓).
  --   cos x ≤ 1 - x²/2 + 5x⁴/96 with x = 2π/9: with π > 3.141592
  --   (Real.pi_gt_3141592), x²/2 - 5x⁴/96 > 0.2313 > 2/9 ≈ 0.2222; nlinarith
  --   (may need explicit intermediate rationals; margin ≈ 0.009).

/-- **THE LADDER** (display): `m_k < 2κ < S_k` — the ground sits below the
    domain cap and the label saddle sits strictly above it. -/
theorem ladder {N : ℕ} {κ : ℝ} {k : ℕ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (h2k : 2 * (k : ℝ) + 1 < N) (hsub : groundLevel N κ k < 2 * κ) :
    groundLevel N κ k < 2 * κ ∧ 2 * κ < saddleLevel N κ k :=
  ⟨hsub, saddleLevel_gt_two_kappa hκ hk h2k⟩

/-! ## Campaign #4 (P0.1): criticality on the winding slice <-> equal sines.
    The slice form: a winding-k torus configuration is a bond vector on the
    affine slice {sum d = 2*pi*k}; its tangent space is the zero-sum
    hyperplane, and angle variations w map onto it by (Bw) i = w(i+1) - w i
    (the range bridge below - mechanizing the angle<->bond variation seam).
    Criticality = the differential of E kills every zero-sum direction. -/

/-- The differential of `E` at `d`: the continuous linear map
    `v ↦ κ Σ sin(d i) * v i`. -/
noncomputable def dE {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) : (Fin N → ℝ) →L[ℝ] ℝ :=
  ∑ i, (κ * Real.sin (d i)) • (ContinuousLinearMap.proj i)

/-- Per-coordinate derivative: `d ↦ 1 - cos (d i)` has derivative
    `sin (d i) • proj i`. -/
private lemma hasFDerivAt_one_sub_cos_eval {N : ℕ} (d : Fin N → ℝ) (i : Fin N) :
    HasFDerivAt (fun d : Fin N → ℝ => 1 - Real.cos (d i))
      (Real.sin (d i) • (ContinuousLinearMap.proj i : (Fin N → ℝ) →L[ℝ] ℝ)) d := by
  have hproj : HasFDerivAt (fun d : Fin N → ℝ => d i)
      (ContinuousLinearMap.proj i : (Fin N → ℝ) →L[ℝ] ℝ) d :=
    (ContinuousLinearMap.proj i : (Fin N → ℝ) →L[ℝ] ℝ).hasFDerivAt
  have hcos := (Real.hasDerivAt_cos (d i)).comp_hasFDerivAt d hproj
  simpa [Function.comp, neg_smul] using hcos.const_sub 1

/-- **G1** — `E` is differentiable with differential `dE`. -/
theorem hasFDerivAt_E {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) :
    HasFDerivAt (E κ) (dE κ d) d := by
  have hsum : HasFDerivAt (fun d : Fin N → ℝ => ∑ i, (1 - Real.cos (d i)))
      (∑ i : Fin N, Real.sin (d i) •
        (ContinuousLinearMap.proj i : (Fin N → ℝ) →L[ℝ] ℝ)) d :=
    HasFDerivAt.fun_sum (fun i _ => hasFDerivAt_one_sub_cos_eval d i)
  have hmul := hsum.const_mul κ
  have hd : dE κ d = κ • ∑ i : Fin N, Real.sin (d i) •
      (ContinuousLinearMap.proj i : (Fin N → ℝ) →L[ℝ] ℝ) := by
    ext v
    simp [dE, Finset.mul_sum, mul_assoc]
  have hE : E κ = fun d : Fin N → ℝ => κ * ∑ i, (1 - Real.cos (d i)) := rfl
  rw [hE, hd]
  exact hmul
  -- BLUEPRINT: E κ = fun d => κ * ∑ i, (1 - cos (d i)).  Per summand:
  --   (fun d => 1 - Real.cos (d i)) = (fun x => 1 - Real.cos x) ∘ (eval i);
  --   HasFDerivAt via (Real.hasDerivAt_cos (d i)) composed with
  --   (ContinuousLinearMap.proj i).hasFDerivAt (HasDerivAt.comp_hasFDerivAt);
  --   const_sub; HasFDerivAt.sum over univ; .const_mul κ.  Close the CLM
  --   equality with dE by ContinuousLinearMap.ext + simp [dE,
  --   ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
  --   ContinuousLinearMap.proj_apply]; ring_nf.

/-- **G3 — the range bridge**: zero-sum vectors are EXACTLY the bond images of
    angle variations (`(Bw) i = w (i+1) - w i`). This mechanizes the
    angle<->bond variation correspondence. -/
theorem zero_sum_iff_bond_image {N : ℕ} [NeZero N] (v : Fin N → ℝ) :
    (∑ i, v i) = 0 ↔ ∃ w : Fin N → ℝ, ∀ i, v i = w (i + 1) - w i := by
  constructor
  · -- (⟹): partial sums w j = ∑_{i < j} v i.
    intro hsum
    obtain ⟨n, rfl⟩ : ∃ n, N = n + 1 :=
      ⟨N - 1, (Nat.succ_pred_eq_of_pos (Nat.pos_of_ne_zero (NeZero.ne N))).symm⟩
    refine ⟨fun j => ∑ i ∈ Finset.Iio j, v i, fun i => ?_⟩
    rcases eq_or_ne i (Fin.last n) with rfl | hi
    · -- wrap-around index: (last n) + 1 = 0.
      have h0 : Fin.last n + 1 = 0 := by
        apply Fin.ext
        simp
      have hIio0 : Finset.Iio (0 : Fin (n + 1)) = ∅ := by
        ext j; simp
      have hlastIio : Finset.Iio (Fin.last n) = Finset.univ.erase (Fin.last n) := by
        ext j
        simp only [Finset.mem_Iio, Finset.mem_erase, Finset.mem_univ, and_true]
        exact Fin.lt_last_iff_ne_last
      have herase : v (Fin.last n) + ∑ j ∈ Finset.univ.erase (Fin.last n), v j = 0 := by
        rw [Finset.add_sum_erase _ v (Finset.mem_univ _)]
        exact hsum
      show v (Fin.last n)
          = (∑ j ∈ Finset.Iio (Fin.last n + 1), v j) - ∑ j ∈ Finset.Iio (Fin.last n), v j
      rw [h0, hIio0, hlastIio, Finset.sum_empty]
      linarith
    · -- interior index: Iio (i+1) = insert i (Iio i).
      have hlt : (i : ℕ) + 1 < n + 1 := by
        have hlast : i < Fin.last n := Fin.lt_last_iff_ne_last.mpr hi
        rw [Fin.lt_def] at hlast
        simp only [Fin.val_last] at hlast
        omega
      show v i = (∑ j ∈ Finset.Iio (i + 1), v j) - ∑ j ∈ Finset.Iio i, v j
      rw [Fin.Iio_add_one_eq_Iic hlt, ← Finset.Iio_insert,
        Finset.sum_insert (by simp)]
      ring
  · -- (⟸): telescoping via the addRight-1 reindexing bijection.
    rintro ⟨w, hw⟩
    calc ∑ i, v i = ∑ i, (w (i + 1) - w i) := Finset.sum_congr rfl fun i _ => hw i
      _ = 0 := by
        rw [Finset.sum_sub_distrib, sub_eq_zero]
        exact Fintype.sum_equiv (Equiv.addRight (1 : Fin N)) _ _ fun i => rfl
  -- BLUEPRINT: (⟸) telescoping: ∑ (w(i+1) - w i) = 0 by the addRight-1
  --   reindexing bijection (same pattern as sum_bond_eq_zero in LaneCT1).
  --   (⟹) partial sums: w j := ∑ i ∈ Finset.Iio j, v i (Fin has
  --   LocallyFiniteOrder).  For i ≠ Fin.last: w(i+1) - w i = v i via
  --   Iio (i+1) = insert i (Iio i) (grep Fin.Iio_succ / Finset.Iio_succ /
  --   sum over Fin.castSucc-style; or work with Fin.val + Finset.range).
  --   For i = Fin.last (i+1 = 0): w 0 = 0 and w last = (∑ univ) - v last
  --   = -v last by the zero-sum hypothesis, so w 0 - w last = v last.
  --   Case split via Fin.lastCases or omega on i.val + 1 = N.

/-- **G4 — P0.1, slice form**: the differential of `E` kills every zero-sum
    direction iff all bond sines are equal. -/
theorem critical_slice_iff {N : ℕ} (hN : 2 ≤ N) (d : Fin N → ℝ) :
    (∀ v : Fin N → ℝ, (∑ i, v i) = 0 → ∑ i, Real.sin (d i) * v i = 0) ↔
      (∀ i j, Real.sin (d i) = Real.sin (d j)) := by
  constructor
  · -- (⟹): test the differential against v = e_i - e_j.
    intro h i j
    by_cases hij : i = j
    · subst hij; rfl
    · have hzero : (∑ x, ((Pi.single i 1 - Pi.single j 1 : Fin N → ℝ)) x) = 0 := by
        simp [Finset.sum_sub_distrib, Finset.sum_pi_single']
      have h0 := h (Pi.single i 1 - Pi.single j 1 : Fin N → ℝ) hzero
      have key : (∑ x, Real.sin (d x) * ((Pi.single i 1 - Pi.single j 1 : Fin N → ℝ) x))
          = Real.sin (d i) - Real.sin (d j) := by
        simp [Pi.single_apply, mul_sub, mul_ite, Finset.sum_sub_distrib,
          Finset.sum_ite_eq']
      rw [key] at h0
      linarith
  · -- (⟸): all sines equal a common value, which factors out of the sum.
    intro h v hv
    have i₀ : Fin N := ⟨0, by omega⟩
    calc ∑ x, Real.sin (d x) * v x
        = ∑ x, Real.sin (d i₀) * v x := by
          refine Finset.sum_congr rfl fun x _ => ?_
          rw [h x i₀]
      _ = Real.sin (d i₀) * ∑ x, v x := (Finset.mul_sum _ _ _).symm
      _ = 0 := by rw [hv, mul_zero]

/-- **G5 — P0.1, angle-variation form**: the differential kills every bond
    image of an angle variation iff all sines are equal (G3 + G4). -/
theorem critical_angle_iff {N : ℕ} [NeZero N] (hN : 2 ≤ N) (d : Fin N → ℝ) :
    (∀ w : Fin N → ℝ, ∑ i, Real.sin (d i) * (w (i + 1) - w i) = 0) ↔
      (∀ i j, Real.sin (d i) = Real.sin (d j)) := by
  constructor
  · intro hw
    apply (critical_slice_iff hN d).mp
    intro v hv
    obtain ⟨w, hwv⟩ := (zero_sum_iff_bond_image v).mp hv
    have h := hw w
    rwa [show (∑ i, Real.sin (d i) * v i)
        = ∑ i, Real.sin (d i) * (w (i + 1) - w i) from
      Finset.sum_congr rfl (fun i _ => by rw [hwv i])]
  · intro hs w
    have hz : (∑ i, (w (i + 1) - w i)) = 0 :=
      (zero_sum_iff_bond_image _).mpr ⟨w, fun i => rfl⟩
    exact (critical_slice_iff hN d).mpr hs _ hz
  -- BLUEPRINT: transport the quantifier through zero_sum_iff_bond_image:
  --   forward: given zero-sum v, obtain w with v i = w(i+1) - w i, rewrite,
  --   apply the hypothesis at w; backward: for any w, the vector
  --   v := fun i => w(i+1) - w i is zero-sum (the ⟸ leg of G3), apply the
  --   slice form.  Then critical_slice_iff hN d closes both directions.

/-- **G6 — P0.2 COMPOSED (classification from genuine criticality)**:
    discharges the "given P0.1" caveat of `classification_below_barrier`. -/
theorem classification_below_barrier_critical {N : ℕ} {κ : ℝ} {k : ℕ}
    (hN : 3 ≤ N) (hκ : 0 < κ) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π * k)
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → ∑ i, Real.sin (d i) * v i = 0)
    (hE : E κ d < 2 * κ) :
    ∀ i, d i = 2 * π * k / N :=
  classification_below_barrier hN hκ d hrange hsum
    ((critical_slice_iff (by omega) d).mp hcrit) hE

/-! ## Campaign #6: the v18 TUBE TRICK inference, C1-SUB k = 2,3 endpoints,
    and the LS.4 Hessian core at the one-bond saddle.
    HONEST SCOPE: the tube BAND |E0 - S| <= C r^2 is a HYPOTHESIS here (LP.1(i)
    stays prose-level) - what is sealed is the self-exclusion INFERENCE plus
    the concrete W* >= 0 input; hessForm is the slice-constrained Hessian
    form in bond coordinates - its identification with the manifold Hessian
    at SP_k (the second-derivative computation) is the prose-level step. -/

/-- The standard coupling `W*(d, e) = Σ (1 - cos(d i - e i))` (bond form). -/
noncomputable def Wstar {N : ℕ} (d e : Fin N → ℝ) : ℝ :=
  ∑ i, (1 - Real.cos (d i - e i))

/-- **TT1** — the standard coupling is nonnegative. -/
theorem Wstar_nonneg {N : ℕ} (d e : Fin N → ℝ) : 0 ≤ Wstar d e := by
  unfold Wstar
  apply Finset.sum_nonneg
  intro i _
  have h := Real.cos_le_one (d i - e i)
  linarith

/-- **TT2 — THE TUBE SELF-EXCLUSION (the v18 trick's inference)**: if the
    envelope satisfies the band `|E0 - S| ≤ C r²` on a set `T`, the perturbed
    energy dominates the envelope, and `r² = ε'/(2C)`, then on `T` the
    perturbed energy stays STRICTLY ABOVE the cap `S - ε'` - the tube
    excludes itself from the sub-cap domain, with NO analysis of the
    perturbed critical structure. -/
theorem tube_self_exclusion {α : Type*} (E0 Eeps : α → ℝ) (S C εp r : ℝ)
    (T : Set α) (hband : ∀ x ∈ T, |E0 x - S| ≤ C * r ^ 2)
    (hge : ∀ x, E0 x ≤ Eeps x) (hC : 0 < C) (hεp : 0 < εp)
    (hr : r ^ 2 = εp / (2 * C)) :
    ∀ x ∈ T, S - εp < Eeps x := by
  intro x hx
  have h1 := (abs_le.mp (hband x hx)).1
  have h2 : C * r ^ 2 = εp / 2 := by
    rw [hr]; field_simp
  have h3 := hge x
  linarith [hεp]

/-- **C2a** — C1-SUB endpoint, k = 2, N = 40: `m_2(40) < 2κ` (κ = 1). -/
theorem groundLevel_forty_lt_two : groundLevel 40 1 2 < 2 := by
  unfold groundLevel
  push_cast
  have hcos : 1 - (2 * π * 2 / 40) ^ 2 / 2 ≤ Real.cos (2 * π * 2 / 40) :=
    Real.one_sub_sq_div_two_le_cos
  have hpi := Real.pi_lt_d6
  have hpi0 := Real.pi_pos
  nlinarith [hcos, hpi, hpi0]

/-- **C2b** — C1-SUB endpoint, k = 2, N = 39: `2κ < m_2(39)` (sharp). -/
theorem groundLevel_thirtynine_gt_two : 2 < groundLevel 39 1 2 := by
  have hπl : (3.141592 : ℝ) < π := Real.pi_gt_d6
  have hπu : π < 3.141593 := Real.pi_lt_d6
  have hx0 : (0.3222145 : ℝ) < 2 * π * 2 / 39 := by nlinarith
  have hx1 : 2 * π * 2 / 39 < 0.3222147 := by nlinarith
  have hxpos : (0 : ℝ) < 2 * π * 2 / 39 := by nlinarith
  have hxabs : |2 * π * 2 / 39| ≤ 1 := by
    rw [abs_of_pos hxpos]; nlinarith
  have hb := Real.cos_bound hxabs
  rw [abs_of_pos hxpos] at hb
  have hcos : Real.cos (2 * π * 2 / 39) ≤
      1 - (2 * π * 2 / 39) ^ 2 / 2 + (2 * π * 2 / 39) ^ 4 * (5 / 96) := by
    have h1 := (abs_sub_le_iff.1 hb).1
    linarith
  have hx2 : (0.1038221 : ℝ) < (2 * π * 2 / 39) ^ 2 := by nlinarith
  have hx2u : (2 * π * 2 / 39) ^ 2 < 0.1038224 := by nlinarith
  have hx4 : (2 * π * 2 / 39) ^ 4 < 0.0107791 := by
    nlinarith [hx2u, sq_nonneg (2 * π * 2 / 39)]
  have hcos2 : Real.cos (2 * π * 2 / 39) < 37 / 39 := by linarith
  have harg : 2 * π * ((2 : ℕ) : ℝ) / ((39 : ℕ) : ℝ) = 2 * π * 2 / 39 := by
    push_cast; ring
  unfold groundLevel
  rw [harg]
  push_cast
  nlinarith [hcos2]
  -- BLUEPRINT: x := 4π/39 ≈ 0.3222 (|x| ≤ 1 ✓). Quartic UPPER bound on cos via
  --   Real.cos_bound (|cos x - (1 - x²/2)| ≤ |x|⁴·(5/96)): cos x ≤ 1 - x²/2
  --   + 5x⁴/96, so 39(1 - cos x) ≥ 39(x²/2 - 5x⁴/96) ≈ 39·0.05137 = 2.004 > 2.
  --   Stage rational bounds on x from pi_gt_d6/pi_lt_d6 (x > 0.322213,
  --   x < 0.322215), then x² > 0.103821, x⁴ < 0.0107824; nlinarith with
  --   staged haves (read groundLevel_nine_gt_two's proof above for the exact
  --   pattern). Margin ≈ 0.004 in the final display - stage carefully.

/-- **C3a** — C1-SUB endpoint, k = 3, N = 89: `m_3(89) < 2κ`. -/
theorem groundLevel_eightynine_lt_two : groundLevel 89 1 3 < 2 := by
  -- x := 6π/89; quadratic: 89(1 - cos x) ≤ 89 x²/2 = 18π²/89 < 2
  --   ⟺ π² < 89/9 ≈ 9.8889: pi_lt_d6 gives π² < 9.86961 ✓ margin 0.019.
  unfold groundLevel
  push_cast
  have hcos : 1 - (2 * π * 3 / 89) ^ 2 / 2 ≤ Real.cos (2 * π * 3 / 89) :=
    Real.one_sub_sq_div_two_le_cos
  have hpi := Real.pi_lt_d6
  have hpi0 := Real.pi_pos
  have hpi2 : π ^ 2 < 9.8697 := by nlinarith [hpi, hpi0]
  nlinarith [hcos, hpi2, hpi0]

/-- **C3b** — C1-SUB endpoint, k = 3, N = 88: `2κ < m_3(88)` (sharp). -/
theorem groundLevel_eightyeight_gt_two : 2 < groundLevel 88 1 3 := by
  have hπl : (3.141592 : ℝ) < π := Real.pi_gt_d6
  have hπu : π < 3.141593 := Real.pi_lt_d6
  have hx0 : (0.21419945 : ℝ) < 3 * π / 44 := by nlinarith
  have hx1 : 3 * π / 44 < 0.21419953 := by nlinarith
  have hxpos : (0 : ℝ) < 3 * π / 44 := by nlinarith
  have hxabs : |3 * π / 44| ≤ 1 := by
    rw [abs_of_pos hxpos]; nlinarith
  have hb := Real.cos_bound hxabs
  rw [abs_of_pos hxpos] at hb
  have hcos : Real.cos (3 * π / 44) ≤
      1 - (3 * π / 44) ^ 2 / 2 + (3 * π / 44) ^ 4 * (5 / 96) := by
    have h1 := (abs_sub_le_iff.1 hb).1
    linarith
  have hx2 : (0.04588140 : ℝ) < (3 * π / 44) ^ 2 := by nlinarith
  have hx2u : (3 * π / 44) ^ 2 < 0.04588144 := by nlinarith
  have hx4 : (3 * π / 44) ^ 4 < 0.00210513 := by
    nlinarith [hx2u, sq_nonneg (3 * π / 44)]
  have hcos2 : Real.cos (3 * π / 44) < 1 - 2 / 88 := by linarith
  have harg : 2 * π * ((3 : ℕ) : ℝ) / ((88 : ℕ) : ℝ) = 3 * π / 44 := by
    push_cast; ring
  unfold groundLevel
  rw [harg]
  push_cast
  nlinarith [hcos2]

/-- The one-bond saddle bond vector: first bond `π - a_k`, the rest `a_k`. -/
noncomputable def spBond (N k : ℕ) [NeZero N] : Fin N → ℝ := fun i =>
  if i = 0 then π - saddleParam N k else saddleParam N k

/-- The slice-constrained Hessian form of `E` at `d`:
    `Q_d(v) = κ Σ cos(d i) v i²`. -/
noncomputable def hessForm {N : ℕ} (κ : ℝ) (d v : Fin N → ℝ) : ℝ :=
  κ * ∑ i, Real.cos (d i) * v i ^ 2

/-- The associated bilinear pairing `B_d(v, w) = κ Σ cos(d i) v i w i`. -/
noncomputable def hessBilin {N : ℕ} (κ : ℝ) (d v w : Fin N → ℝ) : ℝ :=
  κ * ∑ i, Real.cos (d i) * v i * w i

/-- **H0 (flagship discharge)** — `cos a_1 > 0` for `N ≥ 5` (k = 1):
    `a_1 = π/(N-2) ∈ (0, π/2)`. -/
theorem cos_saddleParam_pos {N : ℕ} (hN : 5 ≤ N) :
    0 < Real.cos (saddleParam N 1) := by
  have hπ := Real.pi_pos
  have hN5 : (5 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have ha_pos : 0 < saddleParam N 1 := by
    unfold saddleParam
    apply div_pos _ hN2
    push_cast
    linarith
  have ha_lt : saddleParam N 1 < π / 2 := by
    unfold saddleParam
    rw [div_lt_iff₀ hN2]
    push_cast
    nlinarith [mul_pos hπ (by linarith : (0 : ℝ) < (N : ℝ) - 4)]
  exact Real.cos_pos_of_mem_Ioo ⟨by linarith, ha_lt⟩

/-- **H1** — the Hessian form at the saddle bond vector, two-value display:
    `Q_{SP}(v) = κ cos(a_k) (Σ_{i≠0} v i² - v 0²)`. -/
theorem hessForm_spBond {N : ℕ} [NeZero N] (κ : ℝ) (k : ℕ) (v : Fin N → ℝ) :
    hessForm κ (spBond N k) v
      = κ * Real.cos (saddleParam N k)
        * ((∑ i ∈ Finset.univ.erase 0, v i ^ 2) - v 0 ^ 2) := by
  simp only [hessForm, spBond]
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin N)), if_pos rfl,
    Real.cos_pi_sub]
  have herase :
      ∑ j ∈ Finset.univ.erase (0 : Fin N),
        Real.cos (if j = 0 then π - saddleParam N k else saddleParam N k)
          * v j ^ 2
      = ∑ j ∈ Finset.univ.erase (0 : Fin N),
        Real.cos (saddleParam N k) * v j ^ 2 :=
    Finset.sum_congr rfl fun j hj => by
      rw [if_neg (Finset.mem_erase.mp hj).1]
  rw [herase, ← Finset.mul_sum]
  ring

/-- **H2** — the NEGATIVE direction (index ≥ 1): the zero-sum witness
    `v = (N-1, -1, ..., -1)` makes the saddle Hessian form negative. -/
theorem hess_negative_witness {N : ℕ} [NeZero N] {κ : ℝ} (hN : 3 ≤ N)
    (hκ : 0 < κ) (k : ℕ) (hc : 0 < Real.cos (saddleParam N k)) :
    (∑ i, (fun i => if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) i) = 0 ∧
    hessForm κ (spBond N k)
      (fun i => if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) < 0 := by
  have hmem : (0 : Fin N) ∈ (Finset.univ : Finset (Fin N)) := Finset.mem_univ _
  have hN1 : 1 ≤ N := by omega
  have hcard : (Finset.univ.erase (0 : Fin N)).card = N - 1 := by
    rw [Finset.card_erase_of_mem hmem, Finset.card_univ, Fintype.card_fin]
  have hcast : ((N - 1 : ℕ) : ℝ) = (N : ℝ) - 1 := by
    rw [Nat.cast_sub hN1, Nat.cast_one]
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  constructor
  · -- the witness is zero-sum: (N-1) + (N-1)·(-1) = 0
    have h1 : (∑ i, (if i = (0 : Fin N) then ((N : ℝ) - 1) else -1)) = 0 := by
      rw [← Finset.add_sum_erase _ _ hmem, if_pos rfl]
      have hne : ∀ i ∈ Finset.univ.erase (0 : Fin N),
          (if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) = -1 :=
        fun i hi => if_neg (Finset.ne_of_mem_erase hi)
      rw [Finset.sum_congr rfl hne, Finset.sum_const, hcard, nsmul_eq_mul, hcast]
      ring
    simpa using h1
  · -- the form is negative: Q = κ c ((N-1) - (N-1)²) = κ c (N-1)(2-N) < 0
    rw [hessForm_spBond]
    have h2 : (∑ i ∈ Finset.univ.erase (0 : Fin N),
        (if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) ^ 2) = (N : ℝ) - 1 := by
      have hone : ∀ i ∈ Finset.univ.erase (0 : Fin N),
          (if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) ^ 2 = 1 := by
        intro i hi
        rw [if_neg (Finset.ne_of_mem_erase hi)]
        norm_num
      rw [Finset.sum_congr rfl hone, Finset.sum_const, hcard, nsmul_eq_mul, hcast,
        mul_one]
    have hpos : 0 < κ * Real.cos (saddleParam N k) := mul_pos hκ hc
    have hgoal : κ * Real.cos (saddleParam N k)
        * (((N : ℝ) - 1) - ((N : ℝ) - 1) ^ 2) < 0 := by
      have hstage : ((N : ℝ) - 1) - ((N : ℝ) - 1) ^ 2 ≤ -2 := by
        nlinarith [hNR, sq_nonneg ((N : ℝ) - 3)]
      have hmul := mul_le_mul_of_nonneg_left hstage hpos.le
      nlinarith [hmul, hpos]
    simp only [h2]
    exact hgoal
  -- BLUEPRINT: sum: split at 0 (add_sum_erase): (N-1) + (N-1)·(-1) = 0
  --   (card_erase = N-1). Form: hessForm_spBond; Σ_{i≠0} v i² = (N-1)·1;
  --   v 0² = (N-1)²; so Q = κ c ((N-1) - (N-1)²) = κ c (N-1)(2-N) < 0 for
  --   N ≥ 3 (nlinarith with hκ, hc, N ≥ 3 cast).

/-- **H3** — POSITIVITY on the transversal complement: on the zero-sum slice
    with `v 0 = 0`, the saddle Hessian form is positive definite. -/
theorem hess_pos_on_perp {N : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 < κ) (k : ℕ)
    (hc : 0 < Real.cos (saddleParam N k)) (v : Fin N → ℝ)
    (hv0 : v 0 = 0) (hvne : v ≠ 0) :
    0 < hessForm κ (spBond N k) v := by
  rw [hessForm_spBond]
  -- the subtracted term vanishes since v 0 = 0
  have hkill : (∑ i ∈ Finset.univ.erase 0, v i ^ 2) - v 0 ^ 2
      = ∑ i ∈ Finset.univ.erase 0, v i ^ 2 := by
    rw [hv0]; ring
  rw [hkill]
  -- the remaining sum is strictly positive: all terms nonneg, one positive
  obtain ⟨i₀, hi₀⟩ := Function.ne_iff.mp hvne
  simp only [Pi.zero_apply] at hi₀
  have hi₀0 : i₀ ≠ 0 := by
    intro h
    rw [h, hv0] at hi₀
    exact hi₀ rfl
  have hpos : 0 < v i₀ ^ 2 :=
    lt_of_le_of_ne (sq_nonneg _) (Ne.symm (pow_ne_zero 2 hi₀))
  have hsum : 0 < ∑ i ∈ Finset.univ.erase 0, v i ^ 2 :=
    Finset.sum_pos' (fun i _ => sq_nonneg _)
      ⟨i₀, Finset.mem_erase.mpr ⟨hi₀0, Finset.mem_univ _⟩, hpos⟩
  exact mul_pos (mul_pos hκ hc) hsum
  -- BLUEPRINT: hessForm_spBond; v 0 = 0 kills the negative term; Σ_{i≠0} v i²
  --   > 0: nonneg terms (sq_nonneg) + some i₀ with v i₀ ≠ 0 (Function.ne_iff
  --   from hvne; i₀ ≠ 0 since v 0 = 0), Finset.sum_pos' / sum_lt_sum with the
  --   positive term (pow_pos / sq_pos_of_ne_zero); multiply κ c > 0.
  --   (Note the zero-sum constraint is NOT needed for positivity here.)

/-- **H4** — NONDEGENERACY on the zero-sum slice: if the saddle bilinear
    pairing kills every zero-sum direction, the (zero-sum) vector vanishes. -/
theorem hess_nondegenerate {N : ℕ} [NeZero N] {κ : ℝ} (hN : 3 ≤ N)
    (hκ : 0 < κ) (k : ℕ) (hc : 0 < Real.cos (saddleParam N k))
    (v : Fin N → ℝ) (hvsum : (∑ i, v i) = 0)
    (hkill : ∀ w : Fin N → ℝ, (∑ i, w i) = 0 → hessBilin κ (spBond N k) v w = 0) :
    v = 0 := by
  -- Step 1: test the pairing against e_i - e_j (the campaign-#4 pattern):
  -- the weighted coordinates cos(sp i)·v i are pairwise constant.
  have hpair : ∀ i j : Fin N,
      Real.cos (spBond N k i) * v i = Real.cos (spBond N k j) * v j := by
    intro i j
    by_cases hij : i = j
    · subst hij; rfl
    · have hzero : (∑ x, ((Pi.single i 1 - Pi.single j 1 : Fin N → ℝ)) x) = 0 := by
        simp [Finset.sum_sub_distrib, Finset.sum_pi_single']
      have h0 := hkill (Pi.single i 1 - Pi.single j 1 : Fin N → ℝ) hzero
      have key : (∑ x, Real.cos (spBond N k x) * v x
            * ((Pi.single i 1 - Pi.single j 1 : Fin N → ℝ) x))
          = Real.cos (spBond N k i) * v i - Real.cos (spBond N k j) * v j := by
        simp [Pi.single_apply, mul_sub, mul_ite, Finset.sum_sub_distrib,
          Finset.sum_ite_eq']
      simp only [hessBilin] at h0
      rw [key] at h0
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hκ.ne'
      · linarith
  -- Step 2: the two-value cosine at the saddle bond vector.
  have hsp0 : Real.cos (spBond N k 0) = -Real.cos (saddleParam N k) := by
    have h : spBond N k 0 = π - saddleParam N k := by simp [spBond]
    rw [h, Real.cos_pi_sub]
  have hspne : ∀ i : Fin N, i ≠ 0 →
      Real.cos (spBond N k i) = Real.cos (saddleParam N k) := by
    intro i hi
    have h : spBond N k i = saddleParam N k := by simp [spBond, hi]
    rw [h]
  -- Step 3: off the distinguished bond, v i = -v 0 (cancel the cosine).
  have hval : ∀ i : Fin N, i ≠ 0 → v i = -v 0 := by
    intro i hi
    have h := hpair i 0
    rw [hspne i hi, hsp0] at h
    have h' : Real.cos (saddleParam N k) * v i
        = Real.cos (saddleParam N k) * (-v 0) := by
      rw [mul_neg, ← neg_mul]; exact h
    exact mul_left_cancel₀ hc.ne' h'
  -- Step 4: the zero-sum forces v 0 = 0 (N ≥ 3 makes (N:ℝ) - 2 ≠ 0).
  have herase : ∑ i ∈ Finset.univ.erase (0 : Fin N), v i
      = ((N : ℝ) - 1) * (-v 0) := by
    rw [Finset.sum_congr rfl (fun i hi => hval i (Finset.ne_of_mem_erase hi)),
      Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ _),
      Finset.card_univ, Fintype.card_fin, nsmul_eq_mul,
      Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]
  have hsum' : v 0 + ((N : ℝ) - 1) * (-v 0) = 0 := by
    rw [← herase, Finset.add_sum_erase _ v (Finset.mem_univ _)]
    exact hvsum
  have hN3 : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have h2 : ((N : ℝ) - 2) * v 0 = 0 := by linear_combination -hsum'
  have hv0 : v 0 = 0 := by
    rcases mul_eq_zero.mp h2 with h | h
    · exfalso; linarith
    · exact h
  -- Step 5: assemble.
  funext i
  simp only [Pi.zero_apply]
  rcases eq_or_ne i 0 with h | h
  · rw [h]; exact hv0
  · rw [hval i h, hv0, neg_zero]
  -- BLUEPRINT: the pairing-kill against w = single i 1 - single j 1 (zero-sum)
  --   gives cos(sp i) v i = cos(sp j) v j for all i j (the campaign-#4
  --   critical_slice_iff PATTERN - read that proof; here the tested quantity
  --   is cos(spBond i)·v i instead of sin(d i)). Two-value cos: at i = 0 it is
  --   -c·v 0 = μ; at i ≠ 0 it is c·v i = μ, so v i = μ/c (i ≠ 0), v 0 = -μ/c.
  --   Zero-sum: -μ/c + (N-1)μ/c = (N-2)μ/c = 0 ⟹ μ = 0 (N ≥ 3, c ≠ 0) ⟹
  --   v i = 0 ∀i (funext).

/-! ## Campaign #7: LS.6 — the off-Delta winding-1 critical classification.
    For k = 1, N >= 5: a critical bond vector (all sines equal, the P0.1 form)
    with winding 1 and all bonds in the OPEN branch is EXACTLY the ground
    circle C_1 (equidistributed) or the one-bond saddle SP_1.  The p >= 2
    two-branch families die in the count equation (on-Delta degeneration in
    the corpus = open-range exclusion here); nonpositive common sine cannot
    carry positive winding. -/

/-- **S1** — solutions of the sine equation in the open branch: every
    `x ∈ (-π, π)` is its own arcsin representative or one of the two
    reflections. -/
theorem mem_arcsin_branches {x : ℝ} (hx : x ∈ Set.Ioo (-π) π) :
    x = Real.arcsin (Real.sin x) ∨ x = π - Real.arcsin (Real.sin x) ∨
      x = -π - Real.arcsin (Real.sin x) := by
  obtain ⟨hx1, hx2⟩ := hx
  have hpi := Real.pi_pos
  rcases le_or_gt x (π / 2) with h1 | h1
  · rcases le_or_gt (-(π / 2)) x with h2 | h2
    · -- middle branch: x ∈ [-π/2, π/2], arcsin (sin x) = x
      left
      exact (Real.arcsin_sin h2 h1).symm
    · -- left branch: x ∈ (-π, -π/2), arcsin (sin x) = -π - x
      right; right
      have key : Real.sin (-π - x) = Real.sin x := by
        have h : -π - x = -(π - -x) := by ring
        rw [h, Real.sin_neg, Real.sin_pi_sub, Real.sin_neg, neg_neg]
      have harc : Real.arcsin (Real.sin x) = -π - x := by
        rw [← key]
        exact Real.arcsin_sin (by linarith) (by linarith)
      linarith
  · -- right branch: x ∈ (π/2, π), arcsin (sin x) = π - x
    right; left
    have key : Real.sin (π - x) = Real.sin x := Real.sin_pi_sub x
    have harc : Real.arcsin (Real.sin x) = π - x := by
      rw [← key]
      exact Real.arcsin_sin (by linarith) (by linarith)
    linarith
  -- BLUEPRINT: three cases by comparing x to ±π/2 (rcases le_or_gt x (π/2),
  --   le_or_gt (-(π/2)) x). Middle x ∈ [-π/2, π/2]: Real.arcsin_sin (exact
  --   hypotheses: -(π/2) ≤ x ≤ π/2) gives branch 1. Right x ∈ (π/2, π):
  --   sin x = sin (π - x) (Real.sin_pi_sub), π - x ∈ (0, π/2) ⊂ principal,
  --   so arcsin (sin x) = π - x (rw sin_pi_sub? then arcsin_sin) → branch 2.
  --   Left x ∈ (-π, -π/2): sin x = sin (-π - x) (sin_pi_sub with negation:
  --   sin(-π - x) = sin(π + x)... careful: -π - x ∈ (-π/2, 0); Real.sin
  --   (-π - x) = -sin (π + x) = ... derive via sin_neg + sin_pi_sub:
  --   sin(-π-x) = -sin(π+x) = -(-sin x)?? sin(π+x) = -sin x so
  --   sin(-π-x) = -sin(π+x) = sin x ✓) → arcsin (sin x) = -π - x → branch 3.

/-- **S2** — a nonpositive common sine cannot carry winding one: bonds with
    `sin ≤ 0` in the open branch are `≤ 0`, so the sum cannot be `2π`. -/
theorem no_winding_with_nonpos_sine {N : ℕ} (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π)
    (hs : ∀ i, Real.sin (d i) ≤ 0) : False := by
  have hd : ∀ i, d i ≤ 0 := by
    intro i
    by_contra h
    exact absurd (hs i)
      (not_le.mpr (Real.sin_pos_of_pos_of_lt_pi (not_le.mp h) (hrange i).2))
  have hsum0 : ∑ i, d i ≤ 0 := Finset.sum_nonpos fun i _ => hd i
  have hpi := Real.pi_pos
  linarith

/-- **S3** — with positive common sine `s`, every bond is `arcsin s` or its
    reflection `π - arcsin s` (the third branch leaves the open interval). -/
theorem bonds_two_valued {N : ℕ} {s : ℝ} (hs : 0 < s) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsin : ∀ i, Real.sin (d i) = s) :
    ∀ i, d i = Real.arcsin s ∨ d i = π - Real.arcsin s := by
  intro i
  have h := mem_arcsin_branches (hrange i)
  rw [hsin i] at h
  have harc : 0 < Real.arcsin s := Real.arcsin_pos.mpr hs
  rcases h with h1 | h2 | h3
  · exact Or.inl h1
  · exact Or.inr h2
  · exfalso
    have hlow := (hrange i).1
    linarith

/-- **S4** — the winding-count equation: with `p` the number of reflected
    bonds, `pπ + (N - 2p)α = 2π`. -/
theorem count_equation {N : ℕ} {α : ℝ} (d : Fin N → ℝ)
    (hval : ∀ i, d i = α ∨ d i = π - α) (hsum : ∑ i, d i = 2 * π) :
    ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * π
      + ((N : ℝ) - 2 * ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)) * α
      = 2 * π := by
  classical
  have hsplit := Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i ≠ α) d
  have hFsum : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
      = ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * (π - α) := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => d i ≠ α), (π - α) :=
      Finset.sum_congr rfl fun i hi =>
        (hval i).resolve_left (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
      = ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) * α := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), α :=
      Finset.sum_congr rfl fun i hi =>
        not_not.mp (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hcard : (Finset.univ.filter (fun i => d i ≠ α)).card
      + (Finset.univ.filter (fun i => ¬(d i ≠ α))).card = N := by
    rw [Finset.card_filter_add_card_filter_not, Finset.card_univ, Fintype.card_fin]
  have hcardR : ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)
      + ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) = (N : ℝ) := by
    exact_mod_cast hcard
  linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR

/-- **S5** — the count dichotomy: for `N ≥ 5`, `α ∈ (0, π/2]`, the equation
    forces `p = 0` (the ground, `α = 2π/N`) or `p = 1` (the saddle,
    `α = π/(N-2)`). -/
theorem count_dichotomy {N p : ℕ} {α : ℝ} (hN : 5 ≤ N) (hp : p ≤ N)
    (hα : 0 < α) (hα2 : α ≤ π / 2)
    (heq : (p : ℝ) * π + ((N : ℝ) - 2 * p) * α = 2 * π) :
    (p = 0 ∧ α = 2 * π / N) ∨ (p = 1 ∧ α = π / ((N : ℝ) - 2)) := by
  have hπ := Real.pi_pos
  have hNR : (5 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  rcases p with _ | _ | _ | n
  · -- p = 0: N·α = 2π forces α = 2π/N
    left
    refine ⟨rfl, ?_⟩
    push_cast at heq
    rw [eq_div_iff (ne_of_gt (by linarith : (0 : ℝ) < (N : ℝ)))]
    linear_combination heq
  · -- p = 1: π + (N-2)α = 2π forces α = π/(N-2)
    right
    refine ⟨by omega, ?_⟩
    push_cast at heq
    rw [eq_div_iff (ne_of_gt (by linarith : (0 : ℝ) < (N : ℝ) - 2))]
    linear_combination heq
  · -- p = 2: (N-4)α = 0 with N-4 > 0 contradicts α > 0
    exfalso
    push_cast at heq
    have hpos : (0 : ℝ) < ((N : ℝ) - 4) * α :=
      mul_pos (by linarith) hα
    nlinarith [heq, hpos]
  · -- p = n+3: the winding equation overshoots 2π either way
    exfalso
    push_cast at heq
    have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
    rcases le_or_gt (2 * ((n : ℝ) + 3)) (N : ℝ) with h2 | h2
    · -- 2p ≤ N: the (N-2p)α term is nonnegative and pπ ≥ 3π > 2π
      have hterm : (0 : ℝ) ≤ ((N : ℝ) - 2 * ((n : ℝ) + 3)) * α :=
        mul_nonneg (by linarith) hα.le
      have hnπ : (0 : ℝ) ≤ (n : ℝ) * π := mul_nonneg hn hπ.le
      nlinarith [heq, hterm, hnπ, hπ]
    · -- 2p > N: the negative coefficient reverses α ≤ π/2, LHS ≥ Nπ/2 ≥ 5π/2 > 2π
      have key : ((N : ℝ) - 2 * ((n : ℝ) + 3)) * (π / 2)
          ≤ ((N : ℝ) - 2 * ((n : ℝ) + 3)) * α := by
        nlinarith [mul_nonneg
          (by linarith : (0 : ℝ) ≤ 2 * ((n : ℝ) + 3) - (N : ℝ))
          (by linarith : (0 : ℝ) ≤ π / 2 - α)]
      have h5 : (0 : ℝ) ≤ ((N : ℝ) - 5) * π := mul_nonneg (by linarith) hπ.le
      nlinarith [heq, key, h5, hπ]

/-- **S6 — LS.6 (the off-Δ winding-1 critical classification)**: a critical
    (all-sines-equal) bond vector with winding 1 in the open branch is
    EXACTLY the ground circle `C_1` or the one-bond saddle `SP_1`. -/
theorem winding_one_classification {N : ℕ} (hN : 5 ≤ N) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π)
    (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j)) :
    (∀ i, d i = 2 * π / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N 1
      ∧ ∀ i, i ≠ i0 → d i = saddleParam N 1) := by
  have hNpos : 0 < N := by omega
  have i0 : Fin N := ⟨0, hNpos⟩
  rcases le_or_gt (Real.sin (d i0)) 0 with hs | hs
  · -- nonpositive common sine: cannot carry winding one
    refine (no_winding_with_nonpos_sine d hrange hsum fun i => ?_).elim
    rw [hcrit i i0]
    exact hs
  · -- positive common sine: two-valued bonds, count equation, dichotomy
    have hval := bonds_two_valued hs d hrange fun i => hcrit i i0
    set α : ℝ := Real.arcsin (Real.sin (d i0)) with hα_def
    have hα : 0 < α := by rw [hα_def]; exact Real.arcsin_pos.mpr hs
    have hα2 : α ≤ π / 2 := by rw [hα_def]; exact Real.arcsin_le_pi_div_two _
    have heq := count_equation d hval hsum
    have hcard : (Finset.univ : Finset (Fin N)).card = N := by
      rw [Finset.card_univ, Fintype.card_fin]
    have hp : (Finset.univ.filter (fun i => d i ≠ α)).card ≤ N :=
      le_trans (Finset.card_filter_le _ _) (le_of_eq hcard)
    rcases count_dichotomy hN hp hα hα2 heq with ⟨hp0, hα_eq⟩ | ⟨hp1, hα_eq⟩
    · -- p = 0 : the ground circle C_1
      left
      have hx := Finset.ext_iff.mp (Finset.card_eq_zero.mp hp0)
      intro i
      have hdi : d i = α := by
        by_contra hne
        have hmem := (hx i).mp (Finset.mem_filter.mpr ⟨Finset.mem_univ i, hne⟩)
        simp at hmem
      rw [hdi]
      exact hα_eq
    · -- p = 1 : the one-bond saddle SP_1
      right
      obtain ⟨j0, hj0⟩ := Finset.card_eq_one.mp hp1
      have hx := Finset.ext_iff.mp hj0
      have hsp : saddleParam N 1 = π / ((N : ℝ) - 2) := by
        unfold saddleParam
        push_cast
        ring
      have hj0mem := (hx j0).mpr (Finset.mem_singleton_self j0)
      have hj0ne : d j0 ≠ α := (Finset.mem_filter.mp hj0mem).2
      refine ⟨j0, ?_, ?_⟩
      · rcases hval j0 with h | h
        · exact absurd h hj0ne
        · rw [h, hα_eq, hsp]
      · intro i hi
        have hdi : d i = α := by
          by_contra hne
          exact hi (Finset.mem_singleton.mp
            ((hx i).mp (Finset.mem_filter.mpr ⟨Finset.mem_univ i, hne⟩)))
        rw [hdi, hα_eq, hsp]

/-! ## Campaign #8 (carve-out closures): the composed critical LS.6
    corollary, the ridge maximality half `max phi_k = S_k`, and the
    ladder's middle rungs `2 kappa < L_k < S_k`. -/

/-- **M3 — LS.6 in COMPOSED CRITICAL form** (closes campaign #7's
    blind-lens caveat: "the composed torus-critical corollary is not
    stated"): a slice-critical (dE kills every zero-sum variation,
    kappa != 0) winding-1 bond vector in the open branch is exactly
    C_1 or SP_1. -/
theorem winding_one_classification_critical {N : ℕ} (hN : 5 ≤ N)
    {κ : ℝ} (hκ : κ ≠ 0) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π)
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → dE κ d v = 0) :
    (∀ i, d i = 2 * π / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N 1
      ∧ ∀ i, i ≠ i0 → d i = saddleParam N 1) := by
  apply winding_one_classification hN d hrange hsum
  apply (critical_slice_iff (show 2 ≤ N by omega) d).mp
  intro v hv
  have h := hcrit v hv
  have hdE : dE κ d v = κ * ∑ i, Real.sin (d i) * v i := by
    simp [dE, ContinuousLinearMap.proj_apply, Finset.mul_sum, mul_assoc]
  rw [hdE] at h
  exact (mul_eq_zero.mp h).resolve_left hκ
  -- BLUEPRINT: dE κ d v = ∑ κ sin(d i) * v i (simp [dE,
  --   ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
  --   ContinuousLinearMap.proj_apply] - check how campaign #4's proofs
  --   applied dE and reuse). κ ≠ 0 cancels: ∑ sin(d i) v i = 0 for all
  --   zero-sum v; critical_slice_iff (hN' : 2 ≤ N by omega) gives equal
  --   sines; winding_one_classification finishes.

/-- **M4a — ridge slice monotone up to the saddle**: `phi_k` strictly
    increases on `[2 pi k/N, pi - a_k]`. Hypotheses: k >= 1; the
    residual bound `2 pi k/N <= pi/2` (C1-SUB forces < 3/4, a fortiori);
    `a_k <= pi/2` (SADDLE-HYP); RANGE. -/
theorem ridgeEnv_strictMonoOn {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (hN : 3 ≤ N) (hk : 1 ≤ k)
    (hsub : 2 * π * k / N ≤ π / 2)
    (ha : saddleParam N k ≤ π / 2)
    (hrange : 2 * π * k / N < π - saddleParam N k) :
    StrictMonoOn (fun m => ridgeEnv N κ k m)
      (Set.Icc (2 * π * k / N) (π - saddleParam N k)) := by
  have hπ := Real.pi_pos
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hk' : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have hNpos : (0 : ℝ) < (N : ℝ) := by linarith
  have hN1 : (0 : ℝ) < (N : ℝ) - 1 := by linarith
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hN1ne : ((N : ℝ) - 1) ≠ 0 := ne_of_gt hN1
  have hN2ne : ((N : ℝ) - 2) ≠ 0 := ne_of_gt hN2
  have h2πk : 2 * π ≤ 2 * π * k := by
    nlinarith [mul_le_mul_of_nonneg_left hk' hπ.le]
  have ha_pos : 0 < saddleParam N k := by
    unfold saddleParam
    apply div_pos _ hN2
    linarith
  have hakey : ((N : ℝ) - 2) * saddleParam N k = 2 * π * k - π := by
    unfold saddleParam
    field_simp
  have hderiv : ∀ m : ℝ, HasDerivAt (fun x => ridgeEnv N κ k x)
      (κ * (Real.sin m - Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)))) m := by
    intro m
    have h1 : HasDerivAt (fun x : ℝ => 1 - Real.cos x) (-(-Real.sin m)) m :=
      (Real.hasDerivAt_cos m).const_sub 1
    have hu : HasDerivAt (fun x : ℝ => (2 * π * k - x) / ((N : ℝ) - 1))
        (-1 / ((N : ℝ) - 1)) m :=
      ((hasDerivAt_id m).const_sub (2 * π * (k : ℝ))).div_const ((N : ℝ) - 1)
    have hcos : HasDerivAt (fun x : ℝ => Real.cos ((2 * π * k - x) / ((N : ℝ) - 1)))
        (-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1))) m := hu.cos
    have h2 : HasDerivAt
        (fun x : ℝ => ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - x) / ((N : ℝ) - 1))))
        (((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1)))) m :=
      (hcos.const_sub 1).const_mul ((N : ℝ) - 1)
    have hadd : HasDerivAt (fun x : ℝ => (1 - Real.cos x) +
        ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - x) / ((N : ℝ) - 1))))
        (-(-Real.sin m) + ((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1)))) m :=
      h1.add h2
    have hfull := hadd.const_mul κ
    have hval : κ * (-(-Real.sin m) + ((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1))))
        = κ * (Real.sin m - Real.sin ((2 * π * k - m) / ((N : ℝ) - 1))) := by
      field_simp
      ring
    rw [hval] at hfull
    exact hfull
  apply strictMonoOn_of_deriv_pos (convex_Icc _ _)
  · exact fun x _ => (hderiv x).continuousAt.continuousWithinAt
  · intro m hm
    rw [interior_Icc] at hm
    obtain ⟨hm1, hm2⟩ := hm
    rw [(hderiv m).deriv]
    have hm1' : 2 * π * k < m * N := by
      rw [div_lt_iff₀ hNpos] at hm1
      exact hm1
    have hr_pos : 0 < (2 * π * k - m) / ((N : ℝ) - 1) := by
      apply div_pos _ hN1
      linarith
    have hsin : Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) < Real.sin m := by
      rcases le_or_gt m (π / 2) with hcase | hcase
      · have hrm : (2 * π * k - m) / ((N : ℝ) - 1) < m := by
          rw [div_lt_iff₀ hN1]
          nlinarith [hm1']
        exact Real.sin_lt_sin_of_lt_of_le_pi_div_two (by linarith) hcase hrm
      · have hπm : (2 * π * k - m) / ((N : ℝ) - 1) < π - m := by
          rw [div_lt_iff₀ hN1]
          nlinarith [hakey,
            mul_pos hN2 (show (0 : ℝ) < π - saddleParam N k - m by linarith)]
        have h1 : Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) < Real.sin (π - m) :=
          Real.sin_lt_sin_of_lt_of_le_pi_div_two (by linarith) (by linarith) hπm
        rwa [Real.sin_pi_sub] at h1
    exact mul_pos hκ (by linarith)
  -- BLUEPRINT: strictMonoOn_of_deriv_pos (convex_Icc, continuity by
  --   fun_prop/continuity). deriv (fun m => ridgeEnv N κ k m) m
  --   = κ * (sin m - sin ((2πk - m)/(N-1))): HasDerivAt chain -
  --   (1 - cos m)' = sin m; for the second term compose
  --   u(m) = (2πk - m)/(N-1) with u' = -1/(N-1) (HasDerivAt.div_const,
  --   HasDerivAt.const_sub), (1 - cos u)' = sin u * u', times (N-1)
  --   cancels to -sin u; HasDerivAt.deriv. POSITIVITY on the open
  --   interior m ∈ (2πk/N, π - a_k): let r := (2πk - m)/(N-1).
  --   Facts: r < 2πk/N (⟺ m > 2πk/N, algebra) so r < π/2 by hsub;
  --   r ≥ (2πk - π + a_k)/(N-1)... on this interval r > a_k ≥ 0? At
  --   m = π - a_k, r = a_k EXACTLY ((2πk - π + a_k)/(N-1) = a_k by the
  --   identity (N-1)a_k = 2πk - π + a_k, i.e. (N-2)a_k = 2πk - π,
  --   definitional); r decreasing in m so r > a_k ≥ 0 on the OPEN
  --   interval; also r ≥ 0. Case m ≤ π/2: r < m both in [0, π/2]:
  --   sin r < sin m (Real.strictMonoOn_sin on [-π/2, π/2]). Case
  --   m > π/2: sin m = sin (π - m) (Real.sin_pi_sub); π - m ∈ (a_k, π/2)
  --   and r < π/2; π - m > r ⟺ m < π - a_k... wait: π - m > r ⟺
  --   (N-1)(π - m) > 2πk - m ⟺ (N-1)π - 2πk > (N-2)m ⟺
  --   m < ((N-1)π - 2πk)/(N-2) = π - a_k ✓ (algebra: π - a_k =
  --   π - (2πk-π)/(N-2) = ((N-2)π - 2πk + π)/(N-2) = ((N-1)π - 2πk)/(N-2)).
  --   Both π - m, r in [0, π/2]: sin r < sin (π - m) = sin m. Hence
  --   deriv = κ(sin m - sin r) > 0.

/-- **M4b — ridge slice strictly decreasing past the saddle**: `phi_k`
    strictly decreases on `[pi - a_k, pi]`. -/
theorem ridgeEnv_strictAntiOn {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (hN : 3 ≤ N) (hk : 1 ≤ k) (hkN : 2 * k < N)
    (hsub : 2 * π * k / N ≤ π / 2)
    (ha : saddleParam N k ≤ π / 2) :
    StrictAntiOn (fun m => ridgeEnv N κ k m)
      (Set.Icc (π - saddleParam N k) π) := by
  have hπ := Real.pi_pos
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hk' : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have hN1 : (0 : ℝ) < (N : ℝ) - 1 := by linarith
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hN1ne : ((N : ℝ) - 1) ≠ 0 := ne_of_gt hN1
  have hN2ne : ((N : ℝ) - 2) ≠ 0 := ne_of_gt hN2
  have h2πk : 2 * π ≤ 2 * π * k := by
    nlinarith [mul_le_mul_of_nonneg_left hk' hπ.le]
  have hakey : ((N : ℝ) - 2) * saddleParam N k = 2 * π * k - π := by
    unfold saddleParam
    field_simp
  have hderiv : ∀ m : ℝ, HasDerivAt (fun x => ridgeEnv N κ k x)
      (κ * (Real.sin m - Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)))) m := by
    intro m
    have h1 : HasDerivAt (fun x : ℝ => 1 - Real.cos x) (-(-Real.sin m)) m :=
      (Real.hasDerivAt_cos m).const_sub 1
    have hu : HasDerivAt (fun x : ℝ => (2 * π * k - x) / ((N : ℝ) - 1))
        (-1 / ((N : ℝ) - 1)) m :=
      ((hasDerivAt_id m).const_sub (2 * π * (k : ℝ))).div_const ((N : ℝ) - 1)
    have hcos : HasDerivAt (fun x : ℝ => Real.cos ((2 * π * k - x) / ((N : ℝ) - 1)))
        (-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1))) m := hu.cos
    have h2 : HasDerivAt
        (fun x : ℝ => ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - x) / ((N : ℝ) - 1))))
        (((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1)))) m :=
      (hcos.const_sub 1).const_mul ((N : ℝ) - 1)
    have hadd : HasDerivAt (fun x : ℝ => (1 - Real.cos x) +
        ((N : ℝ) - 1) * (1 - Real.cos ((2 * π * k - x) / ((N : ℝ) - 1))))
        (-(-Real.sin m) + ((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1)))) m :=
      h1.add h2
    have hfull := hadd.const_mul κ
    have hval : κ * (-(-Real.sin m) + ((N : ℝ) - 1) *
          -(-Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) * (-1 / ((N : ℝ) - 1))))
        = κ * (Real.sin m - Real.sin ((2 * π * k - m) / ((N : ℝ) - 1))) := by
      field_simp
      ring
    rw [hval] at hfull
    exact hfull
  apply strictAntiOn_of_deriv_neg (convex_Icc _ _)
  · exact fun x _ => (hderiv x).continuousAt.continuousWithinAt
  · intro m hm
    rw [interior_Icc] at hm
    obtain ⟨hm1, hm2⟩ := hm
    rw [(hderiv m).deriv]
    have hr_ak : (2 * π * k - m) / ((N : ℝ) - 1) < saddleParam N k := by
      rw [div_lt_iff₀ hN1]
      nlinarith [hakey]
    have hπm : π - m < (2 * π * k - m) / ((N : ℝ) - 1) := by
      rw [lt_div_iff₀ hN1]
      nlinarith [hakey,
        mul_pos hN2 (show (0 : ℝ) < m - (π - saddleParam N k) by linarith)]
    have h1 : Real.sin (π - m) < Real.sin ((2 * π * k - m) / ((N : ℝ) - 1)) :=
      Real.sin_lt_sin_of_lt_of_le_pi_div_two (by linarith) (by linarith) hπm
    rw [Real.sin_pi_sub] at h1
    exact mul_neg_of_pos_of_neg hκ (by linarith)
  -- BLUEPRINT: strictAntiOn_of_deriv_neg; same derivative formula.
  --   NEGATIVITY on m ∈ (π - a_k, π): r := (2πk - m)/(N-1) ∈ (b_k, a_k)
  --   with b_k := (2πk - π)/(N-1) ≥ 0 (k ≥ 1) - r decreasing in m,
  --   r(π - a_k) = a_k, r(π) = b_k; so 0 ≤ r < a_k ≤ π/2. π - m ∈
  --   (0, a_k) and π - m < r ⟺ m > π - a_k (same algebra as M4a
  --   reversed). sin m = sin (π - m) < sin r (strictMonoOn sin on
  --   [-π/2, π/2], both args there). deriv = κ(sin m - sin r) < 0.
  --   hkN gives b_k < π and the interval nondegenerate (a_k > 0 from
  --   k ≥ 1: 2πk - π ≥ π > 0, N - 2 > 0).

/-- **M4c — THE MAXIMALITY HALF `max_m phi_k(m) = S_k`** (closes the K4
    supersession note's declared gap: the pointwise ridge law is sealed,
    the maximality of the saddle level over the slice family was not):
    on `[2 pi k/N, pi]` the ridge envelope never exceeds the saddle
    level, attained at `pi - a_k` (ridgeEnv_at_saddle, sealed). -/
theorem ridgeEnv_le_saddleLevel {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (hN : 3 ≤ N) (hk : 1 ≤ k) (hkN : 2 * k < N)
    (hsub : 2 * π * k / N ≤ π / 2)
    (ha : saddleParam N k ≤ π / 2)
    (hrange : 2 * π * k / N < π - saddleParam N k)
    {m : ℝ} (hm : m ∈ Set.Icc (2 * π * k / N) π) :
    ridgeEnv N κ k m ≤ saddleLevel N κ k := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hkR : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have ha_pos : 0 < saddleParam N k := by
    unfold saddleParam
    apply div_pos
    · nlinarith [mul_pos Real.pi_pos (show (0:ℝ) < 2 * (k:ℝ) - 1 by linarith)]
    · linarith
  rcases le_or_gt m (π - saddleParam N k) with hle | hgt
  · rcases eq_or_lt_of_le hle with heq | hlt
    · rw [heq]
      exact le_of_eq (ridgeEnv_at_saddle hN)
    · have hmono := ridgeEnv_strictMonoOn hκ hN hk hsub ha hrange
      have h1 : m ∈ Set.Icc (2 * π * k / N) (π - saddleParam N k) := ⟨hm.1, hle⟩
      have h2 : (π - saddleParam N k) ∈ Set.Icc (2 * π * k / N) (π - saddleParam N k) :=
        ⟨le_of_lt hrange, le_refl _⟩
      have hlt2 : ridgeEnv N κ k m < ridgeEnv N κ k (π - saddleParam N k) :=
        hmono h1 h2 hlt
      rw [ridgeEnv_at_saddle hN] at hlt2
      exact le_of_lt hlt2
  · have hanti := ridgeEnv_strictAntiOn hκ hN hk hkN hsub ha
    have h1 : (π - saddleParam N k) ∈ Set.Icc (π - saddleParam N k) π :=
      ⟨le_refl _, by linarith⟩
    have h2 : m ∈ Set.Icc (π - saddleParam N k) π := ⟨le_of_lt hgt, hm.2⟩
    have hlt2 : ridgeEnv N κ k m < ridgeEnv N κ k (π - saddleParam N k) :=
      hanti h1 h2 hgt
    rw [ridgeEnv_at_saddle hN] at hlt2
    exact le_of_lt hlt2
  -- BLUEPRINT: rcases le_or_gt m (π - saddleParam N k). Left: M4a
  --   monotone gives ridgeEnv m ≤ ridgeEnv (π - a_k) (StrictMonoOn →
  --   MonotoneOn via .monotoneOn, or le_of_lt + eq case). Right: M4b.
  --   Finish with ridgeEnv_at_saddle : ridgeEnv N κ k (π - a_k) = S_k
  --   (already in the file, sealed). Endpoint membership: π - a_k ∈
  --   both intervals (hrange, a_k > 0).

/-- **M5 — THE LADDER'S MIDDLE RUNGS `2 kappa < L_k < S_k`** (the only
    unsealed piece of LS.1; L_k = phi_k(pi) is the one-bond-at-pi level).
    Completes the machine ladder `m_k < 2 kappa < L_k < S_k` jointly
    with the sealed endpoints. -/
theorem ladder_middle {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (hN : 3 ≤ N) (hk : 1 ≤ k) (hkN : 2 * k < N)
    (hsub : 2 * π * k / N ≤ π / 2)
    (ha : saddleParam N k ≤ π / 2) :
    2 * κ < ridgeEnv N κ k π ∧ ridgeEnv N κ k π < saddleLevel N κ k := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hkR : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have hkNR : 2 * (k : ℝ) < (N : ℝ) := by exact_mod_cast hkN
  have ha_pos : 0 < saddleParam N k := by
    unfold saddleParam
    apply div_pos
    · nlinarith [mul_pos Real.pi_pos (show (0:ℝ) < 2 * (k:ℝ) - 1 by linarith)]
    · linarith
  constructor
  · -- LEFT: 2κ < ridgeEnv N κ k π
    have hb_pos : 0 < (2 * π * (k:ℝ) - π) / ((N : ℝ) - 1) := by
      apply div_pos
      · nlinarith [mul_pos Real.pi_pos (show (0:ℝ) < 2 * (k:ℝ) - 1 by linarith)]
      · linarith
    have hb_lt : (2 * π * (k:ℝ) - π) / ((N : ℝ) - 1) < π := by
      rw [div_lt_iff₀ (by linarith : (0:ℝ) < (N : ℝ) - 1)]
      nlinarith [mul_pos Real.pi_pos (show (0:ℝ) < (N:ℝ) - 2 * (k:ℝ) by linarith)]
    have hcos_b : Real.cos ((2 * π * (k:ℝ) - π) / ((N : ℝ) - 1)) < 1 := by
      have h := Real.cos_lt_cos_of_nonneg_of_le_pi (le_refl 0) hb_lt.le hb_pos
      rwa [Real.cos_zero] at h
    unfold ridgeEnv
    rw [Real.cos_pi]
    nlinarith [mul_pos (mul_pos hκ (show (0:ℝ) < (N:ℝ) - 1 by linarith))
      (show (0:ℝ) < 1 - Real.cos ((2 * π * (k:ℝ) - π) / ((N:ℝ) - 1)) by linarith)]
  · -- RIGHT: ridgeEnv N κ k π < saddleLevel N κ k
    have hanti := ridgeEnv_strictAntiOn hκ hN hk hkN hsub ha
    have hx : (π - saddleParam N k) ∈ Set.Icc (π - saddleParam N k) π :=
      ⟨le_refl _, by linarith⟩
    have hy : π ∈ Set.Icc (π - saddleParam N k) π := ⟨by linarith, le_refl _⟩
    have hlt : ridgeEnv N κ k π < ridgeEnv N κ k (π - saddleParam N k) :=
      hanti hx hy (by linarith)
    rwa [ridgeEnv_at_saddle hN] at hlt
  -- BLUEPRINT: L_k = ridgeEnv N κ k π = κ(2 + (N-1)(1 - cos b_k)),
  --   b_k := (2πk - π)/(N-1) (cos π = -1 gives the 2; unfold ridgeEnv,
  --   Real.cos_pi). LEFT: (N-1)(1 - cos b_k) > 0: b_k ∈ (0, π) from
  --   k ≥ 1 (2πk - π ≥ π > 0) and 2k < N (b_k < π ⟺ 2πk - π < (N-1)π
  --   ⟺ 2k < N); cos b_k < 1 (Real.cos_lt_one_of... : cos x < 1 for
  --   x ∈ (0, 2π) - use Real.cos_lt_one iff x ≠ 0 mod 2π; or
  --   Real.cos_lt_one_of_ne_zero... grep; fallback: 1 - cos b_k > 0 via
  --   Real.cos_lt_one applied to b_k ≠ 0 with |b_k| < 2π). RIGHT:
  --   ridgeEnv_strictAntiOn at the pair (π - a_k) < π (a_k > 0), then
  --   rewrite ridgeEnv_at_saddle. Membership: π - a_k ∈ Icc (π - a_k) π
  --   needs a_k ≥ 0; π ∈ same.

/-! ## Campaign #9: THE BAND (LP.1(i)) in bond coordinates + the
    UNCONDITIONAL tube exclusion.
    The key discovery (design pass 2026-07-11): on the winding slice the
    linear Taylor term at the saddle cancels EXACTLY (equal sines times
    fixed bond sum), so the Morse-Bott band is a clean quadratic-
    remainder theorem - no manifold machinery. Composing with the sealed
    domination chain discharges tube_self_exclusion's band hypothesis:
    v18's key inference becomes UNCONDITIONAL in bond form. -/

/-- **B1 — quadratic tangent remainder**: the tangent line of `1 - cos`
    at any base point is accurate to `(x - mu)^2 / 2` (|cos''| <= 1). -/
theorem one_sub_cos_taylor_bound (x μ : ℝ) :
    |(1 - Real.cos x) - (1 - Real.cos μ) - Real.sin μ * (x - μ)|
      ≤ (x - μ) ^ 2 / 2 := by
  -- Ordered core: for a ≤ b, write the remainder as ∫_a^b (sin s - sin a) ds
  -- (FTC-2), bound the integrand by (s - a) via sin's 1-Lipschitz bound,
  -- and integrate the linear bound exactly to (b - a)²/2.
  have key : ∀ a b : ℝ, a ≤ b →
      |(1 - Real.cos b) - (1 - Real.cos a) - Real.sin a * (b - a)|
        ≤ (b - a) ^ 2 / 2 := by
    intro a b hab
    have hderiv : ∀ s ∈ Set.uIcc a b,
        HasDerivAt (fun y : ℝ => -Real.cos y - Real.sin a * y)
          (Real.sin s - Real.sin a) s := by
      intro s _
      have h1 : HasDerivAt (fun y : ℝ => -Real.cos y) (Real.sin s) s := by
        have h := (Real.hasDerivAt_cos s).neg
        rwa [neg_neg] at h
      have h2 : HasDerivAt (fun y : ℝ => Real.sin a * y) (Real.sin a) s := by
        simpa using (hasDerivAt_id s).const_mul (Real.sin a)
      exact h1.sub h2
    have hint : IntervalIntegrable (fun s : ℝ => Real.sin s - Real.sin a)
        MeasureTheory.volume a b :=
      (Real.continuous_sin.sub continuous_const).intervalIntegrable a b
    have heq : (1 - Real.cos b) - (1 - Real.cos a) - Real.sin a * (b - a)
        = ∫ s in a..b, (Real.sin s - Real.sin a) := by
      simp only [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hint]
      ring
    rw [heq]
    have habs : IntervalIntegrable (fun s : ℝ => |Real.sin s - Real.sin a|)
        MeasureTheory.volume a b :=
      (Real.continuous_sin.sub continuous_const).abs.intervalIntegrable a b
    have hid : IntervalIntegrable (fun s : ℝ => s - a)
        MeasureTheory.volume a b :=
      (continuous_id.sub continuous_const).intervalIntegrable a b
    calc |∫ s in a..b, (Real.sin s - Real.sin a)|
        ≤ ∫ s in a..b, |Real.sin s - Real.sin a| :=
          intervalIntegral.abs_integral_le_integral_abs hab
      _ ≤ ∫ s in a..b, (s - a) := by
          refine intervalIntegral.integral_mono_on hab habs hid fun s hs => ?_
          calc |Real.sin s - Real.sin a| ≤ |s - a| := Real.abs_sin_sub_sin_le s a
            _ = s - a := abs_of_nonneg (by linarith [hs.1])
      _ = (b - a) ^ 2 / 2 := by
          have hid2 : IntervalIntegrable (fun s : ℝ => s)
              MeasureTheory.volume a b := continuous_id.intervalIntegrable a b
          rw [intervalIntegral.integral_sub hid2 intervalIntegrable_const,
            integral_id, intervalIntegral.integral_const, smul_eq_mul]
          ring
  rcases le_total μ x with h | h
  · exact key μ x h
  -- x ≤ μ: reflect through (x, μ) ↦ (-x, -μ) (cos even, sin odd), which
  -- preserves the remainder and the bound while flipping the order.
  · have h2 := key (-μ) (-x) (by linarith)
    have e : |(1 - Real.cos (-x)) - (1 - Real.cos (-μ)) - Real.sin (-μ) * (-x - -μ)|
        = |(1 - Real.cos x) - (1 - Real.cos μ) - Real.sin μ * (x - μ)| := by
      simp only [Real.cos_neg, Real.sin_neg]
      congr 1
      ring
    rw [e] at h2
    calc |(1 - Real.cos x) - (1 - Real.cos μ) - Real.sin μ * (x - μ)|
        ≤ (-x - -μ) ^ 2 / 2 := h2
      _ = (x - μ) ^ 2 / 2 := by ring
  -- BLUEPRINT: reduce to |cos x - (cos μ - sin μ (x - μ))| ≤ (x-μ)²/2
  --   (ring_nf on the abs argument). Route A: g t := cos (μ + t) -
  --   cos μ + sin μ * t has g 0 = 0 and |g' t| = |sin μ - sin (μ+t)|
  --   ≤ |t| (Real.lipschitzWith_sin / abs_sin_sub_sin_le - grep the
  --   exact name; LipschitzWith 1 sin exists), then
  --   norm_image_sub_le_of_norm_deriv_le_segment or an explicit
  --   integral bound gives |g t| ≤ t²/2; instantiate t := x - μ.
  --   Route B: taylor_mean_remainder_lagrange with n = 1 on cos
  --   (Mathlib.Analysis.Calculus.Taylor) - second derivative -cos,
  --   |cos| ≤ 1. Pick whichever compiles.

/-- **B2a — the saddle profile's energy IS the saddle level** (the bond
    form of the display; `sp N k` from campaign #6's `spBond` is the
    profile (pi - a_k, a_k, ..., a_k)). -/
theorem E_spBond (N k : ℕ) [NeZero N] (κ : ℝ) (hN : 3 ≤ N) :
    E κ (spBond N k) = saddleLevel N κ k := by
  have hmem : (0 : Fin N) ∈ (Finset.univ : Finset (Fin N)) := Finset.mem_univ _
  have hN1 : 1 ≤ N := by omega
  have hcard : (Finset.univ.erase (0 : Fin N)).card = N - 1 := by
    rw [Finset.card_erase_of_mem hmem, Finset.card_univ, Fintype.card_fin]
  have hcast : ((N - 1 : ℕ) : ℝ) = (N : ℝ) - 1 := by
    rw [Nat.cast_sub hN1, Nat.cast_one]
  simp only [E, spBond]
  rw [← Finset.add_sum_erase _ _ hmem, if_pos rfl, Real.cos_pi_sub]
  have herase :
      ∑ j ∈ Finset.univ.erase (0 : Fin N),
        (1 - Real.cos (if j = 0 then π - saddleParam N k else saddleParam N k))
      = ∑ j ∈ Finset.univ.erase (0 : Fin N),
        (1 - Real.cos (saddleParam N k)) :=
    Finset.sum_congr rfl fun j hj => by
      rw [if_neg (Finset.mem_erase.mp hj).1]
  rw [herase, Finset.sum_const, hcard, nsmul_eq_mul, hcast]
  unfold saddleLevel
  ring

/-- **B2 — THE SADDLE BAND (LP.1(i), theta-factor, bond form)**: on the
    winding-k slice, the energy deviates from `S_k` by at most HALF the
    squared bond distance to the saddle profile - the linear term
    cancels exactly (equal saddle sines x fixed bond sum). -/
theorem saddle_band {N k : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 ≤ κ) (hN : 3 ≤ N)
    (d : Fin N → ℝ) (hsum : ∑ i, d i = ∑ i, spBond N k i) :
    |E κ d - saddleLevel N κ k| ≤ κ / 2 * ∑ i, (d i - spBond N k i) ^ 2 := by
  have hs : ∀ i : Fin N, Real.sin (spBond N k i) = Real.sin (saddleParam N k) := by
    intro i
    simp only [spBond]
    by_cases h : i = 0
    · rw [if_pos h, Real.sin_pi_sub]
    · rw [if_neg h]
  have hlin : ∑ i, Real.sin (spBond N k i) * (d i - spBond N k i) = 0 := by
    calc ∑ i, Real.sin (spBond N k i) * (d i - spBond N k i)
        = ∑ i, Real.sin (saddleParam N k) * (d i - spBond N k i) :=
          Finset.sum_congr rfl fun i _ => by rw [hs i]
      _ = Real.sin (saddleParam N k) * ∑ i, (d i - spBond N k i) := by
          rw [Finset.mul_sum]
      _ = 0 := by
          rw [Finset.sum_sub_distrib, hsum, sub_self, mul_zero]
  have hdiff : E κ d - E κ (spBond N k)
      = κ * ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos (spBond N k i))
          - Real.sin (spBond N k i) * (d i - spBond N k i)) := by
    have h1 : ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos (spBond N k i))
          - Real.sin (spBond N k i) * (d i - spBond N k i))
        = ((∑ i, (1 - Real.cos (d i))) - ∑ i, (1 - Real.cos (spBond N k i)))
          - ∑ i, Real.sin (spBond N k i) * (d i - spBond N k i) := by
      simp only [Finset.sum_sub_distrib]
    simp only [E]
    rw [h1, hlin, sub_zero, mul_sub]
  rw [← E_spBond N k κ hN, hdiff, abs_mul, abs_of_nonneg hκ]
  calc κ * |∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos (spBond N k i))
          - Real.sin (spBond N k i) * (d i - spBond N k i))|
      ≤ κ * ∑ i, |(1 - Real.cos (d i)) - (1 - Real.cos (spBond N k i))
          - Real.sin (spBond N k i) * (d i - spBond N k i)| :=
        mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) hκ
    _ ≤ κ * ∑ i, (d i - spBond N k i) ^ 2 / 2 :=
        mul_le_mul_of_nonneg_left
          (Finset.sum_le_sum fun i _ =>
            one_sub_cos_taylor_bound (d i) (spBond N k i)) hκ
    _ = κ / 2 * ∑ i, (d i - spBond N k i) ^ 2 := by
        rw [← Finset.sum_div]; ring

/-- **B3 — the ground bound (phi-factor)**: energy of any bond vector is
    at most half its squared size (tangent bound at 0), and nonnegative. -/
theorem ground_band {N : ℕ} {κ : ℝ} (hκ : 0 ≤ κ) (e : Fin N → ℝ) :
    0 ≤ E κ e ∧ E κ e ≤ κ / 2 * ∑ i, (e i) ^ 2 := by
  constructor
  · unfold E
    apply mul_nonneg hκ
    apply Finset.sum_nonneg
    intro i _
    have h := Real.cos_le_one (e i)
    linarith
  · unfold E
    have h1 : ∑ i, (1 - Real.cos (e i)) ≤ ∑ i, (e i) ^ 2 / 2 := by
      apply Finset.sum_le_sum
      intro i _
      have h : 1 - (e i) ^ 2 / 2 ≤ Real.cos (e i) :=
        Real.one_sub_sq_div_two_le_cos
      linarith
    calc κ * ∑ i, (1 - Real.cos (e i))
        ≤ κ * ∑ i, (e i) ^ 2 / 2 := mul_le_mul_of_nonneg_left h1 hκ
      _ = κ / 2 * ∑ i, (e i) ^ 2 := by rw [← Finset.sum_div]; ring

/-- **B4 — THE PRODUCT BAND (LP.1(i), bond form)**: near the product
    saddle (theta at the saddle profile, phi flat), `E_0 = E_kappa +
    E_lambda` sits within the quadratic band around `S_k`. -/
theorem product_band {N k : ℕ} [NeZero N] {κ lam : ℝ} (hκ : 0 ≤ κ) (hlam : 0 ≤ lam)
    (hN : 3 ≤ N) (d e : Fin N → ℝ)
    (hsum : ∑ i, d i = ∑ i, spBond N k i) :
    |E κ d + E lam e - saddleLevel N κ k|
      ≤ κ / 2 * ∑ i, (d i - spBond N k i) ^ 2 + lam / 2 * ∑ i, (e i) ^ 2 := by
  have hb2 := saddle_band hκ hN d hsum
  have hb3 := ground_band hlam e
  have h1 := abs_le.mp hb2
  rw [abs_le]
  constructor
  · linarith [h1.1, hb3.1, hb3.2]
  · linarith [h1.2, hb3.2]

/-- **B5 — THE UNCONDITIONAL TUBE EXCLUSION (v18's tube trick with the
    band DISCHARGED)**: inside the bond tube of squared radius
    `eps'/(2C)` (weighted), the coupled energy `E_eps = E_0 + eps W*`
    stays STRICTLY above the cap `S_k - eps'` - for every eps >= 0.
    LP.1(i)'s band is no longer a hypothesis: campaign #9 proves it. -/
theorem tube_exclusion_unconditional {N k : ℕ} [NeZero N] {κ lam ε ε' : ℝ}
    (hκ : 0 ≤ κ) (hlam : 0 ≤ lam) (hε : 0 ≤ ε) (hε' : 0 < ε')
    (hN : 3 ≤ N) (d e : Fin N → ℝ)
    (hsum : ∑ i, d i = ∑ i, spBond N k i)
    (htube : κ / 2 * ∑ i, (d i - spBond N k i) ^ 2
      + lam / 2 * ∑ i, (e i) ^ 2 ≤ ε' / 2) :
    saddleLevel N κ k - ε' < E κ d + E lam e + ε * Wstar d e := by
  have hW := Wstar_nonneg d e
  have hεW : 0 ≤ ε * Wstar d e := mul_nonneg hε hW
  have hpb := product_band hκ hlam hN d e hsum
  have hlow := (abs_le.mp hpb).1
  linarith
  -- BLUEPRINT: E_eps ≥ E_0 (Wstar_nonneg, sealed, times ε ≥ 0);
  --   E_0 ≥ S_k - (quadratic) ≥ S_k - ε'/2 (product_band lower side +
  --   htube); S_k - ε'/2 > S_k - ε' (hε'). linarith assembly.

/-! ## Campaign #10 (part 1): the carried-forward arithmetic — PROD-SHELL
    k = 1 (numerics-checked to N = 2000, never sealed; consumed by every
    family's Delta_phi chain), the M2P coupled-ground ledger arithmetic,
    the WC substitution identities, and the h-class (deep case) algebra. -/

/-- **P1a — the phi-slope engine**: `s sin s > 1 - cos s` on `(0, 2]`
    (the strict monotonicity engine of `phi(s) = (1 - cos s)/s`). -/
theorem s_sin_gt_one_sub_cos {s : ℝ} (h0 : 0 < s) (h2 : s ≤ 2) :
    1 - Real.cos s < s * Real.sin s := by
  obtain ⟨t, rfl⟩ : ∃ t, s = 2 * t := ⟨s / 2, by ring⟩
  have ht0 : 0 < t := by linarith
  have ht1 : t ≤ 1 := by linarith
  have hπl : (3.141592 : ℝ) < π := Real.pi_gt_d6
  rw [Real.cos_two_mul, Real.sin_two_mul]
  have hsint : 0 < Real.sin t := Real.sin_pos_of_pos_of_lt_pi ht0 (by linarith)
  have hslt : Real.sin t < t := Real.sin_lt ht0
  have hcost : 1 - t ^ 2 / 2 ≤ Real.cos t := Real.one_sub_sq_div_two_le_cos
  have hkey : Real.sin t < 2 * t * Real.cos t := by
    nlinarith [mul_le_mul_of_nonneg_left hcost (by linarith : (0:ℝ) ≤ 2 * t),
      mul_nonneg (mul_nonneg (sub_nonneg.mpr ht1) ht0.le) ht0.le,
      mul_nonneg (sub_nonneg.mpr ht1) ht0.le]
  nlinarith [mul_lt_mul_of_pos_left hkey hsint, Real.sin_sq_add_cos_sq t]
  -- BLUEPRINT: half-angle: 1 - cos s = 2 sin(s/2)^2 (Real.cos_sq_half /
  --   cos_eq_one_sub_two_sin_sq... grep Real.cos_eq / sin_sq_half:
  --   `Real.sin_sq_half : sin(x/2)^2 = (1 - cos x)/2` exists?
  --   rg "sin_sq" in mathlib Trigonometric). s sin s =
  --   2 s sin(s/2) cos(s/2) (Real.sin_eq_two_mul... sin x =
  --   2 sin(x/2) cos(x/2) - Real.sin_eq or sin_two_mul applied to s/2).
  --   Reduce to: 2 sin(s/2)[ s cos(s/2) - sin(s/2) ] > 0.
  --   sin(s/2) > 0 (0 < s/2 <= 1 < pi, Real.sin_pos_of_pos_of_lt_pi).
  --   s cos(s/2) - sin(s/2) > 0: cos(s/2) >= 1 - (s/2)^2/2 = 1 - s^2/8
  --   (Real.one_sub_sq_div_two_le_cos), so s cos(s/2) >= s(1 - s^2/8)
  --   >= s/2 (since s^2 <= 4); and sin(s/2) < s/2 (Real.sin_lt h0/2).
  --   Chain: s cos(s/2) >= s/2 > sin(s/2). nlinarith assembly.

/-- **P1b — ROW PROD-SHELL(N, 1)**: `S_1 - m_1 < 2 kappa` for `N >= 5`
    (the standalone-arithmetic row every family's Delta_phi chain
    consumes; strictness is all consumers need - no uniform bound
    exists, per the honesty note). -/
theorem prod_shell_k1 {N : ℕ} {κ : ℝ} (hκ : 0 < κ) (hN : 5 ≤ N) :
    saddleLevel N κ 1 - groundLevel N κ 1 < 2 * κ := by
  have hπ := Real.pi_pos
  have hπu : π < 3.141593 := Real.pi_lt_d6
  have hπl : (3.141592 : ℝ) < π := Real.pi_gt_d6
  have hNR : (5 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hN2ne : ((N : ℝ) - 2) ≠ 0 := ne_of_gt hN2
  have hNpos : (0 : ℝ) < (N : ℝ) := by linarith
  have hNne : (N : ℝ) ≠ 0 := ne_of_gt hNpos
  set a := π / ((N : ℝ) - 2) with ha_def
  set b := 2 * π / (N : ℝ) with hb_def
  have ha_pos : 0 < a := div_pos hπ hN2
  have hb_pos : 0 < b := div_pos (by linarith) hNpos
  have hb2 : b < 2 := by
    rw [hb_def, div_lt_iff₀ hNpos]
    linarith
  have hab : a < b := by
    rw [ha_def, hb_def, div_lt_div_iff₀ hN2 hNpos]
    nlinarith [mul_pos hπ (show (0 : ℝ) < (N : ℝ) - 4 by linarith)]
  have hae : a * ((N : ℝ) - 2) = π := by
    rw [ha_def]
    field_simp
  have hbe : b * (N : ℝ) = 2 * π := by
    rw [hb_def]
    field_simp
  have hderiv : ∀ s : ℝ, s ≠ 0 → HasDerivAt (fun x : ℝ => (1 - Real.cos x) / x)
      ((s * Real.sin s - (1 - Real.cos s)) / s ^ 2) s := by
    intro s hs
    have h1 : HasDerivAt (fun x : ℝ => 1 - Real.cos x) (-(-Real.sin s)) s :=
      (Real.hasDerivAt_cos s).const_sub 1
    have h2 : HasDerivAt (fun x : ℝ => x) 1 s := hasDerivAt_id s
    have hval : (s * Real.sin s - (1 - Real.cos s)) / s ^ 2
        = (-(-Real.sin s) * s - (1 - Real.cos s) * 1) / s ^ 2 := by ring
    rw [hval]
    exact h1.fun_div h2 hs
  have hmono : StrictMonoOn (fun x : ℝ => (1 - Real.cos x) / x) (Set.Icc a b) := by
    apply strictMonoOn_of_deriv_pos (convex_Icc _ _)
    · intro x hx
      exact ((hderiv x (ne_of_gt (lt_of_lt_of_le ha_pos hx.1))).continuousAt).continuousWithinAt
    · intro s hs
      rw [interior_Icc] at hs
      obtain ⟨hs1, hs2⟩ := hs
      have hs0 : 0 < s := lt_trans ha_pos hs1
      rw [(hderiv s (ne_of_gt hs0)).deriv]
      apply div_pos
      · have h := s_sin_gt_one_sub_cos hs0 (le_of_lt (lt_trans hs2 hb2))
        linarith
      · exact pow_pos hs0 2
  have hab_lt : (1 - Real.cos a) / a < (1 - Real.cos b) / b :=
    hmono (Set.left_mem_Icc.mpr hab.le) (Set.right_mem_Icc.mpr hab.le) hab
  have hcross : (1 - Real.cos a) * b < (1 - Real.cos b) * a :=
    (div_lt_div_iff₀ ha_pos hb_pos).mp hab_lt
  have hcosb : Real.cos b < 1 := by
    have h := Real.cos_lt_cos_of_nonneg_of_le_pi (le_refl 0) (by linarith : b ≤ π) hb_pos
    rwa [Real.cos_zero] at h
  have key : ((N : ℝ) - 2) * (1 - Real.cos a) < (N : ℝ) * (1 - Real.cos b) := by
    have hab_pos : 0 < a * b := mul_pos ha_pos hb_pos
    have h1 : ((N : ℝ) - 2) * (1 - Real.cos a) * (a * b) = π * ((1 - Real.cos a) * b) := by
      linear_combination b * (1 - Real.cos a) * hae
    have h2 : (N : ℝ) * (1 - Real.cos b) * (a * b) = 2 * π * ((1 - Real.cos b) * a) := by
      linear_combination a * (1 - Real.cos b) * hbe
    have h3 : π * ((1 - Real.cos a) * b) < π * ((1 - Real.cos b) * a) :=
      mul_lt_mul_of_pos_left hcross hπ
    have h5 : 0 < π * ((1 - Real.cos b) * a) :=
      mul_pos hπ (mul_pos (by linarith) ha_pos)
    have hscaled : ((N : ℝ) - 2) * (1 - Real.cos a) * (a * b)
        < (N : ℝ) * (1 - Real.cos b) * (a * b) := by
      rw [h1, h2]
      linarith
    exact lt_of_mul_lt_mul_right hscaled hab_pos.le
  have hsp : saddleParam N 1 = a := by
    unfold saddleParam
    rw [ha_def]
    push_cast
    ring_nf
  have hslvl : saddleLevel N κ 1 = κ * (2 + ((N : ℝ) - 2) * (1 - Real.cos a)) := by
    unfold saddleLevel
    rw [hsp]
  have hglvl : groundLevel N κ 1 = (N : ℝ) * κ * (1 - Real.cos b) := by
    unfold groundLevel
    rw [hb_def]
    norm_num
  rw [hslvl, hglvl]
  nlinarith [mul_lt_mul_of_pos_left key hκ]
  -- BLUEPRINT: reduce to (N-2)(1 - cos(pi/(N-2))) < N(1 - cos(2 pi/N)).
  --   unfold saddleLevel groundLevel saddleParam; push_cast; the
  --   saddle term: 2 + (N-2)(1 - cos a_1) - N(1-cos(2pi/N)) < 2 after
  --   kappa-factoring (mul_lt_mul_left hκ). KEY REWRITE: with
  --   a := pi/((N:R)-2), b := 2*pi/N: (N-2)(1-cos a) = pi * (1-cos a)/a
  --   and N(1-cos b) = 2*pi * (1-cos b)/b (field_simp; (N:R)-2 > 0,
  --   N > 0). Suffices: (1-cos a)/a < 2 * (1-cos b)/b. Since a < b
  --   (pi/(N-2) < 2pi/N iff N < 2(N-2) iff N > 4 ✓) and both in (0, 2]
  --   (a <= pi/3 < 2 at N >= 5; b <= 2pi/5 < 2), the MONOTONE step:
  --   (1-cos a)/a < (1-cos b)/b, then < 2*(1-cos b)/b since
  --   (1-cos b)/b > 0. Monotonicity WITHOUT calculus: cross-multiplied
  --   form b(1-cos a) < a(1-cos b) for 0 < a < b <= 2 — prove via the
  --   function h(s) := (1-cos s)/s and strictMonoOn_of_deriv_pos on
  --   [a, b] ⊂ (0, 2]: deriv h s = (s sin s - (1-cos s))/s^2 > 0 by
  --   P1a (s_sin_gt_one_sub_cos) + div_pos. HasDerivAt chain:
  --   (1-cos s)/s via HasDerivAt.div (denominator ≠ 0). Mirror
  --   campaign #8's ridgeEnv_strictMonoOn structure.

/-- **P2a — the coupled ground level (bond form)**: at the aligned
    equidistributed pair (theta at C_k's profile, phi flat), the coupled
    energy is `m_k + eps * N(1 - cos(2 pi k/N))` — the M2-SUB ledger's
    ground identity, exact. -/
theorem coupled_ground_level (N k : ℕ) (κ lam ε : ℝ) :
    E κ (fun _ : Fin N => 2 * π * k / N) + E lam (fun _ : Fin N => (0 : ℝ))
      + ε * Wstar (fun _ : Fin N => 2 * π * k / N) (fun _ : Fin N => (0 : ℝ))
      = groundLevel N κ k + ε * (N * (1 - Real.cos (2 * π * k / N))) := by
  unfold E Wstar groundLevel
  simp only [Real.cos_zero, sub_self, sub_zero, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, mul_zero]
  ring
  -- BLUEPRINT: unfold E Wstar groundLevel; every sum is N copies of a
  --   constant (Finset.sum_const, card_univ, Fintype.card_fin,
  --   nsmul_eq_mul); cos 0 = 1 kills the phi term; sub_zero in Wstar's
  --   argument; ring.

/-- **P2b — the epsilon_0 third entry, exact iff**: for `k != 0`-type
    positive coupling weight `w > 0`, the coupled ground stays below the
    cap `2 kappa` exactly on `eps < (2 kappa - m)/w`. (The M2P.5 third
    entry and the WC-generalized form in one display.) -/
theorem coupled_ground_below_cap_iff {m w κ ε : ℝ} (hw : 0 < w) :
    m + ε * w < 2 * κ ↔ ε < (2 * κ - m) / w := by
  rw [lt_div_iff₀ hw]
  constructor <;> intro h <;> linarith
  -- BLUEPRINT: lt_div_iff₀ hw + ring_nf both directions; constructor +
  --   linarith/nlinarith. Pure field arithmetic.

/-- **P2c — the slice floor survives the perturbation**: for any
    symbolic floor `c > 0` and Hessian bound `H > 0`,
    `(3/4) c - H eps >= c/2` exactly when `eps <= c/(4H)` — the M2P.5
    Step-2 / WC item-5 arithmetic. -/
theorem slice_floor_arith {c H ε : ℝ} (hc : 0 < c) (hH : 0 < H) :
    ε ≤ c / (4 * H) → (3 / 4) * c - H * ε ≥ c / 2 := by
  intro h
  rw [le_div_iff₀ (by linarith : (0 : ℝ) < 4 * H)] at h
  linarith
  -- BLUEPRINT: intro h; have := mul_le_mul_of_nonneg_left h hH.le;
  --   field_simp at *; linarith/nlinarith.

/-- **P3a — the difference-coupling ground values**: for any `v` and the
    aligned pair at winding j (all bond differences equal `2 pi j/N`),
    `W_v = N * v(2 pi j/N)` — the WC (A5) row `w_j` identity for the
    whole difference subclass. -/
theorem Wv_aligned (N j : ℕ) (v : ℝ → ℝ) :
    ∑ _i : Fin N, v (2 * π * j / N) = N * v (2 * π * j / N) := by
  rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  -- BLUEPRINT: Finset.sum_const + card_univ + Fintype.card_fin +
  --   nsmul_eq_mul. One line.

/-- **P3b — the second member's (A4) arithmetic**: `4(2 gamma^2 - 1) > 0`
    whenever `gamma >= 1 - 2/N` and `N >= 7` — the W_2 = 1 - cos(2x)
    member's PSD condition at every C1-SUB torus (WC.4). -/
theorem w2_member_psd {N : ℕ} {γ : ℝ} (hN : 7 ≤ N) (hγ : 1 - 2 / (N : ℝ) ≤ γ) :
    0 < 4 * (2 * γ ^ 2 - 1) := by
  have hNR : (7 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < (N : ℝ) := by linarith
  have h2N : 2 / (N : ℝ) ≤ 2 / 7 := by
    rw [div_le_div_iff₀ hN0 (by norm_num : (0 : ℝ) < 7)]
    linarith
  have hγ57 : (5 : ℝ) / 7 ≤ γ := by linarith
  nlinarith [sq_nonneg (γ - 5 / 7)]
  -- BLUEPRINT: hNR : (7:ℝ) ≤ N; 1 - 2/N ≥ 1 - 2/7 = 5/7 (div mono);
  --   γ ≥ 5/7 > 1/sqrt 2 ⟸ γ² ≥ 25/49 > 1/2: nlinarith [sq_nonneg γ,
  --   hγ, div arithmetic]. Avoid sqrt entirely: prove 2γ² > 1 from
  --   γ ≥ 5/7: 2·25/49 = 50/49 > 1 ✓; need γ ≥ 5/7 from N ≥ 7:
  --   2/N ≤ 2/7 (div_le_div_of_nonneg_left / one_div mono).

/-- **P4a — the deep-case controlled gain (h-class algebra)**: for
    `h = id + g` with the plateau values `g(m) = -b`, `g(S) = b`,
    `h(S) - h(m) = S - m + 2b` — LT.1's deep-case display, exact. -/
theorem deep_case_gain {m S b : ℝ} (g : ℝ → ℝ)
    (hm : g m = -b) (hS : g S = b) :
    (S + g S) - (m + g m) = S - m + 2 * b := by
  rw [hm, hS]
  ring
  -- BLUEPRINT: rw [hm, hS]; ring. One line (the content is the
  --   STATEMENT pinning the display; the corpus derives the plateau
  --   values from the class axioms - taken as hypotheses here).

/-- **P4b — the MC no-harm identity**: the composed cap-margin exceeds
    the coupled cap-margin by exactly `b - g(J)`, nonnegative on the
    class (`g <= b`) — MC.6's bridge, exact. -/
theorem mc_no_harm {κ b J : ℝ} (g : ℝ → ℝ) (hgb : g J ≤ b)
    (Ec Ee : ℝ) (hEc : Ec = Ee + g J) :
    ((2 * κ + b) - Ec) - (2 * κ - Ee) = b - g J ∧ 0 ≤ b - g J := by
  subst hEc
  exact ⟨by ring, by linarith⟩
  -- BLUEPRINT: subst hEc; constructor; ring; linarith.

/-! ## Campaign #11: THE FLOOR (LP.1(ii)) with an EXPLICIT constant + the
    METRIC (L_fr) layer.
    Design discovery (2026-07-11, spike promoted to campaign): the
    slice-projected LINEARIZED gradient at the saddle has EXACT closed
    form |h(v)|^2 = cos(a_k)^2 (|v|^2 - (4/N) v_1^2) on the zero-sum
    slice, and v_1^2 <= (1-1/N)|v|^2 there - so the floor constant is
    EXPLICIT: c_Z = cos(a_k) (N-2)/N. No numerical eigenvalues, no
    Morse-Bott machinery - the same collapse as the band (campaign #9).
    The metric layer: bonds are 2-Lipschitz in the max norm (real-lift
    form; the wrap/local-lift identification stays prose). -/

/-- **F1 — the sine tangent remainder** (the floor's Taylor engine;
    sibling of campaign #9's cosine bound). -/
theorem sin_taylor_bound (x μ : ℝ) :
    |Real.sin x - Real.sin μ - Real.cos μ * (x - μ)| ≤ (x - μ) ^ 2 / 2 := by
  -- Ordered core: for a ≤ b, write the remainder as ∫_a^b (cos s - cos a) ds
  -- (FTC-2), bound the integrand by (s - a) via cos's 1-Lipschitz bound,
  -- and integrate the linear bound exactly to (b - a)²/2.
  have key : ∀ a b : ℝ, a ≤ b →
      |Real.sin b - Real.sin a - Real.cos a * (b - a)|
        ≤ (b - a) ^ 2 / 2 := by
    intro a b hab
    have hderiv : ∀ s ∈ Set.uIcc a b,
        HasDerivAt (fun y : ℝ => Real.sin y - Real.cos a * y)
          (Real.cos s - Real.cos a) s := by
      intro s _
      have h1 : HasDerivAt (fun y : ℝ => Real.sin y) (Real.cos s) s :=
        Real.hasDerivAt_sin s
      have h2 : HasDerivAt (fun y : ℝ => Real.cos a * y) (Real.cos a) s := by
        simpa using (hasDerivAt_id s).const_mul (Real.cos a)
      exact h1.sub h2
    have hint : IntervalIntegrable (fun s : ℝ => Real.cos s - Real.cos a)
        MeasureTheory.volume a b :=
      (Real.continuous_cos.sub continuous_const).intervalIntegrable a b
    have heq : Real.sin b - Real.sin a - Real.cos a * (b - a)
        = ∫ s in a..b, (Real.cos s - Real.cos a) := by
      simp only [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hint]
      ring
    rw [heq]
    have habs : IntervalIntegrable (fun s : ℝ => |Real.cos s - Real.cos a|)
        MeasureTheory.volume a b :=
      (Real.continuous_cos.sub continuous_const).abs.intervalIntegrable a b
    have hid : IntervalIntegrable (fun s : ℝ => s - a)
        MeasureTheory.volume a b :=
      (continuous_id.sub continuous_const).intervalIntegrable a b
    calc |∫ s in a..b, (Real.cos s - Real.cos a)|
        ≤ ∫ s in a..b, |Real.cos s - Real.cos a| :=
          intervalIntegral.abs_integral_le_integral_abs hab
      _ ≤ ∫ s in a..b, (s - a) := by
          refine intervalIntegral.integral_mono_on hab habs hid fun s hs => ?_
          calc |Real.cos s - Real.cos a| ≤ |s - a| := Real.abs_cos_sub_cos_le s a
            _ = s - a := abs_of_nonneg (by linarith [hs.1])
      _ = (b - a) ^ 2 / 2 := by
          have hid2 : IntervalIntegrable (fun s : ℝ => s)
              MeasureTheory.volume a b := continuous_id.intervalIntegrable a b
          rw [intervalIntegral.integral_sub hid2 intervalIntegrable_const,
            integral_id, intervalIntegral.integral_const, smul_eq_mul]
          ring
  rcases le_total μ x with h | h
  · exact key μ x h
  -- x ≤ μ: reflect through (x, μ) ↦ (-x, -μ) (sin odd, cos even), which
  -- negates the remainder (same abs) and preserves the bound while
  -- flipping the order.
  · have h2 := key (-μ) (-x) (by linarith)
    have e : |Real.sin (-x) - Real.sin (-μ) - Real.cos (-μ) * (-x - -μ)|
        = |Real.sin x - Real.sin μ - Real.cos μ * (x - μ)| := by
      rw [Real.sin_neg, Real.sin_neg, Real.cos_neg,
        show -Real.sin x - -Real.sin μ - Real.cos μ * (-x - -μ)
          = -(Real.sin x - Real.sin μ - Real.cos μ * (x - μ)) by ring,
        abs_neg]
    rw [e] at h2
    calc |Real.sin x - Real.sin μ - Real.cos μ * (x - μ)|
        ≤ (-x - -μ) ^ 2 / 2 := h2
      _ = (x - μ) ^ 2 / 2 := by ring
  -- BLUEPRINT: mirror one_sub_cos_taylor_bound (campaign #9, in this
  --   file - READ ITS PROOF and transplant): ordered core a <= b with
  --   g y := sin y - cos a * y, g' s = cos s - cos a,
  --   |cos s - cos a| <= |s - a| (Real.abs_cos_sub_cos_le? grep:
  --   rg "cos_sub_cos\|abs_cos" mathlib Trigonometric; fallback
  --   lipschitzWith_cos), FTC-2 integral route + reflection
  --   (x,mu) -> (-x,-mu) using sin odd / cos even.

/-- **F2 — the slice-projected linearized gradient, EXACT norm identity**:
    at the saddle profile, with the two-value cosine structure
    (cos(sp_1) = -cos a_k, cos(sp_i) = cos a_k), the projected linear
    map has closed-form squared norm on the zero-sum slice. -/
theorem slice_grad_sq_identity {N k : ℕ} [NeZero N] (hN : 3 ≤ N)
    (v : Fin N → ℝ) (hv : ∑ i, v i = 0) :
    ∑ i, (Real.cos (spBond N k i) * v i
        - (1 / N) * ∑ j, Real.cos (spBond N k j) * v j) ^ 2
      = Real.cos (saddleParam N k) ^ 2
        * ((∑ i, v i ^ 2) - (4 / N) * v ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ ^ 2) := by
  set c := Real.cos (saddleParam N k) with hc_def
  set i0 : Fin N := ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ with hi0_def
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hNne : (N : ℝ) ≠ 0 := by linarith
  have hi00 : i0 = (0 : Fin N) := by
    apply Fin.ext
    simp [hi0_def]
  -- the two-value cosine structure
  have hcos : ∀ i : Fin N, Real.cos (spBond N k i) = if i = i0 then -c else c := by
    intro i
    unfold spBond
    rw [hi00]
    by_cases h : i = (0 : Fin N)
    · rw [if_pos h, if_pos h, Real.cos_pi_sub]
    · rw [if_neg h, if_neg h]
  -- the mean of the linearized gradient
  have hmean : ∑ j, Real.cos (spBond N k j) * v j = -2 * c * v i0 := by
    have hterm : ∀ j : Fin N, Real.cos (spBond N k j) * v j
        = c * v j + (if j = i0 then (-2 * c) * v i0 else 0) := by
      intro j
      rw [hcos j]
      by_cases h : j = i0
      · rw [if_pos h, if_pos h, h]; ring
      · rw [if_neg h, if_neg h]; ring
    rw [Finset.sum_congr rfl fun j _ => hterm j, Finset.sum_add_distrib,
      ← Finset.mul_sum, hv, Finset.sum_ite_eq' Finset.univ i0,
      if_pos (Finset.mem_univ i0)]
    ring
  -- each summand with the mean plugged in
  have hsummand : ∀ i : Fin N, (Real.cos (spBond N k i) * v i
      - (1 / N) * ∑ j, Real.cos (spBond N k j) * v j)
      = (if i = i0 then -c else c) * v i + 2 * c * v i0 / N := by
    intro i
    rw [hmean, hcos i]
    ring
  rw [Finset.sum_congr rfl fun i _ => by rw [hsummand i]]
  -- split the sum at the hot slot
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ i0), if_pos rfl]
  have herase : ∑ i ∈ Finset.univ.erase i0,
      ((if i = i0 then -c else c) * v i + 2 * c * v i0 / N) ^ 2
      = ∑ i ∈ Finset.univ.erase i0, (c * v i + 2 * c * v i0 / N) ^ 2 :=
    Finset.sum_congr rfl fun i hi => by
      rw [if_neg (Finset.mem_erase.mp hi).1]
  rw [herase]
  -- expand the erase sum
  have hexp : ∑ i ∈ Finset.univ.erase i0, (c * v i + 2 * c * v i0 / N) ^ 2
      = c ^ 2 * (∑ i ∈ Finset.univ.erase i0, v i ^ 2)
        + (4 * c ^ 2 * v i0 / N) * (∑ i ∈ Finset.univ.erase i0, v i)
        + ((Finset.univ.erase i0).card : ℝ) * (2 * c * v i0 / N) ^ 2 := by
    have hsq : ∀ i : Fin N, (c * v i + 2 * c * v i0 / N) ^ 2
        = c ^ 2 * v i ^ 2 + (4 * c ^ 2 * v i0 / N) * v i
          + (2 * c * v i0 / N) ^ 2 := by
      intro i; ring
    rw [Finset.sum_congr rfl fun i _ => hsq i, Finset.sum_add_distrib,
      Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum,
      Finset.sum_const, nsmul_eq_mul]
  rw [hexp]
  -- the erase-sum facts from the slice constraint
  have hsplit1 : v i0 + ∑ i ∈ Finset.univ.erase i0, v i = 0 := by
    rw [Finset.add_sum_erase _ v (Finset.mem_univ i0)]
    exact hv
  have hSe : ∑ i ∈ Finset.univ.erase i0, v i = -v i0 := by linarith
  have hSe2 : ∑ i ∈ Finset.univ.erase i0, v i ^ 2
      = (∑ i, v i ^ 2) - v i0 ^ 2 := by
    have := Finset.add_sum_erase Finset.univ (fun i => v i ^ 2)
      (Finset.mem_univ i0)
    linarith
  have hcard : (((Finset.univ.erase i0).card : ℕ) : ℝ) = (N : ℝ) - 1 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ i0), Finset.card_univ,
      Fintype.card_fin, Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]
  rw [hSe, hSe2, hcard]
  field_simp
  ring

/-- **F3 — the slice pins the hot coordinate**: on the zero-sum slice,
    no single coordinate carries more than `(N-1)/N` of the mass. -/
theorem slice_coord_bound {N : ℕ} (hN : 2 ≤ N)
    (v : Fin N → ℝ) (hv : ∑ i, v i = 0) (i0 : Fin N) :
    v i0 ^ 2 ≤ (1 - 1 / N) * ∑ i, v i ^ 2 := by
  have hNR : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < (N : ℝ) := by linarith
  have hNne : ((N : ℝ)) ≠ 0 := ne_of_gt hN0
  have hsplit : v i0 + ∑ j ∈ Finset.univ.erase i0, v j = ∑ j, v j :=
    Finset.add_sum_erase _ v (Finset.mem_univ i0)
  have hvi0 : v i0 = -(∑ j ∈ Finset.univ.erase i0, v j) := by
    rw [hv] at hsplit
    linarith
  have hsq_split : v i0 ^ 2 + ∑ j ∈ Finset.univ.erase i0, v j ^ 2 = ∑ j, v j ^ 2 :=
    Finset.add_sum_erase _ (fun j => v j ^ 2) (Finset.mem_univ i0)
  have hcard : (((Finset.univ.erase i0).card : ℕ) : ℝ) = (N : ℝ) - 1 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ i0), Finset.card_univ, Fintype.card_fin,
      Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]
  have hCS : (∑ j ∈ Finset.univ.erase i0, v j) ^ 2
      ≤ (((Finset.univ.erase i0).card : ℕ) : ℝ) * ∑ j ∈ Finset.univ.erase i0, v j ^ 2 :=
    sq_sum_le_card_mul_sum_sq
  have hkey : v i0 ^ 2 ≤ ((N : ℝ) - 1) * ((∑ j, v j ^ 2) - v i0 ^ 2) := by
    have h1 : v i0 ^ 2 = (∑ j ∈ Finset.univ.erase i0, v j) ^ 2 := by
      rw [hvi0]; ring
    have h2 : (∑ j ∈ Finset.univ.erase i0, v j) ^ 2
        ≤ ((N : ℝ) - 1) * ∑ j ∈ Finset.univ.erase i0, v j ^ 2 := by
      rw [← hcard]; exact hCS
    have h3 : ∑ j ∈ Finset.univ.erase i0, v j ^ 2 = (∑ j, v j ^ 2) - v i0 ^ 2 := by
      linarith
    rw [h3] at h2
    linarith [h1, h2]
  have heq : (1 - 1 / (N : ℝ)) * ∑ i, v i ^ 2
      = (((N : ℝ) - 1) * ∑ i, v i ^ 2) / N := by
    field_simp
  rw [heq, le_div_iff₀ hN0]
  nlinarith [hkey]
  -- BLUEPRINT: v i0 = -(SUM over erase i0) (from hv + add_sum_erase).
  --   Cauchy-Schwarz on the erase-sum: (SUM_{erase} v i)^2 <=
  --   (N-1) * SUM_{erase} v i^2 (Finset.inner_mul_le_norm_mul_norm or
  --   Finset.sq_sum_le_card_mul_sum_sq - grep the exact name; the file
  --   may already use sum_le_card_mul_max patterns; the standard lemma
  --   is Finset.sq_sum_le_card_mul_sum_sq). Then v i0^2 <=
  --   (N-1)(|v|^2 - v i0^2) → v i0^2 <= ((N-1)/N)|v|^2 = (1-1/N)|v|^2.
  --   Cast care: card (erase) = N - 1.

/-- **F4 — THE FLOOR (LP.1(ii), linearized, EXPLICIT constant)**: the
    slice-projected linearized gradient at the saddle is bounded below
    by `cos(a_k) (N-2)/N` times the displacement - the Morse-Bott floor
    with a closed-form constant. -/
theorem slice_grad_floor {N k : ℕ} [NeZero N] (hN : 3 ≤ N)
    (v : Fin N → ℝ) (hv : ∑ i, v i = 0) :
    (Real.cos (saddleParam N k) * (((N : ℝ) - 2) / N)) ^ 2 * ∑ i, v i ^ 2
      ≤ ∑ i, (Real.cos (spBond N k i) * v i
        - (1 / N) * ∑ j, Real.cos (spBond N k j) * v j) ^ 2 := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < (N : ℝ) := by linarith
  have hNne : ((N : ℝ)) ≠ 0 := ne_of_gt hN0
  have hF3 : v ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ ^ 2
      ≤ (1 - 1 / (N : ℝ)) * ∑ i, v i ^ 2 :=
    slice_coord_bound (by omega) v hv _
  rw [slice_grad_sq_identity hN v hv]
  have hkey : (((N : ℝ) - 2) / N) ^ 2 * ∑ i, v i ^ 2
      ≤ (∑ i, v i ^ 2) - (4 / N) * v ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ ^ 2 := by
    have h4N : (0 : ℝ) ≤ 4 / (N : ℝ) := by positivity
    have h1 : (4 / (N : ℝ)) * v ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ ^ 2
        ≤ (4 / (N : ℝ)) * ((1 - 1 / (N : ℝ)) * ∑ i, v i ^ 2) :=
      mul_le_mul_of_nonneg_left hF3 h4N
    have h2 : (((N : ℝ) - 2) / N) ^ 2 * ∑ i, v i ^ 2
        = (∑ i, v i ^ 2) - (4 / (N : ℝ)) * ((1 - 1 / (N : ℝ)) * ∑ i, v i ^ 2) := by
      field_simp
      ring
    linarith
  calc (Real.cos (saddleParam N k) * (((N : ℝ) - 2) / N)) ^ 2 * ∑ i, v i ^ 2
      = Real.cos (saddleParam N k) ^ 2 * ((((N : ℝ) - 2) / N) ^ 2 * ∑ i, v i ^ 2) := by
        ring
    _ ≤ Real.cos (saddleParam N k) ^ 2
        * ((∑ i, v i ^ 2) - (4 / N) * v ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩ ^ 2) :=
      mul_le_mul_of_nonneg_left hkey (sq_nonneg _)
  -- BLUEPRINT: rw [slice_grad_sq_identity hN v hv]; let S := SUM v^2,
  --   V0 := v 0 ^ 2. Goal: c^2 ((N-2)/N)^2 S <= c^2 (S - (4/N) V0).
  --   From F3 (slice_coord_bound at i0 = 0): V0 <= (1-1/N) S. Then
  --   S - (4/N)V0 >= S(1 - (4/N)(1-1/N)) = S(N^2-4N+4)/N^2 =
  --   S((N-2)/N)^2 ✓. nlinarith with sq_nonneg c, S >= 0
  --   (sum_nonneg of squares), the F3 instance; mind c^2 factor
  --   (mul_le_mul_of_nonneg_left with sq_nonneg).

/-- **F5 — bonds are 2-Lipschitz in the max norm (real-lift form)**: the
    bond-square distance is controlled by `4N` times the squared
    max-norm angle displacement — the L_fr layer's quantitative core. -/
theorem bond_sq_le_maxnorm {N : ℕ} [NeZero N] (θ θ' : Fin N → ℝ) (M : ℝ)
    (hM : ∀ i, |θ i - θ' i| ≤ M) :
    ∑ i, ((θ (i + 1) - θ i) - (θ' (i + 1) - θ' i)) ^ 2
      ≤ 4 * N * M ^ 2 := by
  have hterm : ∀ i : Fin N,
      ((θ (i + 1) - θ i) - (θ' (i + 1) - θ' i)) ^ 2 ≤ 4 * M ^ 2 := by
    intro i
    have h1 := abs_le.mp (hM (i + 1))
    have h2 := abs_le.mp (hM i)
    nlinarith [h1.1, h1.2, h2.1, h2.2]
  calc ∑ i, ((θ (i + 1) - θ i) - (θ' (i + 1) - θ' i)) ^ 2
      ≤ ∑ _i : Fin N, 4 * M ^ 2 :=
        Finset.sum_le_sum fun i _ => hterm i
    _ = N * (4 * M ^ 2) := by
        rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    _ = 4 * N * M ^ 2 := by ring
  -- BLUEPRINT: per index: (θ(i+1)-θ'(i+1)) - (θ i - θ' i), abs <=
  --   |θ(i+1)-θ'(i+1)| + |θ i - θ' i| <= 2M (abs_sub + hM); square:
  --   <= 4M^2 (sq_le_sq' / abs_le_iff + nlinarith); sum of N terms
  --   <= N * 4M^2 (Finset.sum_le_card_nsmul or sum_le_sum against the
  --   constant + sum_const). Note hM gives M >= 0 free only if N >= 1
  --   pick i; handle M < 0 impossible when N >= 1 (NeZero): abs >= 0.

/-- **F6' — THE METRIC TUBE EXCLUSION (bond-sup form)**: inside the
    SUP-NORM bond tube of radius `rho` around the saddle profile (on the
    winding slice), with `N (kappa + lam) rho^2 <= eps'`, the coupled
    energy stays strictly above the cap - campaign #9's unconditional
    exclusion composed through the sup-to-quadratic layer. REPLACES the
    drafted vertex-lift form, which the blind lens exposed as VACUOUS
    for k >= 1 (cyclic real-lift bond sums telescope to 0, so its
    hypotheses were unsatisfiable off winding zero - compiler-confirmed;
    the vertex/wrap layer stays PROSE, recorded). -/
theorem metric_tube_exclusion_bond {N k : ℕ} [NeZero N] {κ lam ε ε' ρ : ℝ}
    (hκ : 0 ≤ κ) (hlam : 0 ≤ lam) (hε : 0 ≤ ε) (hε' : 0 < ε')
    (hN : 3 ≤ N) (d e : Fin N → ℝ)
    (hsum : ∑ i, d i = ∑ i, spBond N k i)
    (hdρ : ∀ i, |d i - spBond N k i| ≤ ρ) (heρ : ∀ i, |e i| ≤ ρ)
    (htube : N * (κ + lam) * ρ ^ 2 ≤ ε') :
    saddleLevel N κ k - ε' < E κ d + E lam e + ε * Wstar d e := by
  have hρ0 : 0 ≤ ρ := le_trans (abs_nonneg _) (heρ ⟨0, Nat.pos_of_ne_zero (NeZero.ne N)⟩)
  have hd : ∑ i, (d i - spBond N k i) ^ 2 ≤ N * ρ ^ 2 := by
    calc ∑ i, (d i - spBond N k i) ^ 2
        ≤ ∑ _i : Fin N, ρ ^ 2 := by
          refine Finset.sum_le_sum fun i _ => ?_
          have h := abs_le.mp (hdρ i)
          nlinarith [h.1, h.2]
      _ = N * ρ ^ 2 := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  have he : ∑ i, (e i) ^ 2 ≤ N * ρ ^ 2 := by
    calc ∑ i, (e i) ^ 2
        ≤ ∑ _i : Fin N, ρ ^ 2 := by
          refine Finset.sum_le_sum fun i _ => ?_
          have h := abs_le.mp (heρ i)
          nlinarith [h.1, h.2]
      _ = N * ρ ^ 2 := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  have htube' : κ / 2 * ∑ i, (d i - spBond N k i) ^ 2
      + lam / 2 * ∑ i, (e i) ^ 2 ≤ ε' / 2 := by
    have h1 : κ / 2 * ∑ i, (d i - spBond N k i) ^ 2 ≤ κ / 2 * ((N : ℝ) * ρ ^ 2) :=
      mul_le_mul_of_nonneg_left hd (by linarith)
    have h2 : lam / 2 * ∑ i, (e i) ^ 2 ≤ lam / 2 * ((N : ℝ) * ρ ^ 2) :=
      mul_le_mul_of_nonneg_left he (by linarith)
    nlinarith [htube]
  exact tube_exclusion_unconditional hκ hlam hε hε' hN d e hsum htube'

/-! ## Campaign #12: GATE v19 = PROD-TRANSFER, the DETERMINISTIC CORE.
    The corpus types PROD-TRANSFER honestly: at eps > 0 the composed
    flow is NOT a reparametrization of the coupled flow, so flow-line
    facts do NOT transfer - only LEVEL and CRITICALITY transfer as-is.
    This campaign mechanizes exactly that transferable core (the
    h-class controlled family, h = id + g, h' >= 1): the composed
    chain-rule criticality transfer, the composed Hessian FLOOR
    comparison (c_1^c >= c_1 via h' >= 1), the composed level identity
    and MC-SUB, the composed Delta_phi barrier (composing the SEALED
    prod_shell), and the h-monotone ladder transfer. The per-family
    flow-line rerun (LP.4a/LP.4b under h) stays prose - genuinely new
    analysis, honestly out of scope. -/

/-- **V1 — composed chain rule**: if `f` has differential `f'` at `x`
    and `h` has derivative `h'` at `f x`, then `h ∘ f` has differential
    `h' • f'`. (The composed-energy `E_0^c = h(J_kappa) + J_lambda`
    inherits its differential from `J_kappa`.) -/
theorem composed_hasFDerivAt {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] (f : E → ℝ) (x : E) (f' : E →L[ℝ] ℝ)
    (hf : HasFDerivAt f f' x) (h : ℝ → ℝ) (h' : ℝ)
    (hh : HasDerivAt h h' (f x)) :
    HasFDerivAt (fun z => h (f z)) (h' • f') x := by
  exact hh.comp_hasFDerivAt x hf

/-- **V2 — CRITICALITY TRANSFER (the core)**: with `h' ≠ 0`, the
    composed differential `h' • f'` vanishes exactly when `f'` does -
    so `Crit(h ∘ f) = Crit(f)`. (h strictly increasing => h' > 0 =>
    the corpus's `Crit(h o J_kappa) = Crit(J_kappa)`.) -/
theorem composed_critical_iff {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] (f' : E →L[ℝ] ℝ) (c : ℝ) (hc : c ≠ 0) :
    c • f' = 0 ↔ f' = 0 := by
  constructor
  · intro hcf
    rcases smul_eq_zero.mp hcf with h | h
    · exact absurd h hc
    · exact h
  · intro h
    rw [h, smul_zero]

/-- **V3 — composed floor comparison (MC.1)**: the composed transverse
    Hessian floor is at least the coupled one - scaling the theta-block
    by `h' >= 1` cannot lower `min(h' a, b)`. -/
theorem composed_floor_ge {a b μ h' : ℝ} (ha : 0 ≤ a) (hμ : 0 ≤ μ)
    (hh' : 1 ≤ h') :
    min a b * μ ≤ min (h' * a) b * μ := by
  apply mul_le_mul_of_nonneg_right _ hμ
  apply le_min
  · exact (min_le_left a b).trans (le_mul_of_one_le_left ha hh')
  · exact min_le_right a b

/-- **V4 — MC-SUB (composed ground below the composed cap)**: with
    positive ground weight `w`, the composed ground `h(m) + eps w`
    stays below the composed cap `hcap` exactly on
    `eps < (hcap - h(m))/w`. -/
theorem composed_ground_below_cap_iff {hm hcap w ε : ℝ} (hw : 0 < w) :
    hm + ε * w < hcap ↔ ε < (hcap - hm) / w := by
  rw [lt_div_iff₀ hw]
  constructor <;> intro h <;> linarith

/-- **V5 — the composed Delta_phi barrier**: composing the SEALED
    PROD-SHELL (`S - m < 2 kappa`) with MC-PIN (`2 kappa + 2b < 2 lam`)
    and the h-gain bound (`h(S) - h(m) <= (S - m) + 2b`), the composed
    energy floor on the phi-face strictly exceeds `h(S)`. -/
theorem composed_delta_phi_barrier {hm hS S m κ lam b : ℝ}
    (hgain : hS - hm ≤ (S - m) + 2 * b)
    (hshell : S - m < 2 * κ) (hpin : 2 * κ + 2 * b < 2 * lam) :
    hS < hm + 2 * lam := by
  linarith

/-- **V6 — h-ladder transfer**: a strictly increasing `h` carries the
    SEALED ladder `m < 2κ < L < S` to `h m < h(2κ) < h L < h S`. -/
theorem composed_h_ladder {h : ℝ → ℝ} (hmono : StrictMono h)
    {m c L S : ℝ} (h1 : m < c) (h2 : c < L) (h3 : L < S) :
    h m < h c ∧ h c < h L ∧ h L < h S :=
  ⟨hmono h1, hmono h2, hmono h3⟩

/-- **V7 — composed ground level identity**: the composed energy at the
    aligned pair equals `h(m_k) + eps w_k` - the `E_c(G_k) = h(m_k) +
    eps N(1 - cos(2πk/N))` display (reusing the coupled identity). -/
theorem composed_ground_level (N k : ℕ) (κ lam ε : ℝ) (h : ℝ → ℝ) :
    h (E κ (fun _ : Fin N => 2 * π * k / N)) + E lam (fun _ : Fin N => (0 : ℝ))
      + ε * Wstar (fun _ : Fin N => 2 * π * k / N) (fun _ : Fin N => (0 : ℝ))
      = h (groundLevel N κ k) + ε * (N * (1 - Real.cos (2 * π * k / N))) := by
  have hE : E κ (fun _ : Fin N => 2 * π * k / N) = groundLevel N κ k := by
    unfold E groundLevel
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    ring
  rw [hE]
  linarith [coupled_ground_level N k κ lam ε, hE]

/-! ## Campaign #12 (strengthening, post blind-lens): the lens flagged the
    first seven as abstract lemmas whose energy connection was carried by
    NAMING. These three earn it back where it is cheap: a genuine composed
    criticality-transfer corollary, the flagship barrier that ACTUALLY
    composes the sealed prod_shell_k1, and the class strict-monotonicity
    that discharges the ladder's hypothesis from `h = id + g` (g monotone
    <=> h' >= 1). The abstract criticality transfer's instantiation at the
    torus energy J, and the flow-line rerun, remain prose. -/

/-- **V8 — GENUINE composed criticality transfer**: composing V1 + V2,
    the composed energy `h ∘ f` is critical at `x` (its fderiv vanishes)
    exactly when `f` is - for ANY energy `f` on a normed space, `h' != 0`.
    (Instantiating `f := J_kappa` is the standing prose identification.) -/
theorem composed_energy_critical_iff {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] (f : E → ℝ) (x : E) (f' : E →L[ℝ] ℝ)
    (hf : HasFDerivAt f f' x) (h : ℝ → ℝ) (h' : ℝ)
    (hh : HasDerivAt h h' (f x)) (hh0 : h' ≠ 0) :
    fderiv ℝ (fun z => h (f z)) x = 0 ↔ f' = 0 := by
  have hcomp : HasFDerivAt (fun z => h (f z)) (h' • f') x :=
    hh.comp_hasFDerivAt x hf
  rw [hcomp.fderiv]
  exact composed_critical_iff f' h' hh0

/-- **V9 — the flagship composed Delta_phi barrier**: for the flagship
    `k = 1, N >= 5`, ACTUALLY composing the SEALED `prod_shell_k1`
    (`S_1 - m_1 < 2 kappa`) with MC-PIN and the h-gain, `h(S_1)` sits
    strictly below `h(m_1) + 2 lam`. (Now the sealed shell IS invoked -
    not taken as a free hypothesis, the lens's catch.) -/
theorem composed_delta_phi_barrier_flagship {N : ℕ} {κ lam b hm hS : ℝ}
    (hκ : 0 < κ) (hN : 5 ≤ N)
    (hgain : hS - hm ≤ (saddleLevel N κ 1 - groundLevel N κ 1) + 2 * b)
    (hpin : 2 * κ + 2 * b < 2 * lam) :
    hS < hm + 2 * lam :=
  composed_delta_phi_barrier hgain (prod_shell_k1 hκ hN) hpin

/-- **V10 — the controlled class is strictly monotone**: `h = id + g`
    with `g` monotone (equivalently `h' >= 1`) is strictly increasing -
    discharging composed_h_ladder's `StrictMono h` from the class
    definition (the lens's catch: the hypothesis was assumed, not
    derived). -/
theorem hclass_strictMono (g : ℝ → ℝ) (hg : Monotone g) :
    StrictMono (fun x => x + g x) := by
  intro x y hxy
  have := hg hxy.le
  simp only
  linarith

/-! ## Campaign #13: closing the campaign-12 lens caveat - the composed
    criticality transfer INSTANTIATED at the actual torus energy E
    (the lens flagged "f := J stays prose"; here it is not). -/

/-- **W1 — composed criticality transfer at the CONCRETE energy E**:
    the composed energy `h ∘ (E κ)` is critical at `d` (fderiv vanishes)
    exactly when `E κ` is - now for the ACTUAL bond-space energy, via
    the sealed differential `hasFDerivAt_E`. (No abstract `f`; closes
    the campaign-12 lens caveat at the unconstrained level.) -/
theorem composed_E_critical_iff {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) (h : ℝ → ℝ)
    (h' : ℝ) (hh : HasDerivAt h h' (E κ d)) (hh0 : h' ≠ 0) :
    fderiv ℝ (fun x => h (E κ x)) d = 0 ↔ dE κ d = 0 :=
  composed_energy_critical_iff (E κ) d (dE κ d) (hasFDerivAt_E κ d) h h' hh hh0

/-- **W2 — composed SLICE-criticality transfer (the corpus's on-slice
    form)**: any NONZERO rescaling `c` of the slice differential (the
    composed `c = h'(E d) * kappa != 0`) preserves winding-slice
    criticality - so the composed energy is slice-critical at `d`
    exactly when all bond sines are equal (chaining critical_slice_iff).
    THIS is the transfer at the level the corpus's classification
    consumes, fully concrete. -/
theorem composed_slice_critical_iff {N : ℕ} (hN : 2 ≤ N) (d : Fin N → ℝ)
    {c : ℝ} (hc : c ≠ 0) :
    (∀ v : Fin N → ℝ, (∑ i, v i) = 0 → c * ∑ i, Real.sin (d i) * v i = 0)
      ↔ (∀ i j, Real.sin (d i) = Real.sin (d j)) := by
  rw [← critical_slice_iff hN d]
  constructor
  · intro hcomp v hv
    exact (mul_eq_zero.mp (hcomp v hv)).resolve_left hc
  · intro horig v hv
    rw [horig v hv, mul_zero]

/-! ## Campaign #14: THE GROUND MORSE-BOTT MINIMUM (index 0) - the
    coercive stability floor at G_k, COMPLEMENTING the sealed saddle
    (index 1) structure. New theory: the corpus's pinning/stability
    (M2P, gate v20's setup) rests on G_k being a strict transverse
    minimum; this seals exactly that in bond-slice form, via a coercive
    Taylor LOWER bound (the sibling of campaign #9's upper band). -/

/-- **G1 — the coercive Taylor LOWER bound**: where the cosine stays
    at least `m >= 0` between `mu` and `x`, the tangent line of
    `1 - cos` UNDERshoots by at least `(m/2)(x-mu)^2` - the index-0
    coercivity engine (sibling of one_sub_cos_taylor_bound). -/
theorem one_sub_cos_taylor_lower {x μ m : ℝ} (hm : 0 ≤ m)
    (hcos : ∀ t ∈ Set.uIcc μ x, m ≤ Real.cos t) :
    (1 - Real.cos μ) + Real.sin μ * (x - μ) + m / 2 * (x - μ) ^ 2
      ≤ (1 - Real.cos x) := by
  -- Ordered core: for a ≤ b with cos ≥ m on [a,b], the remainder
  -- R = (1-cos b) - (1-cos a) - sin a (b-a) = ∫_a^b (sin s - sin a) ds
  -- undershoots by at least (m/2)(b-a)², because sin s - sin a = ∫_a^s cos u
  -- ≥ m(s-a) and the linear bound integrates to (m/2)(b-a)².
  have key : ∀ a b : ℝ, a ≤ b → (∀ t ∈ Set.uIcc a b, m ≤ Real.cos t) →
      m / 2 * (b - a) ^ 2
        ≤ (1 - Real.cos b) - (1 - Real.cos a) - Real.sin a * (b - a) := by
    intro a b hab hcab
    have hderiv : ∀ s ∈ Set.uIcc a b,
        HasDerivAt (fun y : ℝ => -Real.cos y - Real.sin a * y)
          (Real.sin s - Real.sin a) s := by
      intro s _
      have h1 : HasDerivAt (fun y : ℝ => -Real.cos y) (Real.sin s) s := by
        have h := (Real.hasDerivAt_cos s).neg
        rwa [neg_neg] at h
      have h2 : HasDerivAt (fun y : ℝ => Real.sin a * y) (Real.sin a) s := by
        simpa using (hasDerivAt_id s).const_mul (Real.sin a)
      exact h1.sub h2
    have hint : IntervalIntegrable (fun s : ℝ => Real.sin s - Real.sin a)
        MeasureTheory.volume a b :=
      (Real.continuous_sin.sub continuous_const).intervalIntegrable a b
    have heq : (1 - Real.cos b) - (1 - Real.cos a) - Real.sin a * (b - a)
        = ∫ s in a..b, (Real.sin s - Real.sin a) := by
      simp only [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hint]
      ring
    have hsin_int : ∀ s : ℝ, (∫ u in a..s, Real.cos u) = Real.sin s - Real.sin a :=
      fun s => intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun u _ => Real.hasDerivAt_sin u)
        (Real.continuous_cos.intervalIntegrable a s)
    have hpoint : ∀ s ∈ Set.Icc a b, m * (s - a) ≤ Real.sin s - Real.sin a := by
      intro s hs
      obtain ⟨has, hsb⟩ := hs
      have hcos_sub : ∀ u ∈ Set.Icc a s, m ≤ Real.cos u := by
        intro u hu
        apply hcab u
        rw [Set.mem_uIcc]
        exact Or.inl ⟨hu.1, le_trans hu.2 hsb⟩
      have hmono : (∫ u in a..s, m) ≤ ∫ u in a..s, Real.cos u :=
        intervalIntegral.integral_mono_on has intervalIntegrable_const
          (Real.continuous_cos.intervalIntegrable a s) hcos_sub
      rw [intervalIntegral.integral_const, smul_eq_mul, hsin_int s] at hmono
      rw [mul_comm]
      exact hmono
    rw [heq]
    have hml : IntervalIntegrable (fun s : ℝ => m * (s - a))
        MeasureTheory.volume a b :=
      (continuous_const.mul (continuous_id.sub continuous_const)).intervalIntegrable a b
    have hid2 : IntervalIntegrable (fun s : ℝ => s)
        MeasureTheory.volume a b := continuous_id.intervalIntegrable a b
    calc m / 2 * (b - a) ^ 2
        = ∫ s in a..b, m * (s - a) := by
          rw [intervalIntegral.integral_const_mul,
            intervalIntegral.integral_sub hid2 intervalIntegrable_const, integral_id,
            intervalIntegral.integral_const, smul_eq_mul]
          ring
      _ ≤ ∫ s in a..b, (Real.sin s - Real.sin a) :=
          intervalIntegral.integral_mono_on hab hml hint hpoint
  rcases le_total μ x with h | h
  · have hk := key μ x h hcos
    linarith
  -- x ≤ μ: reflect through (x, μ) ↦ (-x, -μ) (cos even, sin odd), which
  -- preserves the remainder and the (m/2)(x-μ)² term while flipping the order.
  · have hcos' : ∀ t ∈ Set.uIcc (-μ) (-x), m ≤ Real.cos t := by
      intro t ht
      have hnt : -t ∈ Set.uIcc μ x := by
        rw [Set.mem_uIcc] at ht ⊢
        rcases ht with ⟨h1, h2⟩ | ⟨h1, h2⟩
        · exact Or.inr ⟨by linarith, by linarith⟩
        · exact Or.inl ⟨by linarith, by linarith⟩
      have hc := hcos (-t) hnt
      rwa [Real.cos_neg] at hc
    have hk := key (-μ) (-x) (by linarith) hcos'
    have goal_eq : (1 - Real.cos (-x)) - (1 - Real.cos (-μ))
          - Real.sin (-μ) * (-x - -μ)
        = (1 - Real.cos x) - (1 - Real.cos μ) - Real.sin μ * (x - μ) := by
      simp only [Real.cos_neg, Real.sin_neg]; ring
    have lhs_eq : m / 2 * (-x - -μ) ^ 2 = m / 2 * (x - μ) ^ 2 := by ring
    rw [goal_eq, lhs_eq] at hk
    linarith

/-- **G2 — THE GROUND COERCIVE BAND (index-0 Morse-Bott at G_k)**: on
    the winding slice (bonds summing to the ground's `2πk`), where every
    bond stays in a cosine-`>= m` range, the energy exceeds the ground
    level `m_k` by at least `(κ m/2)` times the squared bond displacement
    - G_k is a STRICT transverse minimum. (The linear term cancels
    exactly: equal ground sines times fixed bond sum, as in the saddle
    band.) -/
theorem ground_coercive_band {N k : ℕ} [NeZero N] {κ m : ℝ} (hκ : 0 ≤ κ)
    (hm : 0 ≤ m) (hN : 3 ≤ N) (d : Fin N → ℝ)
    (hsum : ∑ i, d i = 2 * π * k)
    (hcos : ∀ i, ∀ t ∈ Set.uIcc (2 * π * k / N) (d i), m ≤ Real.cos t) :
    groundLevel N κ k + κ * m / 2 * ∑ i, (d i - 2 * π * k / N) ^ 2
      ≤ E κ d := by
  set a : ℝ := 2 * π * (k : ℝ) / (N : ℝ) with ha
  have hNne : (N : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have haN : (N : ℝ) * a = 2 * π * (k : ℝ) := by
    rw [ha]; field_simp
  have hE : E κ (fun _ : Fin N => a) = groundLevel N κ k := by
    simp only [E]
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    unfold groundLevel
    rw [← ha]; ring
  have hlin : ∑ i, Real.sin a * (d i - a) = 0 := by
    rw [← Finset.mul_sum, Finset.sum_sub_distrib, hsum, Finset.sum_const,
      Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, haN, sub_self, mul_zero]
  have hdiff : E κ d - E κ (fun _ : Fin N => a)
      = κ * ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos a)
          - Real.sin a * (d i - a)) := by
    have h1 : ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos a)
          - Real.sin a * (d i - a))
        = ((∑ i, (1 - Real.cos (d i))) - ∑ _i : Fin N, (1 - Real.cos a))
          - ∑ i, Real.sin a * (d i - a) := by
      simp only [Finset.sum_sub_distrib]
    simp only [E]
    rw [h1, hlin, sub_zero, mul_sub]
  have hErem : E κ d - groundLevel N κ k
      = κ * ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos a)
          - Real.sin a * (d i - a)) := by
    rw [← hE]; exact hdiff
  have hsum_le : ∑ i, m / 2 * (d i - a) ^ 2
      ≤ ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos a)
          - Real.sin a * (d i - a)) := by
    apply Finset.sum_le_sum
    intro i _
    have hti := one_sub_cos_taylor_lower hm (hcos i)
    linarith
  have hκsum : κ * ∑ i, m / 2 * (d i - a) ^ 2
      ≤ κ * ∑ i, ((1 - Real.cos (d i)) - (1 - Real.cos a)
          - Real.sin a * (d i - a)) :=
    mul_le_mul_of_nonneg_left hsum_le hκ
  have hquad : κ * ∑ i, m / 2 * (d i - a) ^ 2
      = κ * m / 2 * ∑ i, (d i - a) ^ 2 := by
    rw [← Finset.mul_sum]; ring
  rw [hquad, ← hErem] at hκsum
  linarith

/-- **G3 — flagship CONCRETE coercivity** (answering the blind lens's
    "m > 0 is caller-supplied"): in a bounded-deviation ball around the
    ground where every bond lies in `[a - ρ, a + ρ]` with
    `0 ≤ a - ρ` and `a + ρ ≤ π/2`, the coercivity constant is EXHIBITED
    as `cos(a + ρ) > 0` - the ground is a strict transverse minimum with
    a PROVED-positive gap, not a supplied hypothesis. -/
theorem ground_coercive_band_flagship {N k : ℕ} [NeZero N] {κ ρ : ℝ}
    (hκ : 0 ≤ κ) (hN : 3 ≤ N) (hρ : 0 ≤ ρ)
    (hlo : 0 ≤ 2 * π * k / N - ρ) (hhi : 2 * π * k / N + ρ ≤ π / 2)
    (d : Fin N → ℝ) (hsum : ∑ i, d i = 2 * π * k)
    (hball : ∀ i, |d i - 2 * π * k / N| ≤ ρ) :
    groundLevel N κ k
        + κ * Real.cos (2 * π * k / N + ρ) / 2 * ∑ i, (d i - 2 * π * k / N) ^ 2
      ≤ E κ d := by
  set a : ℝ := 2 * π * (k : ℝ) / (N : ℝ) with ha
  have hmpos : 0 ≤ Real.cos (a + ρ) :=
    Real.cos_nonneg_of_mem_Icc ⟨by linarith [Real.pi_pos], hhi⟩
  refine ground_coercive_band hκ hmpos hN d hsum (fun i t ht => ?_)
  -- every t in uIcc a (d i) lies in [a - ρ, a + ρ], where cos >= cos(a+ρ)
  have hd := abs_le.mp (hball i)
  have htlo : a - ρ ≤ t ∧ t ≤ a + ρ := by
    rw [Set.mem_uIcc] at ht
    rcases ht with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact ⟨by linarith, by linarith [hd.2]⟩
    · exact ⟨by linarith [hd.1], by linarith⟩
  -- cos is decreasing on [0, π]: cos t >= cos(a+ρ) since t <= a+ρ <= π/2 <= π
  have hmono := Real.cos_le_cos_of_nonneg_of_le_pi
    (by linarith [htlo.1] : (0:ℝ) ≤ t) (by linarith [Real.pi_pos] : a + ρ ≤ π) htlo.2
  linarith

/-! ## Campaign #15: THE G_{k,j} TRAP-TORI CENSUS - the doubly-
    equidistributed pinning tori the B2 numerics probed for gate v20.
    Their exact levels + the separation that makes them ABOVE the saddle
    (so the PROD-EXCURSION probability-floor is false - the traps EXIST -
    yet they do not interfere with the sub-saddle band dynamics). -/

/-- **X1 — the G_{k,j} level identity**: the doubly-equidistributed
    pinning torus (theta-bonds all `2πk/N`, phi-bonds all `2πj/N`) has
    coupled energy `m_k(κ) + m_j(λ) + ε·N(1 - cos(2π(k-j)/N))` - the
    exact trap level the numerics computed. -/
theorem Gkj_level (N k j : ℕ) (κ lam ε : ℝ) :
    E κ (fun _ : Fin N => 2 * π * k / N) + E lam (fun _ : Fin N => 2 * π * j / N)
      + ε * Wstar (fun _ : Fin N => 2 * π * k / N) (fun _ : Fin N => 2 * π * j / N)
      = groundLevel N κ k + groundLevel N lam j
        + ε * (N * (1 - Real.cos (2 * π * k / N - 2 * π * j / N))) := by
  have hEk : E κ (fun _ : Fin N => 2 * π * k / N) = groundLevel N κ k := by
    simp only [E]
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    unfold groundLevel; ring
  have hEj : E lam (fun _ : Fin N => 2 * π * j / N) = groundLevel N lam j := by
    simp only [E]
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    unfold groundLevel; ring
  have hW : Wstar (fun _ : Fin N => 2 * π * k / N) (fun _ : Fin N => 2 * π * j / N)
      = N * (1 - Real.cos (2 * π * k / N - 2 * π * j / N)) := by
    simp only [Wstar]
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  rw [hEk, hEj, hW]

/-- **X2 — the trap sits ABOVE the saddle (the v20 separation)**: for the
    flagship `k = 1`, when the phi-factor at winding `j` clears the
    barrier (`2κ ≤ m_j(λ)`, the M2-PIN-type condition), the G_{1,j} trap
    level exceeds the saddle level `S_1` - so the traps, though REAL
    (critical at every ε, hence the probability-floor row is false), lie
    above the sub-saddle band and do not interfere with it. Composes the
    SEALED prod_shell_k1 (`S_1 - m_1 < 2κ`). -/
theorem Gkj_above_saddle {N j : ℕ} {κ lam : ℝ} (hκ : 0 < κ) (hN : 5 ≤ N)
    (hpin : 2 * κ ≤ groundLevel N lam j) :
    saddleLevel N κ 1 < groundLevel N κ 1 + groundLevel N lam j := by
  have hshell := prod_shell_k1 hκ hN
  linarith

/-- **X3 — the equidistributed factor is SLICE-CRITICAL** (the
    single-factor criticality of the G_{k,j} traps): a constant-bond
    (equidistributed) config has slice-differential a multiple of the
    sum functional, so it kills every zero-sum direction - the reason
    the traps are E-critical. (Coupled with the phi-factor and the W*
    telescoping, this gives the full trap criticality; the W* piece
    stays prose here - only the single-factor part is sealed.) -/
theorem equidistributed_slice_critical {N : ℕ} (a : ℝ) (v : Fin N → ℝ)
    (hv : ∑ i, v i = 0) :
    ∑ i, Real.sin a * v i = 0 := by
  rw [← Finset.mul_sum, hv, mul_zero]

/-- **X4 — the COUPLED trap level is above the saddle for ALL ε ≥ 0**
    (strengthening X2 to the actual coupled energy E_ε, answering the
    lens's "ε=0 only" catch): since W* ≥ 0, the ε cross-term only raises
    the level, so the full E_ε(G_{1,j}) exceeds S_1 for every ε ≥ 0
    under the pin. HONEST: this is above the SADDLE S_1, not the band
    top S_1 + c_H (the stronger numerics claim needs a stronger pin and
    stays prose); k = 1 flagship; the pin is a hypothesis. -/
theorem Gkj_above_saddle_coupled {N j : ℕ} {κ lam ε : ℝ} (hκ : 0 < κ)
    (hN : 5 ≤ N) (hε : 0 ≤ ε) (hpin : 2 * κ ≤ groundLevel N lam j) :
    saddleLevel N κ 1
      < E κ (fun _ : Fin N => 2 * π * 1 / N)
        + E lam (fun _ : Fin N => 2 * π * j / N)
        + ε * Wstar (fun _ : Fin N => 2 * π * 1 / N)
            (fun _ : Fin N => 2 * π * j / N) := by
  have hlev := Gkj_level N 1 j κ lam ε
  simp only [Nat.cast_one] at hlev
  rw [hlev]
  have hshell := prod_shell_k1 hκ hN
  have hWnn : 0 ≤ ε * ((N : ℝ) * (1 - Real.cos (2 * π * 1 / N - 2 * π * j / N))) := by
    apply mul_nonneg hε
    apply mul_nonneg (by positivity)
    linarith [Real.cos_le_one (2 * π * 1 / N - 2 * π * j / N)]
  linarith

/-! ## Campaign #16: the FULL COUPLED trap criticality (closing campaign
    #15's main residual - the W* piece) + the M2P.3 single-pi-bond
    exclusion arithmetic. -/

/-- **Y1 — FULL coupled slice-criticality of the G_{k,j} traps**: at a
    doubly-constant configuration (theta-bonds all `a`, phi-bonds all
    `b`), the COUPLED slice-differential - theta-part `κ sin a`, phi-part
    `lam sin b`, AND the W* coupling part `ε sin(a-b)(v-w)` - kills every
    zero-sum pair direction, for EVERY ε. Closes campaign #15's "the W*
    telescoping stays prose": all three terms cancel by the same
    constant-coefficient telescoping. (The coefficients are the partial
    derivatives of E_ε in bond coordinates - the directional form, same
    definitional standing as the earlier slice-criticality rows.) -/
theorem Gkj_coupled_slice_critical {N : ℕ} (a b κ lam ε : ℝ)
    (v w : Fin N → ℝ) (hv : ∑ i, v i = 0) (hw : ∑ i, w i = 0) :
    κ * ∑ i, Real.sin a * v i + lam * ∑ i, Real.sin b * w i
      + ε * ∑ i, Real.sin (a - b) * (v i - w i) = 0 := by
  have h1 : ∑ i, Real.sin a * v i = 0 := by
    rw [← Finset.mul_sum, hv, mul_zero]
  have h2 : ∑ i, Real.sin b * w i = 0 := by
    rw [← Finset.mul_sum, hw, mul_zero]
  have h3 : ∑ i, Real.sin (a - b) * (v i - w i) = 0 := by
    rw [← Finset.mul_sum, Finset.sum_sub_distrib, hv, hw, sub_self, mul_zero]
  rw [h1, h2, h3]
  ring

/-- **Y2 — a π-bond costs the full barrier (bond form)**: any bond vector
    with some bond at `π` has energy at least `2κ` - the Delta_theta
    energy floor in bond coordinates (the M2P.3 entry inequality). -/
theorem E_ge_two_kappa_of_pi_bond {N : ℕ} {κ : ℝ} (hκ : 0 ≤ κ)
    (d : Fin N → ℝ) (i0 : Fin N) (hpi : d i0 = π) :
    2 * κ ≤ E κ d := by
  have hsplit : ∑ i, (1 - Real.cos (d i))
      = (1 - Real.cos (d i0)) + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ i0)).symm
  have hrest : 0 ≤ ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) :=
    Finset.sum_nonneg fun i _ => by linarith [Real.cos_le_one (d i)]
  have hpi_term : 1 - Real.cos (d i0) = 2 := by
    rw [hpi, Real.cos_pi]; ring
  simp only [E]
  rw [hsplit, hpi_term]
  nlinarith

/-- **Y3 — THE M2P.3 EXCLUSION**: a single-π-bond configuration at the
    EXACT barrier level `2κ` (κ > 0) with the other bonds in the open
    range cannot carry ANY winding: equality forces every other bond to
    zero, so the bond sum is exactly `π` - never `2πk`. (The cyclic-sum
    obstruction that makes the Delta_theta level-2κ stratum empty in
    every winding sector.) -/
theorem single_pi_bond_excluded {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (d : Fin N → ℝ) (i0 : Fin N) (hpi : d i0 = π)
    (hrange : ∀ i, i ≠ i0 → d i ∈ Set.Ioo (-π) π)
    (hE : E κ d = 2 * κ) (hsum : ∑ i, d i = 2 * π * k) : False := by
  have hπ := Real.pi_pos
  -- (1) split the E-sum at i0 (mirror E_ge_two_kappa_of_pi_bond)
  have hsplit : ∑ i, (1 - Real.cos (d i))
      = (1 - Real.cos (d i0)) + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ i0)).symm
  have hpi_term : 1 - Real.cos (d i0) = 2 := by
    rw [hpi, Real.cos_pi]; ring
  have hEeq : E κ d
      = κ * (2 + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i))) := by
    simp only [E]
    rw [hsplit, hpi_term]
  -- factor κ ≠ 0: rest = 0
  have hrest_zero : ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) = 0 := by
    rw [hEeq] at hE
    have hcancel : κ * (2 + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i))) = κ * 2 := by
      rw [hE]; ring
    have := mul_left_cancel₀ (ne_of_gt hκ) hcancel
    linarith
  -- each term ≥ 0, so each is 0 ⟹ cos (d i) = 1
  have hterm_nonneg : ∀ i ∈ Finset.univ.erase i0, 0 ≤ 1 - Real.cos (d i) :=
    fun i _ => by linarith [Real.cos_le_one (d i)]
  have hterm_zero : ∀ i ∈ Finset.univ.erase i0, 1 - Real.cos (d i) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg hterm_nonneg).mp hrest_zero
  -- (2) cos = 1 on (-π, π) forces d i = 0
  have hd_zero : ∀ i, i ≠ i0 → d i = 0 := by
    intro i hi
    have hcos : Real.cos (d i) = 1 := by
      have := hterm_zero i (Finset.mem_erase.mpr ⟨hi, Finset.mem_univ i⟩)
      linarith
    have hr := hrange i hi
    have hb1 : -(2 * π) < d i := by linarith [hr.1]
    have hb2 : d i < 2 * π := by linarith [hr.2]
    exact (Real.cos_eq_one_iff_of_lt_of_lt hb1 hb2).mp hcos
  -- (3) Σd = d i0 + Σ_erase = π + 0 = π
  have hsum_erase : ∑ i ∈ Finset.univ.erase i0, d i = 0 :=
    Finset.sum_eq_zero fun i hi => hd_zero i (Finset.mem_erase.mp hi).1
  have hsum_split : ∑ i, d i = d i0 + ∑ i ∈ Finset.univ.erase i0, d i :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ i0)).symm
  have hsum_pi : ∑ i, d i = π := by
    rw [hsum_split, hsum_erase, hpi]; ring
  rw [hsum_pi] at hsum
  -- π = 2πk : kill by cases on k
  rcases Nat.eq_zero_or_pos k with hk0 | hkpos
  · subst hk0
    simp only [Nat.cast_zero, mul_zero] at hsum
    exact hπ.ne' hsum
  · have hk1 : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hkpos
    have hpos : (0 : ℝ) < 2 * (k : ℝ) - 1 := by linarith
    nlinarith [mul_pos hπ hpos, hsum]
  -- BLUEPRINT: (1) split the E-sum at i0 (Finset.add_sum_erase, mirror
  --   E_ge_two_kappa_of_pi_bond just above); the i0 term is 2
  --   (cos_pi). From hE and κ > 0 (mul_left_cancel₀ / linarith after
  --   factoring), the erase-sum of (1 - cos (d i)) is 0; each term is
  --   >= 0 (cos_le_one), so each is 0 (Finset.sum_eq_zero_iff_of_nonneg)
  --   => cos (d i) = 1 for every i != i0.
  --   (2) cos = 1 on (-π, π) forces d i = 0: grep the mathlib lemma -
  --   `rg -n "cos_eq_one" .lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Trigonometric/Basic.lean | head`
  --   (Real.cos_eq_one_iff_of_lt_abs : |x| < 2*π -> (cos x = 1 <-> x = 0),
  --   or Real.cos_eq_one_iff with the integer-multiple form + the range
  --   pinning the integer to 0). |d i| < π < 2π from hrange (abs_lt).
  --   (3) then Σd = d i0 + Σ_{erase} d i = π + 0 = π (sum over erase of
  --   zeros: Finset.sum_eq_zero). With hsum: π = 2πk. Contradiction:
  --   k = 0 gives π = 0 (pi_ne_zero / pi_pos); k >= 1 gives
  --   2πk >= 2π > π. nlinarith [Real.pi_pos] with the cast (k:ℝ) >= 0/1.

/-- **Y4 — GENUINE trap criticality: second-order flatness of the ACTUAL
    coupled energy** (answering the lens's "Y1 is an identity dressed as
    criticality"): perturbing the doubly-constant trap along ANY zero-sum
    pair direction changes the FULL coupled energy E_eps by at most a
    quadratic in t - the first-order term vanishes ON THE ENERGY, not on
    named constants. Uses only the sealed Taylor engine. -/
theorem Gkj_trap_second_order_flat {N : ℕ} {κ lam ε : ℝ}
    (hκ : 0 ≤ κ) (hlam : 0 ≤ lam) (hε : 0 ≤ ε)
    (a b t : ℝ) (v w : Fin N → ℝ) (hv : ∑ i, v i = 0) (hw : ∑ i, w i = 0) :
    |E κ (fun i => a + t * v i) + E lam (fun i => b + t * w i)
        + ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
      - (E κ (fun _ : Fin N => a) + E lam (fun _ : Fin N => b)
        + ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b))|
      ≤ (κ * ∑ i, v i ^ 2 + lam * ∑ i, w i ^ 2 + ε * ∑ i, (v i - w i) ^ 2)
        * t ^ 2 / 2 := by
  -- Shared engine: for a zero-sum displacement `s` about a base `μ`, the
  -- second-order deviation of `Σ(1 - cos(μ + t·s i))` from its constant
  -- value is at most `(Σ s²)·t²/2` (mirror of `saddle_band`).
  have taylor_group : ∀ (μ : ℝ) (s : Fin N → ℝ), (∑ i, s i = 0) →
      |(∑ i, (1 - Real.cos (μ + t * s i))) - (∑ _i : Fin N, (1 - Real.cos μ))|
        ≤ (∑ i, s i ^ 2) * t ^ 2 / 2 := by
    intro μ s hs
    have hlin : ∑ i, Real.sin μ * ((μ + t * s i) - μ) = 0 := by
      have h : ∑ i, Real.sin μ * ((μ + t * s i) - μ)
          = Real.sin μ * t * ∑ i, s i := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl fun i _ => by ring
      rw [h, hs, mul_zero]
    have hdiff : (∑ i, (1 - Real.cos (μ + t * s i))) - (∑ _i : Fin N, (1 - Real.cos μ))
        = ∑ i, ((1 - Real.cos (μ + t * s i)) - (1 - Real.cos μ)
            - Real.sin μ * ((μ + t * s i) - μ)) := by
      have h1 : ∑ i, ((1 - Real.cos (μ + t * s i)) - (1 - Real.cos μ)
            - Real.sin μ * ((μ + t * s i) - μ))
          = ((∑ i, (1 - Real.cos (μ + t * s i))) - ∑ _i : Fin N, (1 - Real.cos μ))
            - ∑ i, Real.sin μ * ((μ + t * s i) - μ) := by
        simp only [Finset.sum_sub_distrib]
      rw [h1, hlin, sub_zero]
    rw [hdiff]
    calc |∑ i, ((1 - Real.cos (μ + t * s i)) - (1 - Real.cos μ)
            - Real.sin μ * ((μ + t * s i) - μ))|
        ≤ ∑ i, |(1 - Real.cos (μ + t * s i)) - (1 - Real.cos μ)
            - Real.sin μ * ((μ + t * s i) - μ)| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ i, ((μ + t * s i) - μ) ^ 2 / 2 :=
          Finset.sum_le_sum fun i _ =>
            one_sub_cos_taylor_bound (μ + t * s i) μ
      _ = (∑ i, s i ^ 2) * t ^ 2 / 2 := by
          have hcongr : ∑ i, ((μ + t * s i) - μ) ^ 2 / 2
              = ∑ i, t ^ 2 / 2 * s i ^ 2 :=
            Finset.sum_congr rfl fun i _ => by ring
          rw [hcongr, ← Finset.mul_sum]
          ring
  -- Group θ (E κ, base a, displacement v).
  have hgθ : |E κ (fun i => a + t * v i) - E κ (fun _ : Fin N => a)|
      ≤ κ * ((∑ i, v i ^ 2) * t ^ 2 / 2) := by
    have hE : E κ (fun i => a + t * v i) - E κ (fun _ : Fin N => a)
        = κ * ((∑ i, (1 - Real.cos (a + t * v i))) - (∑ _i : Fin N, (1 - Real.cos a))) := by
      simp only [E]; ring
    rw [hE, abs_mul, abs_of_nonneg hκ]
    exact mul_le_mul_of_nonneg_left (taylor_group a v hv) hκ
  -- Group φ (E lam, base b, displacement w).
  have hgφ : |E lam (fun i => b + t * w i) - E lam (fun _ : Fin N => b)|
      ≤ lam * ((∑ i, w i ^ 2) * t ^ 2 / 2) := by
    have hE : E lam (fun i => b + t * w i) - E lam (fun _ : Fin N => b)
        = lam * ((∑ i, (1 - Real.cos (b + t * w i))) - (∑ _i : Fin N, (1 - Real.cos b))) := by
      simp only [E]; ring
    rw [hE, abs_mul, abs_of_nonneg hlam]
    exact mul_le_mul_of_nonneg_left (taylor_group b w hw) hlam
  -- Group W* (coupling, base a-b, displacement v-w with zero sum).
  have hsvw : ∑ i, (v i - w i) = 0 := by
    rw [Finset.sum_sub_distrib, hv, hw, sub_zero]
  have hgW : |ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
        - ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b)|
      ≤ ε * ((∑ i, (v i - w i) ^ 2) * t ^ 2 / 2) := by
    have hW : ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
          - ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b)
        = ε * ((∑ i, (1 - Real.cos ((a - b) + t * (v i - w i))))
            - (∑ _i : Fin N, (1 - Real.cos (a - b)))) := by
      simp only [Wstar]
      have harg : ∑ i, (1 - Real.cos ((a + t * v i) - (b + t * w i)))
          = ∑ i, (1 - Real.cos ((a - b) + t * (v i - w i))) :=
        Finset.sum_congr rfl fun i _ => by
          have he : (a + t * v i) - (b + t * w i) = (a - b) + t * (v i - w i) := by
            ring
          rw [he]
      rw [harg]; ring
    rw [hW, abs_mul, abs_of_nonneg hε]
    exact mul_le_mul_of_nonneg_left
      (taylor_group (a - b) (fun i => v i - w i) hsvw) hε
  -- Assembly: rewrite the total deviation as θ + φ + W*, triangle, sum bounds.
  have hrw : E κ (fun i => a + t * v i) + E lam (fun i => b + t * w i)
        + ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
      - (E κ (fun _ : Fin N => a) + E lam (fun _ : Fin N => b)
        + ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b))
      = (E κ (fun i => a + t * v i) - E κ (fun _ : Fin N => a))
        + (E lam (fun i => b + t * w i) - E lam (fun _ : Fin N => b))
        + (ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
          - ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b)) := by ring
  rw [hrw]
  set T1 := E κ (fun i => a + t * v i) - E κ (fun _ : Fin N => a)
  set T2 := E lam (fun i => b + t * w i) - E lam (fun _ : Fin N => b)
  set T3 := ε * Wstar (fun i => a + t * v i) (fun i => b + t * w i)
      - ε * Wstar (fun _ : Fin N => a) (fun _ : Fin N => b)
  have htri : |T1 + T2 + T3| ≤ |T1| + |T2| + |T3| := by
    calc |T1 + T2 + T3|
        ≤ |T1 + T2| + |T3| := abs_add_le _ _
      _ ≤ |T1| + |T2| + |T3| := by linarith [abs_add_le T1 T2]
  calc |T1 + T2 + T3|
      ≤ |T1| + |T2| + |T3| := htri
    _ ≤ κ * ((∑ i, v i ^ 2) * t ^ 2 / 2)
        + lam * ((∑ i, w i ^ 2) * t ^ 2 / 2)
        + ε * ((∑ i, (v i - w i) ^ 2) * t ^ 2 / 2) := by
          linarith [hgθ, hgφ, hgW]
    _ = (κ * ∑ i, v i ^ 2 + lam * ∑ i, w i ^ 2 + ε * ∑ i, (v i - w i) ^ 2)
        * t ^ 2 / 2 := by ring
  -- BLUEPRINT: three groups, each the saddle_band pattern (READ
  --   saddle_band, campaign #9 - the add-subtract-tangent + linear-
  --   cancellation + per-index one_sub_cos_taylor_bound structure).
  --   Group 1: E κ (a + t v) - E κ (const a) = κ Σ[(1-cos(a+t v_i)) -
  --   (1-cos a)]; add-subtract sin a * (t v_i): the linear sum is
  --   sin a * t * Σv = 0 (hv); the remainder per index is bounded by
  --   one_sub_cos_taylor_bound (x := a + t*v_i, μ := a):
  --   |rem_i| <= (t v_i)^2/2 = t^2 v_i^2 / 2. So |group1| <=
  --   κ t^2 (Σ v_i^2)/2 (abs_sum_le_sum_abs + sum_le_sum + pull κ,t²).
  --   Group 2: same with b, w, hw. Group 3 (Wstar): the differences are
  --   (a + t v_i) - (b + t w_i) = (a-b) + t(v_i - w_i); base μ := a-b,
  --   direction (v-w) with Σ(v-w) = 0 (hv, hw, sum_sub_distrib);
  --   |group3| <= ε t^2 Σ(v_i-w_i)^2 / 2. Assemble: abs_add-style
  --   triangle across the three groups (|x+y+z| <= |x|+|y|+|z| via
  --   abs_add twice), then ring_nf/linarith to the packaged RHS.
  --   All Finset plumbing exists in the file - mirror saddle_band and
  --   ground_coercive_band. Mind: Wstar unfolds to Σ(1 - cos(d i - e i)).

/-! ## Campaign #17: the trap separation against the BAND TOP S_1 + c_H -
    closing the lens's campaign-15 caveat ("vs the saddle, not the band
    top"). New seal en route: S_1 < 4 kappa (the c_H ledger's second
    entry - numerics-checked in B2a, never sealed until now). -/

/-- **Z1 — the saddle sits below 4κ** (the c_H ledger's second entry,
    numerics-checked to N = 2000 in B2a, now sealed): for `N >= 5`,
    `S_1 < 4κ`, via `1 - cos x <= x^2/2` giving
    `(N-2)(1 - cos a_1) <= π²/(2(N-2)) <= π²/6 < 2`. -/
theorem saddle_lt_four_kappa {N : ℕ} {κ : ℝ} (hκ : 0 < κ) (hN : 5 ≤ N) :
    saddleLevel N κ 1 < 4 * κ := by
  have hNR : (5 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN2 : (3 : ℝ) ≤ (N : ℝ) - 2 := by linarith
  have hN2pos : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hπ := Real.pi_pos
  have hπu : π < 3.15 := by linarith [Real.pi_lt_d6]
  have ha : saddleParam N 1 = π / ((N : ℝ) - 2) := by
    unfold saddleParam
    push_cast
    ring
  have hcosb : 1 - (saddleParam N 1) ^ 2 / 2 ≤ Real.cos (saddleParam N 1) :=
    Real.one_sub_sq_div_two_le_cos
  have hsq : (saddleParam N 1) ^ 2 = π ^ 2 / ((N : ℝ) - 2) ^ 2 := by
    rw [ha]
    field_simp
  have hkey : ((N : ℝ) - 2) * (1 - Real.cos (saddleParam N 1)) < 2 := by
    have h1 : ((N : ℝ) - 2) * (1 - Real.cos (saddleParam N 1))
        ≤ ((N : ℝ) - 2) * ((saddleParam N 1) ^ 2 / 2) :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have h2 : ((N : ℝ) - 2) * ((saddleParam N 1) ^ 2 / 2)
        = π ^ 2 / (2 * ((N : ℝ) - 2)) := by
      rw [hsq]
      field_simp
    have h3 : π ^ 2 / (2 * ((N : ℝ) - 2)) ≤ π ^ 2 / 6 := by
      apply div_le_div_of_nonneg_left (by positivity) (by linarith) (by linarith)
    nlinarith [hπu, hπ]
  unfold saddleLevel
  nlinarith [hkey, hκ]

/-- The band-height constant `c_H = (1/4) min(m_1 + 2κ - S_1, 4κ - S_1)`
    (the v18 ledger's band height, flagship k = 1). -/
noncomputable def cH (N : ℕ) (κ : ℝ) : ℝ :=
  (1 / 4) * min (groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1)
    (4 * κ - saddleLevel N κ 1)

/-- **Z2 — c_H is positive** (both ledger entries positive: the sealed
    PROD-SHELL gives the first, Z1 the second). HONEST SCOPE (lens):
    `c_H` is an N-DEPENDENT margin - it vanishes as `N → ∞` (the first
    ledger entry `m_1 + 2κ - S_1 → 0⁺`) and the binding entry flips
    with `N`; it is NOT a uniform constant. -/
theorem cH_pos {N : ℕ} {κ : ℝ} (hκ : 0 < κ) (hN : 5 ≤ N) :
    0 < cH N κ := by
  have h1 := prod_shell_k1 hκ hN
  have h2 := saddle_lt_four_kappa hκ hN
  unfold cH
  have hmin : 0 < min (groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1)
      (4 * κ - saddleLevel N κ 1) :=
    lt_min (by linarith) (by linarith)
  linarith

/-- **Z3 — THE TRAP CLEARS THE BAND TOP (the v20-consumed separation;
    closes the lens's campaign-15 caveat)**: under the pin
    `2κ ≤ m_j(λ)`, the FULL coupled trap level exceeds `S_1 + c_H` for
    every `ε ≥ 0` - because `c_H ≤ (1/4)(m_1 + 2κ - S_1) < m_1 + 2κ - S_1`
    and the coupled level is at least `m_1 + m_j ≥ m_1 + 2κ`.
    HONEST SCOPE (lens-adopted): a LEVEL inequality at the specific
    doubly-constant trap configuration - pointwise, NOT a sector
    infimum/spectral band statement ("band top" = the v18 ledger's
    `S_1 + c_H` naming convention; the identification lives in prose);
    the coupling term is discharged via `ε ≥ 0, W* ≥ 0` (energy-lowering
    couplings `ε < 0` not covered); the pin is a hypothesis (it forces
    `λ > 0` implicitly and excludes trivial `j`); κ-side is k = 1. -/
theorem Gkj_above_band_top {N j : ℕ} {κ lam ε : ℝ} (hκ : 0 < κ)
    (hN : 5 ≤ N) (hε : 0 ≤ ε) (hpin : 2 * κ ≤ groundLevel N lam j) :
    saddleLevel N κ 1 + cH N κ
      < E κ (fun _ : Fin N => 2 * π * 1 / N)
        + E lam (fun _ : Fin N => 2 * π * j / N)
        + ε * Wstar (fun _ : Fin N => 2 * π * 1 / N)
            (fun _ : Fin N => 2 * π * j / N) := by
  have hlev := Gkj_level N 1 j κ lam ε
  simp only [Nat.cast_one] at hlev
  rw [hlev]
  have hshell := prod_shell_k1 hκ hN
  have hcH : cH N κ ≤ (1 / 4) * (groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1) := by
    unfold cH
    have := min_le_left (groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1)
      (4 * κ - saddleLevel N κ 1)
    nlinarith
  have hWnn : 0 ≤ ε * ((N : ℝ) * (1 - Real.cos (2 * π * 1 / N - 2 * π * j / N))) := by
    apply mul_nonneg hε
    apply mul_nonneg (by positivity)
    linarith [Real.cos_le_one (2 * π * 1 / N - 2 * π * j / N)]
  linarith


/-- **Z4 — THE SHARP MARGIN (lens-driven strengthening)**: the trap
    does not merely clear the band top - it clears it by at least FOUR
    band heights: `S_1 + 4 c_H ≤` the coupled trap level, since
    `4 c_H ≤ m_1 + 2κ - S_1` exactly. Same honest scope as Z3. -/
theorem Gkj_above_band_top_sharp {N j : ℕ} {κ lam ε : ℝ} (hκ : 0 < κ)
    (hN : 5 ≤ N) (hε : 0 ≤ ε) (hpin : 2 * κ ≤ groundLevel N lam j) :
    saddleLevel N κ 1 + 4 * cH N κ
      ≤ E κ (fun _ : Fin N => 2 * π * 1 / N)
        + E lam (fun _ : Fin N => 2 * π * j / N)
        + ε * Wstar (fun _ : Fin N => 2 * π * 1 / N)
            (fun _ : Fin N => 2 * π * j / N) := by
  have hlev := Gkj_level N 1 j κ lam ε
  simp only [Nat.cast_one] at hlev
  rw [hlev]
  have hcH : 4 * cH N κ ≤ groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1 := by
    unfold cH
    have := min_le_left (groundLevel N κ 1 + 2 * κ - saddleLevel N κ 1)
      (4 * κ - saddleLevel N κ 1)
    linarith
  have hWnn : 0 ≤ ε * ((N : ℝ) * (1 - Real.cos (2 * π * 1 / N - 2 * π * j / N))) := by
    apply mul_nonneg hε
    apply mul_nonneg (by positivity)
    linarith [Real.cos_le_one (2 * π * 1 / N - 2 * π * j / N)]
  linarith

/-! ## Campaign #18: the multi-pi PARITY case + the Delta crossing family -
    the residual campaign #16 left named. TWO pi-bonds CAN carry bond-sum
    2*pi (at level exactly 4*kappa); the one-pi-bond family with the rest
    equidistributed gives winding-carrying configurations ON Delta at level
    kappa*(2 + (N-1)(1 - cos(pi/(N-1)))) - which sits BELOW the saddle
    S_1 (the phi-engine strict monotonicity) and approaches the 2*kappa
    floor; and the floor is STRICT on winding slices (V4). -/

/-- **V1 — the parity case: TWO pi-bonds carry bond-sum `2π`** (the
    campaign #16 residual, existence half): the config with bonds
    `(π, π, 0, ..., 0)` has bond-sum exactly `2π`. -/
theorem two_pi_bonds_sum {N : ℕ} [NeZero N] (hN : 3 ≤ N) :
    ∑ i : Fin N, (if i = (0 : Fin N) then π else if i = (1 : Fin N) then π else 0)
      = 2 * π := by
  obtain ⟨M, rfl⟩ : ∃ M, N = M + 3 := ⟨N - 3, by omega⟩
  have h10 : (1 : Fin (M + 3)) ≠ (0 : Fin (M + 3)) := by
    simp [Fin.ext_iff]
  have h1mem : (1 : Fin (M + 3)) ∈ Finset.univ.erase (0 : Fin (M + 3)) :=
    Finset.mem_erase.mpr ⟨h10, Finset.mem_univ _⟩
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin (M + 3))),
      ← Finset.add_sum_erase _ _ h1mem]
  have hrest : ∑ i ∈ (Finset.univ.erase (0 : Fin (M + 3))).erase (1 : Fin (M + 3)),
      (if i = (0 : Fin (M + 3)) then π else if i = (1 : Fin (M + 3)) then π else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    obtain ⟨hi1, hi0mem⟩ := Finset.mem_erase.mp hi
    obtain ⟨hi0, _⟩ := Finset.mem_erase.mp hi0mem
    simp [hi0, hi1]
  rw [hrest]
  simp only [if_pos rfl, if_neg h10, ite_true]
  ring

/-- **V1' — the parity case, energy**: the two-pi-bond config costs
    exactly `4κ` (each pi-bond the full `2κ`). With V1: bond-sum `2π`
    IS carried on `Δ` at level `4κ` - the single-pi exclusion (M2P.3)
    does not extend to the multi-pi case, as the corpus's parity remark
    states. -/
theorem two_pi_bonds_energy {N : ℕ} [NeZero N] (hN : 3 ≤ N) (κ : ℝ) :
    E κ (fun i : Fin N =>
        if i = (0 : Fin N) then π else if i = (1 : Fin N) then π else 0)
      = 4 * κ := by
  obtain ⟨M, rfl⟩ : ∃ M, N = M + 3 := ⟨N - 3, by omega⟩
  have h10 : (1 : Fin (M + 3)) ≠ (0 : Fin (M + 3)) := by
    simp [Fin.ext_iff]
  have h1mem : (1 : Fin (M + 3)) ∈ Finset.univ.erase (0 : Fin (M + 3)) :=
    Finset.mem_erase.mpr ⟨h10, Finset.mem_univ _⟩
  simp only [E]
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin (M + 3))),
      ← Finset.add_sum_erase _ _ h1mem]
  have hrest : ∑ i ∈ (Finset.univ.erase (0 : Fin (M + 3))).erase (1 : Fin (M + 3)),
      (1 - Real.cos (if i = (0 : Fin (M + 3)) then π else if i = (1 : Fin (M + 3)) then π else 0))
      = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    obtain ⟨hi1, hi0mem⟩ := Finset.mem_erase.mp hi
    obtain ⟨hi0, _⟩ := Finset.mem_erase.mp hi0mem
    simp [hi0, hi1]
  rw [hrest]
  simp only [if_pos rfl, if_neg h10, ite_true, Real.cos_pi]
  ring

/-- **V2 — the Δ crossing family, bond-sum**: one bond at `π`, the other
    `N - 1` bonds equidistributed at `π/(N-1)`: bond-sum exactly `2π`. -/
theorem delta_family_sum {N : ℕ} [NeZero N] (hN : 3 ≤ N) :
    ∑ i : Fin N, (if i = (0 : Fin N) then π else π / ((N : ℝ) - 1)) = 2 * π := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN1 : ((N : ℝ) - 1) ≠ 0 := by linarith
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin N))]
  have hrest : ∑ i ∈ Finset.univ.erase (0 : Fin N),
      (if i = (0 : Fin N) then π else π / ((N : ℝ) - 1))
      = ((N : ℝ) - 1) * (π / ((N : ℝ) - 1)) := by
    rw [Finset.sum_congr rfl
      (fun i hi => if_neg (Finset.mem_erase.mp hi).1)]
    rw [Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ _),
        Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    congr 1
    push_cast [Nat.cast_sub (by omega : 1 ≤ N)]
    ring
  rw [hrest]
  simp only [if_pos rfl, ite_true]
  field_simp
  norm_num

/-- **V2' — the Δ crossing family, level**: the family's energy is
    exactly `κ (2 + (N-1)(1 - cos(π/(N-1))))`. -/
theorem delta_family_level {N : ℕ} [NeZero N] (hN : 3 ≤ N) (κ : ℝ) :
    E κ (fun i : Fin N => if i = (0 : Fin N) then π else π / ((N : ℝ) - 1))
      = κ * (2 + ((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1)))) := by
  simp only [E]
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin N))]
  have hrest : ∑ i ∈ Finset.univ.erase (0 : Fin N),
      (1 - Real.cos (if i = (0 : Fin N) then π else π / ((N : ℝ) - 1)))
      = ((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1))) := by
    rw [Finset.sum_congr rfl (fun i hi => by
      rw [if_neg (Finset.mem_erase.mp hi).1])]
    rw [Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ _),
        Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    congr 1
    push_cast [Nat.cast_sub (by omega : 1 ≤ N)]
    ring
  rw [hrest]
  simp only [if_pos rfl, ite_true, Real.cos_pi]
  ring

/-- **V3 — the family approaches the floor**: the Δ crossing family's
    level is at most `2κ + κπ²/(2(N-1))` - winding-carrying
    configurations ON `Δ` exist arbitrarily close (in `N`) to the
    `2κ` floor. -/
theorem delta_family_le {N : ℕ} {κ : ℝ} [NeZero N] (hκ : 0 < κ) (hN : 3 ≤ N) :
    E κ (fun i : Fin N => if i = (0 : Fin N) then π else π / ((N : ℝ) - 1))
      ≤ 2 * κ + κ * π ^ 2 / (2 * ((N : ℝ) - 1)) := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN1 : (0 : ℝ) < (N : ℝ) - 1 := by linarith
  rw [delta_family_level hN κ]
  have hcos : 1 - Real.cos (π / ((N : ℝ) - 1)) ≤ (π / ((N : ℝ) - 1)) ^ 2 / 2 := by
    linarith [Real.one_sub_sq_div_two_le_cos (x := π / ((N : ℝ) - 1))]
  have hstep : ((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1)))
      ≤ π ^ 2 / (2 * ((N : ℝ) - 1)) := by
    have h1 : ((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1)))
        ≤ ((N : ℝ) - 1) * ((π / ((N : ℝ) - 1)) ^ 2 / 2) :=
      mul_le_mul_of_nonneg_left hcos (by linarith)
    have h2 : ((N : ℝ) - 1) * ((π / ((N : ℝ) - 1)) ^ 2 / 2)
        = π ^ 2 / (2 * ((N : ℝ) - 1)) := by
      field_simp
    linarith [h1, h2.le, h2.ge]
  have hexp : κ * (2 + ((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1))))
      = 2 * κ + κ * (((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1)))) := by
    ring
  have hmul : κ * (((N : ℝ) - 1) * (1 - Real.cos (π / ((N : ℝ) - 1))))
      ≤ κ * (π ^ 2 / (2 * ((N : ℝ) - 1))) :=
    mul_le_mul_of_nonneg_left hstep hκ.le
  have halg : κ * (π ^ 2 / (2 * ((N : ℝ) - 1))) = κ * π ^ 2 / (2 * ((N : ℝ) - 1)) := by
    ring
  linarith

/-- **V4 — THE FAMILY SITS BELOW THE SADDLE LEVEL**: for `N ≥ 4` (the
    lens tightened `N ≥ 5`; ties exactly at `N = 3`) the Δ crossing
    family's level is STRICTLY below `S_1` - the antipodal set contains
    bond-sum-`2π` configurations cheaper than the off-`Δ` saddle level
    (the `φ`-engine strict monotonicity of `(1 - cos x)/x`, the
    PROD-SHELL derivative block). NOTE (lens-adopted): within THIS
    statement `saddleLevel` is a defined constant; its criticality/
    saddle structure is the SEALED LS.4/LS.6 layer elsewhere in this
    file, and the min-max reconciliation (the passage level remains
    `S_1` despite these cheaper `Δ` points) is PROSE - a named target. -/
theorem delta_family_below_saddle {N : ℕ} {κ : ℝ} [NeZero N] (hκ : 0 < κ)
    (hN : 4 ≤ N) :
    E κ (fun i : Fin N => if i = (0 : Fin N) then π else π / ((N : ℝ) - 1))
      < saddleLevel N κ 1 := by
  have hπ := Real.pi_pos
  have hNR : (4 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN1 : (0 : ℝ) < (N : ℝ) - 1 := by linarith
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  set s := π / ((N : ℝ) - 1) with hs_def
  set u := π / ((N : ℝ) - 2) with hu_def
  have hs_pos : 0 < s := div_pos hπ hN1
  have hu_pos : 0 < u := div_pos hπ hN2
  have hsu : s < u := by
    rw [hs_def, hu_def, div_lt_div_iff₀ hN1 hN2]
    nlinarith
  have hu2 : u < 2 := by
    rw [hu_def, div_lt_iff₀ hN2]
    nlinarith [Real.pi_lt_d6]
  have hse : s * ((N : ℝ) - 1) = π := by
    rw [hs_def]
    field_simp
  have hue : u * ((N : ℝ) - 2) = π := by
    rw [hu_def]
    field_simp
  have hderiv : ∀ x : ℝ, x ≠ 0 → HasDerivAt (fun y : ℝ => (1 - Real.cos y) / y)
      ((x * Real.sin x - (1 - Real.cos x)) / x ^ 2) x := by
    intro x hx
    have h1 : HasDerivAt (fun y : ℝ => 1 - Real.cos y) (-(-Real.sin x)) x :=
      (Real.hasDerivAt_cos x).const_sub 1
    have h2 : HasDerivAt (fun y : ℝ => y) 1 x := hasDerivAt_id x
    have hval : (x * Real.sin x - (1 - Real.cos x)) / x ^ 2
        = (-(-Real.sin x) * x - (1 - Real.cos x) * 1) / x ^ 2 := by ring
    rw [hval]
    exact h1.fun_div h2 hx
  have hmono : StrictMonoOn (fun x : ℝ => (1 - Real.cos x) / x) (Set.Icc s u) := by
    apply strictMonoOn_of_deriv_pos (convex_Icc _ _)
    · intro x hx
      exact ((hderiv x (ne_of_gt (lt_of_lt_of_le hs_pos hx.1))).continuousAt).continuousWithinAt
    · intro x hx
      rw [interior_Icc] at hx
      obtain ⟨hx1, hx2⟩ := hx
      have hx0 : 0 < x := lt_trans hs_pos hx1
      rw [(hderiv x (ne_of_gt hx0)).deriv]
      apply div_pos
      · have h := s_sin_gt_one_sub_cos hx0 (le_of_lt (lt_trans hx2 hu2))
        linarith
      · exact pow_pos hx0 2
  have hsu_lt : (1 - Real.cos s) / s < (1 - Real.cos u) / u :=
    hmono (Set.left_mem_Icc.mpr hsu.le) (Set.right_mem_Icc.mpr hsu.le) hsu
  have hcross : (1 - Real.cos s) * u < (1 - Real.cos u) * s :=
    (div_lt_div_iff₀ hs_pos hu_pos).mp hsu_lt
  have key : ((N : ℝ) - 1) * (1 - Real.cos s) < ((N : ℝ) - 2) * (1 - Real.cos u) := by
    have hsu_prod : 0 < s * u := mul_pos hs_pos hu_pos
    have h1 : ((N : ℝ) - 1) * (1 - Real.cos s) * (s * u) = π * ((1 - Real.cos s) * u) := by
      linear_combination u * (1 - Real.cos s) * hse
    have h2 : ((N : ℝ) - 2) * (1 - Real.cos u) * (s * u) = π * ((1 - Real.cos u) * s) := by
      linear_combination s * (1 - Real.cos u) * hue
    have h3 : π * ((1 - Real.cos s) * u) < π * ((1 - Real.cos u) * s) :=
      mul_lt_mul_of_pos_left hcross hπ
    have hscaled : ((N : ℝ) - 1) * (1 - Real.cos s) * (s * u)
        < ((N : ℝ) - 2) * (1 - Real.cos u) * (s * u) := by
      rw [h1, h2]
      linarith
    exact lt_of_mul_lt_mul_right hscaled hsu_prod.le
  have hsp : saddleParam N 1 = u := by
    unfold saddleParam
    rw [hu_def]
    push_cast
    ring
  have hslvl : saddleLevel N κ 1 = κ * (2 + ((N : ℝ) - 2) * (1 - Real.cos u)) := by
    unfold saddleLevel
    rw [hsp]
  rw [delta_family_level (by omega : 3 ≤ N) κ, hslvl]
  have : (2 + ((N : ℝ) - 1) * (1 - Real.cos s)) < (2 + ((N : ℝ) - 2) * (1 - Real.cos u)) := by
    linarith
  exact mul_lt_mul_of_pos_left this hκ

/-- **V5 — THE π-DEFECT FLOOR IS STRICT ON INTEGER-SUM SLICES** (the
    strict form of M2P.3, STRENGTHENED by the lens: NO range hypothesis
    - the whole content is integer-sum parity): a config with a pi-bond
    and bond-sum `2πk` (ANY `k : ℕ`) has energy STRICTLY above `2κ`.
    HONEST SCOPE: `2κ` prices the `Δ`-touch (the π-DEFECT), not the
    winding - winding itself is cheap (`m_k → 0`); and the gap is NOT
    uniform (V3: the family approaches `2κ`). -/
theorem pi_bond_winding_strict {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (d : Fin N → ℝ) (i0 : Fin N) (hpi : d i0 = π)
    (hsum : ∑ i, d i = 2 * π * k) :
    2 * κ < E κ d := by
  have hπ := Real.pi_pos
  have hsplit : ∑ i, (1 - Real.cos (d i))
      = (1 - Real.cos (d i0)) + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ i0)).symm
  have hpi_term : 1 - Real.cos (d i0) = 2 := by
    rw [hpi, Real.cos_pi]; ring
  have hEeq : E κ d
      = κ * (2 + ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i))) := by
    simp only [E]
    rw [hsplit, hpi_term]
  have hterm_nonneg : ∀ i ∈ Finset.univ.erase i0, 0 ≤ 1 - Real.cos (d i) :=
    fun i _ => by linarith [Real.cos_le_one (d i)]
  have hrest_nonneg : 0 ≤ ∑ i ∈ Finset.univ.erase i0, (1 - Real.cos (d i)) :=
    Finset.sum_nonneg hterm_nonneg
  rcases eq_or_lt_of_le hrest_nonneg with hzero | hpos
  · exfalso
    have hterm_zero : ∀ i ∈ Finset.univ.erase i0, 1 - Real.cos (d i) = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg hterm_nonneg).mp hzero.symm
    have hd_int : ∀ i ∈ Finset.univ.erase i0, ∃ n : ℤ, (n : ℝ) * (2 * π) = d i := by
      intro i hi
      have hcos : Real.cos (d i) = 1 := by
        have := hterm_zero i hi
        linarith
      exact (Real.cos_eq_one_iff (d i)).mp hcos
    have hg : ∀ i ∈ Finset.univ.erase i0,
        d i = ((fun j => if h : j ∈ Finset.univ.erase i0
          then Classical.choose (hd_int j h) else 0) i : ℤ) * (2 * π) := by
      intro i hi
      simp only [dif_pos hi]
      exact (Classical.choose_spec (hd_int i hi)).symm
    have hsum_int : ∑ i ∈ Finset.univ.erase i0, d i
        = ((∑ i ∈ Finset.univ.erase i0,
            (fun j => if h : j ∈ Finset.univ.erase i0
              then Classical.choose (hd_int j h) else 0) i : ℤ) : ℝ) * (2 * π) := by
      rw [Finset.sum_congr rfl hg]
      push_cast
      rw [Finset.sum_mul]
    set n : ℤ := ∑ i ∈ Finset.univ.erase i0,
      (fun j => if h : j ∈ Finset.univ.erase i0
        then Classical.choose (hd_int j h) else 0) i with hn_def
    have hsum_split : ∑ i, d i = d i0 + ∑ i ∈ Finset.univ.erase i0, d i :=
      (Finset.add_sum_erase _ _ (Finset.mem_univ i0)).symm
    rw [hsum_split, hsum_int, hpi] at hsum
    have hpar : π * (1 + 2 * (n : ℝ)) = π * (2 * (k : ℝ)) := by
      linarith [hsum]
    have hpar2 : (1 : ℝ) + 2 * (n : ℝ) = 2 * (k : ℝ) :=
      mul_left_cancel₀ (ne_of_gt hπ) hpar
    have hparz : (1 : ℤ) + 2 * n = 2 * (k : ℤ) := by
      exact_mod_cast hpar2
    omega
  · rw [hEeq]
    nlinarith [hpos, hκ]

/-! ## Campaign #19: the WINDING-ZERO classification - the w = 0 mirror
    of LS.6, sealing the classification gap the campaign-18 min-max
    reconciliation names: off Delta, the zero-winding sector has NO
    saddle - its only slice-critical configuration is the ground e_0
    (level 0). -/

/-- **U1 — winding-zero classification (equal-sines form)**: an off-`Δ`
    bond vector with all sines equal and bond-sum `0` is the ZERO
    config - the sign of the common sine forces the sign of EVERY bond,
    and the zero sum then forces the sine to vanish; off `Δ` a
    vanishing sine means a zero bond. In particular NO w = 0 saddle
    exists off `Δ` (contrast LS.6's w = 1 pair G_1 / SP_1). -/
theorem winding_zero_classification {N : ℕ} (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsin : ∀ i j, Real.sin (d i) = Real.sin (d j))
    (hsum : ∑ i, d i = 0) :
    ∀ i, d i = 0 := by
  have hπ := Real.pi_pos
  intro i
  rcases lt_trichotomy (Real.sin (d i)) 0 with hneg | hzero | hpos
  · exfalso
    have hall : ∀ j, d j < 0 := by
      intro j
      by_contra h
      push_neg at h
      have hnn : 0 ≤ Real.sin (d j) :=
        Real.sin_nonneg_of_nonneg_of_le_pi h (le_of_lt (hrange j).2)
      rw [hsin j i] at hnn
      linarith
    have hlt : ∑ j, d j < 0 :=
      Finset.sum_neg (fun j _ => hall j) ⟨i, Finset.mem_univ i⟩
    linarith
  · exact (Real.sin_eq_zero_iff_of_lt_of_lt (hrange i).1 (hrange i).2).mp hzero
  · exfalso
    have hall : ∀ j, 0 < d j := by
      intro j
      by_contra h
      push_neg at h
      have hnp : Real.sin (d j) ≤ 0 := by
        have h1 : 0 ≤ Real.sin (-(d j)) :=
          Real.sin_nonneg_of_nonneg_of_le_pi (by linarith)
            (by linarith [(hrange j).1])
        rw [Real.sin_neg] at h1
        linarith
      rw [hsin j i] at hnp
      linarith
    have hlt : 0 < ∑ j, d j :=
      Finset.sum_pos (fun j _ => hall j) ⟨i, Finset.mem_univ i⟩
    linarith

/-- **U2 — winding-zero criticality (dE form)**: the exact mirror of
    LS.6's `winding_one_classification_critical`: a slice-critical
    (`dE = 0` on zero-sum directions) off-`Δ` config with bond-sum `0`
    is the ground `e_0`. -/
theorem winding_zero_classification_critical {N : ℕ} (hN : 2 ≤ N)
    {κ : ℝ} (hκ : κ ≠ 0) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 0)
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → dE κ d v = 0) :
    ∀ i, d i = 0 := by
  refine winding_zero_classification d hrange ?_ hsum
  apply (critical_slice_iff hN d).mp
  intro v hv
  have h := hcrit v hv
  have hdE : dE κ d v = κ * ∑ i, Real.sin (d i) * v i := by
    simp [dE, ContinuousLinearMap.proj_apply, Finset.mul_sum, mul_assoc]
  rw [hdE] at h
  exact (mul_eq_zero.mp h).resolve_left hκ

/-- **U3 — the zero-winding critical LEVEL is zero**: the only off-`Δ`
    w = 0 slice-critical energy value is `0` - the w = 0 sector
    contributes NO critical value in `[2κ, S_1)` (the campaign-18
    min-max reconciliation's w = 0 input, now sealed; the w = 1 input
    is LS.6, the on-`Δ` input is the multi-π parity floor).
    HONEST SCOPE (lens): "level" = the VALUE of E at the unique
    constrained critical point - NOT a minimality claim (κ's sign is
    unused here; for κ < 0 the value 0 is a maximum). -/
theorem winding_zero_critical_level {N : ℕ} (hN : 2 ≤ N)
    {κ : ℝ} (hκ : κ ≠ 0) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 0)
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → dE κ d v = 0) :
    E κ d = 0 := by
  have hz := winding_zero_classification_critical hN hκ d hrange hsum hcrit
  simp only [E]
  have hterm : ∀ i ∈ Finset.univ, 1 - Real.cos (d i) = 0 := by
    intro i _
    rw [hz i, Real.cos_zero]
    ring
  rw [Finset.sum_congr rfl hterm]
  simp

/-! ## Campaign #20: the k < 0 TRANSPORT - the reflection functor
    mechanized. E is EVEN in the bond field (cos is even), so the
    sealed winding-one classification and the sealed level evaluations
    transport verbatim to the negative sector by negation. Closes the
    "k < 0 transport" residual from the roadmap's not-booked list
    (flagship w = -1; levels at general k). -/

/-- **W1 — E is even in the bond field** (the reflection functor's
    energy leg): `E κ (-d) = E κ d`, because cos is even. -/
theorem E_reflect {N : ℕ} (κ : ℝ) (d : Fin N → ℝ) :
    E κ (fun i => -(d i)) = E κ d := by
  simp [E, Real.cos_neg]

/-- **W2 — the winding-MINUS-one classification (equal-sines form)**:
    the exact mirror of LS.6: an off-`Δ` bond vector with equal sines
    and bond-sum `-2π` is exactly the negated ground `-2π/N` or the
    negated saddle profile. Proof = apply the SEALED winding-one
    classification to `-d`. -/
theorem winding_neg_one_classification {N : ℕ} (hN : 5 ≤ N) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = -(2 * π))
    (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j)) :
    (∀ i, d i = -(2 * π / N)) ∨
    (∃ i0 : Fin N, d i0 = -(π - saddleParam N 1)
      ∧ ∀ i, i ≠ i0 → d i = -(saddleParam N 1)) := by
  have hrange' : ∀ i, -(d i) ∈ Set.Ioo (-π) π := by
    intro i
    obtain ⟨h1, h2⟩ := hrange i
    exact ⟨by linarith, by linarith⟩
  have hsum' : ∑ i, -(d i) = 2 * π := by
    rw [Finset.sum_neg_distrib, hsum]
    ring
  have hcrit' : ∀ i j, Real.sin (-(d i)) = Real.sin (-(d j)) := by
    intro i j
    rw [Real.sin_neg, Real.sin_neg, hcrit i j]
  rcases winding_one_classification hN (fun i => -(d i)) hrange' hsum' hcrit'
    with h | ⟨i0, h1, h2⟩
  · left
    intro i
    have := h i
    linarith
  · right
    refine ⟨i0, by linarith [h1], fun i hi => by linarith [h2 i hi]⟩

/-- **W3 — the winding-minus-one classification, dE form**: the mirror
    of `winding_one_classification_critical`: a slice-critical off-`Δ`
    config with bond-sum `-2π` is the negated ground or the negated
    saddle profile. -/
theorem winding_neg_one_classification_critical {N : ℕ} (hN : 5 ≤ N)
    {κ : ℝ} (hκ : κ ≠ 0) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = -(2 * π))
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → dE κ d v = 0) :
    (∀ i, d i = -(2 * π / N)) ∨
    (∃ i0 : Fin N, d i0 = -(π - saddleParam N 1)
      ∧ ∀ i, i ≠ i0 → d i = -(saddleParam N 1)) := by
  refine winding_neg_one_classification hN d hrange hsum ?_
  apply (critical_slice_iff (show 2 ≤ N by omega) d).mp
  intro v hv
  have h := hcrit v hv
  have hdE : dE κ d v = κ * ∑ i, Real.sin (d i) * v i := by
    simp [dE, ContinuousLinearMap.proj_apply, Finset.mul_sum, mul_assoc]
  rw [hdE] at h
  exact (mul_eq_zero.mp h).resolve_left hκ

/-- **W4 — the negated ground level transports**: the w = -1 ground
    (all bonds `-2π/N`) sits at exactly `m_1` - level is EVEN in the
    winding. HONEST SCOPE (lens): "ground" indexes the closed form;
    this is a VALUE identity - the minimality structure is campaign
    #14's sealed layer (for +k, κ > 0), and its second-order FORM
    transports by W6 below; a full negated-sector Morse statement is
    not made here. -/
theorem E_neg_ground {N : ℕ} (κ : ℝ) :
    E κ (fun _ : Fin N => -(2 * π / N)) = groundLevel N κ 1 := by
  have h := E_reflect κ (fun _ : Fin N => 2 * π / N)
  rw [h]
  simp only [E, groundLevel, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul, Nat.cast_one]
  ring

/-- **W5 — the negated saddle level transports, GENERAL k**: the
    negated saddle profile sits at exactly `S_k` for every `k` -
    composing the evenness leg with the sealed `E_spBond`.
    HONEST SCOPE (lens): "saddle" indexes the profile and the closed
    form; this is a VALUE identity - the index-1 structure is LS.4's
    sealed layer (for +k), and the Hessian FORM transports by W6; the
    negated-sector index statement is not made here. -/
theorem E_neg_spBond (N k : ℕ) [NeZero N] (κ : ℝ) (hN : 3 ≤ N) :
    E κ (fun i => -(spBond N k i)) = saddleLevel N κ k := by
  rw [E_reflect]
  exact E_spBond N k κ hN

/-- **W6 — the slice-Hessian FORM is even in the bond field** (the
    reflection functor's second-order leg, closing the lens's gap): the
    constrained Hessian form at `-d` IS the form at `d`, for every
    direction - cos is even. With W1 (value) and W2/W3 (criticality),
    the negated sector inherits the +k sector's second-order FORMS
    verbatim; only the labels flip. -/
theorem hessForm_reflect {N : ℕ} (κ : ℝ) (d v : Fin N → ℝ) :
    hessForm κ (fun i => -(d i)) v = hessForm κ d v := by
  simp [hessForm, Real.cos_neg]

/-! ## Campaign #21: the negated-sector MORSE layer - campaign #20's
    named residual closed: the index-1 witness pair (LS.4) and the
    ground coercive band (#14) transport to the k < 0 sector through
    the sealed reflection legs (E_reflect / hessForm_reflect). -/

/-- **Y1n — the negative witness transports**: the SAME zero-sum
    witness `(N-1, -1, ..., -1)` makes the Hessian form at the NEGATED
    saddle profile negative - the index-1 direction exists in the
    negated sector (composing the sealed H2 with W6). -/
theorem hess_negative_witness_neg {N : ℕ} [NeZero N] {κ : ℝ} (hN : 3 ≤ N)
    (hκ : 0 < κ) (k : ℕ) (hc : 0 < Real.cos (saddleParam N k)) :
    (∑ i, (fun i => if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) i) = 0 ∧
    hessForm κ (fun i => -(spBond N k i))
      (fun i => if i = (0 : Fin N) then ((N : ℝ) - 1) else -1) < 0 := by
  obtain ⟨h1, h2⟩ := hess_negative_witness hN hκ k hc
  refine ⟨h1, ?_⟩
  rwa [hessForm_reflect]

/-- **Y2n — transversal positivity transports**: on the slice
    `v 0 = 0`, the Hessian form at the negated saddle profile is
    positive definite (composing the sealed H3 with W6) - together
    with Y1n, the negated saddle profile carries the SAME index-1
    Hessian-form structure as the positive one. HONEST SCOPE (lens,
    inherited from H3): `v 0 = 0` is the COORDINATE hyperplane, not
    the zero-sum tangent space - the exact-Morse-index transfer to
    the slice is the interlacing step, prose as in LS.4. -/
theorem hess_pos_on_perp_neg {N : ℕ} [NeZero N] {κ : ℝ} (hκ : 0 < κ)
    (k : ℕ) (hc : 0 < Real.cos (saddleParam N k)) (v : Fin N → ℝ)
    (hv0 : v 0 = 0) (hvne : v ≠ 0) :
    0 < hessForm κ (fun i => -(spBond N k i)) v := by
  rw [hessForm_reflect]
  exact hess_pos_on_perp hκ k hc v hv0 hvne

/-- **Y3n — the ground coercive band transports**: on the winding-`-k`
    slice, the energy dominates the negated ground level plus an
    explicit coercive quadratic around the negated equidistributed
    config (composing the sealed #14 engine with E_reflect; the
    cos-window hypothesis mirrors through cos evenness). Same honest
    scope as #14: constrained (slice) + local (cos >= m window);
    `hN : 3 <= N` is INHERITED from the sealed #14 engine (the lens
    notes it is unused by the argument - a joint tightening of both
    is a named residual, not done here). -/
theorem ground_coercive_band_neg {N k : ℕ} [NeZero N] {κ m : ℝ}
    (hκ : 0 ≤ κ) (hm : 0 ≤ m) (hN : 3 ≤ N) (d : Fin N → ℝ)
    (hsum : ∑ i, d i = -(2 * π * k))
    (hcos : ∀ i, ∀ t ∈ Set.uIcc (-(2 * π * k / N)) (d i), m ≤ Real.cos t) :
    groundLevel N κ k + κ * m / 2 * ∑ i, (d i + 2 * π * k / N) ^ 2
      ≤ E κ d := by
  have hsum' : ∑ i, -(d i) = 2 * π * k := by
    rw [Finset.sum_neg_distrib, hsum]
    ring
  have hcos' : ∀ i, ∀ t ∈ Set.uIcc (2 * π * k / N) (-(d i)),
      m ≤ Real.cos t := by
    intro i t ht
    have hmem : -t ∈ Set.uIcc (-(2 * π * k / N)) (d i) := by
      rcases Set.mem_uIcc.mp ht with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · exact Set.mem_uIcc.mpr (Or.inr ⟨by linarith, by linarith⟩)
      · exact Set.mem_uIcc.mpr (Or.inl ⟨by linarith, by linarith⟩)
    have hmc := hcos i (-t) hmem
    rwa [Real.cos_neg] at hmc
  have happ := ground_coercive_band (k := k) hκ hm hN (fun i => -(d i))
    hsum' hcos'
  rw [E_reflect] at happ
  have hsq : ∑ i, (-(d i) - 2 * π * k / N) ^ 2
      = ∑ i, (d i + 2 * π * k / N) ^ 2 := by
    refine Finset.sum_congr rfl fun i _ => ?_
    ring
  rw [hsq] at happ
  exact happ

/-! ## Campaign #22: the CORRECTED product-saddle ontology (X3 Finding 1
    sealed) - the corpus's former premise "Z = SP_k x C_0 is NOT
    E_eps-critical for eps > 0" was FALSE (X3, lead-confirmed): the
    equal-sines identity sin(pi - a) = sin a makes BOTH coupled
    criticality chains constant, so zero-sum variations kill them at
    EVERY coupling. Here: the sine constancy, the exact coupled level
    S_k(kappa) + eps S_k(1), the first-order coupled criticality, and
    the two scalar inertia cores from X3's Morse-Bott derivation. -/

/-- **Z22a — the saddle profile has CONSTANT sine**: every bond of
    `spBond N k` has sine exactly `sin (saddleParam N k)` - the hot
    bond too (`sin (π - a) = sin a`). The engine of the whole
    correction. -/
theorem sin_spBond {N : ℕ} [NeZero N] (k : ℕ) (i : Fin N) :
    Real.sin (spBond N k i) = Real.sin (saddleParam N k) := by
  unfold spBond
  by_cases h : i = 0
  · rw [if_pos h, Real.sin_pi_sub]
  · rw [if_neg h]

/-- **Z22b — the coupling term at the product saddle**: `W*` between
    the saddle profile and the zero config is exactly the κ-free
    saddle sum `S_k(1)` (so the level shift is `ε S_k(1) = ε S_k/κ`,
    with no division in the statement). Lens: `hN` is INHERITED from
    the sealed `E_spBond` interface; "saddleLevel" names the closed
    form - the saddle STRUCTURE is the sealed LS.4/LS.6 layer. -/
theorem Wstar_spBond_zero {N : ℕ} [NeZero N] (k : ℕ) (hN : 3 ≤ N) :
    Wstar (spBond N k) (fun _ : Fin N => (0 : ℝ)) = saddleLevel N 1 k := by
  have h := E_spBond N k 1 hN
  simp only [E, one_mul] at h
  unfold Wstar
  simpa [sub_zero] using h

/-- **Z22c — THE EXACT COUPLED LEVEL (X3 Finding 1)**: for every
    coupling `ε`, the product saddle sits at exactly
    `S_k(κ) + ε · S_k(1)` - the level is an exact linear function of
    `ε`; the saddle never moves. Lens: the `λ`-layer contributes level
    0 BY DESIGN - it sits AT its ground `C_0`; `λ` enters through the
    pin in the inertia layer (Z22f), not through the level. -/
theorem prod_saddle_level {N : ℕ} [NeZero N] (k : ℕ) (hN : 3 ≤ N)
    (κ lam ε : ℝ) :
    E κ (spBond N k) + E lam (fun _ : Fin N => (0 : ℝ))
      + ε * Wstar (spBond N k) (fun _ : Fin N => (0 : ℝ))
      = saddleLevel N κ k + ε * saddleLevel N 1 k := by
  rw [E_spBond N k κ hN, Wstar_spBond_zero k hN]
  have hz : E lam (fun _ : Fin N => (0 : ℝ)) = 0 := by
    simp [E]
  rw [hz]
  ring

/-- **Z22d — THE PRODUCT SADDLE IS COUPLED-CRITICAL AT EVERY ε (X3
    Finding 1, the corrected ontology)**: the exact first-order
    coefficients of `E_ε` at `(spBond, 0)` annihilate every zero-sum
    variation pair - both chains are CONSTANT (`(κ+ε)·sin a` on the
    `d`-side, `-ε·sin a` on the `e`-side), and constants die on
    zero-sum directions. The former "NOT critical for ε > 0" premise
    is the negation of this theorem. -/
theorem prod_saddle_coupled_critical {N : ℕ} [NeZero N] (k : ℕ)
    (κ lam ε : ℝ) (v w : Fin N → ℝ)
    (hv : ∑ i, v i = 0) (hw : ∑ i, w i = 0) :
    ∑ i, (κ * Real.sin (spBond N k i)
        + ε * Real.sin (spBond N k i - 0)) * v i
      + ∑ i, (lam * Real.sin (0 : ℝ)
        - ε * Real.sin (spBond N k i - 0)) * w i = 0 := by
  have hs : ∀ i : Fin N, Real.sin (spBond N k i - 0)
      = Real.sin (saddleParam N k) := by
    intro i
    rw [sub_zero, sin_spBond]
  have h1 : ∑ i, (κ * Real.sin (spBond N k i)
      + ε * Real.sin (spBond N k i - 0)) * v i
      = (κ + ε) * Real.sin (saddleParam N k) * ∑ i, v i := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [sin_spBond, hs i]
    ring
  have h2 : ∑ i, (lam * Real.sin (0 : ℝ)
      - ε * Real.sin (spBond N k i - 0)) * w i
      = (-(ε * Real.sin (saddleParam N k))) * ∑ i, w i := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hs i, Real.sin_zero]
    ring
  rw [h1, h2, hv, hw]
  ring

/-- **Z22e — inertia core, STABLE modes (X3's Morse-Bott derivation)**:
    the paired quadratic form on a stable mode is positive definite for
    every coupling: `c κ x² + λ y² + c ε (x-y)² > 0` when `(x,y) ≠ 0`.
    (The mode decomposition itself is the prose layer, as in LS.4.) -/
theorem prod_saddle_stable_mode_pos {c κ lam ε x y : ℝ}
    (hc : 0 < c) (hκ : 0 < κ) (hlam : 0 < lam) (hε : 0 ≤ ε)
    (hxy : x ≠ 0 ∨ y ≠ 0) :
    0 < c * κ * x ^ 2 + lam * y ^ 2 + c * ε * (x - y) ^ 2 := by
  have h2 : 0 ≤ lam * y ^ 2 := mul_nonneg hlam.le (sq_nonneg y)
  have h3 : 0 ≤ c * ε * (x - y) ^ 2 :=
    mul_nonneg (mul_nonneg hc.le hε) (sq_nonneg (x - y))
  have h4 : 0 ≤ c * κ * x ^ 2 :=
    mul_nonneg (mul_pos hc hκ).le (sq_nonneg x)
  rcases hxy with hx | hy
  · have h1 : 0 < c * κ * x ^ 2 :=
      mul_pos (mul_pos hc hκ) (by positivity)
    linarith
  · have h1 : 0 < lam * y ^ 2 := mul_pos hlam (by positivity)
    linarith

/-- **Z22f — inertia core, HOT mode determinant (X3)**: under the pin
    `κ < λ` the hot-mode 2×2 determinant is strictly negative at every
    coupling - `-αc(κλ + ε(λ - αcκ)) < 0` for `α = (N-2)/N ∈ (0,1)`,
    `0 < c ≤ 1` - so the ONE negative direction survives all `ε ≥ 0`:
    the product saddle keeps index 1. HONEST SCOPE (lens): this lemma
    seals the SIGN of the scalar; its identification as the hot-block
    2x2 determinant of the coupled Hessian is X3's prose derivation
    (recorded in lane-lp) - the mode decomposition is the prose layer,
    exactly as in LS.4. -/
theorem prod_saddle_hot_mode_det_neg {α c κ lam ε : ℝ}
    (hα0 : 0 < α) (hα1 : α < 1) (hc0 : 0 < c) (hc1 : c ≤ 1)
    (hκ : 0 < κ) (hpin : κ < lam) (hε : 0 ≤ ε) :
    -(α * c) * (κ * lam + ε * (lam - α * c * κ)) < 0 := by
  have hac : 0 < α * c := mul_pos hα0 hc0
  have hac1 : α * c < 1 := by
    have h := mul_le_mul_of_nonneg_left hc1 hα0.le
    rw [mul_one] at h
    linarith
  have hacκ : α * c * κ < κ := by
    have h := mul_lt_mul_of_pos_right hac1 hκ
    rw [one_mul] at h
    linarith
  have hbr : 0 < κ * lam + ε * (lam - α * c * κ) := by
    have h1 : 0 < κ * lam := mul_pos hκ (lt_trans hκ hpin)
    have h2 : 0 ≤ ε * (lam - α * c * κ) := by
      apply mul_nonneg hε
      linarith
    linarith
  have hprod : 0 < α * c * (κ * lam + ε * (lam - α * c * κ)) :=
    mul_pos hac hbr
  linarith

/-! ## Campaign #H1: the general-k off-Δ winding classification
    (master-theorem hunt item H1 — "|k| ≥ 2 slice-critical classification,
    extends LS.6").

    The k = 1 block (#7) proved: an equal-sines slice-critical winding-1 bond
    vector in the OPEN branch is EXACTLY the ground C_1 or the one-bond saddle
    SP_1.  The engine was `count_dichotomy`: the winding count
    `pπ + (N-2p)α = 2π` with `α ∈ (0, π/2]`, `N ≥ 5` forces `p ∈ {0, 1}`.

    AT GENERAL k THIS DICHOTOMY IS FALSE (see `two_hot_critical_off_classification`
    below).  The count `pπ + (N-2p)α = 2πk` admits the WHOLE ladder
    `p ∈ {0, 1, …, 2k-1}` of "p-hot" families: `p` reflected bonds `π - α_p`, the
    rest `α_p`, with `α_p = (2k-p)π/(N-2p)`.  p = 0 is the ground (α = 2πk/N),
    p = 1 is SP_k = `spBond N k` (α = `saddleParam N k`); p = 2,…,2k-1 are genuine
    equal-sines slice-critical winding-k configs in the open branch that are
    NEITHER.  The faithful generalization of LS.6 is the (2k)-family ENUMERATION
    `winding_k_classification`, NOT a two-way split.

    Load-bearing regime `N ≥ 4k+1` (= 4·1+1 = 5 at k = 1, matching #7's `5 ≤ N`):
      (i)  forces every `α_p < π/2` STRICTLY, so the two branches stay distinct
           `α_p ≠ π - α_p` and the reflected-count `p` is well defined
           (`α_p = π/2 ⟺ N = 4k`, the degenerate all-π/2 slice);
      (ii) KILLS the mirror families `p > N/2` (there `α ≤ π/2 ⟺ N ≤ 4k`,
           impossible when `N ≥ 4k+1`).
    NOTE: `N ≥ 4k+1` is the CLASSIFICATION hypothesis and is STRICTLY WEAKER than
    the C1-SUB ladder threshold `m_k < 2κ` (k=2: N≥40; k=3: N≥89).  Within
    `E < 2κ` the classification is ALREADY complete for all k (only the ground)
    via the already-general `classification_below_barrier(_critical)`; the H1
    gap is purely the ABOVE-barrier structure. -/

/-- **HK.0 (reverse, VERBATIM GENERAL)** — the one-bond saddle profile is
    equal-sines slice-critical: `sin (spBond N k i) = sin (spBond N k j)`
    (sin(π - a_k) = sin a_k). -/
theorem sin_spBond_const {N : ℕ} [NeZero N] (k : ℕ) (i j : Fin N) :
    Real.sin (spBond N k i) = Real.sin (spBond N k j) := by
  -- Every coordinate sine reduces to `Real.sin (saddleParam N k)`:
  -- at `i = 0` via `Real.sin_pi_sub` (sin(π - a_k) = sin a_k), else definitionally.
  have h : ∀ m : Fin N, Real.sin (spBond N k m) = Real.sin (saddleParam N k) := by
    intro m
    simp only [spBond]
    split
    · exact Real.sin_pi_sub _
    · rfl
  rw [h i, h j]

/-- **HK.1 (VERBATIM GENERAL)** — the saddle profile carries winding k:
    `∑ spBond N k = 2πk` (one bond `π - a_k`, `N-1` bonds `a_k`; uses
    `(N-2)·a_k = 2πk - π`). -/
theorem spBond_sum {N : ℕ} [NeZero N] {k : ℕ} (hN : 3 ≤ N) :
    ∑ i, spBond N k i = 2 * π * k := by
  have hNR : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hN2ne : ((N : ℝ) - 2) ≠ 0 := ne_of_gt hN2
  have hakey : ((N : ℝ) - 2) * saddleParam N k = 2 * π * k - π := by
    unfold saddleParam
    field_simp
  have h0 : spBond N k (0 : Fin N) = π - saddleParam N k := by
    simp [spBond]
  have herase : ∑ x ∈ Finset.univ.erase (0 : Fin N), spBond N k x
      = ((N : ℝ) - 1) * saddleParam N k := by
    have hcongr : ∑ x ∈ Finset.univ.erase (0 : Fin N), spBond N k x
        = ∑ _x ∈ Finset.univ.erase (0 : Fin N), saddleParam N k := by
      apply Finset.sum_congr rfl
      intro x hx
      have hx0 : x ≠ 0 := Finset.ne_of_mem_erase hx
      simp [spBond, hx0]
    rw [hcongr, Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ 0),
        Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    have h1N : 1 ≤ N := by omega
    rw [Nat.cast_sub h1N, Nat.cast_one]
  have hsum : ∑ i, spBond N k i
      = spBond N k (0 : Fin N) + ∑ x ∈ Finset.univ.erase (0 : Fin N), spBond N k x :=
    (Finset.add_sum_erase Finset.univ (spBond N k) (Finset.mem_univ 0)).symm
  rw [hsum, h0, herase]
  linear_combination hakey
  -- BLUEPRINT: `Finset.add_sum_erase` at 0: `spBond … 0 = π - a_k`; the erased
  --   sum is `(N-1)·a_k` (`Finset.sum_const`, `card_erase_of_mem`,
  --   `if_neg` off 0).  `(π - a_k) + (N-1)a_k = π + (N-2)a_k`; the `saddleParam`
  --   identity `(N-2)·a_k = 2πk - π` (unfold `saddleParam`; `field_simp` with
  --   `(N:ℝ)-2 ≠ 0` from hN — the `hakey`/`ridgeEnv_at_saddle` pattern).  ring.

/-- **HK.2 (VERBATIM GENERAL, k ≥ 1)** — a nonpositive common sine cannot carry
    winding k: open-branch bonds with `sin ≤ 0` are `≤ 0`, so `∑ ≤ 0 < 2πk`. -/
theorem no_winding_with_nonpos_sine_k {N k : ℕ} (hk : 1 ≤ k) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π * k)
    (hs : ∀ i, Real.sin (d i) ≤ 0) : False := by
  -- BLUEPRINT: IDENTICAL to `no_winding_with_nonpos_sine`, RHS `2πk`.  `d i ≤ 0`
  --   (else `Real.sin_pos_of_pos_of_lt_pi` on (0,π) contradicts `hs`);
  --   `Finset.sum_nonpos` gives `∑ ≤ 0`; `2πk > 0` from `hk`, `Real.pi_pos`;
  --   `linarith`.
  have hd : ∀ i, d i ≤ 0 := by
    intro i
    by_contra h
    exact absurd (hs i)
      (not_le.mpr (Real.sin_pos_of_pos_of_lt_pi (not_le.mp h) (hrange i).2))
  have hsum0 : ∑ i, d i ≤ 0 := Finset.sum_nonpos fun i _ => hd i
  have hpi := Real.pi_pos
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast hk
  have hk_pos : (0 : ℝ) < 2 * π * k := mul_pos (mul_pos (by norm_num) hpi) hkR
  linarith

/-- **HK.3 (VERBATIM GENERAL)** — the winding-count equation at general k: with
    `p := #{reflected bonds}`, `pπ + (N - 2p)α = 2πk`. -/
theorem count_equation_k {N k : ℕ} {α : ℝ} (d : Fin N → ℝ)
    (hval : ∀ i, d i = α ∨ d i = π - α) (hsum : ∑ i, d i = 2 * π * k) :
    ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * π
      + ((N : ℝ) - 2 * ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)) * α
      = 2 * π * k := by
  classical
  have hsplit := Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i ≠ α) d
  have hFsum : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
      = ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * (π - α) := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => d i ≠ α), (π - α) :=
      Finset.sum_congr rfl fun i hi =>
        (hval i).resolve_left (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
      = ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) * α := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), α :=
      Finset.sum_congr rfl fun i hi =>
        not_not.mp (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hcard : (Finset.univ.filter (fun i => d i ≠ α)).card
      + (Finset.univ.filter (fun i => ¬(d i ≠ α))).card = N := by
    rw [Finset.card_filter_add_card_filter_not, Finset.card_univ, Fintype.card_fin]
  have hcardR : ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)
      + ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) = (N : ℝ) := by
    exact_mod_cast hcard
  linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR
  -- BLUEPRINT: IDENTICAL to `count_equation`, RHS `2πk`.  `classical`;
  --   `Finset.sum_filter_add_sum_filter_not` on predicate `d i ≠ α`; the ≠α block
  --   sums to `card·(π - α)`, the =α block to `card·α`
  --   (`Finset.sum_const` after `Finset.sum_congr` collapsing each branch by
  --   `hval`); `card_filter_add_card_filter_not = N`;
  --   `linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR`.

/-- **HK.4 (THE NEW CORE — replaces `count_dichotomy`)** — for `N ≥ 4k+1`,
    `α ∈ (0, π/2]`, the winding-count equation forces the reflected-bond count
    into the RANGE `p ∈ {0, 1, …, 2k-1}` with `α` PINNED by `p`:
    `(N - 2p)·α = (2k - p)·π`.  (At k = 1: `p < 2` recovers `count_dichotomy`'s
    `{0,1}`.)  `N ≥ 4k+1` is load-bearing at BOTH ends (campaign header). -/
theorem count_dichotomy_k {N k p : ℕ} {α : ℝ} (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N)
    (hp : p ≤ N) (hα : 0 < α) (hα2 : α ≤ π / 2)
    (heq : (p : ℝ) * π + ((N : ℝ) - 2 * p) * α = 2 * π * k) :
    p < 2 * k ∧ 2 * p < N ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
  have hpi := Real.pi_pos
  have hNr : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
  -- α-equation (immediate): (N - 2p)·α = 2πk - pπ = (2k - p)π
  have hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
    linear_combination heq
  -- (a) 2p < N: else (N-2p) ≤ 0 reverses α ≤ π/2, forcing N ≤ 4k, excluded by N ≥ 4k+1
  have h2 : 2 * p < N := by
    by_contra hcon
    push_neg at hcon
    have hNle : (N : ℝ) ≤ 2 * (p : ℝ) := by exact_mod_cast hcon
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 2 * (p : ℝ) - (N : ℝ))
                          (by linarith : (0 : ℝ) ≤ π / 2 - α),
               mul_nonneg hpi.le (by linarith : (0 : ℝ) ≤ (N : ℝ) - 4 * (k : ℝ) - 1),
               hαeq, hpi]
  -- (b) p < 2k: (N-2p) > 0 and (N-2p)α = (2k-p)π > 0 with π > 0 give 2k - p > 0
  have hNpos : (0 : ℝ) < (N : ℝ) - 2 * (p : ℝ) := by
    have hh : (2 : ℝ) * (p : ℝ) < (N : ℝ) := by exact_mod_cast h2
    linarith
  have hprodpos : (0 : ℝ) < (2 * (k : ℝ) - (p : ℝ)) * π := by
    rw [← hαeq]; exact mul_pos hNpos hα
  have h1 : p < 2 * k := by
    have hkp : (0 : ℝ) < 2 * (k : ℝ) - (p : ℝ) := by nlinarith [hprodpos, hpi]
    have hpk : (p : ℝ) < 2 * (k : ℝ) := by linarith
    exact_mod_cast hpk
  exact ⟨h1, h2, hαeq⟩
  -- BLUEPRINT: the α-equation is immediate: `(N - 2p)·α = 2πk - pπ = (2k - p)π`
  --   (`linear_combination heq`).  The RANGE is the content — sign analysis with
  --   `Real.pi_pos`, casts of `4*k+1 ≤ N`:
  --   (a) `2p < N`.  Suppose `N ≤ 2p`, i.e. `(N:ℝ) - 2p ≤ 0`.  Multiply
  --       `α ≤ π/2` by `(N - 2p) ≤ 0` (flips): `(N-2p)·(π/2) ≤ (N-2p)·α`.
  --       Substitute `(N-2p)α = (2k-p)π`: `(N-2p)(π/2) ≤ (2k-p)π`, i.e.
  --       (÷ π>0, ×2) `N - 2p ≤ 4k - 2p`, i.e. `N ≤ 4k` — contradicts `N ≥ 4k+1`.
  --       nlinarith hints: `mul_nonneg (show 0 ≤ 2*p - N) (show 0 ≤ π/2 - α)`,
  --       `Real.pi_pos`.  So `2p < N`, hence `(N:ℝ) - 2p > 0`.
  --   (b) `p < 2k`.  With `(N-2p) > 0` and `(N-2p)α = (2k-p)π`, and `α, π > 0`,
  --       the LHS is `> 0`, so `(2k - p)π > 0`, so `2k - p > 0` (mul_pos /
  --       nlinarith), i.e. `p < 2k`.
  --   Package `⟨p < 2k, 2p < N, α-eqn⟩`.  (`α < π/2` strict is derivable but not
  --   emitted: `α = π/2 ⟹ N - 2p = 4k - 2p ⟹ N = 4k`, excluded.)

/-- HK.2 reproven sorry-free (private helper for `winding_k_classification`):
    a nonpositive common sine cannot carry winding `k ≥ 1`. -/
private theorem winding_k_classification_aux1 {N k : ℕ} (hk : 1 ≤ k) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π * k)
    (hs : ∀ i, Real.sin (d i) ≤ 0) : False := by
  have hd : ∀ i, d i ≤ 0 := by
    intro i
    by_contra h
    exact absurd (hs i)
      (not_le.mpr (Real.sin_pos_of_pos_of_lt_pi (not_le.mp h) (hrange i).2))
  have hsum0 : ∑ i, d i ≤ 0 := Finset.sum_nonpos fun i _ => hd i
  have hkR : (0 : ℝ) < (k : ℝ) := by
    have h1 : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
    linarith
  rw [hsum] at hsum0
  nlinarith [mul_pos Real.pi_pos hkR]

/-- HK.3 reproven sorry-free (private helper): the winding-count equation at
    general `k` — with `p` the number of reflected bonds, `pπ + (N - 2p)α = 2πk`. -/
private theorem winding_k_classification_aux2 {N k : ℕ} {α : ℝ} (d : Fin N → ℝ)
    (hval : ∀ i, d i = α ∨ d i = π - α) (hsum : ∑ i, d i = 2 * π * k) :
    ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * π
      + ((N : ℝ) - 2 * ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)) * α
      = 2 * π * k := by
  classical
  have hsplit := Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i ≠ α) d
  have hFsum : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
      = ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * (π - α) := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => d i ≠ α), (π - α) :=
      Finset.sum_congr rfl fun i hi =>
        (hval i).resolve_left (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
      = ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) * α := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), α :=
      Finset.sum_congr rfl fun i hi =>
        not_not.mp (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hcard : (Finset.univ.filter (fun i => d i ≠ α)).card
      + (Finset.univ.filter (fun i => ¬(d i ≠ α))).card = N := by
    rw [Finset.card_filter_add_card_filter_not, Finset.card_univ, Fintype.card_fin]
  have hcardR : ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)
      + ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) = (N : ℝ) := by
    exact_mod_cast hcard
  linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR

/-- HK.4 reproven sorry-free (private helper): for `N ≥ 4k+1`, `α ∈ (0, π/2]`,
    the winding-count equation pins the reflected-bond count `p < 2k`, `2p < N`,
    with `(N - 2p)·α = (2k - p)·π`.  `N ≥ 4k+1` is load-bearing at both ends. -/
private theorem winding_k_classification_aux3 {N k p : ℕ} {α : ℝ} (_hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (_hp : p ≤ N) (hα : 0 < α) (hα2 : α ≤ π / 2)
    (heq : (p : ℝ) * π + ((N : ℝ) - 2 * (p : ℝ)) * α = 2 * π * k) :
    p < 2 * k ∧ 2 * p < N
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
  have hπ := Real.pi_pos
  have hNR : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
  have hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
    linear_combination heq
  have h2pN_real : (2 : ℝ) * (p : ℝ) < (N : ℝ) := by
    by_contra hcon
    have hle : (N : ℝ) ≤ 2 * (p : ℝ) := not_lt.mp hcon
    have hmul : ((N : ℝ) - 2 * (p : ℝ)) * (π / 2)
        ≤ ((N : ℝ) - 2 * (p : ℝ)) * α := by
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 2 * (p : ℝ) - (N : ℝ))
        (by linarith : (0 : ℝ) ≤ π / 2 - α)]
    nlinarith [hmul, hαeq, hπ,
      mul_nonneg (by linarith : (0 : ℝ) ≤ (N : ℝ) - 4 * (k : ℝ) - 1) hπ.le]
  have h2pN : 2 * p < N := by exact_mod_cast h2pN_real
  have hp2k_real : (p : ℝ) < 2 * (k : ℝ) := by
    have hNpos : (0 : ℝ) < (N : ℝ) - 2 * (p : ℝ) := by linarith [h2pN_real]
    have hlhs : (0 : ℝ) < ((N : ℝ) - 2 * (p : ℝ)) * α := mul_pos hNpos hα
    nlinarith [hlhs, hαeq, hπ]
  have hp2k : p < 2 * k := by exact_mod_cast hp2k_real
  exact ⟨hp2k, h2pN, hαeq⟩

/-- **HK.5 (LS.6 AT GENERAL k — THE FAITHFUL ENUMERATION)** — an equal-sines
    slice-critical winding-k bond vector in the open branch (`N ≥ 4k+1`) is a
    "p-hot" profile for a reflected-count `p < 2k`: some `α ∈ (0, π/2)` with
    `(N - 2p)·α = (2k - p)·π`, every bond `= α` or its reflection `π - α`, and
    exactly `p` bonds reflected.  p = 0 is the ground C_k (α = 2πk/N), p = 1 is
    the one-bond saddle SP_k = `spBond N k` (α = `saddleParam N k`); p ≥ 2 are
    the EXTRA families absent at k = 1. -/
theorem winding_k_classification {N k : ℕ} (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j)) :
    ∃ (p : ℕ) (α : ℝ), p < 2 * k ∧ 2 * p < N ∧ 0 < α ∧ α < π / 2
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π
      ∧ (∀ i, d i = α ∨ d i = π - α)
      ∧ (Finset.univ.filter (fun i => d i = π - α)).card = p := by
  have hNpos : 0 < N := by omega
  have i0 : Fin N := ⟨0, hNpos⟩
  rcases le_or_gt (Real.sin (d i0)) 0 with hs | hs
  · -- nonpositive common sine: cannot carry winding k
    refine (winding_k_classification_aux1 hk d hrange hsum fun i => ?_).elim
    rw [hcrit i i0]
    exact hs
  · -- positive common sine: two-valued bonds, count equation, range dichotomy
    have hval := bonds_two_valued hs d hrange fun i => hcrit i i0
    set α : ℝ := Real.arcsin (Real.sin (d i0)) with hα_def
    have hα : 0 < α := by rw [hα_def]; exact Real.arcsin_pos.mpr hs
    have hα2 : α ≤ π / 2 := by rw [hα_def]; exact Real.arcsin_le_pi_div_two _
    have heq := winding_k_classification_aux2 d hval hsum
    have hcardu : (Finset.univ : Finset (Fin N)).card = N := by
      rw [Finset.card_univ, Fintype.card_fin]
    have hp : (Finset.univ.filter (fun i => d i ≠ α)).card ≤ N :=
      le_trans (Finset.card_filter_le _ _) (le_of_eq hcardu)
    obtain ⟨hp2k, h2pN, hαeq⟩ := winding_k_classification_aux3 hk hN hp hα hα2 heq
    set p := (Finset.univ.filter (fun i => d i ≠ α)).card with hp_def
    -- `α < π/2` strict: `α = π/2 ⟹ N = 4k`, excluded by `N ≥ 4k+1`
    have hαlt : α < π / 2 := by
      rcases eq_or_lt_of_le hα2 with h | h
      · exfalso
        rw [h] at hαeq
        have hNR : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
        nlinarith [hαeq, Real.pi_pos,
          mul_nonneg (by linarith : (0 : ℝ) ≤ (N : ℝ) - 4 * (k : ℝ) - 1)
            Real.pi_pos.le]
      · exact h
    -- reflected filter = ≠α filter (since `α < π/2 ⟹ α ≠ π - α`)
    have hfilt : Finset.univ.filter (fun i => d i = π - α)
        = Finset.univ.filter (fun i => d i ≠ α) := by
      ext i
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      constructor
      · intro hi hEq
        rw [hi] at hEq
        linarith
      · intro hi
        exact (hval i).resolve_left hi
    refine ⟨p, α, hp2k, h2pN, hα, hαlt, hαeq, hval, ?_⟩
    rw [hfilt]
  -- BLUEPRINT: STRUCTURALLY IDENTICAL to `winding_one_classification`; the only
  --   change is the terminal `count_dichotomy` (2-way) → `count_dichotomy_k`
  --   (range).  `have hNpos : 0 < N := by omega`; `i₀ := ⟨0, hNpos⟩`.
  --   • `sin (d i₀) ≤ 0`: `no_winding_with_nonpos_sine_k hk d hrange hsum`
  --     (feed `fun i => hcrit i i₀ ▸ hs`).  ⊥.
  --   • `sin (d i₀) > 0`: `α := Real.arcsin (Real.sin (d i₀))`, `0 < α`
  --     (`Real.arcsin_pos`), `α ≤ π/2` (`Real.arcsin_le_pi_div_two`).
  --     `bonds_two_valued hs d hrange (fun i => hcrit i i₀)` ⟹
  --     `hval : ∀ i, d i = α ∨ d i = π - α`.
  --     `p := (Finset.univ.filter (fun i => d i ≠ α)).card ≤ N`
  --     (`card_filter_le`).  `count_equation_k d hval hsum` gives the count eqn;
  --     `count_dichotomy_k hk hN hp hα hα2 (…)` ⟹ `p < 2k ∧ 2p < N ∧ α-eqn`.
  --   • `α < π/2` strict: from the α-eqn + `N ≥ 4k+1` (`α = π/2 ⟹ N = 4k`).
  --   • Reflected filter = ≠α filter: since `α < π/2 ⟹ α ≠ π - α`, `hval` gives
  --     `d i = π - α ↔ d i ≠ α` (`Finset.filter_congr`); so
  --     `card (filter (d i = π - α)) = p`.
  --   • `exact ⟨p, α, …⟩`.  (No `left/right`: the honest witness IS `p`.)

/-- Private (axiom-clean copy of `no_winding_with_nonpos_sine_k`): a nonpositive
    common sine cannot carry winding `k ≥ 1`. -/
theorem winding_k_classification_critical_aux1 {N k : ℕ} (hk : 1 ≤ k)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (hs : ∀ i, Real.sin (d i) ≤ 0) : False := by
  have hd : ∀ i, d i ≤ 0 := by
    intro i
    by_contra h
    exact absurd (hs i)
      (not_le.mpr (Real.sin_pos_of_pos_of_lt_pi (not_le.mp h) (hrange i).2))
  have hsum0 : ∑ i, d i ≤ 0 := Finset.sum_nonpos fun i _ => hd i
  have hpi := Real.pi_pos
  have hkpos : (0 : ℝ) < (k : ℝ) := by exact_mod_cast hk
  have h2 : (0 : ℝ) < 2 * π * (k : ℝ) := mul_pos (by linarith) hkpos
  linarith [hsum, hsum0, h2]

/-- Private (axiom-clean copy of `count_equation_k`): the winding-count equation
    at general `k`, with `p := #{reflected bonds}`, `pπ + (N - 2p)α = 2πk`. -/
theorem winding_k_classification_critical_aux2 {N k : ℕ} {α : ℝ} (d : Fin N → ℝ)
    (hval : ∀ i, d i = α ∨ d i = π - α) (hsum : ∑ i, d i = 2 * π * k) :
    ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * π
      + ((N : ℝ) - 2 * ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)) * α
      = 2 * π * k := by
  classical
  have hsplit := Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i ≠ α) d
  have hFsum : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
      = ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * (π - α) := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => d i ≠ α), (π - α) :=
      Finset.sum_congr rfl fun i hi =>
        (hval i).resolve_left (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
      = ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) * α := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), α :=
      Finset.sum_congr rfl fun i hi =>
        not_not.mp (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hcard : (Finset.univ.filter (fun i => d i ≠ α)).card
      + (Finset.univ.filter (fun i => ¬(d i ≠ α))).card = N := by
    rw [Finset.card_filter_add_card_filter_not, Finset.card_univ, Fintype.card_fin]
  have hcardR : ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)
      + ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) = (N : ℝ) := by
    exact_mod_cast hcard
  linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR

/-- Private (axiom-clean copy of `count_dichotomy_k`): for `N ≥ 4k+1`,
    `α ∈ (0, π/2]`, the winding-count equation forces `p < 2k`, `2p < N`, and
    pins `α` by `(N - 2p)·α = (2k - p)·π`. -/
theorem winding_k_classification_critical_aux3 {N k p : ℕ} {α : ℝ}
    (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N) (hp : p ≤ N) (hα : 0 < α) (hα2 : α ≤ π / 2)
    (heq : (p : ℝ) * π + ((N : ℝ) - 2 * p) * α = 2 * π * k) :
    p < 2 * k ∧ 2 * p < N ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
  have hπ := Real.pi_pos
  have hNR : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
  have hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
    linear_combination heq
  have h2pN : 2 * p < N := by
    by_contra hcon
    have hcon2 : N ≤ 2 * p := Nat.not_lt.mp hcon
    have hcon' : (N : ℝ) ≤ 2 * (p : ℝ) := by exact_mod_cast hcon2
    have hflip : ((N : ℝ) - 2 * (p : ℝ)) * (π / 2) ≤ ((N : ℝ) - 2 * (p : ℝ)) * α := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 2 * (p : ℝ) - (N : ℝ) by linarith)
        (show (0 : ℝ) ≤ π / 2 - α by linarith)]
    rw [hαeq] at hflip
    have hcontra : (0 : ℝ) < (π / 2) * ((N : ℝ) - 4 * (k : ℝ)) :=
      mul_pos (by linarith) (by linarith)
    nlinarith [hflip, hcontra]
  have hNpR : (0 : ℝ) < (N : ℝ) - 2 * (p : ℝ) := by
    have hh : (2 : ℝ) * (p : ℝ) < (N : ℝ) := by exact_mod_cast h2pN
    linarith
  have hp2k : p < 2 * k := by
    have hpos : (0 : ℝ) < (2 * (k : ℝ) - (p : ℝ)) * π := by
      rw [← hαeq]; exact mul_pos hNpR hα
    have h2kp : (0 : ℝ) < 2 * (k : ℝ) - (p : ℝ) := by
      by_contra hc
      have hc' : 2 * (k : ℝ) - (p : ℝ) ≤ 0 := not_lt.mp hc
      nlinarith [hpos, mul_nonneg (show (0 : ℝ) ≤ (p : ℝ) - 2 * (k : ℝ) by linarith) hπ.le]
    have hlt : (p : ℝ) < 2 * (k : ℝ) := by linarith
    exact_mod_cast hlt
  exact ⟨hp2k, h2pN, hαeq⟩

/-- Private (axiom-clean copy of `winding_k_classification`): the faithful
    `(2k)`-family enumeration of an equal-sines slice-critical winding-`k` bond
    vector in the open branch (`N ≥ 4k+1`). -/
theorem winding_k_classification_critical_aux4 {N k : ℕ} (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j)) :
    ∃ (p : ℕ) (α : ℝ), p < 2 * k ∧ 2 * p < N ∧ 0 < α ∧ α < π / 2
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π
      ∧ (∀ i, d i = α ∨ d i = π - α)
      ∧ (Finset.univ.filter (fun i => d i = π - α)).card = p := by
  have hNpos : 0 < N := by omega
  have i0 : Fin N := ⟨0, hNpos⟩
  rcases le_or_gt (Real.sin (d i0)) 0 with hs | hs
  · refine (winding_k_classification_critical_aux1 hk d hrange hsum fun i => ?_).elim
    rw [hcrit i i0]
    exact hs
  · have hval := bonds_two_valued hs d hrange fun i => hcrit i i0
    set α : ℝ := Real.arcsin (Real.sin (d i0)) with hα_def
    have hα : 0 < α := by rw [hα_def]; exact Real.arcsin_pos.mpr hs
    have hα2 : α ≤ π / 2 := by rw [hα_def]; exact Real.arcsin_le_pi_div_two _
    have heq := winding_k_classification_critical_aux2 (N := N) (k := k) d hval hsum
    have hcardN : (Finset.univ : Finset (Fin N)).card = N := by
      rw [Finset.card_univ, Fintype.card_fin]
    have hp : (Finset.univ.filter (fun i => d i ≠ α)).card ≤ N :=
      le_trans (Finset.card_filter_le _ _) (le_of_eq hcardN)
    obtain ⟨hp2k, h2pN, hαeq⟩ :=
      winding_k_classification_critical_aux3 hk hN hp hα hα2 heq
    have hα2' : α < π / 2 := by
      rcases lt_or_eq_of_le hα2 with h | h
      · exact h
      · exfalso
        have hNR : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
        have hαeq2 := hαeq
        rw [h] at hαeq2
        nlinarith [hαeq2, mul_pos Real.pi_pos
          (show (0 : ℝ) < (N : ℝ) - 4 * (k : ℝ) by linarith)]
    have hαlt : α < π - α := by linarith
    have hset : Finset.univ.filter (fun i => d i = π - α)
        = Finset.univ.filter (fun i => d i ≠ α) := by
      apply Finset.ext
      intro i
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      constructor
      · intro h
        rw [h]
        intro hcon
        linarith
      · intro h
        exact (hval i).resolve_left h
    refine ⟨(Finset.univ.filter (fun i => d i ≠ α)).card, α, hp2k, h2pN, hα, hα2',
      hαeq, hval, ?_⟩
    rw [hset]

/-- **HK.5′ (dE-composed form, VERBATIM WRAPPER)** — the same enumeration from
    genuine slice-criticality (`dE` kills every zero-sum direction, `κ ≠ 0`). -/
theorem winding_k_classification_critical {N k : ℕ} (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N)
    {κ : ℝ} (hκ : κ ≠ 0) (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k)
    (hcrit : ∀ v : Fin N → ℝ, (∑ i, v i) = 0 → dE κ d v = 0) :
    ∃ (p : ℕ) (α : ℝ), p < 2 * k ∧ 2 * p < N ∧ 0 < α ∧ α < π / 2
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π
      ∧ (∀ i, d i = α ∨ d i = π - α)
      ∧ (Finset.univ.filter (fun i => d i = π - α)).card = p := by
  apply winding_k_classification_critical_aux4 hk hN d hrange hsum
  apply (critical_slice_iff (show 2 ≤ N by omega) d).mp
  intro v hv
  have h := hcrit v hv
  have hdE : dE κ d v = κ * ∑ i, Real.sin (d i) * v i := by
    simp [dE, ContinuousLinearMap.proj_apply, Finset.mul_sum, mul_assoc]
  rw [hdE] at h
  exact (mul_eq_zero.mp h).resolve_left hκ
  -- BLUEPRINT: IDENTICAL to `winding_one_classification_critical`.  `dE κ d v =
  --   κ * ∑ sin(d i) * v i` (`simp [dE, ContinuousLinearMap.proj_apply,
  --   Finset.mul_sum, mul_assoc]`); `κ ≠ 0` cancels ⟹ the zero-sum test
  --   `∑ sin(d i) v i = 0`; `(critical_slice_iff (by omega) d).mp` ⟹ equal
  --   sines; `exact winding_k_classification hk hN d hrange hsum this`.

/-- **HK.6 (BRIDGE to the LS.6 shape)** — the low reflected-count members are
    EXACTLY the ground and the one-bond saddle: given the HK.5 output with
    `p ≤ 1`, `p = 0` yields the equidistributed ground `∀ i, d i = 2πk/N`;
    `p = 1` yields the one-hot saddle
    `∃ i₀, d i₀ = π - a_k ∧ ∀ i ≠ i₀, d i = a_k` (the `spBond N k` shape). -/
theorem winding_k_ground_or_saddle_of_hotCount_le_one {N k : ℕ} (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ) {p : ℕ} {α : ℝ}
    (hpk : p < 2 * k) (hpN : 2 * p < N) (hα0 : 0 < α) (hα2 : α < π / 2)
    (hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π)
    (hval : ∀ i, d i = α ∨ d i = π - α)
    (hcard : (Finset.univ.filter (fun i => d i = π - α)).card = p)
    (hp1 : p ≤ 1) :
    (∀ i, d i = 2 * π * k / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N k ∧ ∀ i, i ≠ i0 → d i = saddleParam N k) := by
  have hN5 : 5 ≤ N := by omega
  have hNR : (5 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN5
  interval_cases p
  · -- p = 0 : the equidistributed ground C_k (`α = 2πk/N`)
    left
    have hαval : α = 2 * π * (k : ℝ) / (N : ℝ) := by
      rw [eq_div_iff (ne_of_gt (by linarith : (0 : ℝ) < (N : ℝ)))]
      linear_combination hαeq
    have hempty := Finset.card_eq_zero.mp hcard
    intro i
    rcases hval i with h | h
    · rw [h]; exact hαval
    · exfalso
      have hmem : i ∈ Finset.univ.filter (fun i => d i = π - α) :=
        Finset.mem_filter.mpr ⟨Finset.mem_univ i, h⟩
      rw [hempty] at hmem
      exact absurd hmem (Finset.notMem_empty i)
  · -- p = 1 : the one-bond saddle SP_k (`α = saddleParam N k`)
    right
    have hsp : α = saddleParam N k := by
      unfold saddleParam
      rw [eq_div_iff (ne_of_gt (by linarith : (0 : ℝ) < (N : ℝ) - 2))]
      linear_combination hαeq
    obtain ⟨i0, hi0⟩ := Finset.card_eq_one.mp hcard
    refine ⟨i0, ?_, ?_⟩
    · have hmem : i0 ∈ Finset.univ.filter (fun i => d i = π - α) := by
        rw [hi0]; exact Finset.mem_singleton_self i0
      have hd0 : d i0 = π - α := (Finset.mem_filter.mp hmem).2
      rw [hd0, hsp]
    · intro i hi
      have hnotmem : i ∉ Finset.univ.filter (fun i => d i = π - α) := by
        rw [hi0, Finset.mem_singleton]; exact hi
      have hne : ¬ d i = π - α := fun hc =>
        hnotmem (Finset.mem_filter.mpr ⟨Finset.mem_univ i, hc⟩)
      rcases hval i with h | h
      · rw [h]; exact hsp
      · exact absurd h hne
  -- BLUEPRINT: `interval_cases p` (p = 0 or p = 1 from `hp1`, and 0 ≤ p).
  --   p = 0: `hcard` ⟹ filter empty ⟹ `∀ i, ¬ d i = π - α`, so `hval` forces
  --     `∀ i, d i = α`.  `hαeq` with p = 0: `N·α = 2k·π` ⟹ `α = 2πk/N`
  --     (`(N:ℝ) ≠ 0`).  LEFT.
  --   p = 1: `hαeq` with p = 1: `(N-2)α = (2k-1)π` ⟹ `α = saddleParam N k`
  --     (unfold `saddleParam`; `(N:ℝ)-2 ≠ 0` from hN).  `Finset.card_eq_one.mp
  --     hcard` ⟹ `∃ i0, filter = {i0}`, so `d i0 = π - α = π - saddleParam N k`,
  --     and every `i ≠ i0` has `d i ≠ π - α`, hence `d i = α = saddleParam N k`
  --     via `hval`.  RIGHT.  (Same `card_eq_zero`/`card_eq_one` extraction as
  --     `winding_one_classification`'s p = 0 / p = 1 legs.)

/-- **HK.7 (THE FALSIFIER — the k = 1 dichotomy is FALSE for k ≥ 2)** — for every
    `k ≥ 2`, `N ≥ 4k+1` there is an equal-sines slice-critical winding-k bond
    vector in the OPEN branch (off Δ) that is NEITHER the equidistributed ground
    NOR the one-hot saddle `spBond N k`: the 2-hot profile
    `α₂ = (2k-2)π/(N-4)`, two reflected bonds.  This is a PROVABLE statement that
    formally DISPROVES "ground ∨ one-hot saddle" at general k. -/
theorem two_hot_critical_off_classification {N k : ℕ} [NeZero N] (hk : 2 ≤ k)
    (hN : 4 * k + 1 ≤ N) :
    ∃ d : Fin N → ℝ, (∀ i, d i ∈ Set.Ioo (-π) π) ∧ (∑ i, d i = 2 * π * k)
      ∧ (∀ i j, Real.sin (d i) = Real.sin (d j))
      ∧ (¬ ∀ i, d i = 2 * π * k / N)
      ∧ (¬ ∃ i0 : Fin N, d i0 = π - saddleParam N k
            ∧ ∀ i, i ≠ i0 → d i = saddleParam N k) := by
  -- 2-hot falsifier: two reflected bonds at α = (2k-2)π/(N-4).
  have hN9 : 9 ≤ N := by omega
  have hN9R : (9 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN9
  have hN4 : (0 : ℝ) < (N : ℝ) - 4 := by linarith
  have hN4ne : (N : ℝ) - 4 ≠ 0 := ne_of_gt hN4
  have hN2 : (0 : ℝ) < (N : ℝ) - 2 := by linarith
  have hNRpos : (0 : ℝ) < (N : ℝ) := by linarith
  have hπ := Real.pi_pos
  have hk2R : (2 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  have h4kN : (4 : ℝ) * (k : ℝ) < (N : ℝ) := by
    have hc : ((4 * k + 1 : ℕ) : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
    push_cast at hc; linarith
  have h0N : (0 : ℕ) < N := by omega
  have h1N : (1 : ℕ) < N := by omega
  set a : Fin N := ⟨0, h0N⟩ with ha
  set b : Fin N := ⟨1, h1N⟩ with hb
  have hne_ab : a ≠ b := by rw [ha, hb]; simp
  set S : Finset (Fin N) := {a, b} with hS_def
  have haS : a ∈ S := by rw [hS_def]; exact Finset.mem_insert_self a {b}
  have hbS : b ∈ S := by
    rw [hS_def]; exact Finset.mem_insert_of_mem (Finset.mem_singleton_self b)
  have hScard : S.card = 2 := by rw [hS_def]; exact Finset.card_pair hne_ab
  set α : ℝ := (2 * (k : ℝ) - 2) * π / ((N : ℝ) - 4) with hα_def
  have hα0 : 0 < α := by
    rw [hα_def]; apply div_pos _ hN4; apply mul_pos _ hπ; linarith [hk2R]
  have hα_eq : ((N : ℝ) - 4) * α = (2 * (k : ℝ) - 2) * π := by
    rw [hα_def, mul_comm ((N : ℝ) - 4) ((2 * (k : ℝ) - 2) * π / ((N : ℝ) - 4)),
      div_mul_cancel₀ _ hN4ne]
  have hα2 : α < π / 2 := by
    rw [hα_def, div_lt_iff₀ hN4]
    nlinarith [hπ, h4kN, mul_pos hπ (show (0 : ℝ) < (N : ℝ) - 4 * (k : ℝ) by linarith)]
  have hak2 : saddleParam N k < π / 2 := by
    unfold saddleParam
    rw [div_lt_iff₀ hN2]
    nlinarith [hπ, h4kN, mul_pos hπ (show (0 : ℝ) < (N : ℝ) - 4 * (k : ℝ) by linarith)]
  have hground_lt : 2 * π * (k : ℝ) / (N : ℝ) < π / 2 := by
    rw [div_lt_iff₀ hNRpos]
    nlinarith [hπ, h4kN, mul_pos hπ (show (0 : ℝ) < (N : ℝ) - 4 * (k : ℝ) by linarith)]
  set d : Fin N → ℝ := fun i => if i ∈ S then π - α else α with hd_def
  have hdS : ∀ i, i ∈ S → d i = π - α := by
    intro i hi; rw [hd_def]; exact if_pos hi
  have hdnS : ∀ i, i ∉ S → d i = α := by
    intro i hi; rw [hd_def]; exact if_neg hi
  have hda : d a = π - α := hdS a haS
  have hdb : d b = π - α := hdS b hbS
  refine ⟨d, ?_, ?_, ?_, ?_, ?_⟩
  · intro i
    by_cases hi : i ∈ S
    · rw [hdS i hi, Set.mem_Ioo]
      exact ⟨by linarith [hπ, hα2], by linarith [hα0]⟩
    · rw [hdnS i hi, Set.mem_Ioo]
      exact ⟨by linarith [hπ, hα0], by linarith [hα2, hπ]⟩
  · have h1 : ∑ i ∈ S, d i = 2 * (π - α) := by
      have hc : ∑ i ∈ S, d i = ∑ _i ∈ S, (π - α) :=
        Finset.sum_congr rfl (fun i hi => hdS i hi)
      rw [hc, Finset.sum_const, hScard, nsmul_eq_mul]; norm_num
    have h2 : ∑ i ∈ univ \ S, d i = ((N : ℝ) - 2) * α := by
      have hc : ∑ i ∈ univ \ S, d i = ∑ _i ∈ univ \ S, α :=
        Finset.sum_congr rfl (fun i hi => hdnS i (Finset.mem_sdiff.mp hi).2)
      have hcard2 : (univ \ S).card = N - 2 := by
        rw [Finset.card_sdiff, Finset.inter_univ, Finset.card_univ,
          Fintype.card_fin, hScard]
      rw [hc, Finset.sum_const, hcard2, nsmul_eq_mul,
        Nat.cast_sub (by omega : 2 ≤ N)]
      norm_num
    calc ∑ i, d i = (∑ i ∈ univ \ S, d i) + (∑ i ∈ S, d i) :=
          (Finset.sum_sdiff (Finset.subset_univ S)).symm
      _ = ((N : ℝ) - 2) * α + 2 * (π - α) := by rw [h1, h2]
      _ = 2 * π * k := by linear_combination hα_eq
  · intro i j
    have hval : ∀ m, Real.sin (d m) = Real.sin α := by
      intro m
      by_cases hm : m ∈ S
      · rw [hdS m hm, Real.sin_pi_sub]
      · rw [hdnS m hm]
    rw [hval i, hval j]
  · intro hall
    have h0 := hall a
    rw [hda] at h0
    linarith [hα2, hground_lt, h0]
  · rintro ⟨i0, _hi0S, hi0rest⟩
    have contra : ∀ j, d j = π - α → j ≠ i0 → False := by
      intro j hdj hji0
      have hEq : π - α = saddleParam N k := hdj.symm.trans (hi0rest j hji0)
      linarith [hak2, hα2, hEq]
    by_cases hai0 : a = i0
    · exact contra b hdb (fun hbi0 => hne_ab (hai0.trans hbi0.symm))
    · exact contra a hda hai0

/-- HK.2 reconstructed: nonpositive common sine cannot carry winding k. -/
theorem winding_k_energy_isolates_ground_saddle_aux1 {N k : ℕ} (hk : 1 ≤ k)
    (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (hs : ∀ i, Real.sin (d i) ≤ 0) : False := by
  have hd : ∀ i, d i ≤ 0 := by
    intro i
    by_contra h
    exact absurd (hs i)
      (not_le.mpr (Real.sin_pos_of_pos_of_lt_pi (not_le.mp h) (hrange i).2))
  have hsum0 : ∑ i, d i ≤ 0 := Finset.sum_nonpos fun i _ => hd i
  have hpi := Real.pi_pos
  have hk' : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  rw [hsum] at hsum0
  nlinarith [hsum0, mul_pos hpi (show (0 : ℝ) < (k : ℝ) by linarith)]

/-- HK.3 reconstructed: the winding-count equation at general k. -/
theorem winding_k_energy_isolates_ground_saddle_aux2 {N k : ℕ} {α : ℝ}
    (d : Fin N → ℝ) (hval : ∀ i, d i = α ∨ d i = π - α)
    (hsum : ∑ i, d i = 2 * π * k) :
    ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * π
      + ((N : ℝ) - 2 * ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)) * α
      = 2 * π * k := by
  classical
  have hsplit := Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i ≠ α) d
  have hFsum : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
      = ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ) * (π - α) := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => d i ≠ α), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => d i ≠ α), (π - α) :=
      Finset.sum_congr rfl fun i hi =>
        (hval i).resolve_left (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
      = ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) * α := by
    have hconst : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), d i
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i ≠ α)), α :=
      Finset.sum_congr rfl fun i hi =>
        not_not.mp (Finset.mem_filter.mp hi).2
    rw [hconst, Finset.sum_const, nsmul_eq_mul]
  have hcard : (Finset.univ.filter (fun i => d i ≠ α)).card
      + (Finset.univ.filter (fun i => ¬(d i ≠ α))).card = N := by
    rw [Finset.card_filter_add_card_filter_not, Finset.card_univ, Fintype.card_fin]
  have hcardR : ((Finset.univ.filter (fun i => d i ≠ α)).card : ℝ)
      + ((Finset.univ.filter (fun i => ¬(d i ≠ α))).card : ℝ) = (N : ℝ) := by
    exact_mod_cast hcard
  linear_combination hsplit + hsum - hFsum - hGsum - α * hcardR

/-- HK.4 reconstructed: the range dichotomy `p < 2k ∧ 2p < N ∧ α-pin`.
    `N ≥ 4k+1` STRICT is load-bearing at both ends. -/
theorem winding_k_energy_isolates_ground_saddle_aux3 {N k p : ℕ} {α : ℝ}
    (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N) (hp : p ≤ N) (hα : 0 < α) (hα2 : α ≤ π / 2)
    (heq : (p : ℝ) * π + ((N : ℝ) - 2 * p) * α = 2 * π * k) :
    p < 2 * k ∧ 2 * p < N
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
  have hπ := Real.pi_pos
  have hNcast : (4 * (k : ℝ) + 1) ≤ (N : ℝ) := by exact_mod_cast hN
  have hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π := by
    linear_combination heq
  have h2pN : 2 * p < N := by
    by_contra hcon
    push_neg at hcon
    have hconR : (N : ℝ) ≤ 2 * (p : ℝ) := by exact_mod_cast hcon
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 2 * (p : ℝ) - N by linarith)
      (show (0 : ℝ) ≤ π / 2 - α by linarith), hαeq, hπ,
      mul_nonneg (show (0 : ℝ) ≤ (N : ℝ) - (4 * k + 1) by linarith) hπ.le]
  have hp2k : p < 2 * k := by
    by_contra hcon
    push_neg at hcon
    have hconR : (2 * (k : ℝ)) ≤ (p : ℝ) := by exact_mod_cast hcon
    have hNp : (0 : ℝ) < (N : ℝ) - 2 * (p : ℝ) := by
      have : (2 * (p : ℝ)) < (N : ℝ) := by exact_mod_cast h2pN
      linarith
    nlinarith [mul_pos hNp hα, hαeq,
      mul_nonneg (show (0 : ℝ) ≤ (p : ℝ) - 2 * (k : ℝ) by linarith) hπ.le]
  exact ⟨hp2k, h2pN, hαeq⟩

/-- HK.5 reconstructed: the faithful p-hot enumeration at general k. -/
theorem winding_k_energy_isolates_ground_saddle_aux4 {N k : ℕ} (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ) (hrange : ∀ i, d i ∈ Set.Ioo (-π) π)
    (hsum : ∑ i, d i = 2 * π * k) (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j)) :
    ∃ (p : ℕ) (α : ℝ), p < 2 * k ∧ 2 * p < N ∧ 0 < α ∧ α < π / 2
      ∧ ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π
      ∧ (∀ i, d i = α ∨ d i = π - α)
      ∧ (Finset.univ.filter (fun i => d i = π - α)).card = p := by
  classical
  have hNpos : 0 < N := by omega
  have i0 : Fin N := ⟨0, hNpos⟩
  rcases le_or_gt (Real.sin (d i0)) 0 with hs | hs
  · exact (winding_k_energy_isolates_ground_saddle_aux1 hk d hrange hsum
      fun i => by rw [hcrit i i0]; exact hs).elim
  · have hval := bonds_two_valued hs d hrange fun i => hcrit i i0
    set α : ℝ := Real.arcsin (Real.sin (d i0)) with hα_def
    have hα : 0 < α := by rw [hα_def]; exact Real.arcsin_pos.mpr hs
    have hα2 : α ≤ π / 2 := by rw [hα_def]; exact Real.arcsin_le_pi_div_two _
    have heq := winding_k_energy_isolates_ground_saddle_aux2 d hval hsum
    have hcardU : (Finset.univ : Finset (Fin N)).card = N := by
      rw [Finset.card_univ, Fintype.card_fin]
    have hp : (Finset.univ.filter (fun i => d i ≠ α)).card ≤ N :=
      le_trans (Finset.card_filter_le _ _) (le_of_eq hcardU)
    obtain ⟨hpk, hpN, hαeq⟩ :=
      winding_k_energy_isolates_ground_saddle_aux3 hk hN hp hα hα2 heq
    have hα2strict : α < π / 2 := by
      rcases lt_or_eq_of_le hα2 with h | h
      · exact h
      · exfalso
        rw [h] at hαeq
        have hNcast : (4 * (k : ℝ) + 1) ≤ (N : ℝ) := by exact_mod_cast hN
        nlinarith [hαeq, Real.pi_pos,
          mul_pos (show (0 : ℝ) < (N : ℝ) - 4 * (k : ℝ) by linarith) Real.pi_pos]
    have hne : α ≠ π - α := by
      intro hcon; linarith
    have hsets : (Finset.univ.filter (fun i => d i = π - α))
        = (Finset.univ.filter (fun i => d i ≠ α)) := by
      ext i
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      constructor
      · intro hi he; exact hne (hi.symm.trans he).symm
      · intro hi; exact (hval i).resolve_left hi
    refine ⟨(Finset.univ.filter (fun i => d i ≠ α)).card, α,
      hpk, hpN, hα, hα2strict, hαeq, hval, ?_⟩
    rw [hsets]

/-- HK.6 reconstructed: the `p ≤ 1` members are exactly ground and one-hot saddle. -/
theorem winding_k_energy_isolates_ground_saddle_aux5 {N k : ℕ} (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ) {p : ℕ} {α : ℝ}
    (hpk : p < 2 * k) (hpN : 2 * p < N) (hα0 : 0 < α) (hα2 : α < π / 2)
    (hαeq : ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π)
    (hval : ∀ i, d i = α ∨ d i = π - α)
    (hcard : (Finset.univ.filter (fun i => d i = π - α)).card = p)
    (hp1 : p ≤ 1) :
    (∀ i, d i = 2 * π * k / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N k ∧ ∀ i, i ≠ i0 → d i = saddleParam N k) := by
  classical
  have hNR : (0 : ℝ) < (N : ℝ) := by
    have : 0 < N := by omega
    exact_mod_cast this
  have hN2pos : (0 : ℝ) < (N : ℝ) - 2 := by
    have hNc : (4 * (k : ℝ) + 1) ≤ (N : ℝ) := by exact_mod_cast hN
    have hk' : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
    linarith
  interval_cases p
  · left
    have hempty : (Finset.univ.filter (fun i => d i = π - α)) = ∅ :=
      Finset.card_eq_zero.mp hcard
    have hnot : ∀ i, ¬ (d i = π - α) := by
      intro i hi
      have hmem : i ∈ (Finset.univ.filter (fun i => d i = π - α)) :=
        Finset.mem_filter.mpr ⟨Finset.mem_univ i, hi⟩
      rw [hempty] at hmem
      simp at hmem
    have hαval : α = 2 * π * k / N := by
      rw [eq_div_iff hNR.ne']
      push_cast at hαeq
      linear_combination hαeq
    intro i
    rw [(hval i).resolve_right (hnot i), hαval]
  · right
    have hsp : saddleParam N k = α := by
      unfold saddleParam
      rw [div_eq_iff hN2pos.ne']
      push_cast at hαeq
      linear_combination -hαeq
    obtain ⟨j0, hj0⟩ := Finset.card_eq_one.mp hcard
    refine ⟨j0, ?_, ?_⟩
    · have hmem : j0 ∈ (Finset.univ.filter (fun i => d i = π - α)) := by
        rw [hj0]; exact Finset.mem_singleton_self j0
      have hdj0 : d j0 = π - α := (Finset.mem_filter.mp hmem).2
      rw [hdj0, hsp]
    · intro i hi
      have hnotmem : i ∉ (Finset.univ.filter (fun i => d i = π - α)) := by
        rw [hj0]
        simp only [Finset.mem_singleton]
        exact hi
      have hne : d i ≠ π - α := fun he =>
        hnotmem (Finset.mem_filter.mpr ⟨Finset.mem_univ i, he⟩)
      rw [(hval i).resolve_right hne, hsp]

/-- **HK.8 (CONDITIONAL energy isolation — recovers the two-family picture)** —
    the naive "ground ∨ one-hot saddle" is RESTORED inside an energy ceiling at
    the saddle level, PROVIDED the p-hot energies climb past `S_k` for `p ≥ 2`.
    The climb hypothesis `hclimb` is the one genuinely new analytic lemma
    (energy strictly increasing in the reflected-count); numerics confirm it in
    C1-SUB (E₀ < E₁ = S_k < E₂ < …) and it is NOT proved here - it is proved
    as `Ep_above_saddle` (campaign #25) and composed in-file by
    `winding_k_energy_isolates_ground_saddle_unconditional` (campaign #26). -/
theorem winding_k_energy_isolates_ground_saddle {N k : ℕ} {κ : ℝ} (hκ : 0 < κ)
    (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π * k)
    (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j))
    (hEcap : E κ d ≤ saddleLevel N κ k)
    (hclimb : ∀ (p : ℕ) (α : ℝ), 2 ≤ p → p < 2 * k →
        ((N : ℝ) - 2 * (p : ℝ)) * α = (2 * (k : ℝ) - (p : ℝ)) * π →
        (∀ i, d i = α ∨ d i = π - α) →
        (Finset.univ.filter (fun i => d i = π - α)).card = p →
        saddleLevel N κ k < E κ d) :
    (∀ i, d i = 2 * π * k / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N k ∧ ∀ i, i ≠ i0 → d i = saddleParam N k) := by
  obtain ⟨p, α, hpk, hpN, hα0, hα2, hαeq, hval, hcard⟩ :=
    winding_k_energy_isolates_ground_saddle_aux4 hk hN d hrange hsum hcrit
  by_cases hp2 : 2 ≤ p
  · exact absurd hEcap (not_le.mpr (hclimb p α hp2 hpk hαeq hval hcard))
  · exact winding_k_energy_isolates_ground_saddle_aux5 hk hN d hpk hpN hα0 hα2 hαeq hval hcard
      (by omega)
  -- BLUEPRINT: `obtain ⟨p, α, hpk, hpN, hα0, hα2, hαeq, hval, hcard⟩ :=
  --   winding_k_classification hk hN d hrange hsum hcrit`.  `by_cases hp2 : 2 ≤ p`.
  --   • `2 ≤ p`: `hclimb p α hp2 hpk hαeq hval hcard` gives `S_k < E κ d`,
  --     contradicting `hEcap`.  ⊥.
  --   • `¬ 2 ≤ p` (`p ≤ 1`): `winding_k_ground_or_saddle_of_hotCount_le_one hk hN
  --     d hpk hpN hα0 hα2 hαeq hval hcard (by omega)`.
  --   MISSING LEMMA behind `hclimb`: `E` of the p-hot profile is
  --   `κ·(N - (N-2p)·cos α_p)`, STRICTLY INCREASING in p (equivalently
  --   `g(p) := (N-2p)·cos α_p` strictly DECREASING) on `[0, 2k)` — a 1-D
  --   calculus fact, numerically verified (k=2,N=40: E₀≈1.96 < E₁=S₂≈3.16 <
  --   E₂≈4.55 < E₃≈6.15) - PROVED in campaign #25 (Ep_strict_mono /
  --   Ep_above_saddle) and composed in-file by campaign #26.
/-! ## Campaign #25: the E_p MONOTONICITY LADDER - discharging hclimb
    (upgrades campaign #24's conditional isolation to UNCONDITIONAL).

    THE DESIGN (lead, 2026-07-20; numerics record
    ep_monotonicity_probe.json: zero violations over the full admissible
    grid, worst margin ~1/N^3 at the threshold):
    E_p = kappa (N - (N-2p) cos alpha_p), alpha_p = (2k-p)pi/(N-2p).
    Parametrize the step p -> p+1 by u = N-2p, c = 2k-p and the path
      G(t) = (u-2t) cos( (c-t) pi / (u-2t) ),  t in [0,1].
    With theta(t) = (c-t)pi/(u-2t) and psi(t) = pi (u-2c) / (2(u-2t)),
    the chain rule collapses EXACTLY to
      G'(t) = -2 cos theta + 2 psi sin theta
            = -2 ( sin psi - psi cos psi )  < 0
    because tan psi > psi on (0, pi/2).  Hence
    h(p) = G(0) > G(1) = h(p+1), i.e. E_p < E_{p+1}.  Range checks:
    psi in (0, pi/2) needs u >= 2c + 1 (the N >= 4k+1 regime) and
    c >= 2 (from p + 1 < 2k).  The tiny probe margins (~psi^3/3,
    psi ~ pi/(2N)) are why crude slack bounds CANNOT work - the proof
    routes through the exact psi-identity above. -/


/-- **W25a — the engine**: `psi cos psi < sin psi` on `(0, pi/2)`
    (equivalently `tan psi > psi`). -/
theorem sin_sub_mul_cos_pos {x : ℝ} (h0 : 0 < x) (h2 : x < π / 2) :
    x * Real.cos x < Real.sin x := by
  -- F(t) := sin t - t cos t;  F 0 = 0;  F'(t) = t sin t > 0 on (0, π/2).
  have hderiv : ∀ y : ℝ,
      HasDerivAt (fun t => Real.sin t - t * Real.cos t) (y * Real.sin y) y := by
    intro y
    have h1 : HasDerivAt Real.sin (Real.cos y) y := Real.hasDerivAt_sin y
    have h2m : HasDerivAt (fun t => t * Real.cos t)
        (1 * Real.cos y + y * -Real.sin y) y :=
      (hasDerivAt_id y).mul (Real.hasDerivAt_cos y)
    have h3 := h1.sub h2m
    have hval : Real.cos y - (1 * Real.cos y + y * -Real.sin y) = y * Real.sin y := by
      ring
    rw [hval] at h3
    exact h3
  have hmono : StrictMonoOn (fun t => Real.sin t - t * Real.cos t)
      (Set.Icc 0 (π / 2)) := by
    apply strictMonoOn_of_deriv_pos (convex_Icc _ _)
    · exact fun t _ => (hderiv t).continuousAt.continuousWithinAt
    · intro m hm
      rw [interior_Icc] at hm
      obtain ⟨hm1, hm2⟩ := hm
      rw [(hderiv m).deriv]
      exact mul_pos hm1
        (Real.sin_pos_of_pos_of_lt_pi hm1 (by linarith [Real.pi_pos]))
  have hmem0 : (0 : ℝ) ∈ Set.Icc (0 : ℝ) (π / 2) := ⟨le_refl 0, by positivity⟩
  have hmemx : x ∈ Set.Icc (0 : ℝ) (π / 2) := ⟨h0.le, h2.le⟩
  have hlt := hmono hmem0 hmemx h0
  simp only [Real.sin_zero, Real.cos_zero, zero_mul, sub_zero] at hlt
  linarith

/-- Private algebraic identity (over ℝ; `field_simp` + `ring`) for
    `step_path_decreases`: the raw chain-rule derivative of the path
    `G t = (u-2t) cos((c-t)π/(u-2t))` equals the clean psi-ready form
    `-2 cos r + sin r · π(u-2c)/(u-2m)` - the second RHS term collapses
    because one factor `(u-2m)` cancels a power of the square denominator. -/
private theorem step_path_decreases_aux2 (u c m A S : ℝ) (hmne : u - 2*m ≠ 0) :
    -2 * A + S * (π * (u - 2*c) / (u - 2*m)) =
    -(2 * 1) * A +
      (u - 2 * m) * (-S * ((-1 * π * (u - 2 * m) - (c - m) * π * -(2 * 1)) / (u - 2 * m) ^ 2)) := by
  field_simp
  ring

/-- **W25b — the step function's derivative** (the psi-collapse):
    for reals `u c : ℝ` with `2 * c + 1 ≤ u` (the exact N ≥ 4k+1
    regime) and `2 ≤ c` (p + 1 < 2k gives c = 2k - p ≥ 2), the path
    `G t = (u - 2*t) * cos ((c - t) * π / (u - 2*t))` satisfies
    `G 1 < G 0`. -/
theorem step_path_decreases {u c : ℝ} (hc : 2 ≤ c) (hu : 2 * c + 1 ≤ u) :
    (u - 2) * Real.cos ((c - 1) * π / (u - 2))
      < u * Real.cos (c * π / u) := by
  have hπ := Real.pi_pos
  have key : ∀ m : ℝ, 0 < u - 2*m →
      HasDerivAt (fun t => (u - 2*t) * Real.cos ((c - t) * π / (u - 2*t)))
        (-2 * Real.cos ((c - m) * π / (u - 2*m))
          + Real.sin ((c - m) * π / (u - 2*m)) * (π * (u - 2*c) / (u - 2*m))) m := by
    intro m hm
    have hmne : u - 2*m ≠ 0 := ne_of_gt hm
    have hf : HasDerivAt (fun t => (c - t) * π) (-1 * π) m :=
      ((hasDerivAt_id m).const_sub c).mul_const π
    have hg : HasDerivAt (fun t => u - 2*t) (-(2*1)) m :=
      ((hasDerivAt_id m).const_mul 2).const_sub u
    have hr : HasDerivAt (fun t => (c - t) * π / (u - 2*t))
        ((-1 * π * (u - 2*m) - (c - m) * π * -(2*1)) / (u - 2*m)^2) m :=
      hf.div hg hmne
    have hcos := hr.cos
    have hG := hg.mul hcos
    rw [step_path_decreases_aux2 u c m (Real.cos ((c - m) * π / (u - 2*m)))
        (Real.sin ((c - m) * π / (u - 2*m))) hmne]
    exact hG
  have hanti : StrictAntiOn (fun t => (u - 2*t) * Real.cos ((c - t) * π / (u - 2*t)))
      (Set.Icc (0:ℝ) 1) := by
    apply strictAntiOn_of_deriv_neg (convex_Icc _ _)
    · intro x hx
      obtain ⟨_, hx1⟩ := hx
      have hxpos : 0 < u - 2*x := by linarith
      exact (key x hxpos).continuousAt.continuousWithinAt
    · intro m hm
      rw [interior_Icc] at hm
      obtain ⟨hm0, hm1⟩ := hm
      have hmpos : 0 < u - 2*m := by linarith
      have hmne : u - 2*m ≠ 0 := ne_of_gt hmpos
      have h2d : (2:ℝ) * (u - 2*m) ≠ 0 := mul_ne_zero two_ne_zero hmne
      rw [(key m hmpos).deriv]
      set ψ := π * (u - 2*c) / (2 * (u - 2*m)) with hψ
      have hmc : m < c := by linarith
      have huc : 0 < u - 2*c := by linarith
      have hψ1 : 0 < ψ := by
        rw [hψ]; exact div_pos (mul_pos hπ huc) (by linarith)
      have hψ2 : ψ < π / 2 := by
        rw [hψ, div_lt_iff₀ (by linarith : (0:ℝ) < 2 * (u - 2*m))]
        have he : π / 2 * (2 * (u - 2*m)) = π * (u - 2*m) := by ring
        rw [he]
        exact mul_lt_mul_of_pos_left (by linarith) hπ
      have hsum : (c - m) * π / (u - 2*m) + ψ = π / 2 := by
        rw [hψ, div_add_div _ _ hmne h2d, div_eq_iff (mul_ne_zero hmne h2d)]
        ring
      have hrpsi : (c - m) * π / (u - 2*m) = π/2 - ψ := eq_sub_of_add_eq hsum
      have hcosr : Real.cos ((c - m) * π / (u - 2*m)) = Real.sin ψ := by
        rw [hrpsi, Real.cos_pi_div_two_sub]
      have hsinr : Real.sin ((c - m) * π / (u - 2*m)) = Real.cos ψ := by
        rw [hrpsi, Real.sin_pi_div_two_sub]
      have h2psi : π * (u - 2*c) / (u - 2*m) = 2 * ψ := by
        rw [hψ, mul_div_assoc', div_eq_div_iff hmne h2d]
        ring
      rw [hcosr, hsinr, h2psi]
      have haux := sin_sub_mul_cos_pos hψ1 hψ2
      nlinarith [haux]
  have h0mem : (0:ℝ) ∈ Set.Icc (0:ℝ) 1 := ⟨le_refl _, by norm_num⟩
  have h1mem : (1:ℝ) ∈ Set.Icc (0:ℝ) 1 := ⟨by norm_num, le_refl _⟩
  have hres := hanti h0mem h1mem (by norm_num : (0:ℝ) < 1)
  simp only [mul_one, mul_zero, sub_zero] at hres
  exact hres

/-- **W25c — the E_p ladder is strictly increasing** (integer form):
    for `1 ≤ k`, `4 * k + 1 ≤ N`, `p + 1 < 2 * k`:
    `E_p < E_{p+1}` in the closed form `κ (N - (N-2p) cos alpha_p)`,
    `κ > 0`. -/
theorem Ep_strict_mono {N k p : ℕ} {κ : ℝ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (hp : p + 1 < 2 * k) :
    κ * ((N : ℝ) - ((N : ℝ) - 2 * p)
        * Real.cos ((2 * k - p : ℕ) * π / ((N : ℝ) - 2 * p)))
      < κ * ((N : ℝ) - ((N : ℝ) - 2 * (p + 1 : ℕ))
        * Real.cos ((2 * k - (p + 1) : ℕ) * π / ((N : ℝ) - 2 * (p + 1 : ℕ)))) := by
  -- USES `step_path_decreases` (W25b):
  -- map the integer p -> p+1 step onto the real path with u := N - 2p,
  -- c := (2k - p). Nat-cast sub-safety from p + 1 < 2 * k.
  have hple : p ≤ 2 * k := by omega
  have hp1le : p + 1 ≤ 2 * k := by omega
  have hcastc : ((2 * k - p : ℕ) : ℝ) = 2 * (k : ℝ) - (p : ℝ) := by
    rw [Nat.cast_sub hple]; push_cast; ring
  have hc2 : (2 : ℝ) ≤ ((2 * k - p : ℕ) : ℝ) := by
    have h : 2 ≤ 2 * k - p := by omega
    exact_mod_cast h
  have hu2 : 2 * ((2 * k - p : ℕ) : ℝ) + 1 ≤ (N : ℝ) - 2 * (p : ℝ) := by
    rw [hcastc]
    have h2 : (4 : ℝ) * (k : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast hN
    linarith
  have hstep := step_path_decreases (u := (N : ℝ) - 2 * (p : ℝ))
      (c := ((2 * k - p : ℕ) : ℝ)) hc2 hu2
  have e1 : (N : ℝ) - 2 * ((p + 1 : ℕ) : ℝ) = ((N : ℝ) - 2 * (p : ℝ)) - 2 := by
    push_cast; ring
  have e2 : ((2 * k - (p + 1) : ℕ) : ℝ) = ((2 * k - p : ℕ) : ℝ) - 1 := by
    rw [Nat.cast_sub hp1le, Nat.cast_sub hple]; push_cast; ring
  refine mul_lt_mul_of_pos_left ?_ hκ
  rw [e1, e2]
  linarith [hstep]

/-- W25d helper: the closed-form energy level `E_q` as a function of the
    reflected-count `q`.  Its unfolding at `q` and at `q + 1` matches, on the
    nose, the two sides of `Ep_strict_mono`, and at `q = 1` it is `S_k`. -/
private noncomputable def Ep_above_saddle_aux1 (N k : ℕ) (κ : ℝ) (q : ℕ) : ℝ :=
  κ * ((N : ℝ) - ((N : ℝ) - 2 * q)
    * Real.cos ((2 * k - q : ℕ) * π / ((N : ℝ) - 2 * q)))

/-- W25d helper (the inline ring identity): the saddle level `S_k` is exactly
    the `q = 1` closed form, because `saddleParam N k = (2k-1)π/(N-2) = α₁`. -/
private theorem Ep_above_saddle_aux2 {N k : ℕ} {κ : ℝ} (hk : 1 ≤ k) :
    saddleLevel N κ k = Ep_above_saddle_aux1 N k κ 1 := by
  have hle : (1 : ℕ) ≤ 2 * k := by omega
  have hcast : ((2 * k - 1 : ℕ) : ℝ) = 2 * (k : ℝ) - 1 := by
    rw [Nat.cast_sub hle]; push_cast; ring
  have harg : (2 * π * (k : ℝ) - π) / ((N : ℝ) - 2)
      = (2 * (k : ℝ) - 1) * π / ((N : ℝ) - 2 * 1) := by ring
  unfold saddleLevel Ep_above_saddle_aux1 saddleParam
  rw [hcast, Nat.cast_one, harg]
  ring

/-- W25d helper: one rung of the ladder, phrased on `Ep_above_saddle_aux1`
    (this is exactly `Ep_strict_mono` after unfolding the level). -/
private theorem Ep_above_saddle_aux3 {N k p : ℕ} {κ : ℝ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (hp : p + 1 < 2 * k) :
    Ep_above_saddle_aux1 N k κ p < Ep_above_saddle_aux1 N k κ (p + 1) := by
  unfold Ep_above_saddle_aux1
  exact Ep_strict_mono hκ hk hN hp

/-- W25d helper: the full chain `E₁ < E_q` for `2 ≤ q < 2k`, by induction
    from the base `q = 2` upward (transitivity of the single-rung step). -/
private theorem Ep_above_saddle_aux4 {N k : ℕ} {κ : ℝ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) :
    ∀ q, 2 ≤ q → q < 2 * k →
      Ep_above_saddle_aux1 N k κ 1 < Ep_above_saddle_aux1 N k κ q := by
  intro q hq2
  induction q, hq2 using Nat.le_induction with
  | base => intro hbk; exact Ep_above_saddle_aux3 hκ hk hN (by omega)
  | succ n hn ih =>
      intro hqk
      exact lt_trans (ih (by omega)) (Ep_above_saddle_aux3 hκ hk hN (by omega))

/-- **W25d — every p ≥ 2 family sits strictly above the saddle**
    (the hclimb discharge): for `1 ≤ k`, `4k + 1 ≤ N`, `2 ≤ p < 2k`,
    the p-hot level exceeds `S_k` (= the p = 1 level). -/
theorem Ep_above_saddle {N k p : ℕ} {κ : ℝ} (hκ : 0 < κ) (hk : 1 ≤ k)
    (hN : 4 * k + 1 ≤ N) (hp2 : 2 ≤ p) (hpk : p < 2 * k) :
    saddleLevel N κ k
      < κ * ((N : ℝ) - ((N : ℝ) - 2 * p)
        * Real.cos ((2 * k - p : ℕ) * π / ((N : ℝ) - 2 * p))) := by
  rw [Ep_above_saddle_aux2 hk]
  exact Ep_above_saddle_aux4 hκ hk hN p hp2 hpk

/-! ## Campaign #26: the UNCONDITIONAL isolation - #24 (+) #25 composed in-file. -/

/-- **W26 — the unconditional two-family classification.** The climb lemma
    `Ep_above_saddle` discharges the `hclimb` premise of the conditional
    statement `winding_k_energy_isolates_ground_saddle`, upgrading it to an
    unconditional form: every configuration solving the sine-coincidence
    system with `∑ i, d i = 2πk` and value `E κ d ≤ saddleLevel N κ k` is
    either the equidistributed profile `d i = 2πk/N` for all `i`, or a
    single-index profile with `d i0 = π - saddleParam N k` at one index and
    `d i = saddleParam N k` at every other index. The discharge is by the
    filter-split identity `E κ d = κ (N - (N - 2p) cos α)` for a `p`-hot
    profile, whose right side coincides with the `Ep_above_saddle` bound. -/
theorem winding_k_energy_isolates_ground_saddle_unconditional {N k : ℕ} {κ : ℝ}
    (hκ : 0 < κ) (hk : 1 ≤ k) (hN : 4 * k + 1 ≤ N) (d : Fin N → ℝ)
    (hrange : ∀ i, d i ∈ Set.Ioo (-π) π) (hsum : ∑ i, d i = 2 * π * k)
    (hcrit : ∀ i j, Real.sin (d i) = Real.sin (d j))
    (hEcap : E κ d ≤ saddleLevel N κ k) :
    (∀ i, d i = 2 * π * k / N) ∨
    (∃ i0 : Fin N, d i0 = π - saddleParam N k ∧ ∀ i, i ≠ i0 → d i = saddleParam N k) := by
  classical
  apply winding_k_energy_isolates_ground_saddle hκ hk hN d hrange hsum hcrit hEcap
  intro p α hp2 hpk hαeq hval hcard
  -- denominator positivity: `2p < 4k ≤ N - 1 < N`
  have h2pN : 2 * p < N := by omega
  have hNp2 : (0 : ℝ) < (N : ℝ) - 2 * (p : ℝ) := by
    have : (2 * (p : ℝ)) < (N : ℝ) := by exact_mod_cast h2pN
    linarith
  have hpN' : p ≤ N := by omega
  -- solve the winding constraint for `α`
  have hα : α = (2 * (k : ℝ) - (p : ℝ)) * π / ((N : ℝ) - 2 * (p : ℝ)) := by
    rw [eq_div_iff hNp2.ne']
    linear_combination hαeq
  -- sum of `cos (d i)` over the reflected block (`d i = π - α`, `card = p`)
  have hSsum : ∑ i ∈ Finset.univ.filter (fun i => d i = π - α), Real.cos (d i)
      = (p : ℝ) * (-Real.cos α) := by
    have hcongr : ∑ i ∈ Finset.univ.filter (fun i => d i = π - α), Real.cos (d i)
        = ∑ _i ∈ Finset.univ.filter (fun i => d i = π - α), (-Real.cos α) :=
      Finset.sum_congr rfl fun i hi => by
        rw [(Finset.mem_filter.mp hi).2, Real.cos_pi_sub]
    rw [hcongr, Finset.sum_const, hcard, nsmul_eq_mul]
  -- the complement has `card = N - p`
  have hcardc : (Finset.univ.filter (fun i => ¬(d i = π - α))).card = N - p := by
    have hsum2 := Finset.card_filter_add_card_filter_not (s := Finset.univ) (fun i => d i = π - α)
    rw [Finset.card_univ, Fintype.card_fin, hcard] at hsum2
    omega
  -- sum of `cos (d i)` over the complement (`d i = α`)
  have hGsum : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i = π - α)), Real.cos (d i)
      = ((N : ℝ) - (p : ℝ)) * Real.cos α := by
    have hcongr : ∑ i ∈ Finset.univ.filter (fun i => ¬(d i = π - α)), Real.cos (d i)
        = ∑ _i ∈ Finset.univ.filter (fun i => ¬(d i = π - α)), Real.cos α :=
      Finset.sum_congr rfl fun i hi => by
        rw [(hval i).resolve_right (Finset.mem_filter.mp hi).2]
    rw [hcongr, Finset.sum_const, hcardc, nsmul_eq_mul, Nat.cast_sub hpN']
  -- total `cos` sum collapses to `(N - 2p) cos α`
  have hsumcos : ∑ i, Real.cos (d i) = ((N : ℝ) - 2 * (p : ℝ)) * Real.cos α := by
    rw [← Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => d i = π - α)
        (fun i => Real.cos (d i)), hSsum, hGsum]
    ring
  have hone : (∑ _i : Fin N, (1 : ℝ)) = (N : ℝ) := by
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, mul_one]
  -- closed form for the `p`-hot value
  have hE : E κ d = κ * ((N : ℝ) - ((N : ℝ) - 2 * (p : ℝ)) * Real.cos α) := by
    unfold E
    rw [Finset.sum_sub_distrib, hsumcos, hone]
  -- bridge the `ℕ`-subtraction cast in the climb bound
  have hbridge : ((2 * k - p : ℕ) : ℝ) = 2 * (k : ℝ) - (p : ℝ) := by
    rw [Nat.cast_sub (le_of_lt hpk)]; push_cast; ring
  have hEp := Ep_above_saddle hκ hk hN hp2 hpk
  rw [hbridge, ← hα] at hEp
  rw [hE]
  exact hEp

end LabelTowerCore
