# MASTER THEOREM v1 — the certified label package (G0)

```text
status = G0 DRAFTED 2026-07-19 (operator direction: "design a better
  goal"). This document IS the goal: one composite statement, four
  parts, every part pinned to sealed items, every conditional named
  INSIDE the statement. The hunt list below is DERIVED from it - a
  residual is work if and only if it advances a part.
  RECONCILED 2026-08-09 (MATH-SEAL-RECON-01): post-seal status sweep
  only - no theorem change; the pre-seal enumeration is preserved in
  git history.
naming = in-corpus this is THE MASTER THEOREM (label package). Any
  discourse-vocabulary reading of it belongs to the interpretation
  layer under its charter - not here (firewall unchanged).
done-criterion = the statement below holds with the REMAINING
  CONDITIONS ENUMERATED IN FULL (reconciled 2026-08-09): C-2 (the
  library pin, Part III backbone) + the A6 fence over the
  FULL-EXPECTATION reading E_q[D(0)] of the package/full LP.5(c)
  upper ONLY + the E6 parameter class (47 CONDITIONAL + 7 typed
  rows; instantiation point eps = 0.045 per the F-1 adjudication).
  The excursion rows PROD-EXCURSION + PROD-EXCURSION-COND are
  DISCHARGED (E2 campaign, XE-11-authorized 2026-08-02); the initial
  delay GAP-LP-RECUR @ A6 is DISCHARGED AT THE MIN OBJECT AT RATE
  STRENGTH (E5, XE-14, 2026-08-02); LS-MIN-MIG and LP-MIN-MIG
  DISCHARGED (XM-R16); C-1 RESOLVED 2026-07-20. A first human reader
  receives THIS PAGE + the repro kit (tag math-v2.0, public, DOI
  10.5281/zenodo.21776818), not a corpus tour.
```

## THE STATEMENT (model vocabulary)

For the reversible bond-energy family on the N-torus (and its coupled
products), at every admissible (N, k) regime:

```text
PART I   (EXISTENCE + EXHAUSTIVE CLASSIFICATION). The winding sectors
  are nonempty open classes, the label is integer and locally constant
  off the antipodal set, and the slice-critical configurations are
  EXHAUSTIVELY classified: ground and one-hot saddle for w = 1
  (N >= 5), ground only for w = 0, the mirrored pair for w = -1, the
  sharp C1-SUB endpoints at k = 1, 2, 3, and the ladder
  m_k < 2 kappa < L_k < S_k; on the antipodal set the parity floor
  governs (single-pi excluded, two-pi carries at 4 kappa, family
  approaches 2 kappa).
PART II  (READOUT OPACITY). No measurable function of the energy
  readout recovers the label: sealed at the volume form and for every
  Gibbs density, transferred to the coupled products, and stable under
  the recorded skew classes.
PART III (QUANTIFIED PERSISTENCE). Label changes are barrier-gated:
  the ridge law and band give the deterministic floor; exit-time
  LOWER bounds hold with the exact compact-attractor sources pinned
  (X4); the DOMAIN-EXIT upper/sharp law holds via the verified
  local route (C-1 RESOLVED 2026-07-20: repair + in-lane migration
  + delta-check); the LABEL uppers are two-sided (LS-MIN-MIG
  discharged) and the COUPLED upper HOLDS - the excursion rows
  PROD-EXCURSION + PROD-EXCURSION-COND are DISCHARGED (E2 campaign,
  XE-11-authorized 2026-08-02) and the initial delay is DISCHARGED
  AT THE MIN OBJECT AT RATE STRENGTH (E5, XE-14); only the
  package/full upper's FULL-EXPECTATION reading E_q[D(0)] remains
  under its verbatim A6 fence.
  The discrete-kernel backbone is sealed 4/5 [C-2].
PART IV  (COUPLING + MAINTENANCE STABILITY). The label structure
  survives coupling and maintenance: the product shell is strict, the
  product saddle is located and critical at EVERY coupling with exact
  level and index, the pinning-tori census is sealed through the
  band top, and the maintenance classes transfer level and
  criticality.
```

## Named conditionals (inside the statement, not hidden)

```text
C-1 = RESOLVED 2026-07-20: SH.2'-LOCAL v2 fully verified (fleet +
  XF corrections + A4/A5 + in-lane consumer migration + five-point
  delta-check PASS). Part III's DOMAIN-EXIT upper is UNCONDITIONAL
  on the local route; the LABEL/COUPLED uppers' migration rows
  LS-MIN-MIG / LP-MIN-MIG were DISCHARGED
  (lane-minmig-proofs, release authorized by XM-R16).
  (Kept as the record of what C-1 was.)
C-2 = harris_geometric (S4) open at the library pin (invariant-
  measure existence not constructible there; obstruction recorded;
  variant route available). Part III's abstract backbone is 4/5.

POST-SEAL RECONCILIATION (2026-08-09, MATH-SEAL-RECON-01): the
  excursion rows this page carried pre-seal as live conditions were
  DISCHARGED by the E2 campaign (XE-11, 2026-08-02), and
  GAP-LP-RECUR @ A6 was DISCHARGED AT THE MIN OBJECT AT RATE
  STRENGTH (E5, XE-14, 2026-08-02). The LIVE conditionals are
  exactly: C-2; the A6 fence over the full-expectation reading
  E_q[D(0)] of the package/full upper; and the E6 parameter class
  (47 CONDITIONAL + 7 typed rows, eps = 0.045). See
  governance/math-v2.0-tag-annotation.md. Hunt-list entries below
  are HISTORY at their recorded dates, not live status.
```

## Part-to-pillar pin map (Lean names; prose rows where noted)

```text
I  : sector_nonempty, isOpen_sector, winding_integer,
     w_locallyConstant; winding_one/zero/neg_one_classification
     (+ _critical forms); C1-SUB endpoints (k = 1, 2, 3); ladder rungs
     (2kappa < L_k < S_k, ridge maximality); pi_bond_winding_strict,
     two_pi_bonds_sum/_energy, delta_family_* (the parity floor);
     campaign #25: sin_sub_mul_cos_pos, step_path_decreases,
     Ep_strict_mono, Ep_above_saddle (hclimb discharged); campaign
     #26: winding_k_energy_isolates_ground_saddle_unconditional
     (the composition - no residual hypothesis).
II : no_measurable_readout_recovers_winding; refl/parity machinery
     (bond_refl, J_refl, windSum_refl, measurePreserving_refl);
     rho_beta transfer; product form = P.4 (prose over sealed legs).
III: THE MASTER RATE DISPLAY (lane-master-rate-display-v1.md);
     RidgeLaw file (7); saddle_band, ground_band, product_band,
     tube_exclusion_unconditional; E_spBond; Gkj_above_band_top(_sharp);
     T2/T3 rows with the X4 Condition-(A) pin; [C-1] SH.2'-LOCAL v2
     (prose, Stage C complete + XF corrections); [C-2] HarrisDiscrete
     4/5 (invariant_iterK, drift_iterate, sa_transfer,
     readout_domination_transfer).
IV : prod_shell_k1; Gkj_level/_above_saddle(_coupled)/_trap_second_
     order_flat; prod_saddle_level/_coupled_critical/_stable_mode_pos/
     _hot_mode_det_neg; sin_spBond, Wstar_spBond_zero; hclass +
     composed transfer (#12/#13); epsilon_0 piecewise (X3 F5 repair);
     hessForm_reflect + negated-sector Morse layer (#21).
```

## The DERIVED hunt list (exhaustive; nothing else is on the path)

```text
H1 (Part I)                : DONE 2026-07-20 (campaign #24, 165/165):
                             the 2k-family enumeration + true
                             variational form + the sealed 2-hot
                             counterexample + conditional isolation
                             (hclimb). 2026-07-20 CAMPAIGNS #25+#26:
                             hclimb DISCHARGED (E_p ladder) and the
                             composition LANDED in-file (170/170) -
                             the general-k isolation is UNCONDITIONAL
                             with no residual hypothesis.
H2 (Part III)              : DONE 2026-07-20 - C-1 LIFTED (Stage
                             D-2 + A4/A5 + migration + delta-check
                             all passed).
H3 (Part III, the roof)    : CLOSED 2026-07-20 - XH-R3 signed
                             REPAIR-FAITHFUL (the 4th external pass;
                             arc: XH 2B+4M -> XH-R 3B+2M -> XH-R2
                             0B+2M+1m -> REPAIR-FAITHFUL). The roof
                             stands AS SCOPED: domain-exit two-sided;
                             label laws at the saddle scale TWO-SIDED
                             (LS-MIN-MIG discharged, XM-R16); coupled
                             upper modulo the excursion rows
                             PROD-EXCURSION + PROD-EXCURSION-COND
                             (LP-MIN-MIG discharged, XM-R16).
                             (History of the arc below.)
                             ARC RECORD: XH RETURNED 2026-07-20 - NOT
                             COMPOSITION-FAITHFUL (2 BLOCKING +
                             4 MAJOR + 1 MINOR; ALL lead-confirmed
                             two-way) - and the display REPAIRED
                             the same day: the two-sided law is the
                             DOMAIN-EXIT law (tau_A); the label's
                             own flip laws are lane-ls LS.5/LS.6
                             (passive) + lane-lt LT.1 (controlled)
                             at the saddle scale (own statuses;
                             the LS-MIN-MIG conditionality both
                             uppers carried at repair time is
                             DISCHARGED, XM-R16-authorized); the
                             coupled upper carries the excursion
                             rows (PROD-EXCURSION +
                             PROD-EXCURSION-COND; LP-MIN-MIG
                             discharged). H3 = REPAIRED then CLOSED
                             (XH-R3). [23] follow-up (record): the
                             label law's upper side carried
                             LS-MIN-MIG (X3-consumption class, via
                             LS.5/LS.5a and lane-lt T7) - discharged
                             with the release.
H4 (Part III, optional)    : S4 variant with topology hypotheses
                             (new statement row) or upstream work -
                             pursue only if C-2 must fall.
STRENGTHENING TIER (not on the critical path; archive without guilt):
  l^4 nonlinear floor, manifold-Hessian identification, mountain-pass
  engine, further |k| uniformity beyond H1's needs.
```

## Consumers (why this one object converges three lanes)

```text
- Reader-zero receives THIS page + tag math-v1.0 + the expediente.
- The interpretation layer (post-HG1) points its dictionary rows at
  the four parts - content-addressed, per its charter.
- The gtpa-lab HOLD packets re-present against Parts III/IV through
  the intake gate (their distinctive-invariant search gains its
  candidate substrate) - admission by gate, never by proximity.
```
