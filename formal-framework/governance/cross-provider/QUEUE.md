# QUEUE — cross-provider verification items (ordered; self-contained)

Order = RE-RANKED 2026-07-11 (Class-L lead call, roadmap v2 stress
panel): X0 (standing-up), then the CALIBRATION PAIR X1+X6 (briefs
with known internal outcomes - until the lead's strength verdict
passes, signatures are SUPPORTING-ONLY: no rung movement, no
unlocks), then X2 and X9 (the unlock items, early), then the heavy
audits X3/X4/X5/X7/X8. Original trust-per-effort rationale retained
within each band. Each item: WHAT / INPUTS / DELIVERABLE / BLINDNESS.
[REGENERATE] inputs are rebuilt by the lead at dispatch; [STANDING]
inputs are repo files as-is.

```text
X0 STANDING-UP (operator + lead, BEFORE "acceso listo")
   WHAT: declare the ACCESS MODE (filesystem agent vs chat relay); if
     relay: name the scribe, the verbatim-landing rule, who updates the
     ledger; run the CAPABILITY CHECKLIST (X4 needs literature/web
     access; X3 needs long-context reading; BLIND items need a fresh
     context served only dispatch/<item>/); operator runbook with
     per-item minutes.
   DELIVERABLE: signed verdict per VERDICT-TEMPLATE (protocol v2,
     X0 finding 3; the runbook is the checklist INPUT, not the output).
   BLINDNESS: n/a. EFFORT: low.

X1 LEAN REPRO (the machine-check reproduction)
   WHAT: reproduce the full verification sweep from the pinned kit:
     compile the three canonical files, run the axiom audit, compare
     against the committed transcript.
   INPUTS [STANDING]: lean/repro/ (pin + recipe), lean/*.lean (the
     three canonical files), lean/verify.py.
   DELIVERABLE: signed verdict + their own transcript (match/mismatch
     line by line vs repro/axioms-transcript.txt).
   BLINDNESS: OPEN. EFFORT: low (mechanical).

X2 BLIND BACK-TRANSLATION of the Lean statement corpus
   WHAT: independently back-translate every theorem SIGNATURE
     (comment-stripped) into plain math; list hidden hypotheses,
     narrowings, degenerate cases - WITHOUT seeing the corpus prose or
     the correspondence tables. The lead then diffs their reading
     against governance/lean-correspondence-tables-v1.md and the prose;
     divergences = definition-drift candidates.
   INPUTS [REGENERATE]: comment-stripped signature files (lead strips
     at dispatch; the campaign-7/8 stripping recipe in the wave
     records).
   DELIVERABLE: per-theorem back-translation + caveat list (the same
     shape as the internal blind lenses - but non-Anthropic eyes).
   BLINDNESS: BLIND (the item's whole value). EFFORT: medium.
   NOTE: this is THE highest-value item - it attacks the failure mode
     no same-provider pass can see (training-correlated misreading of
     what a statement says).

X3 SPINE KEYSTONE ADVERSARIAL AUDIT
   WHAT: for each keystone in the spine dossier (the corpus's
     self-described attack surface: K1-K11 + C1-SUB), attempt to
     REFUTE the keystone from the cited artifact's own text; verdict
     per keystone.
   INPUTS [STANDING]: governance/spine-hardening-dossier-v1.md + the
     pre-physics artifacts it cites.
   DELIVERABLE: per-keystone SOUND / REFUTED / UNVERIFIABLE + reasoning.
   BLINDNESS: OPEN. EFFORT: high.

X4 SR-SH1/SR-SH2 CITED-LEMMA DOSSIER (produces a document)
   WHAT: the program's BIGGEST DECLARED RESIDUAL - build the dossier:
     page-level literature pins + a hypothesis-matching table for
     EVERY Freidlin-Wentzell / detailed-balance invocation in the
     probabilistic chain (does the cited theorem's hypothesis set
     actually match the corpus's usage, line by line).
   INPUTS [STANDING]: pre-physics/lane-sh-sharpness-v1.md + the [MACH]
     invocation sites (lead lists them at dispatch [REGENERATE]);
     external literature access (their side).
   DELIVERABLE: the dossier itself (a signed document; the lead
     re-verifies and lands it through normal gates).
   BLINDNESS: OPEN. EFFORT: high (literature work - suits a
     web-connected external model).

X5 Q6-TURNED-INWARD SUSPECT LIST AUDIT
   WHAT: the lead publishes a ranked list of the spots where a
     training-distribution-correlated error would most plausibly hide
     (the lead's own honest suspicion ranking). The agent audits
     exactly those spots first, hostile.
   INPUTS [REGENERATE]: the suspect list (lead writes at dispatch);
     the cited artifacts.
   DELIVERABLE: per-suspect verdict + anything found nearby.
   BLINDNESS: OPEN. EFFORT: medium.

X9B M5 CHARTER v4 RE-REVIEW (added 2026-07-18, post-repair)
   WHAT: adversarial constitutional review of charter v4 (the X9-driven
     repair): (a) verify EACH of X9's 18 findings is genuinely answered
     by the v4 clause(s) named in its repair map (not merely papered);
     (b) hunt NEW loopholes v4 itself introduces (the repair-creates-
     hole pattern X9 found in v3's reading fix); (c) audit the wired
     guard legs in scripts/coherence_guard.py against the charter's G2
     requirements (the implementation now exists - read it).
   INPUTS [STANDING]: interpretation/M5-INTERPRETATION-CHARTER-v1-
     PROPOSED.md (v4), verdicts/X9-2026-07-18.md, scripts/
     coherence_guard.py, governance/m5-gate-pointers.md.
   DELIVERABLE: per-finding ANSWERED/PARTIAL/UNANSWERED table + new
     loophole list severity-ranked, or CLEAN.
   BLINDNESS: OPEN. EFFORT: medium.

X9C M5 CHARTER v4.1 RE-REVIEW (added 2026-07-19)
   WHAT: verify the X9B repair: (a) each of X9B's 18-row table entries
     (7A/10P/1U) re-adjudicated against v4.1 + guard v1.2 - did the
     PARTIALs and the UNANSWERED move to ANSWERED or to an HONEST
     accepted-residual? (b) re-run your own two attack fixtures (and
     any new ones) against guard v1.2; (c) hunt NEW loopholes v4.1
     introduces. The v4.1 design principle to audit: claims the scanner
     cannot deliver were DOWNGRADED to operator-anchored duties -
     verify no downgrade silently weakened a load-bearing control.
   INPUTS [STANDING]: interpretation/M5-INTERPRETATION-CHARTER-v1-
     PROPOSED.md (v4.1), verdicts/X9B-2026-07-19.md, scripts/
     coherence_guard.py (v1.2), governance/m5-gate-pointers.md.
   DELIVERABLE: per-row table + fixture results + new-loophole list,
     or READY-FOR-HG1.
   BLINDNESS: OPEN. EFFORT: medium.

XF FINAL BUNDLED RE-REVIEW (added 2026-07-19; the queue's last item)
   WHAT: two half-items in ONE session. (a) v4.2 DELTA CHECK: verify
     each X9C finding's repair in charter v4.2 + guard v1.3 (your own
     fixtures re-run against v1.3 are welcome); verdict READY-FOR-HG1
     or the residual list. (b) K6-REPAIR REVIEW (Stage D): the
     SH.2'-LOCAL v2 proofs (L1/L1'/L2, recorded in the lane-sh Stage-C
     block + the fleet records referenced there) re-checked cold
     against the four X3 defect classes and any new failure route;
     verdict per lemma SOUND/REPAIRABLE/BROKEN.
   INPUTS [STANDING]: interpretation/M5-INTERPRETATION-CHARTER-v1-
     PROPOSED.md (v4.2), scripts/coherence_guard.py (v1.3),
     verdicts/X9C-2026-07-19-2.md, pre-physics/lane-sh-sharpness-v1.md
     (the SH.2'-LOCAL v2 section incl. Stage C record),
     verdicts/X3-2026-07-19.md (Finding 2), numerics/results/
     sh2local_probe_results.json.
   DELIVERABLE: one verdict file, two clearly separated sections.
   BLINDNESS: OPEN. EFFORT: medium.

X6 GATE RE-ADJUDICATION SAMPLE
   WHAT: re-run 2-3 of the same-provider blind audit briefs (the
     la2f wave records keep the exact briefs) as cross-provider blind
     audits; compare adjudications.
   INPUTS [REGENERATE]: the brief packets, re-served blind (lead
     selects the sample at dispatch; v16/v18 briefs are the natural
     picks - the label law and the product theorem).
   DELIVERABLE: per-brief adjudication in the wave-record format.
   BLINDNESS: BLIND. EFFORT: medium-high.

X7 NUMERICS REPRODUCTION
   WHAT: run the B2 harness (deterministic seeds) and independently
     re-derive the two landed findings (the relabeling-copies
     statement finding; the reference-value conventions finding);
     confirm or refute the verdict board.
   INPUTS [STANDING]: numerics/ + governance/b2-numerics-results-v1.md.
   DELIVERABLE: signed results diff + verdict on the two findings.
   BLINDNESS: OPEN. EFFORT: low-medium.

X8 READER-PACKET QUESTIONS Q3 / Q5 / Q7
   WHAT: the three packet questions RESERVED for independent rungs
     (never pre-run same-provider, by roadmap adjudication): answer
     them cold from the packet.
   INPUTS [STANDING]: the reader packet governance/la3-reader-packet-v1.md
     (NOT the similarly-named build gate; see DISPATCH-MANIFEST for the
     Q7 blindness decision).
   DELIVERABLE: written answers + whatever breaks.
   BLINDNESS: BLIND (packet only). EFFORT: medium.

X9 M5 CHARTER CONSTITUTIONAL RE-REVIEW (added 2026-07-10)
   WHAT: independent adversarial constitutional review of the M5
     interpretation charter v2 (same brief as the internal DEFECTIVE
     review that produced the 16 repairs: hunt loopholes - forgeable
     gates, containment leaks, world-reference smuggling).
   INPUTS [STANDING]: interpretation/M5-INTERPRETATION-CHARTER-v1-
     PROPOSED.md (+ the internal review record via git 0233bc0).
   DELIVERABLE: loophole list, severity-ranked, or CLEAN.
   BLINDNESS: OPEN. EFFORT: medium.
   NOTE: valuable whether or not the charter is ratified first - if
     ratified, findings feed a future amendment via fresh HG1.

XH MASTER RATE DISPLAY COMPOSITION CHECK (added 2026-07-20; definition
   backfilled same day - an external evaluator correctly flagged that
   XH lived only in NEXT.md; NEXT.md remains the pointer, THIS is the
   item definition)
   WHAT: the FINAL look of the arc - verify that pre-physics/
     lane-master-rate-display-v1.md is PURE COMPOSITION of proved or
     pinned rows: (a) each cited row says what the display consumes
     (T2 + the X4 Condition-(A) pin; SH.4 on the migrated local
     route; T1.2a/b + the Lean pair; lane-lp LP.5 + campaign #22
     level shift); (b) both Display-2 bounds govern the SAME stopping
     time; (c) the honest-boundary block omits nothing the sources
     type as open; (d) no claim exceeds exponential order.
   INPUTS [STANDING]: pre-physics/lane-master-rate-display-v1.md plus
     exactly the rows it cites (the artifact citation list is the
     read boundary).
   DELIVERABLE: signed verdict - COMPOSITION-FAITHFUL or the exact
     discrepancy list.
   BLINDNESS: OPEN. EFFORT: medium.

XH-R MASTER RATE DISPLAY RE-REVIEW (added 2026-07-20, post-repair)
   WHAT: fresh look at the REPAIRED pre-physics/
     lane-master-rate-display-v1.md (post-XH rewrite): verify the 7
     XH findings are actually cured as claimed (stopping objects
     separated; LP.3/w_k provenance; A_eta; two-row coupled upper;
     honest boundary complete; mechanization scope; status
     harmonization in lane-sh/sh2local/lane-lt/lane-lp) and that no
     NEW discrepancy was introduced by the repair.
   INPUTS [STANDING]: the repaired master page + verdicts/
     XH-2026-07-20.md + the same citation-row read boundary as XH.
   DELIVERABLE: signed verdict - REPAIR-FAITHFUL or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: low-medium (delta review).

XH-R2 MASTER RATE DISPLAY SECOND RE-REVIEW (added 2026-07-20)
   WHAT: delta re-review of the XH-R residual repairs (R1-R5):
     lane-lp two-row status at ALL operative surfaces + the upgraded
     LP-MIN-MIG interface (L2-before-L1' + regeneration); lane-lt
     conditionality at status/LT.1/LT.4/boundary; the LT.1 pointer
     fix; master-theorem governing status (done-criterion, C-1 note,
     Part III); the restored exit-location/multi-well exclusions.
     Verify no NEW discrepancy was introduced.
   INPUTS [STANDING]: the XH-R evidence set WIDENED by
     pre-physics/lane-ls-label-sharpness-v1.md (the LS-MIN-MIG
     typing + Stage-A probe note now cited by the master page) and
     numerics/results/lz_kick_probe_results.json (referenced record).
   DELIVERABLE: signed verdict - REPAIR-FAITHFUL or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: low (delta of a delta).

XH-R3 MASTER RATE DISPLAY FINAL MICRO-DELTA (added 2026-07-20)
   WHAT: verify EXACTLY the three XH-R2 residual fixes and nothing
     else: (1) the passive/controlled split (lane-ls LS.5/LS.6 vs
     lane-lt LT.1, uppers modulo LS-MIN-MIG) at the master honest
     boundary, the master roof paragraph, and master-theorem H3;
     (2) the rewritten done-criterion (full enumeration: C-2 +
     LS-MIN-MIG + LP-MIN-MIG + PROD-EXCURSION, no 'at most two'
     ceiling); (3) the corrected L1-Z probe precision wording
     (lane-ls note + JSON verdict). Plus: no new discrepancy in
     the touched lines.
   INPUTS [STANDING]: the XH-R2 evidence set (unchanged boundary).
   DELIVERABLE: signed verdict - REPAIR-FAITHFUL or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: very low (three-point check).

XM MIGRATION-PROOFS COLD REVIEW (added 2026-07-20)
   WHAT: independent critical review of pre-physics/
     lane-minmig-proofs-v1.md - the assembled LS-MIN-MIG/LP-MIN-MIG
     discharge (pieces M1-M5, lead amendments A1-A4, typed-gap
     register, consumer wiring plan). Check: (a) both discharge
     chains compose end-to-end on the local toolkit with NO residual
     global-minorization step; (b) every citation says what is
     consumed (L1/L1'/L2+A1-A5, LS.5/LS.5a, LP.5(a)-(c), M2P rows,
     [23] SS B-D); (c) the M3<->M4 interface under A3 and the M5
     routing under A4 are consistent; (d) the typed-gap register is
     complete and PROD-EXCURSION stays external; (e) the internal
     verification record (fleet rounds, the VOIDED stub grade, the
     guarded re-run) is honestly stated.
   INPUTS [STANDING]: the artifact + exactly the sources its pieces
     cite + the two Stage-A probe JSONs (consistency records).
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     defect list.
   BLINDNESS: OPEN. EFFORT: high (full proof review, the heaviest
     item since X3).

XM-R MIGRATION-PROOFS RE-REVIEW (added 2026-07-20, post rounds 3-4)
   WHAT: delta re-review of the XM repairs on the SAME artifact:
     verify findings F1-F7 are cured - R1 (per-orbit splice: SP_1
     discharged, on-Delta orbits honestly split, winding-j shown
     non-consumed, DAG/transmission recheck), R2 (ONE path-marked
     round object; the strong-Markov reroute replacing the false
     conditional-independence; A3 voided), R3 + A5 (retry scaffold,
     a.s. return; citations relabeled to lane-sh-sharpness), the
     completed gap register, the cured tail gate, the corrected
     probe wording. Verify no NEW discrepancy. The old universal
     splice carries a SUPERSEDED banner - check the new pieces, not
     the preserved record.
   INPUTS [STANDING]: the XM evidence set (same boundary).
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: medium (delta of the XM review).

XM-R2 MIGRATION-PROOFS THIRD REVIEW (added 2026-07-21, post round 5)
   WHAT: delta re-review of the round-5 reconstruction against
     XM-R's findings: R5a (the continuous FLOORS round object -
     option (b) of your F2 obligation: one terminus, path
     filtration, NO coins, delayed-return convention, sigma_0
     in-object, attempt containment by explicit horizon; lead
     amendments A6/A7 cure its two checker MINORs); R5b (the retry
     scaffold on R5a: kick-before-descent band trichotomy, zero-
     free count, phase-A summed, sigma_0 under the A6 interface,
     and the strengthened excursion contract now the TYPED row
     PROD-EXCURSION-COND - registered in lane-lp); R5c (the four
     Z_high obligations discharged for the flagship + the SP_1
     constant repair via LS.5a-Z-SP; non-flagship typed). Verify
     each XM-R obligation is met on the current bytes, the
     register matches the pieces, and no new discrepancy exists.
   INPUTS [STANDING]: the XM evidence set + lane-prodexc-design-v1.md
     and its two scan/probe records (now cited by the artifact).
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: medium-high.

XM-R3 MIGRATION-PROOFS FOURTH REVIEW (added 2026-07-21, post rounds 6-8)
   WHAT: delta re-review of the rounds-6-8 cures against XM-R2:
     F1 -> R6a's collar-killed crossing event whose density is
     Lemma KD (R7a mechanism: killed-CK splice + confined-bridge
     Girsanov; R8a geometry: killed on the max-norm cube, SR-KD
     imported on the inscribed smooth ball, domain monotonicity;
     A9 constant harmonization); F2 -> R6b/R7b/R8b (the flat-mode
     collar-exit priced explicitly; the delayed-return floor on
     R5a's exact convention; B_gate DELETED - the ascent launches
     from B_ref). Verify each XM-R2 obligation cured on current
     bytes, the SR-KD import's hypothesis rows, the register/header
     coherence, and no new discrepancy. The F3 propagation batch
     is PREPARED (not run) - its dry-run manifest is in the wiring
     plan; adjudicate whether its post-flip wordings are the right
     propagation of PROD-EXCURSION-COND.
   INPUTS [STANDING]: the XM-R2 evidence set (same boundary).
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: medium-high.

XM-R4 MIGRATION-PROOFS FIFTH REVIEW (added 2026-07-21, post XM-R3 cures)
   WHAT: verify the XM-R3 cures on current bytes: F1 -> the release
     manifest EXISTS and reconciles (scripts/minmig_flip_batch.py,
     43 count==1 anchors = abort-on-mismatch, + the inspectable
     governance/minmig-flip-manifest-v1.md with verbatim OLD/NEW
     pairs; dry-run 43/43); F2 -> amendment A11 (SR-KD restated at
     true strength: unit-ball rescale, s = 32/(9 beta delta^2),
     threshold beta delta^2 >= max(128N, 32/(9 T_n))); F3 -> A12
     (R8b harmonized to R8a's Euclidean B_ref, Lebesgue-integral
     splice, Euclidean volume); F4 -> the stale paragraph
     superseded, GAP-R8a-* registered, the candidate-route/PE.3'
     wording copied; F5 -> A10 (the stopped-lift Ito definition,
     your written route); F6 -> the LZ generator now produces
     conditioned_analysis and the precision wording is exact
     (<= 0.0024, 7/12; six <= 0.0023). Then: adjudicate
     DISCHARGE-SOUND for the two migration rows. If SOUND, the lead
     runs the manifest batch (the flips) as the immediate next
     commit.
   INPUTS [STANDING]: the XM-R3 evidence set + the manifest pair.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XM-R5 MIGRATION-PROOFS SIXTH REVIEW (added 2026-07-21, post XM-R4 cures)
   WHAT: verify the six XM-R4 cures: (1) the batch is now TWO-PHASE
     transactional (preflight ALL 47 anchors across ALL files, write
     only after a fully clean preflight - scripts/minmig_flip_batch
     .py); (2) the post-state residuals are new anchors 44-47
     (lane-ls status block; master-theorem H3 operative statement;
     the reader packet's two stale surfaces - the packet is now IN
     the batch); the two LP replacement texts now credit the REAL
     mechanism (R5a FLOORS + R6a/KD + R5b-R8b; A3/Nummelin marked
     VOIDED); (3) gate/attribution: the script and manifest both
     gate on XM-R5 and the discharge attribution is parametrized to
     the authorizing verdict (no backdating); (4) the R8b stale body
     carries the A12-PRECEDENCE banner; (5) the prodexc consumer
     instruction is superseded (post-ADJ-2: NO window enters the
     row; COND propagated); (6) the LZ record is regenerated BY its
     generator (semantic idempotence; timing metadata only). ALSO
     note: E2 phase-1 adjudication closed same day - the red-flag
     window narrative was withdrawn (aggregate/per-round
     conflation); the packet reflects it. Then: adjudicate
     DISCHARGE-SOUND. If SOUND, the lead runs the 47-anchor batch
     (--apply) + the occurrence sweep + manifest regeneration in
     ONE commit as the immediate next action.
   INPUTS [STANDING]: the XM-R4 evidence set + the updated release
     pair + lane-prodexc-design (the ADJ sections).
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list.
   BLINDNESS: OPEN. EFFORT: medium.

XM-R6 MIGRATION-PROOFS SEVENTH REVIEW (added 2026-07-21, post XM-R5
   cures) - THE RELEASE GATE.
   WHAT: verify the XM-R5 cures, then adjudicate DISCHARGE-SOUND.
     (F1) the batch commit is temp-file + os.replace with best-effort
     rollback; the in-code contract now says PREFLIGHT-ATOMIC +
     ROLLBACK, NOT crash-atomic (git = recovery path); `--selftest`
     reproduces both injected-failure tests (A: mismatch -> abort,
     zero writes; B: mid-commit failure -> byte-identical rollback)
     on an isolated copy - run it. (F2) attribution: release texts
     carry the authorizing verdict NAME only via the @AUTH@
     placeholder resolved from the AUTH constant (= XM-R6, single
     source); NO 2026-07-20 discharge dates, NO 'XM-signed'; dates
     live in LEDGER + verdicts/. The manifest is now GENERATED by
     `python scripts/minmig_flip_batch.py --manifest` (self-
     regenerating release pair; header carries live gate + count).
     The artifact's wiring plan + status head now point at the pair
     and the LIVE-gate derivation rule instead of hardcoded counts/
     gate names. (F3) the reader packet (10 sites) + the lane-LS
     attempt note + a master-theorem H3-history site (caught by the
     lead's staged sweep, same class) are IN the batch - anchor
     count is now 59; the dry-run prints the STAGED post-state
     occurrence sweep so the class is visible pre-release. (F4) the
     no-window ADJ-2 outcome is propagated to the row home (lane-lp
     COMPANION ROW), the lane-minmig register, CANON-BOUNDARY,
     CANON-THEOREMS, OPEN-QUESTIONS (which also received the X3
     correction its tube-trick clause still lacked) and
     attack-roadmap E1. (F5) both excursion rows named IN FULL
     everywhere ('+ -COND' eliminated; 'MODULO ONE ROW' fixed).
     ALSO: coherence_guard v1.6 downgrades gtpa-lab PURE hash-drift
     to WARN (unstaffed side-lane pins = their re-audit trigger,
     not a MATH veto); mixed/structural failures still FAIL and a
     checker crash (rc != 0, no FAIL lines) FAILS closed.
   INPUTS [STANDING]: the release pair + the six batch targets +
     lane-minmig-proofs + lane-prodexc ADJ sections + the XM-R5
     verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead runs --apply + the occurrence
     sweep + --manifest regeneration in ONE commit immediately.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XM-R7 MIGRATION-PROOFS EIGHTH REVIEW (added 2026-07-21, post XM-R6
   cures) - THE RELEASE GATE.
   WHAT: verify the XM-R6 cures, then adjudicate DISCHARGE-SOUND.
     (R6-F1) the roadmap header no longer names a gate (derivation
     delegated to the E1 block; snapshots moved to XM-R7). (R6-F2)
     the roadmap E2 block now carries the ADJ-2 post-state (no
     window, per-round, constructive pieces, PE.3 retired, global
     flagship range, fleet in flight). (R6-F3) the lane-lp Honest
     Boundary inventories the excursion PAIR; CANON-THEOREMS says
     "shrinks to the excursion pair". (R6-F4) the reader packet:
     hardcoded counts replaced by a LEDGER pointer; the Lean-content
     headline sentence fixed; the section-3 heading is IN the batch
     (anchor 60: "the post-release state"). (R6-F5) the lane-ls and
     lane-lt verdict blocks carry dated predates-it notes; the same
     class was preventively cured in lane-sh/lane-wc/lane-mr.
     STRUCTURAL: the staged semantic sweep is now an ASSERT
     (SEMANTIC_TRIPWIRES + allowlist in the batch; ABORTS dry-run
     and apply BEFORE any write - inject to test); six new RETIRED
     tripwires in scripts/prose_invariants.py pin the cured classes
     corpus-wide. AUTH = XM-R7 (single source); manifest regenerated
     (60 anchors - the section-3 heading anchor added). ENFORCED
     AUTH LIVENESS (internal preflight MAJOR, cured pre-dispatch):
     main() reads the LEDGER row for AUTH - a gate that signed NOT
     DISCHARGE-SOUND aborts EVERY mode (a consumed denial can never
     authorize), and --apply requires the row to record
     DISCHARGE-SOUND; the same preflight added the three XM-R6
     phrase classes the tripwire list had missed (singular
     excursion-row, spelled-out stale counts, Lean-attribution).
     All three branches + the new tripwires are negative-tested;
     --selftest bypasses ONLY the liveness gate (it tests the
     transaction; the gate has its own tests - inject to verify).
   INPUTS [STANDING]: the release pair + the six batch targets +
     lane-minmig-proofs + lane-prodexc ADJ sections + the XM-R6
     verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead runs --apply + the occurrence
     sweep + --manifest regeneration in ONE commit immediately.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XM-R8 MIGRATION-PROOFS NINTH REVIEW (added 2026-07-22, post XM-R7
   cures) - THE RELEASE GATE.
   WHAT: verify the XM-R7 cures, then adjudicate DISCHARGE-SOUND.
     (R7-F1) auth_gate_check now enforces the PROTOCOL STATE: --apply
     requires the AUTH LEDGER row at the TERMINAL state (dated
     LEAD-VERIFIED + DISCHARGE-SOUND + no SIGNED/VOID/DISPATCHED/
     IN-PROGRESS token); any NOT DISCHARGE-SOUND row aborts EVERY
     mode; --manifest is gated too. Replicate your own injection
     matrix - the lead re-ran it (7 rows incl. your SIGNED/VOID/
     DISPATCHED positives) and it now denies all nonterminal forms.
     (R7-F2) the six RETIRED tripwires are near_only: the file-wide
     marker exemption no longer covers them - the marker or an
     ALLOW_NEAR token must sit within +-400 chars of the hit;
     re-run your reinsertion tests. (R7-F3) both one-row sites in
     the gate-v18 closeout carry LATER CORRECTION pair notes.
     (R7-F4) the packet's XM-arc digit count is a LEDGER pointer;
     a digit-form reviews tripwire was added to the batch. (R7-F5)
     the class was 33 sites, not 5: EVERY lane's 'active next
     macro = Gate-vNN' literal (status head + verdict copies) now
     delegates to ACTIVE-STATE.md, and coherence_guard v1.7 has a
     LANE MACRO LITERAL leg that FAILS on any regression (gate
     briefs = frozen records, exempt). (R7-F6) roadmap E2's fleet
     state is a derivation pointer to lane-prodexc-proofs' status
     header (+ dated snapshot); E1 snapshot = XM-R8. AUTH = XM-R8;
     manifest regenerated (60 anchors, byte-identical modulo EOL).
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R7 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies (LEDGER ->
     LEAD-VERIFIED, which the auth gate itself now requires) and
     runs --apply + the sweep + --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XM-R9 MIGRATION-PROOFS TENTH REVIEW (added 2026-07-22, post XM-R8
   cures) - THE RELEASE GATE.
   WHAT: verify the XM-R8 cures, then adjudicate DISCHARGE-SOUND.
     (R8-F1) auth_gate_check now recognizes the REAL consumed-row
     grammar: a row is a consumed denial if it carries the literal
     NOT DISCHARGE-SOUND, OR the release-disposition marker 'flips
     BLOCKED', OR any signed/terminal/void state WITHOUT a recorded
     DISCHARGE-SOUND - and a consumed denial aborts EVERY mode
     including --manifest. The lead's negative matrix includes the
     ACTUAL XM-R7 terminal row verbatim (denied in all three modes)
     plus 8 synthetic states; replicate. Grammar law adopted
     forward: lead-verified denial rows KEEP the literal (see the
     XM-R8 LEDGER row itself). (R8-F2) the guard's macro leg
     captures the WHOLE logical field including indented
     continuation lines (injected Gate-v99 on a continuation line
     now FAILS; clean two-line delegation does not false-fire).
     (R8-F3) all four release instructions (batch docstring,
     generated manifest header, roadmap E1, lane-minmig wiring)
     now state the TERMINAL rule: dated LEAD-VERIFIED recording
     DISCHARGE-SOUND - merely SIGNED never authorizes. (R8-F4) the
     near_only contract text now states the TRUE semantics
     (ALLOW_NEAR-only within +-400; the markers tuple is
     documentary - deliberately conservative). (R8-F5) count
     correction recorded in COORDINATION: the true class delta was
     46 Gate-vNN declarations across 23 lane files (two logical
     fields per file); the earlier '33' was one pass's counter
     only. AUTH = XM-R9; manifest regenerated (60 anchors, header
     carries the terminal rule).
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R8 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies (the LEDGER
     row reaches dated LEAD-VERIFIED + DISCHARGE-SOUND - exactly
     what the apply gate requires) and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XM-R10 MIGRATION-PROOFS ELEVENTH REVIEW (added 2026-07-22, post
   XM-R9 cure) - THE RELEASE GATE.
   WHAT: verify the single XM-R9 cure, then adjudicate
     DISCHARGE-SOUND. The cure: auth_gate_check now parses a CLOSED
     FIELD-ANCHORED row grammar (_parse_auth_row in the batch):
     the status field = exactly ONE STATE+DATE pair in the HEAD
     (before any parenthesis - state mentions inside notes never
     parse); the disposition = the FIRST parenthetical, positive
     ONLY if it STARTS with the word-bounded token DISCHARGE-SOUND;
     unparseable or ambiguous rows fail CLOSED in every mode. Your
     four bypass rows are in the lead's negative matrix VERBATIM
     (all four now deny every mode) alongside the real XM-R7/XM-R8
     consumed rows, the standard state set, the terminal positive,
     and a two-state-fields ambiguity case - 13 rows, all passing.
     Replicate and extend at will; the grammar is documented in
     _parse_auth_row's docstring and the header comment. NOTE the
     forward grammar law: the authorizing terminal row will read
     '... LEAD-VERIFIED <date> verdicts/<file> (DISCHARGE-SOUND;
     ...)' - disposition field FIRST token positive, exactly what
     the gate requires.
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R9 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (single-cure delta).

XM-R11 MIGRATION-PROOFS TWELFTH REVIEW (added 2026-07-22, post
   XM-R10 cure) - THE RELEASE GATE.
   WHAT: verify the single XM-R10 cure, then adjudicate
     DISCHARGE-SOUND. The cure: _parse_auth_row is now ONE anchored
     whole-row production at TOKEN level: exactly one '(' and one
     ')' with the row ENDING at the closing parenthesis (unclosed
     dispositions and trailing structural text reject); the body
     tokenizes on whitespace - the STATE field must be a token
     EXACTLY equal to a vocabulary state (path-like tokens such as
     'verdicts/LEAD-VERIFIED' can never parse as the status field),
     immediately followed by a fullmatch DATE token; after the date
     at most ONE verdict-path token may precede the disposition
     (prose suffixes like 'after review' reject); at least one
     description token must precede the state; any violation fails
     CLOSED in every mode. Your three bypass rows are in the
     negative matrix VERBATIM (all deny all modes; row 1
     additionally ran the FULL apply path against six target
     copies - rc=1, all bytes stable) alongside the prior 13-row
     set + the real XM-R7/R8/R9 consumed rows: 17 rows total, all
     passing. The canonical positive terminal row is accepted in
     all modes (unchanged).
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R10 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (single-cure delta).

XM-R12 MIGRATION-PROOFS THIRTEENTH REVIEW (added 2026-07-23, post
   XM-R11 cure) - THE RELEASE GATE.
   WHAT: verify the single XM-R11 cure, then adjudicate
     DISCHARGE-SOUND. The cure: the verdict-path field now has a
     CLOSED token production - verdicts/<name>.md (fullmatch
     regex verdicts/[A-Za-z0-9][A-Za-z0-9._-]*\.md) - and it is
     LOCATED: the post-date slot admits either NO token or exactly
     ONE token matching that production (prose tokens like 'after'
     and second dates reject); a token matching the production
     ANYWHERE in the description also rejects (no absorption).
     Your three bypass rows are in the negative matrix VERBATIM -
     each ran the FULL apply path on six real target copies with
     rc=1, byte-stable targets and a .flip-tmp residue sweep -
     alongside the prior 17-row set + the real XM-R7/R8/R9/R10
     consumed rows: 21 rows total, all passing. The canonical
     positive terminal row is accepted in all modes (unchanged).
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R11 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (single-cure delta).

XM-R13 MIGRATION-PROOFS FOURTEENTH REVIEW (added 2026-07-25, post
   XM-R12 cures) - THE RELEASE GATE.
   WHAT: verify the two XM-R12 cures, then adjudicate
     DISCHARGE-SOUND.
     (F1) STATES is now exactly the README-PROTOCOL:67-76 machine -
     ALL SIX states including OPEN. Your attack row (OPEN ... then
     LEAD-VERIFIED ... in one head) now carries two vocabulary
     tokens and fails CLOSED in every mode; canonical OPEN parses
     as a nonterminal staging state (dry-run/manifest allowed,
     apply denied). Both rows are in the negative matrix.
     (F2) the ancestry split is healed by HISTORY, not by pins: a
     strategy=ours merge reattached the pre-rebase lineage as a
     second parent (commit message = the full provenance record).
     NOT ONE BYTE of any file changed in that merge; no audit
     record, digest, blob pin, origin tag, or handoff of the
     XPK-R/XPT-R tower was edited; snapshot 0771d49 is again a TRUE
     ancestor of HEAD and the unmodified coherence_guard returns
     PASS with zero failures and zero warnings. Verify with: git
     merge-base --is-ancestor 0771d49f HEAD; git show <merge> (tree
     equals first parent); both guards.
     PROCESS LAW adopted in the merge record: foreign unpushed
     commits are pushed BEFORE any rebase; a lane never rebases
     another lane's history.
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R12 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (two-cure delta).

XM-R14 MIGRATION-PROOFS FIFTEENTH REVIEW (added 2026-07-25, post
   XM-R13 cures) - THE RELEASE GATE.
   WHAT: verify the two XM-R13 cures, then adjudicate
     DISCHARGE-SOUND. (F1) the disposition token now terminates at
     end-of-field, ';', ',' or a space - re.match on
     DISCHARGE-SOUND($|[;, ]) and the NOT form alike;
     'DISCHARGE-SOUND.md' and 'DISCHARGE-SOUNDER' continuations
     are NOT the positive token (negative-tested). (F2) multiple
     AUTH rows now fail CLOSED in every mode BEFORE any state
     parsing (the LEDGER one-row-per-item invariant; a duplicated
     positive row can no longer override a negative - the exact
     neg+pos duplicate pair is in the negative matrix, denied
     both modes). Both cures negative-tested alongside the full
     standing matrix; dry-run 60/60; selftests PASS; both guards
     PASS with zero failures and zero warnings.
   INPUTS [STANDING]: the release pair + the six batch targets +
     the guards + the XM-R13 verdict as the residual checklist.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: medium (two-cure delta).

XM-R15 MIGRATION-PROOFS SIXTEENTH REVIEW (added 2026-07-25, post
   XM-R14) - THE RELEASE GATE.
   WHAT: XM-R14 found ZERO defects - its residuals were the
     behavioral executions its sandbox could not complete. Both
     residuals are now ONE COMMAND each, in-repo:
       python scripts/minmig_flip_batch.py --gatetest
         [--workdir <writable path>]
     = the COMPLETE accumulated authority matrix (every XM-R9..
     XM-R13 attack class incl. your DISCHARGE-SOUND.md /
     DISCHARGE-SOUNDER / duplicate-row cases, the standard state
     set, and the canonical positive acceptance control - 23
     cases), each exercised through the gate decisions for all
     three modes AND a FULL isolated apply on real target copies,
     asserting nonzero return + byte-stable six targets +
     byte-stable manifest sentinel + zero .flip-tmp residue per
     deny row, and rc=0 + exactly-staged targets for the positive
     control. Expect: GATETEST: 23 cases, 0 failures.
       python scripts/minmig_flip_batch.py --selftest
         [--workdir <writable path>]
     = both injected-failure transaction tests (--workdir honors
     restricted sandboxes - XM-R14 F2's temp-setup failure class).
     Plus the two standing guards, unmodified:
       python scripts/prose_invariants.py   (PASS, 0 failures)
       python scripts/coherence_guard.py    (PASS, 0 failures,
                                             0 warnings)
     NOTE one expectation update inside --gatetest, documented
     in-code: the two XM-R9-era OPEN rows now PARSE as genuine
     OPEN (XM-R12 put OPEN in the enum; the terminal mentions sit
     in the parenthetical, which cannot impersonate the status
     field) - staging allowed, apply DENIED. The attack they
     encoded is dead by grammar, not by unparseability.
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: low (run the commands; adjudicate).

XM-R16 MIGRATION-PROOFS SEVENTEENTH REVIEW (added 2026-07-25, post
   XM-R15) - THE RELEASE GATE.
   WHAT: XM-R15 found zero defects and zero mathematical failures;
     both blockers were environmental. Cures:
     (F1) --gatetest is re-engineered for slow-I/O sandboxes: ONE
     temporary tree, targets copied ONCE, in-memory byte snapshots
     restored between cases, per-case progress lines with elapsed
     seconds (you can see it advancing and report partials).
     Local reference wall: 0.7 s for all 23 cases (was 6.8 s; the
     old 23-tree/138-copy setup was your 76 minutes). --workdir
     <path> still available. Same 23 cases, same assertions.
     (F2) the evidence-lock movement was the LEAD's process
     violation (E2 round-3 work pushed mid-review) - the standing
     push-hold law is RECOMMITTED: from this dispatch on, while an
     XM item is DISPATCHED or IN-PROGRESS the lead queues all
     pushes locally and origin/main moves only between audits.
     Your evidence lock will hold still.
     THE FOUR COMMANDS (unchanged otherwise):
       python scripts/minmig_flip_batch.py --gatetest [--workdir D]
       python scripts/minmig_flip_batch.py --selftest [--workdir D]
       python scripts/prose_invariants.py
       python scripts/coherence_guard.py
   DELIVERABLE: signed verdict - DISCHARGE-SOUND or the exact
     residual list. If SOUND, the lead lead-verifies with the
     grammar-canonical positive row and runs --apply + the sweep +
     --manifest in ONE commit.
   BLINDNESS: OPEN. EFFORT: low (run the commands; adjudicate).
```

XE-1 E2 CONSTRUCTIVE MIDPOINT REVIEW - THE AMENDMENT OVERLAYS AND
   THE LANDED SOUND PIECES (added 2026-07-27; dispatched while the
   final lemma PE-TRAPOCC drafts internally - this item does NOT
   cover it).
   WHAT: hostile verification of the E2 constructive state landed in
     pre-physics/lane-prodexc-proofs-v1.md, with PRIORITY on the two
     LEAD-AMENDMENT overlays - the least-audited layer (lead-authored
     cures, internally verified only): AM-R4-1..19 and AM-R5-1..14.
     For each amendment: does it actually cure the finding it names,
     at the cited bytes, without weakening any delivered strength or
     smuggling an unproved claim? Special attention: AM-R4-17
     (interface reconciliation), AM-R4-18 (the plain-cycle
     delimiter), AM-R5-1 (the TARGET role introduction), AM-R5-2
     (the Collar Geometry Lemma - verify the elementary geometry and
     the delta-threshold), AM-R5-3 (the allowed-list admission of
     R5a/R5b SS1-4 - WALK their closures yourself). SECOND: the
     checker-SOUND pieces (SR-PE1 round 2; PE.2(a); LEMMA
     PE-DOORREACH with AM-R5-14) - replicate their margin arithmetic
     and citation sets; recompute the ADJ-2 identity margins and the
     0.766250 / 0.861742 ledger figures. THIRD: the B-DWELL DESIGN
     PASS (tail of the artifact) - audit the cancellation arithmetic
     as DESIGN (the lemma itself is out of scope, in flight).
   INPUTS: pre-physics/lane-prodexc-proofs-v1.md (the artifact);
     lane-prodexc-design-v1.md (ADJ sections);
     lane-lp-product-saddle-v1.md:216-252; the landed consumers as
     needed. NO corpus/canon/Lean edits.
   DELIVERABLE: signed verdict in verdicts/ (XE-1-<date>.md) - the
     exact finding list with severities; LEDGER + COORDINATION as
     always.
   BLINDNESS: OPEN. EFFORT: medium-high.

XE-2 E2 CURE VERIFICATION (added 2026-07-27, post XE-1 cures).
   WHAT: verify the four XE-1 BLOCKING cures: (F1) PIECE SR-PE1-DEL
     - the delayed-cycle re-founding (pathwise local finiteness via
     the forced delta/4 oscillation; positive mean spacing; the
     identities restated; OBJECT-PE1 + AM-R4-18 withdrawn;
     DELTA-PE1-DELAYED retired by the GLOBAL READING RULE in
     AM-R5-18a - adjudicate the rule itself); (F2) AM-R5-15 - the /4
     collar constant with its explicit threshold; (F3) AM-R5-16 -
     the admission narrowed to the (P-SUB) closure with the
     recovery-exhaustiveness paragraph and R5b S4 excluded (walk the
     closure yourself); (F4) PIECE DOORREACH-MAXFIX - the max-metric
     tube (convexity containment, max<=euclidean sink, unified
     radius, the N/4 allowance kept with any-fixed-s absorption) +
     AM-R5-18c re-pointings. Plus AM-R5-17/18b hygiene. The
     in-flight items (TRAPOCC companion; the R5-PE3p overlay
     re-audit post-SR-PE1-DEL) remain OUT of scope.
   DELIVERABLE: signed verdict (XE-2-<date>.md) - SOUND or the exact
     residual list; LEDGER + COORDINATION as always. No corpus/
     canon/Lean edits.
   BLINDNESS: OPEN. EFFORT: medium (cure-verification delta).

XE-3 XE-2 CURE VERIFICATION + E2 OVERLAY ADJUDICATION (added
   2026-07-27, post XE-2 lead verification; WORKLIST MODE - one fresh
   context, per-item attestations).
   WHAT:
   (1) verify the five XE-2 BLOCKING cures: (F1.1) CURE-XE2-F1a -
     the epoch set redefined on closure(S) ((E1)+(E2)+(E3)), LEMMA
     EQV re-proved, membership discipline swept (in-place READS
     notes at Lemma SPACE, (INT-DEL) LOWER, the Section-6 (SOJ)
     sup_{S^+} re-read, AM-R5-18(b), Lemma LF bounded windows), plus
     the E-MEAS point-process measurability section; (F1.2)
     CURE-XE2-F1b - the geometric-trials intensity proof
     ((FLOOR)/(COUNT)/(RUN); no optional stopping at nu; check every
     conditioning step and the final constant); (F1.3) AM-R5-20 -
     the 27-row re-pointing table against the verdict's
     live-consumer list, site for site; (F2) AM-R5-21 - the closure
     row closure(S^+) subset R_0 and the AM-R5-8 bridge; (F4)
     AM-R5-22 - the s-parametric retype with the five-consumer
     sweep and the superseded AM-R5-18(c) clause.
   (2) adjudicate the material XE-2's evidence lock excluded:
     PIECE TRAPOCC-2 (companion display; internal checker SOUND) +
     AM-R5-19 (two in-place supersessions + strict collar margin) +
     the POST-SR-PE1-DEL RE-POINTING AUDIT + AM-R5-20 + the B-DWELL
     gap-register update (GAP-PE-TRAPOCC -> DISCHARGED at consumed
     strength).
   INPUTS: pre-physics/lane-prodexc-proofs-v1.md (the artifact);
     lane-lp-product-saddle-v1.md; lane-minmig-proofs-v1.md;
     verdicts/XE-2-2026-07-27.md (the residual checklist). NO
     corpus/canon/Lean edits.
   DELIVERABLE: signed verdict (XE-3-<date>.md) - per-item PASS or
     the exact residual list; LEDGER + COORDINATION as always.
   BLINDNESS: OPEN. EFFORT: medium-high.

XE-4 XE-3 CURE VERIFICATION + E2 ASSEMBLY ADJUDICATION (added
   2026-07-27, post XE-3 lead verification; WORKLIST MODE - one fresh
   context, per-item attestations; THE E2 CLOSING GATE).
   WHAT:
   (1) verify the two XE-3 BLOCKING cures: (F1.2) CURE-XE3-A - the
     non-circular positive-intensity display (stationarity + D(0) in
     E + D(0) < infinity a.s.; check the admission ordering sentence
     and both superseded in-place sites); (blocker 2) PIECE TRAPOCC-3
     - the closed companion target TRAP_2^cl := {E_eps >= theta_2}
     inter closure({w_phi = 0}): (T3.1)/(T3.2), the display-value
     identity (T3-ID) via the null-trace row, the strengthened Sard
     device (T3.3), the weak/variational re-proofs of (EQ-OCC-2)/
     (FLUX-ID')/(SANDWICH) (no surface integrals), the machinery
     re-verification table, AM-R5-24's six adopted repairs, and the
     typed gaps (G3-CORNER)/(G3-CITE) as NOT CONSUMED. Re-run XE-3's
     own counterexample sequence against TRAP_2^cl.
   (2) adjudicate PIECE E2-ASSEMBLY v2 END TO END - the (COND*)
     chain: cover lemma (both null traces), the block-free one-
     excursion (RED''), the horizon identity, the budget with every
     absorption, the quantifier walk to ROW PROD-EXCURSION-COND and
     the parent, the (D1) Palm-free and (D2) entrance-closure claims,
     the typed register, AM-R5-25's eight adopted items, and the v1
     round record's findings as cured.
   (3) the B-DWELL register final state (DISCHARGED at consumed
     strength, target TRAP_2^cl).
   INPUTS: pre-physics/lane-prodexc-proofs-v1.md;
     lane-lp-product-saddle-v1.md; lane-minmig-proofs-v1.md;
     verdicts/XE-3-2026-07-27.md (residual checklist). NO corpus/
     canon/Lean edits - in particular the lane-lp row flip is the
     LEAD's to execute only after this verdict signs SOUND.
   DELIVERABLE: signed verdict (XE-4-<date>.md) - per-item PASS or
     the exact residual list; LEDGER + COORDINATION as always.
   BLINDNESS: OPEN. EFFORT: high (this is the campaign gate).

XE-5 XE-4 CURE-PACKAGE VERIFICATION (added 2026-07-27, post XE-4
   lead verification; WORKLIST MODE; THE E2 CLOSING GATE, SECOND
   PASS).
   WHAT:
   (1) verify the four XE-4 cures at their landed state: (F1) PIECE
     TRAPOCC-4 - the smooth-envelope (ENTRY) (D_2 = the landed Door'
     at theta = theta_2; instantiation, not re-proof); (F2)
     CURE-XE4-2 v3 - the closure(S) killing plate (quarter-radius
     separation with thresholds; Girsanov transfer; capacity
     direction ledger; the TYPED plate residuals of AM-R5-26(c) -
     adjudicate whether they block); (F3) CURE-XE4-3 v3 - the exit
     reading forced by MM's consumption coherence + LEMMA PE3p.3b +
     the [23]:408-415 distinction of AM-R5-26(d); (F4) CURE-XE4-4
     v3 - the 32-line closed classification, the i = 0 disposition,
     the typed re-pointing of the out-of-domain sigma_0/H_m
     consumption.
   (2) adjudicate PIECE TRAP-LICENSE (the main-target existence
     lemma - the internal catch beyond XE-4's own list).
   (3) the release question: with this package, do the B-DWELL
     register and the E2-ASSEMBLY discharge stand at consumed
     strength (and if every item passes, authorize the lane-lp row
     flip)? If any typed residual of AM-R5-26 blocks, say exactly
     which and at what strength.
   INPUTS: pre-physics/lane-prodexc-proofs-v1.md;
     lane-minmig-proofs-v1.md; lane-lp-product-saddle-v1.md;
     verdicts/XE-4-2026-07-27.md (residual checklist). NO corpus/
     canon/Lean edits; the row flip is the LEAD's, post-signature.
   DELIVERABLE: signed verdict (XE-5-<date>.md); LEDGER +
     COORDINATION as always.
   BLINDNESS: OPEN. EFFORT: high.

XE-6 XE-5 CURE-PACKAGE VERIFICATION (added 2026-07-27; WORKLIST MODE;
   THE E2 CLOSING GATE, THIRD PASS).
   WHAT:
   (1) verify the four XE-5 cures at their landed state: ENTRY-W v2
     (the weak three-set ratio - no boundary regularity on the cube
     plate, the rough target, or D_2; the chained Harnack; the
     quantifier per the landed PX:9041 row with the near-S
     reduction); V2ID v2 (FOT part-process q.e. identity + the
     small-time mean-value pointwise upgrade via the landed
     transition-density row); CAP-LOW-H1 v2 (capacity via the core;
     the eps-argument at the infimum); SIGMA0-DECLAIM v2 (the
     fix-in-passing withdrawal; MM:3163's landed GAP-LP-RECUR
     conditionality restored; SIGMA0-EXC scoped as the delivered
     min-object partial).
   (2) adjudicate AM-R5-27: the eta re-freeze (a); the (ENTRY-MARGIN)
     vacuity-at-consumed-starts display; and the TYPED residual
     ledger (c1)-(c4) - for each item, does it block the release or
     stand as an honest typed condition?
   (3) the release question, third pass: B-DWELL / E2-ASSEMBLY /
     the lane-lp row flip.
   INPUTS: pre-physics/lane-prodexc-proofs-v1.md;
     lane-minmig-proofs-v1.md; lane-lp-product-saddle-v1.md;
     verdicts/XE-5-2026-07-27.md (residual checklist). NO corpus/
     canon/Lean edits; the row flip is the LEAD's, post-signature.
   DELIVERABLE: signed verdict (XE-6-<date>.md); LEDGER +
     COORDINATION as always.
   BLINDNESS: OPEN. EFFORT: high.

XE-7 E2-CONSOLIDATED END-TO-END REVIEW (added 2026-07-27; THE E2
   CLOSING GATE ON THE CONSOLIDATED DOCUMENT).
   WHAT: review pre-physics/lane-prodexc-v2.md END TO END - it is the
   single-vintage statement of the whole E2 chain (~200k chars, a
   reviewable object). (1) FIDELITY: per-display, the [PROV] tag
   names the source piece in the frozen lane-prodexc-proofs-v1.md -
   spot-check the load-bearing displays against those source bytes
   and the verdict trail; (2) SOUNDNESS: the chain as stated -
   Sections 0-5 (objects, targets, machinery, capacities, the four
   displays, the cover + assembly to both rows); (3) THE REGISTER:
   Section 7's typed conditions - complete? honest? does any typed
   row actually block the row discharge?; (4) THE RELEASE QUESTION:
   with this document, do B-DWELL and the E2-ASSEMBLY discharge
   stand at consumed strength, and is the lane-lp row flip
   authorized? INPUTS: lane-prodexc-v2.md (primary);
   lane-prodexc-proofs-v1.md (FROZEN provenance appendix - read
   only what [PROV] tags point at); lane-minmig-proofs-v1.md;
   lane-lp-product-saddle-v1.md; verdicts/XE-6-2026-07-27.md. NO
   corpus/canon/Lean edits; the flip is the LEAD's, post-signature.
   DELIVERABLE: signed verdict (XE-7-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: high.

XE-8 XE-7 CURE VERIFICATION ON THE CONSOLIDATED DOCUMENT (added
   2026-07-28; THE RELEASE GATE, SECOND PASS ON lane-prodexc-v2.md).
   WHAT: verify the XE-7 cures AT THEIR LANDED STATE in
   pre-physics/lane-prodexc-v2.md: (F1) Section 4.2(h) - the main-leg
   weak re-founding at the pair (TRAP, closure(S)) and triple
   (A_z, closure(S), TRAP): (WFF-3)@MAIN, (MAIN-V2ID), the @MAIN weak
   identities, (RATIO*w)@MAIN, (PTW-W)@MAIN with the chained C_H'',
   and the rederived (TRAPOCC-UNIF) at printed strength; the T-9/T-15
   register demotions; (F2) C_5/C_4 on the C_H'' lineage propagated
   into T_row; (F3) the two-eta accounting at 4.2(g) and the operative
   notes at 3.2; (F4) the zero-loss identity + err_tot; (F5) the
   (RAMP-ADM) threshold entry; the six nonblocking residual
   dispositions (incl. the scoped PX-anchor conventions and the
   boundary-cell reading note); Section 7 blocks A-E complete per the
   enumeration-by-name rule. THEN the release question, final: with
   this document, do B-DWELL and the E2-ASSEMBLY discharge stand at
   consumed strength, and is the lane-lp row flip authorized?
   INPUTS: lane-prodexc-v2.md (primary); the frozen
   lane-prodexc-proofs-v1.md via [PROV] targets only (note BOTH
   PX-anchor conventions, stated in-document); lane-minmig /
   lane-lp; verdicts/XE-7-2026-07-28.md (residual checklist). NO
   corpus/canon/Lean edits; the flip is the LEAD's, post-signature.
   KNOWN ENVIRONMENT NOTE: scripts/coherence_guard.py currently
   FAILs on its GTPA-LAB-CONTRACT leg due to CROSS-LANE baseline
   drift (foreign-lane contracts; reproduced on a clean tree,
   independent of this lane's bytes - see COORDINATION [96]); the
   math-lane legs (prose_invariants; the non-gtpa guard legs) PASS.
   DELIVERABLE: signed verdict (XE-8-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: high.

XE-9 XE-8 CURE VERIFICATION + THE RELEASE GATE (added 2026-08-01;
   the residual surface is ONE-LINE ITEMS ONLY).
   WHAT: verify the XE-8 cures at their landed state: (1) the
   (TRAPOCC-UNIF) quantifier narrowed to Door inter R_0^* with
   (DOOR-CASE1)'s displayed distance computation and beta_door
   collected; the Section-5 consumer and PE3p.3b licence wired to the
   same set; the withdrawn full-R_0^* form's every former print
   re-worded (grep R_0^*); (2) C_3^main (the e^2 factor), beta_1 =
   max(hist, weak), (MAIN-V2ID) at max(beta_S4, beta_*); (3) S7 BLOCK
   E present with rows T-26..T-29 and the six residual dispositions
   (mechanical search must find them); (4) the PX-convention
   reconciliation (8.1's exception + the annotated strays); (5) the
   GAP-LP-RECUR @ A6 fence: MM's Section-11 printings, the
   :3320/:4258 reconciliation, the 4260/4264/4268 trio, the 5588-5596
   label, the five residual assertion sites, AND the lane-lp
   conditioning note at LP.5 - the fence must be UNAVOIDABLE by any
   future flip. THEN the release question: B-DWELL / E2-ASSEMBLY /
   the lane-lp flip (which, if authorized, must PRESERVE the fence).
   INPUTS: lane-prodexc-v2.md; lane-minmig-proofs-v1.md;
   lane-lp-product-saddle-v1.md; the frozen appendix via [PROV];
   verdicts/XE-8-2026-08-01.md (residual checklist). KNOWN
   ENVIRONMENT: coherence_guard's GTPA-LAB-CONTRACT leg fails on
   foreign cross-lane drift (COORDINATION [96]); math legs green.
   NO corpus/canon/Lean edits; the flip is the LEAD's.
   DELIVERABLE: signed verdict (XE-9-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: high.

XE-10 XE-9 CURE VERIFICATION + THE RELEASE GATE (added 2026-08-01).
   WHAT: verify the five XE-9 minimum cures at their landed state:
   (1) the three stale start-set sentences reworded (:1876-class
   'Same horizon and integrand...'; the :3160 checker-quote reading
   note; the :1749 ENTRY-RATIO-ONLY scoping); (2) SECTION-7 BLOCK E
   PRESENT - exact row regex must find | **T-26** | .. | **T-29** |
   (the lead verified 4/4 by regex before claiming, output in
   COORDINATION [99]); (3) the PX:9041 token tagged as the one local
   pre-banner exception; (4) MM's active status header governed by
   the A6 fence clause in the header itself; (5) the two LOW C_3
   narrative renames (reported not-found by the lead's grep -
   adjudicate whether the sites exist under other phrasings or the
   LOW is moot). THEN the release question: B-DWELL / E2-ASSEMBLY /
   the lane-lp flip (fence-preserving).
   INPUTS: lane-prodexc-v2.md; lane-minmig-proofs-v1.md;
   lane-lp-product-saddle-v1.md; frozen appendix via [PROV];
   verdicts/XE-9-2026-08-01.md (residual checklist). KNOWN
   ENVIRONMENT: coherence_guard's GTPA-LAB-CONTRACT leg fails on
   foreign cross-lane drift ([96]); math legs green. NO corpus/
   canon/Lean edits; the flip is the LEAD's, post-signature.
   DELIVERABLE: signed verdict (XE-10-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: medium (a
   five-item delta gate).

XE-11 XE-10 CURE CONFIRMATION + THE RELEASE QUESTION (added
   2026-08-02; a TWO-SUBSTITUTION delta gate - the smallest of the
   arc).
   WHAT: (1) confirm the two renames at lane-prodexc-v2.md's former
   :1878 and :2247 sites: both now read 'inside C_3^main' (exact
   search for 'inside C_3' with no ^main suffix must return ZERO
   hits in the file); no operative equation, constant, threshold,
   beta power or exponent moved (the delta is two tokens). (2) THE
   RELEASE QUESTION: with items 1-5 of XE-9's cure set now all
   landed, do B-DWELL and the E2-ASSEMBLY discharge stand at
   consumed strength, and is the PROD-EXCURSION /
   PROD-EXCURSION-COND lane-lp flip AUTHORIZED - with the MM and
   lane-lp GAP-LP-RECUR @ A6 fences retained verbatim in force, as
   XE-10 item 3 requires?
   INPUTS: lane-prodexc-v2.md; lane-minmig-proofs-v1.md;
   lane-lp-product-saddle-v1.md; frozen appendix via [PROV];
   verdicts/XE-10-2026-08-02.md (the checklist). KNOWN ENVIRONMENT:
   coherence_guard's GTPA-LAB-CONTRACT leg fails on foreign
   cross-lane drift ([96]); math legs green. NO corpus/canon/Lean
   edits; the flip is the LEAD's, post-signature, fence-preserving.
   DELIVERABLE: signed verdict (XE-11-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: low (two tokens
   + the standing release question).


XE-12 - THE E5 + E6 WORKLIST GATE (bundled; one context, one signature)
   SCOPE: adjudicate BOTH deliverables of the post-E2 sealing recalc
   (attack-roadmap-v6): E5 = GAP-LP-RECUR at A6 strength on the min
   object E_q[D(0)^L_0], delivered at (TIER-A6-RATE); E6 = the
   numerical instantiation pass over the closed condition inventory.
   RELEASE QUESTIONS (answer each by name):
   1. E5-CORE: does the descent-arc certificate (three legs +
      simplicity + piecewise-C^1; H-DESC PROVED ON D_k(eps),
      err_desc = 0) stand at consumed strength?
   2. E5-LEG1: is the domination display (Phase-A/E/R cover; Phase-A
      off-R_0; expectations via the landed Phase-R and Phase-E
      charges) byte-faithful to the R6b scaffold?
   3. E5-LEG2: do the W(q) identity, the (COV)/(COV-SCOPE) discharge,
      the (A)/(B) partition, the displayed (PE3p.3 | q) and
      (PE3p.3b | q) re-instantiations, and the (TRAPOCC-2-ROUND)
      consumption via the underlying Regime-A quantifier stand - with
      Appendix B's named typed residuals acknowledged as OPEN rows?
   4. E5-SHAPE: is (TIER-A6-RATE) honestly typed (P_E5
      polynomial-class prefactor, the rate-inertness row, NO
      T_sig-beta-free claim), and does the consumer walk's two-half
      split (prefactor inertness vs object substitution; the MM
      Section-11 displays stand as printed under their own
      conditionality markers) hold?
   5. E6-PASS: does the instantiation pass hold as printed - Stage-0
      regression exact (21/21 at 10 dp), FAIL-CLOSED honored (zero
      invented numerals), the binding caps as reported (eps: L-02 at
      0.0472135955; delta: c_plate's Q-cap, tied by H-SEP)?
   6. F-1 ADJUDICATION: is the lead's disposition of the eps-cap
      violation acceptable (instantiation point eps = 0.045; the
      eps = 0.05 NAME carried TYPED; corpus renumbering deferred to
      this gate's answer), or does the signer direct the renumbering
      now?
   7. THE FLIP QUESTION: on SOUND, are the SIGMA0-EXC flip at
      (TIER-A6-RATE) BY NAME and the GAP-LP-RECUR discharge at
      DISCHARGED-AT-THE-MIN-OBJECT-AT-RATE-STRENGTH authorized, and
      at what fence disposition? State the boundary explicitly: which
      (if any) of the A6 fence texts at lane-minmig:47, the register
      label, and lane-lp LP.5 come off or are rewritten, and which
      stay. No fence edit precedes this signature.
   INPUTS: pre-physics/lane-e5-gaplprecur-v1.md (the artifact; its
   C-headers carry the anchor-drift ledger, collision guards, numeral
   convention; Appendices B/C/D the residuals + both cure ledgers);
   the five landed P2 record notes (lane-minmig-proofs-v1.md x3,
   lane-prodexc-v2.md T-1/T-2); e5-gap-lp-recur-charter-v1.md (REV 2,
   the spec); scripts/e6_instantiation.py + scripts/e6_adjudication.py
   + pre-physics/e6-runlogs/ (rerunnable: python scripts/<name>.py);
   pre-physics/e6-instantiation-table-v1.md; lane-lp / frozen PX via
   [PROV] at the cited lines. KNOWN ENVIRONMENT: coherence_guard's
   GTPA-LAB-CONTRACT leg fails on foreign cross-lane drift ([96]);
   prose_invariants PASS is the math-lane green signal. NO
   corpus/canon/Lean edits; any authorized flip is the LEAD's,
   post-signature, per the answer to question 7.
   DELIVERABLE: signed verdict (XE-12-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: high (two
   artifacts, one signature).


XE-13 - THE XE-12 CURE DELTA GATE (narrow; one context)
   SCOPE: verify the cure of XE-12's single BLOCKING finding, the closure
   of its finding 2, and ONE FURTHER START ROW the lead's own pre-dispatch
   audit found beyond XE-12's read - then re-answer the release/flip
   questions. DELTA GATE: XE-12's PASS answers (E5-CORE, E5-LEG1,
   E5-SHAPE's algebra, E6 in full, the F-1 eps adjudication) are consumed,
   not re-litigated.
   ITEM 1 - THE GROUND-TUBE ROW: (E5-GTUBE) at lane-e5-gaplprecur-v1.md
   Section 2.3 replaces the saddle-tube warrant at all three v3 sites
   (2.3, 2.8(c), Appendix B R-1 - now a closure record). Check: (a) it is
   a corollary of the landed COLLAR GEOMETRY LEMMA (frozen PX physical
   8144-8170) with base-point inputs at every point of G_k (Lemma M2P.1,
   lane-m2:59); (b) the bond-Lipschitz display matches the lemma's own
   step; (c) labels-along-path consumes only Delta-disjointness + local
   constancy; (d) (E5-GTUBE-NUM) delta/2 < pi - 2 pi k/N is collected
   (T-6-fence class) and mirrored at the E6 table Section 7.3, arithmetic
   right (4 pi/5 = 2.5132741229; slack 12.57x vs delta <= 2/5); (e) the
   saddle tube T_{r_0'}(Z) is READ nowhere in the artifact after the cure;
   (f) no inter-tube inclusion is asserted.
   ITEM 2 - THE LEVEL ROW, THE LEAD'S OWN FINDING, TO BE VERIFIED NOT
   INHERITED: the lead's R-2 enumeration (fourteen E-rows, seven fenced
   M-rows; Appendix B R-2, CLOSED BY ENUMERATION) found that XE-12's
   finding 2 named three start rows but folded a FOURTH into "Regime A":
   the START LEVEL row Theta(z,S) <= m_k + eps w_k + c_0 (V2:2599-2600)
   embedded in (TRAPOCC-2-ROUND)'s printed exponent - V2's own (E2)
   clause separates MEMBERSHIP / LEVEL / REGIME (V2:2812-2817). At a
   sub-cap q the collar level bound is unavailable ON THE ENTIRE
   ADMISSIBLE eps-WINDOW (c_0 >= 2 kappa - m_k - eps w_k has a positive
   right side by (E5-DOMAIN) while c_0 -> 0 as delta -> 0). The cure:
   Section 4.5 row (d) = (E5-LEVEL-Q), the display re-substituted at the
   unique Theta slot, branch-(A) exponent S_k + c_H - 2 kappa - err =
   0.9341803190 - err (the (E5-MARGIN) numeral) in place of the collar
   print 1.0243502627 - err; beta power and prefactor unchanged; (LEG-2)'s
   conclusion unchanged; the (REACH-s) consistency row added. VERIFY the
   level-row analysis, the slot-uniqueness against the enumeration, and
   the arithmetic; adjudicate whether the re-substitution is a faithful
   reading of the landed chain.
   ITEM 3 - THE RESIDUAL-HUNT CLOSURES (declared, each narrow): R-2's
   NEW-2 typed prefactor-class flag ((MARG)'s collar arithmetic; if live,
   moves only beta-free c(N,delta)); R-4 moot; R-5 resolved + CHECKED
   (the sufficiency bracket = four nonnegative summands, first
   0.6991336837 > 0, live sites MM:756/894/1080/1240-1251); R-6 -> the
   two V2 record corrections at T-19/T-20 (name-based notes, labels
   retained as history, NO theorem status moved); R-7 charter note
   (p_sub's beta^N placement); the (b') separation display (the E-5
   documentation row).
   RELEASE QUESTIONS: (1) does E5-LEG2 branch (A) now stand, at the
   (E5-LEVEL-Q) exponent? (2) is (TIER-A6-RATE) release-effective -
   XE-12 question 4's "otherwise-correct substitution" now authorized?
   (3) THE FLIP QUESTION, verbatim from XE-12 question 7, re-asked on the
   cured print: state the boundary explicitly; no fence edit precedes
   the signature.
   INPUTS: lane-e5-gaplprecur-v1.md (the cured print; Appendix B carries
   the enumeration and all closure records); verdicts/XE-12-2026-08-02.md
   (the checklist); frozen PX physical 8144-8170 + 4728-4734 + 7456-7472;
   lane-m2:55-66; V2 Sections 4.2/4.4 (the enumeration's anchors) + the
   T-19/T-20 record notes; e5-gap-lp-recur-charter-v1.md (the R-7 note);
   e6-instantiation-table-v1.md Section 7.3. KNOWN ENVIRONMENT: unchanged
   ([96] guard exception; prose_invariants is the green signal). NO
   corpus/canon/Lean edits; any authorized flip is the LEAD's,
   post-signature, per the answer to question (3).
   DELIVERABLE: signed verdict (XE-13-<date>.md); LEDGER + COORDINATION
   as always. BLINDNESS: OPEN. EFFORT: medium (three cure items + one
   lead-found row to adjudicate + the standing release question).


XE-14 - THE XE-13 RECORD-CURE MICRO GATE (narrow; one context; no new
   mathematics to adjudicate)
   SCOPE: XE-13 adjudicated BOTH mathematical cures PASS and blocked on
   record-class defects only. Verify the six record edits of the v5
   print, then re-answer the release/flip question. DELTA GATE: XE-13's
   mathematical PASS answers ((E5-GTUBE); (E5-LEVEL-Q); LEG-2 branch (A)
   at (E5-LEVEL-Q) strength; NEW-2 typed) and all prior consumed
   strengths are inherited, not re-litigated.
   THE SIX EDITS (lane-e5-gaplprecur-v1.md, v5):
   1. The M-1..M-7 table is now INDIVIDUAL, by name and anchor (XE-13
      finding 1's exact ask): check each of the seven anchors resolves
      and that all seven stay fenced OUT by V2:2445-2448 (nothing is
      consumed on branch (A)).
   2. ONE AUTHORITY STATE (XE-13 finding 2): Section 2.9's stale R-1
      disclaimer removed with a cure marker; Appendix B's umbrella is
      now a per-row DISPOSITION LEDGER; Appendix C LA-2 carries the
      superseded marker; no live text contradicts CLOSED anywhere.
   3. The header: v5 lineage, XE-14 pending, XE-12/XE-13 signature
      state stated (XE-13 finding 4).
   4. R-5's positivity paragraph: the invented |C_w| <= 328 magnitude
      argument is REPLACED by the sign derivation from the landed
      constructions (C_Z > 0, lane-lp:300-301; C_B assembly,
      lane-lp:845-850; LP.4b displacement-cost coefficient,
      lane-lp:613-652; err(delta) as cost bounds) - XE-13 finding 3's
      exact repair, no numeral invented.
   5. No mathematical display moved: diff the v4 -> v5 print and
      confirm Sections 2-6's displays are byte-identical (the six edits
      touch header/2.9's non-claim list/Appendix B/Appendix C only,
      plus the R-5 paragraph in Appendix B).
   6. The A6 fence surfaces: byte-identical, verbatim, untouched.
   RELEASE QUESTIONS: (1) is the R-2 closure now at its declared
   strength? (2) is (TIER-A6-RATE) release-effective on this print?
   (3) THE FLIP QUESTION, verbatim from XE-12 question 7 / XE-13
   question 3, re-asked: state the boundary explicitly; no fence edit
   precedes the signature.
   INPUTS: lane-e5-gaplprecur-v1.md (v5); verdicts/XE-13-2026-08-02.md
   (the checklist - its findings 1-4 name every edit); the seven V2
   M-anchors; lane-lp:300-301, 845-850, 613-652; the fence surfaces.
   KNOWN ENVIRONMENT: unchanged ([96]; prose_invariants is the green
   signal; XE-13's frozen-appendix hash difference is checkout CRLF
   normalization - the git blob is identical, see COORDINATION [105]).
   NO corpus/canon/Lean edits; any authorized flip is the LEAD's,
   post-signature, per the answer to question (3).
   DELIVERABLE: signed verdict (XE-14-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: low (six record
   edits + the standing release question).


XE-15 - THE READER PANEL (the operator's lector cero, delegated; one
   context, FOUR sequential reader profiles, one signed report)
   NATURE: NOT a soundness gate - a COMPREHENSION AND FIDELITY gate on
   governance/la3-reader-packet-v1.md (the E4(a) refresh, change ledger
   at governance/e4a-change-ledger-v1.md). The mathematics was
   adjudicated across XE-11..XE-14; do not re-litigate it. The question
   is whether the PACKET tells the true story to four different cold
   readers.
   THE FOUR PROFILES (play each in sequence, fully in character, a
   fresh read each time; report per profile before switching):
   P1 THE HOSTILE EXPERT (metastability/large-deviations specialist,
      out to break the program): from the packet alone, which three
      joints would you attack first, and does the packet POINT you at
      them honestly (the attack list Q1-Q12) or hide them? Then open
      the two or three lanes the packet cites for your chosen attacks
      and check the packet did not oversell what is there.
   P2 THE COLD NEWCOMER (strong mathematician, zero context): read
      ONLY the packet head, Part III, the done-criterion and the
      honest-opens list. Restate IN YOUR OWN WORDS: what is proved, at
      what strength, what remains open and behind which condition.
      Name every place you got lost or had to guess.
   P3 THE METHODOLOGY REFEREE (evaluating whether to trust the
      verification story): the external-verdict arc, the honesty
      counts (nineteen external, the internal passes named as
      internal), the machine-checked claims, the change ledger - does
      the meta-story hold together without contradiction? Spot-check
      two counts against LEDGER.md.
   P4 THE INSTANTIATING READER (wants numbers): try to instantiate
      the flagship cell from the packet's pointers. Do you land on
      eps = 0.045 (not the printed 0.05)? Do the E6 pointers resolve
      (table, scripts, runlogs)? Does the eps-hazard warning reach you
      BEFORE you would have used 0.05?
   DELIVERABLE: ONE signed report, verdicts/XE-15-<date>.md, with a
   per-profile section (verdict FIT / NOT FIT per profile + the named
   misreadings, losses, or misleads, each with the packet line and the
   repair you would ask for) and a closing aggregate: FIT FOR RELEASE
   AS THE PROGRAM'S READER DOCUMENT, or the named repair list. LEDGER
   + COORDINATION as always. BLINDNESS: OPEN. EFFORT: medium (four
   reads of one 735-line document + spot checks).


XE-16 - THE READER-PANEL RE-READ (micro; P3 + the aggregate only)
   SCOPE: XE-15's P1/P4 verdicts stand (FIT) and are inherited. Verify
   the count-taxonomy repair and the P2 clarity fold, then re-answer
   the aggregate FIT question.
   ITEMS: (1) run python scripts/verdict_census.py and check it
   reproduces governance/verdict-census-v1.md exactly, fail-closed
   (every verdict file matched by exactly one rule, every item in
   LEDGER); (2) re-run XE-15 P3's two spot checks against the STRICT
   taxonomy now printed (packet Part III + Addendum 2.1 + the E2
   paragraph + opens item 2; lane-lp's corrected discharge clause;
   roadmap v6's tail note; LEDGER's XE-11 record correction) - the
   counts must be mechanically reproducible from the census; (3) check
   the historical entries [101]/[106]/[107] are UNEDITED and [109] is
   their correction pointer; (4) P2's separation: Section 3 is now a
   state ledger with [LIVE]/[DISCHARGED] tags - does the cold reader
   now see the genuinely open set at a glance? (5) THE AGGREGATE: FIT
   FOR RELEASE AS THE PROGRAM'S READER DOCUMENT, or the named repairs.
   The Q7 navigation item is DECLARED DEFERRED (e4a ledger C-26) and
   is not a blocker unless the panel re-grades it.
   DELIVERABLE: signed verdict (XE-16-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: low.


XE-17 - THE CENSUS-CONTRACT MICRO GATE (P3's last item + the aggregate)
   SCOPE: everything else is PASS and inherited (XE-15 P1/P4; XE-16
   P2, strict counts, historicals). Verify ONLY the census v2
   fail-closed contract, then re-answer the aggregate FIT question.
   ITEMS: (1) python scripts/verdict_census.py reproduces
   governance/verdict-census-v1.md byte-exactly, exit 0, and python -O
   produces the SAME bytes; (2) the v2 contract holds against the
   XE-16 fixtures: structural row parse (no substring membership),
   exact authority-path bijection (remove any one status row in an
   in-memory fixture -> hard fail even under -O; the X9C collision
   reported as PHYSICAL 51 / AUTHORITATIVE 50 / SUPERSEDED 1 with the
   superseding authority named), duplicate-rule fixture -> hard fail
   under -O, no assert on any gate path; (3) the census's campaign
   assignment of XE-16 (E4/READER, not a soundness signature) and the
   unchanged strict headline E2 = 11 / E5 = 3 / E2+E5 = 14; (4) THE
   AGGREGATE: FIT FOR RELEASE AS THE PROGRAM'S READER DOCUMENT, or the
   named repairs. The deferred Q7 navigation item (e4a ledger C-26)
   remains declared-deferred unless re-graded.
   DELIVERABLE: signed verdict (XE-17-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: very low.


XE-18 - THE STATUS-SEMANTICS MICRO DELTA (the last census item + the
   aggregate)
   SCOPE: everything else is PASS and inherited (XE-15 P1/P4; XE-16
   P2 + strict counts + historicals; XE-17 items 1-3 incl. the
   exhaustive 50/50 row-deletion sweep). Verify ONLY census v3's
   status-semantics cure, then re-answer the aggregate FIT question.
   ITEMS: (1) byte reproduction normal AND -O against the regenerated
   governance/verdict-census-v1.md; (2) XE-17's two fixtures: SIGNED ->
   VOID on any authoritative row (exact path retained) must hard-fail
   in normal and -O; SIGNED -> GIBBERISH must hard-fail at the
   unknown-state gate; (3) the anchored grammar binds item / STATUS /
   date / path per README-PROTOCOL's state machine (SIGNED /
   LEAD-VERIFIED authoritative; VOID / OPEN / DISPATCHED / IN-PROGRESS
   excluded-then-file-gated; unknown fatal); (4) XE-17 in the
   E4/READER rule; headline unchanged E2 = 11 / E5 = 3 / E2+E5 = 14,
   PHYSICAL 52 / AUTHORITATIVE 51 / SUPERSEDED 1; (5) THE AGGREGATE:
   FIT FOR RELEASE AS THE PROGRAM'S READER DOCUMENT, or the named
   repairs. Q7 navigation stays declared-deferred unless re-graded.
   ADDENDUM (landed before any paste): the census now carries its OWN
   adversarial fixture suite - (1b) python
   scripts/verdict_census_selftest.py must exit 0 and print its
   eight-fixture matrix (baseline byte-identity normal/-O vs the
   landed census; removed-row; duplicate-rule; VOID; unknown-state;
   superseded-overlap; stray-file; AST zero-assert). Running it
   discharges items (1)-(3) mechanically; spot-check any fixture by
   hand if desired. A SUPERSEDED-vs-authoritative overlap gate was
   also added to the census. Q7 now carries its exact P0/X4 pointers
   (the substantive half of XE-15 repair 3); the cosmetic
   Q-renumbering stays deferred with its reason in the e4a ledger.
   DELIVERABLE: signed verdict (XE-18-<date>.md); LEDGER +
   COORDINATION as always. BLINDNESS: OPEN. EFFORT: very low.
