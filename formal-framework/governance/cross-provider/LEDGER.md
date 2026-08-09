# LEDGER — cross-provider queue status

Updated by: the external agent (DISPATCHED -> IN-PROGRESS -> SIGNED)
and the lead (SIGNED -> LEAD-VERIFIED after two-way re-verification;
state machine defined in README-PROTOCOL.md v2). The operator reads
this table; nobody has to remember anything. Item selection is via
NEXT.md only.

```text
(order = the 2026-07-11 re-rank; STATUS gains a DATE on every change;
 IN-PROGRESS older than 14 days returns to DISPATCHED, recorded)
ITEM  TITLE                                STATUS   DATE        VERDICT DOC
X0    Standing-up (runbook + capabilities) LEAD-VERIFIED 2026-07-18 verdicts/X0-2026-07-18.md
X6    Gate re-adjudication  [CALIBRATION]  LEAD-VERIFIED 2026-07-18 verdicts/X6-2026-07-18.md
X1    Lean repro (true compile) [CAL PAIR] LEAD-VERIFIED 2026-07-18 verdicts/X1-2026-07-18.md
X2    Blind back-translation (Lean corpus) LEAD-VERIFIED 2026-07-18 verdicts/X2-2026-07-18.md
X9    M5 charter constitutional re-review  LEAD-VERIFIED 2026-07-18 verdicts/X9-2026-07-18.md
X9B   M5 charter v4 re-review (post-repair) LEAD-VERIFIED 2026-07-19 verdicts/X9B-2026-07-19.md
X9C   M5 charter v4.1 re-review            LEAD-VERIFIED 2026-07-19 verdicts/X9C-2026-07-19-2.md
XH    Master rate display composition check LEAD-VERIFIED 2026-07-20 verdicts/XH-2026-07-20.md (7/7 confirmed; repairs landed)
XH-R  Master rate display repair re-review  LEAD-VERIFIED 2026-07-20 verdicts/XH-R-2026-07-20.md (5/5 residuals confirmed; repairs landed)
XH-R2 Master rate display second re-review   LEAD-VERIFIED 2026-07-20 verdicts/XH-R2-2026-07-20.md (3/3 residuals confirmed; repairs landed)
XH-R3 Master rate display final micro-delta  LEAD-VERIFIED 2026-07-20 verdicts/XH-R3-2026-07-20.md (REPAIR-FAITHFUL - H3 CLOSED)
XM    Migration-proofs cold review           LEAD-VERIFIED 2026-07-20 verdicts/XM-2026-07-20.md (7/7 confirmed; record repairs landed; round-3 fleet on F1-F3; flips BLOCKED pending XM-R)
XM-R  Migration-proofs re-review            LEAD-VERIFIED 2026-07-20 verdicts/XM-R-2026-07-20.md (byte-checkables confirmed; F2/F3 adopted as the round-5 spec; record repairs landed; flips BLOCKED)
XM-R2 Migration-proofs third review          LEAD-VERIFIED 2026-07-21 verdicts/XM-R2-2026-07-21.md (8/8 confirmed; record repairs F4-F8 landed; round 6 on F1-F2 in flight; flips BLOCKED)
XM-R3 Migration-proofs fourth review         LEAD-VERIFIED 2026-07-21 verdicts/XM-R3-2026-07-21.md (6/6 confirmed; manifest landed; A10-A12 + F4/F6 cures landed; flips BLOCKED)
XM-R4 Migration-proofs fifth review          LEAD-VERIFIED 2026-07-21 verdicts/XM-R4-2026-07-21.md (6/6 confirmed - all release-engineering; cures landed; flips BLOCKED)
XM-R5 Migration-proofs sixth review          LEAD-VERIFIED 2026-07-21 verdicts/XM-R5-2026-07-21.md (5/5 confirmed - all release/status; cures landed incl. 1 extra residual the staged sweep caught; flips BLOCKED)
XM-R6 Migration-proofs seventh review        LEAD-VERIFIED 2026-07-21 verdicts/XM-R6-2026-07-21.md (5/5 confirmed - status/formulation only; cures + ring sweep landed; sweep is now an ASSERT; flips BLOCKED)
XM-R7 Migration-proofs eighth review         LEAD-VERIFIED 2026-07-22 verdicts/XM-R7-2026-07-22.md (6/6 confirmed - enforcement/status; auth gate now protocol-state-strict, tripwires near-only, 33-lane macro class cured; flips BLOCKED)
XM-R8 Migration-proofs ninth review          LEAD-VERIFIED 2026-07-22 verdicts/XM-R8-2026-07-22.md (5/5 confirmed; NOT DISCHARGE-SOUND at signing - consumed denial, kept literal per the F1 grammar law; cures landed; flips BLOCKED)
XM-R9 Migration-proofs tenth review          LEAD-VERIFIED 2026-07-22 verdicts/XM-R9-2026-07-22.md (NOT DISCHARGE-SOUND at signing; 1/1 confirmed - the free-form parser; closed grammar installed; flips BLOCKED)
XM-R10 Migration-proofs eleventh review      LEAD-VERIFIED 2026-07-22 verdicts/XM-R10-2026-07-22.md (NOT DISCHARGE-SOUND at signing; 1/1 confirmed - the production now token-anchored whole-row; flips BLOCKED)
XM-R11 Migration-proofs twelfth review       LEAD-VERIFIED 2026-07-23 verdicts/XM-R11-2026-07-23.md (NOT DISCHARGE-SOUND at signing; 1/1 confirmed - the verdict-path production now closed; flips BLOCKED)
XM-R12 Migration-proofs thirteenth review    LEAD-VERIFIED 2026-07-25 verdicts/XM-R12-2026-07-25.md (NOT DISCHARGE-SOUND at signing; 2/2 confirmed - OPEN in the enum; lineage reattached by ours-merge; flips BLOCKED)
XM-R13 Migration-proofs fourteenth review    LEAD-VERIFIED 2026-07-25 verdicts/XM-R13-2026-07-25.md (NOT DISCHARGE-SOUND at signing; 2/2 confirmed - disposition suffix closed; duplicate rows fail closed; flips BLOCKED)
XM-R14 Migration-proofs fifteenth review     LEAD-VERIFIED 2026-07-25 verdicts/XM-R14-2026-07-25.md (NOT DISCHARGE-SOUND at signing; verification residuals only, zero defects; --gatetest installed; flips BLOCKED)
XM-R15 Migration-proofs sixteenth review     LEAD-VERIFIED 2026-07-25 verdicts/XM-R15-2026-07-25.md (NOT DISCHARGE-SOUND at signing; environmental only - gatetest re-engineered one-tree 0.7s; push-hold recommitted; flips BLOCKED)
XM-R16 Migration-proofs seventeenth review   LEAD-VERIFIED 2026-07-26 verdicts/XM-R16-2026-07-26.md (DISCHARGE-SOUND; lead two-way verification complete - gatetest 23/23, selftests, both guards, dry-run 60/60 reproduced on the lead machine; release authorized)
XE-1 E2 constructive midpoint review        LEAD-VERIFIED 2026-07-27 verdicts/XE-1-2026-07-27.md (NOT SOUND at signing; 4/4 BLOCKING confirmed - all in the lead overlays; cures landed: SR-PE1-DEL, DOORREACH-MAXFIX, AM-R5-15..18)
XE-2 E2 cure verification                    LEAD-VERIFIED 2026-07-27 verdicts/XE-2-2026-07-27.md (NOT SOUND at signing; 3/4 cure groups fail: F1 has 3 BLOCKING mechanisms, F2 has 1, F3 PASS, F4 geometry PASS / exact-strength BLOCKING; 5 total BLOCKING; lead two-way verification 5/5 CONFIRMED; cures landed: CURE-XE2-F1a/F1b + E-MEAS, AM-R5-21 (closure row), AM-R5-22 (s-parametric retype), AM-R5-23; F1.3 pre-cured by AM-R5-20; F3 + hygiene passes accepted; XE-3 dispatched)
XE-3 XE-2 cures + E2 overlay adjudication LEAD-VERIFIED 2026-07-27 verdicts/XE-3-2026-07-27.md (NOT SOUND at signing; F1.1/F1.3/F2/F4 PASS; 2 BLOCKING confirmed two-way; cures landed: CURE-XE3-A (non-circular positivity) + PIECE TRAPOCC-3 (closed target TRAP_2^cl, checker SOUND, display value unchanged); E2-ASSEMBLY v2 landed (checker SOUND; block-free, Palm-free, (P-SUB)-free chain); XE-4 dispatched)
XE-4 XE-3 cures + E2 assembly adjudication LEAD-VERIFIED 2026-07-27 verdicts/XE-4-2026-07-27.md (NOT SOUND at signing; CURE-XE3-A PASS; 4 BLOCKING: TRAPOCC-3 ENTRY weak-route gap, open-S/compact WFF mismatch, live H-CONN plus stale B-DWELL register, sigma_0 consumer outside closure(S); B-DWELL/row flip BLOCKED; lead two-way verification 4/4 CONFIRMED; cures landed: TRAPOCC-4 + TRAP-LICENSE (both internal-checker SOUND) + CURE-XE4-2/3/4 v3 (3 adversarial rounds each; mathematics sustained; residuals disposed/TYPED per AM-R5-26); XE-5 dispatched)
XE-5 XE-4 cure package + release adjudication LEAD-VERIFIED 2026-07-27 verdicts/XE-5-2026-07-27.md (NOT SOUND at signing; TRAPOCC-4 envelope PASS but cube-plate RATIO BLOCKING; TRAP-LICENSE PASS; CURE-XE4-2 FAIL: CAP-LOW* H1/Lipschitz bridge + TYPED-PLATE-V2ID BLOCKING; CURE-XE4-3 PASS at consumed exit strength; CURE-XE4-4 ordinary i>=1 retype PASS but sigma_0 full-release tail remains typed/uncontrolled; B-DWELL/ordinary row flip BLOCKED; lead two-way verification 4/4 CONFIRMED; cures landed: ENTRY-W + V2ID + CAP-LOW-H1 + SIGMA0-DECLAIM (all four cores adversarially recomputed twice, sustained; eta re-freeze AM-R5-27(a); bookkeeping residuals TYPED (c1)-(c4)); XE-6 dispatched)
XE-6 XE-5 cures + AM-R5-27 release adjudication LEAD-VERIFIED 2026-07-27 verdicts/XE-6-2026-07-27.md (NOT SOUND at signing; all four mathematical cores PASS at the stated consumed strengths; eta re-freeze PASS; c1 global quantifier FAIL but NONBLOCKING for exact boundary(S+) E2 use; c2 BLOCKING load-bearing v2a lineage; c3 BLOCKING false exhaustive import ledger; SIGMA0 de-claim principle PASS but c4 propagation BLOCKING for package/full LP.5 upper; B-DWELL remains DISCHARGED-PENDING, E2 not released, lane-lp flip NOT AUTHORIZED; lead verification: no core refuted (10th consecutive verdict); propagation round's cores verified, executions broken on anchors - the overlay method is EXHAUSTED; AM-R5-28 CONSOLIDATION PIVOT: E2-CONSOLIDATED (lane-prodexc-v2) is the next deliverable, XE-7 redefined to review it; flip stays blocked)
XE-7 E2 consolidated end-to-end review     SIGNED 2026-07-28 verdicts/XE-7-2026-07-28.md (NOT SOUND; F1 main-TRAP weak occupation/sandwich missing over cube plate BLOCKING; F2 stale C_H' in C_5, F3 suppressed eta, F4 false err identity, F5 incomplete beta threshold; B-DWELL/E2/row flip NOT AUTHORIZED)
XE-8 XE-7 cures + final release adjudication LEAD-VERIFIED 2026-08-01 verdicts/XE-8-2026-08-01.md (NOT SOUND; F1 weak core PASS on CASE 1 but full R_0^* scope, main C_3 and beta thresholds BLOCKING; F2-F5 PASS; S7 block E absent; PX/COV records contradictory; c4 still blocks unconditional full LP.5 upper; B-DWELL/E2/row flip NOT AUTHORIZED; lead verification: F2-F5 + 5/6 residuals externally PASS; cures landed: the CASE-1 narrowing (DOOR-CASE1) + C_3^main/beta_1/beta_door thresholds + S7 BLOCK E (T-26..T-29, actually landed this time) + PX-convention reconciliation + the MM/LP GAP-LP-RECUR @ A6 fence at every live site incl. lane-lp itself; XE-9 dispatched)
XE-9 XE-8 cures + release adjudication       LEAD-VERIFIED 2026-08-01 verdicts/XE-9-2026-08-01.md (NOT SOUND; operative Door-inter-R_0^* main leg and C_3^main/beta thresholds PASS, but stale full-domain/start-set printings remain; S7 block E/T-26..T-29 is absent despite byte-presence claims; one mixed PX token remains inside the all-physical h-block; named A6 fence sites PASS but MM's active status header still says all internal rows discharged, so the fence is not artifact-wide unavoidable; B-DWELL/E2/PROD-row flip NOT AUTHORIZED; lead verification: operative mathematics externally PASS; the five minimum cures EXECUTED with mechanical verification printed (block E regex-verified 4/4 BEFORE any claim - the silent-skip class is now impossible to repeat unnoticed); XE-10 dispatched)
XE-10 XE-9 cures + release adjudication      LEAD-VERIFIED 2026-08-02 verdicts/XE-10-2026-08-02.md (NOT SOUND; cure groups 1-4 PASS exactly, including 1/1 regex hits for T-26..T-29 and the artifact-visible A6 fence; item 5 LOW but not moot — both main-(g) narrative sites still say C_3 instead of the explicitly distinct C_3^main; mathematical consumed force remains intact, but B-DWELL stays DISCHARGED-PENDING, E2 is not release-signed, and the fence-preserving PROD-row flip is NOT AUTHORIZED pending the two exact renames and a fresh delta pass; lead verification: items 1-4 externally PASS incl. the mechanical block-E gate; the two C_3 -> C_3^main renames EXECUTED with the zero-remaining-occurrences check printed; XE-11 dispatched - a TWO-SUBSTITUTION delta gate)
XE-11 XE-10 two-substitution cure + release     LEAD-VERIFIED 2026-08-02 verdicts/XE-11-2026-08-02.md (SOUND; both narrative sites now read C_3^main; exact unsuffixed negative search returns zero; the complete pre-physics cure delta is those two substitutions only; B-DWELL and E2-ASSEMBLY stand at consumed strength; the lead is AUTHORIZED to flip PROD-EXCURSION and PROD-EXCURSION-COND provided the verbatim minmig/lane-lp GAP-LP-RECUR@A6 fences remain in force — the flip does not discharge the package/full-upper A6 condition; SOUND - RELEASE AUTHORIZED FENCE-PRESERVING; lead executed THE FLIP (prodexc-flip-manifest-v1, eleven sites, minmig byte-identical to the evidence lock, zero residual modulo-clauses) + roadmap v6 (the SEALING recalc) + the campaign closeout; E2 FOLDED - sixteen verdicts, zero cores refuted) [COUNT CORRECTION 2026-08-02, XE-15 P3: strict E2 count = ELEVEN (XE-1..XE-11); the 'sixteen' conflated XM-R12..XM-R16 (E1/MIN-MIG-primary); census: governance/verdict-census-v1.md; this row's original text stands as record]
XE-12 E5 + E6 bundled release gate             SIGNED 2026-08-02 verdicts/XE-12-2026-08-02.md (NOT SOUND; E5-CORE/H-DESC PASS, E5-LEG1 PASS, E5-SHAPE conditional interface PASS, E6 PASS, eps=0.045 adjudication accepted with 0.05 typed/deferred; one BLOCKING object mismatch: E5 uses the saddle tube T_{r_0'} around Z=SP_k x C_0 to certify Delta_theta avoidance for a radial segment in the independent ground tube around G_k, leaving H-CONN and branch-(A) LEG2 unsupported; no SIGMA0-EXC or GAP-LP-RECUR flip authorized; all A6 fences stay verbatim)
XE-13 XE-12 cure delta gate                     SIGNED 2026-08-02 verdicts/XE-13-2026-08-02.md (NOT SOUND; E5-GTUBE and E5-LEVEL-Q mathematically PASS, but R-2's claimed seven-M-row by-name/by-anchor enumeration is absent and live R-1/R-2 authority text remains contradictory; TIER-A6-RATE not release-effective; all A6 fences stay verbatim; flip NOT AUTHORIZED)
XE-14 XE-13 record-cure micro gate               SIGNED 2026-08-02 verdicts/XE-14-2026-08-02.md (SOUND; all six v5 record edits PASS; R-2 closed at declared enumeration strength; TIER-A6-RATE release-effective; SIGMA0-EXC and GAP-LP-RECUR min-object/rate flip AUTHORIZED; every full-upper A6 fence stays verbatim; no fence removal authorized)
XE-15 Reader panel (four-profile cold read)       SIGNED 2026-08-02 verdicts/XE-15-2026-08-02.md (P1 hostile expert FIT; P2 cold newcomer FIT with clarity repairs; P3 methodology referee NOT FIT - the printed 19/16 count is not reproducible at its declared E2+E5 / XE-1..XE-11 scope without an unnamed five-item XM-tail membership rule; P4 instantiating reader FIT, eps=0.045 path and both exact runlogs reproduced; aggregate NOT FIT FOR RELEASE AS THE PROGRAM'S READER DOCUMENT pending count-taxonomy repair; no mathematics re-litigated)
XE-16 Reader-panel re-read (P3 + aggregate micro) SIGNED 2026-08-02 verdicts/XE-16-2026-08-02.md (P1/P4 inherited FIT; P2 FIT; strict P3 count taxonomy and historical propagation PASS; census byte reproduction PASS but fail-closed contract FAILS: substring LEDGER membership, no exact authority-path binding across the superseded X9C collision, and assert gates vanish under python -O; aggregate NOT FIT FOR RELEASE AS THE PROGRAM'S READER DOCUMENT pending one census-authority repair class; no mathematics re-litigated)
XE-17 Census-contract micro gate                    SIGNED 2026-08-02 verdicts/XE-17-2026-08-02.md (normal/-O byte reproduction PASS; all named XE-16 fixtures PASS including exhaustive 50/50 status-row deletion, duplicate rule, and X9C 51 physical / 50 authoritative / 1 superseded; XE-16 E4 assignment and strict 11/3/14 PASS; aggregate NOT FIT because census v2 does not parse/enforce STATUS and counts VOID or invalid-state rows with exact paths as authoritative; one status-semantics repair remains; no mathematics re-litigated)
XE-18 Status-semantics micro delta                   SIGNED 2026-08-02 verdicts/XE-18-2026-08-02.md (FIT FOR RELEASE AS THE PROGRAM'S READER DOCUMENT; census selftest 8/8 PASS exit 0; normal/-O/landed raw bytes identical; VOID and unknown-state mechanisms manually confirmed; XE-17 E4/READER; strict E2=11/E5=3/14 and PHYSICAL 52/AUTHORITATIVE 51/SUPERSEDED 1 PASS; no release repair remains; Q-renumbering stays declared-deferred; no mathematics re-litigated)
XE-19 Post-seal documentary reconciliation gate      SIGNED 2026-08-09 verdicts/XE-19-2026-08-09.md (NOT SEAL-STATE-CLEAN; no math refutation; source/Lean/pre-physics/fences/tag/release unchanged; 3 byte-public E2 status surfaces missed; coherence_guard v1.18 FAIL-OPEN on XE-14 -> XE-13 reversion; publication FACT/ACTIVITY split incomplete; repair release NOT AUTHORIZED; XE-19-R required)
XE-19-R Post-seal reconciliation cure delta            SIGNED 2026-08-09 verdicts/XE-19-R-2026-08-09.md (NOT SEAL-STATE-CLEAN; no math refutation; F1/F3/F4/source/fence/tag PASS; v1.19 FAIL-OPEN when the lane-lp QED RECON bracket is deleted; MATH-BOOT/WORKBOARD violate the declared full-tuple ownership contract and retain stale XE-19 gate state; census RULE accepts XE-19-R but TOKEN grammar drops its LEDGER row; repair release NOT AUTHORIZED)
XE-19-R2 Post-seal reconciliation second cure delta     SIGNED 2026-08-09 verdicts/XE-19-R2-2026-08-09.md (SEAL-STATE-CLEAN at cure scope; R1 site-anchor + exact QED deletion fail-closed PASS; R2 full-tuple/NEXT ownership PASS; R3 census grammar + 9/9 PASS; Addendum-2 live pointers + hardcode mutation PASS; source/canon/Lean/pre-physics/fences/tags unchanged; repair release remains operator-gated)
XF    Final bundled re-review (v4.2 + K6)  LEAD-VERIFIED 2026-07-19 verdicts/XF-2026-07-19.md
X3    Spine keystone adversarial audit     LEAD-VERIFIED 2026-07-19 verdicts/X3-2026-07-19.md
X4    SR-SH1/SH2 cited-lemma dossier       LEAD-VERIFIED 2026-07-19 verdicts/X4-2026-07-19.md
X5    Q6-inward suspect list audit         LEAD-VERIFIED 2026-07-19 verdicts/X5-2026-07-19.md
X7    Numerics reproduction                LEAD-VERIFIED 2026-07-19 verdicts/X7-2026-07-19.md
X8    Reader-packet Q3/Q5/Q7               LEAD-VERIFIED 2026-07-19 verdicts/X8-2026-07-19.md
```

CALIBRATION GATE: **PASSED 2026-07-18** (both halves lead-verified:
X6 strength PASS + X1 exact MATCH). Signatures now carry FULL WEIGHT
- assurance-rung movement and unlocks are armed (roadmap v2).

## X0 adjudication (lead, 2026-07-18 — two-way re-verification done)

Verdict verdicts/X0-2026-07-18.md (OpenAI Codex, GPT-5-based):
DEFECTIVE AS WRITTEN — CONFIRMED against the v1 documents; all
findings adjudicated and the protocol repaired to v2 the same day:

- F1 BLOCKING (blind contamination by the global entry path): TRUE.
  ADOPTED — NEXT.md pointer entry + self-contained BLIND packets;
  each operator-launched session is a fresh evaluator. The X0
  session's context is BLIND-INELIGIBLE (recorded).
- F2 BLOCKING (DISPATCHED undefined): TRUE. ADOPTED — state machine
  defined in README-PROTOCOL v2.
- F3 MAJOR (X0 output contract conflict): TRUE. ADOPTED — QUEUE X0
  deliverable amended to a verdict per template; the agent's
  resolution (verdict form) accepted as valid.
- F4 MAJOR (X0 packet lacked the promised first prompt): TRUE — the
  operator's mini prompt substituted; substitution recorded here.
- F5 MAJOR (blind packets not self-contained): TRUE by construction.
  ADOPTED — dispatch/X6/PACKET.md + dispatch/X2/PACKET.md carry all
  normative content inline; X6 lead-facing notes renamed
  LEAD-NOTES.md and excluded from the evaluator's allowed list.
- F6 MAJOR (relay unnecessary): TRUE — filesystem mode confirmed;
  relay demoted to fallback-only in v2.
- F7 MINOR (same-day collision): ADOPTED — `-2/-3` suffix rule.
- F8 REQUIRED REPAIR (two-role split + ratification): ADOPTED
  MODIFIED — controller = the LEAD via NEXT.md (not an agent-side
  controller session); ratified by the v2 protocol amendment
  (Class L, lead's verification-lane methodology).

Capability record (from X0): filesystem read/write CONFIRMED (verdict
+ ledger row landed by the agent); live web access CONFIRMED (arXiv
probe); Lean toolchain UNTESTED (X1 held OPEN until probed);
long-context X3-scale UNTESTED (medium confidence only).

## X6 adjudication + CALIBRATION HALF-VERDICT (lead, 2026-07-18)

Verdict verdicts/X6-2026-07-18.md (GPT-5 Codex, blind, fresh-evaluator
attested): OVERALL FATAL (2 FATAL, 1 MAJOR) on the c7 parity brief -
the brief with the KNOWN internal outcome (c7-la2f-wave-record-v1.md:
2/2 PASS-WITH-FINDINGS, 0 FATAL, 0 MAJOR, 3 MINOR).

CONVERGENCE MAP (two-way re-verified by the lead):
- Core theorems P.1-P.4 + stronger-form remark: CONVERGENT (both axes
  PASS; every internal checklist item re-verified externally).
- Skew survival adjudication: CONVERGENT (YES-SURVIVES, same
  quantifier reasoning both axes).
- Codex MAJOR (P.1 mod-2pi bridge, extended to the PAIR sentence) =
  internal MINOR #2, graded higher and CORRECTLY so (the c7-applied
  half-clause covered J only, not the pair). CONFIRMED -> artifact
  repaired.
- Codex P.3 integrality remark = internal MINOR #1: CONVERGENT.
- Codex FATAL 1 (C-B "product-transfer bridge STANDS" exceeds the
  quoted [R6] certificate) and FATAL 2 (C-C window localization to
  (m_k, 2 kappa) appears in NO quoted certificate): BOTH CONFIRMED
  against the served brief text - THE INTERNAL WAVE MISSED BOTH
  (the corollary quantifier-trace pass did not catch the two
  historical claims citing content outside the quoted record). At
  corpus level the underlying content is certified elsewhere (v18
  product gate + the ladder's sealed interval), so the defect is
  CERTIFICATE OVERRUN in the artifact's corollary wording, not false
  mathematics. Artifact repaired with Codex's replacement texts
  (pre-physics/lane-r6-reflection-parity-all-n-v1.md, marked).

STRENGTH VERDICT, X6 HALF: **PASS** - the external axis recovered
BOTH known material findings (one correctly re-graded), matched the
adjudication, produced ZERO false positives, and caught two REAL
certificate-overrun findings the same-provider wave missed - the
cross-provider value proposition demonstrated on a known-outcome
brief. THE CALIBRATION GATE REMAINS CLOSED until the X1 half lands
(pair rule, roadmap v2); signatures stay SUPPORTING-ONLY. NEXT.md
now points the agent at X1.

## X1 adjudication + CALIBRATION GATE ARMED (lead, 2026-07-18)

Verdict verdicts/X1-2026-07-18.md (Codex, controller session, OPEN):
**MATCH** - full independent reproduction of the verification sweep at
repo HEAD 9352fda (125 theorems, 4 files, zero sorries, standard
axioms on every theorem), transcript BYTE-IDENTICAL to the committed
one (SHA-256 365836a4... - re-verified by the lead's own hands on both
files). The agent detected and correctly neutralized a repository race
(the lead pushed campaign #19 mid-run; it re-pinned HEAD and reran).
Finding 3 (README-repro said "three canonical files", there are four)
CONFIRMED and APPLIED. Honest scope respected (no pristine-host claim;
no statement-faithfulness claim - that is X2's job).

**CALIBRATION PAIR COMPLETE: X6 strength PASS + X1 MATCH = the gate
ARMS.** Signatures from this axis now move assurance rungs on exactly
the content they cover: the c7 parity surface carries its first
cross-provider signature (L-A2), and the Lean corpus's REPRODUCTION
leg is cross-provider verified. X2/X9 signatures will land with full
weight.

## X2 adjudication (lead, 2026-07-18) — FULL WEIGHT (gate armed)

Verdict verdicts/X2-2026-07-18.md (Codex, blind fresh evaluator,
attested): complete 119-declaration back-translation of the served
signature corpus (the 115-theorem state + 4 private lemmas; campaigns
#19-#20, +9 theorems, POST-DATE the serve and are NOT covered - the
next X2-class pass picks them up). Adjudication:

- DEFINITION-DRIFT CHECK: the per-file over-read summaries CONVERGE
  item-by-item with the honest scopes already recorded in
  lean-correspondence-tables-v1.md by the standing blind-lens
  discipline (principal-branch/slice/k=1/value-not-optimality/
  conditional-tube narrowings all pre-recorded). NO definition drift
  detected. The "MC"/"PSD" name remarks are blind-reading artifacts
  (corpus-internal row names, recorded meanings).
- TWO NEW CONCRETE DEFECTS, both lead-confirmed and FIXED same-day:
  (1) `groundLevel_eightyninenine_lt_two` garbled name -> renamed
  `groundLevel_eightynine_lt_two` (no callers); (2) RidgeLaw
  `endpoint_pi` carried an inert dummy hypothesis `h0 : 0 <= 0` ->
  dropped (statement strengthened), one call site updated. Full sweep
  re-run: VERIFY PASS (19+100+7+5 = 131).
- The Lean corpus's STATEMENT-FAITHFULNESS leg now carries a
  cross-provider signature at full weight (the gate armed with X6+X1).

## X9 adjudication (lead, 2026-07-18) — CHARTER v4 REPAIR BOOKED

Verdict verdicts/X9-2026-07-18.md (Codex controller, OPEN; own pass +
2 clean-context sub-reviews, history read only AFTER to test not seed):
**NOT CLEAN - 6 FATAL, 9 MAJOR, 3 MINOR** against charter v3.

TRIAGE (two-way, lead): ALL SIX FATALS CONFIRMED at the textual/
constitutional level. F1 (git bytes are not operator origin) upgrades
v3's DISCLOSED double-fabrication residual to what it is - a
constitutive defect; the repair direction (gate evidence = operator-
originated event OUTSIDE agent-writable stores; in this workspace:
operator chat, with the repo record a POINTER to it) matches existing
workspace doctrine (approvals in chat, not docs). F4 counterpoint
recorded: the pre-HG1 closure DOES have an in-force external control
Codex could not see (scripts/coherence_guard.py M5 closure leg, outside
interpretation/) - the repair is to cite it by path+digest, and the
finding stands for the charter's own wording. F3/F5/F6 and M1-M9/N1-N3
confirmed as written (M9 medium-high per the verdict's own honesty;
the two sub-reviews were same-family, not extra cross-provider
evidence - correctly disclosed).

DISPOSITION: the charter is NOT ready for HG1 - CONFIRMED. Lead books
**CHARTER v4** (Class L authoring, operator gate untouched): repairs
to incorporate all 18 replacement-text directions, adapted to the
workspace's real trust anchors (operator chat as the authenticated
event channel; guard digest pinning; per-payload HG2-R; permanent
interpretation-taint rule; semantic sketches OUT of the charter).
Ratification remains PARKED until v4 exists + fresh review; the
gate-service package to the operator now carries THIS verdict as the
independent evidence (doctrine Class J satisfied - nothing served
without evidence).

QUEUE STATE: X0/X6/X1/X2/X9 all LEAD-VERIFIED - the unlock band is
DRAINED. Heavy band remains: X7 (standing inputs, pointed next),
X3/X4/X5/X8 ([REGENERATE] inputs need lead refresh before dispatch).

## X7 adjudication (lead, 2026-07-19) — full weight

Verdict verdicts/X7-2026-07-19.md (Codex controller, OPEN, pinned at
ed75a4a): REPRODUCTION **MATCH** (all four JSONs semantically identical
modulo wall_seconds; both landed B2 findings independently RE-DERIVED
from the formulas, not accepted from verdict strings) + the B2 verdict
BOARD found NOT CLEAN as written. Lead adjudication: spot-verified the
numerical claims against the committed JSONs (2.608964 vs the board's
2.607; 0.6981 absent / 0.628319 present) - Codex right on all checked;
ALL textual repairs APPLIED same-day: board numbers + wording +
standing harness-caveats appendix; the STALE C_fr constants-ledger
line in lane-lp REPLACED (operator norm ~0.471, not 0.30; C_fr arm
inactive); numerics README seeds sentence corrected. The harness code
itself is UNTOUCHED (it is the pinned reproduced instrument; its
STANDS strings are now bounded by the recorded caveats). The
reproduction leg of B2 now carries a cross-provider signature at full
weight.

## X9B adjudication (lead, 2026-07-19) — guard v1.1 landed; charter v4.1 booked

Verdict verdicts/X9B-2026-07-19.md (Codex controller, OPEN; own pass +
2 clean-context sub-reviews + LIVE ATTACK FIXTURES against the guard):
NOT CLEAN - 7 ANSWERED / 10 PARTIAL / 1 UNANSWERED; NOT READY FOR HG1.

TRIAGE (two-way): BOTH FATALS CONFIRMED against the lead's own guard
code (the registry matcher accepted unconstrained substrings; the
charter file itself skipped SCHEMA/DIGEST in PROPOSED). The verdict's
core diagnosis ADOPTED: v4's prose claims MORE than the implementation
delivers - the repair is two-sided.

SIDE 1, DONE SAME-DAY (guard v1.1, X9B fixtures re-run and BLOCKED):
- charter file through M5-SCHEMA in EVERY state (FATAL-1 partial);
- registry binds ONLY fully structured lines (gate-id + date + file +
  digest + quoted words; FATAL-2 partial);
- REVOKED preserves artifacts (M8 partial);
- honest A5 NOTE printed whenever state rests on registry claims:
  mechanical PASS is NOT gate authenticity.
Fixture results: charter-embedded payload BLOCKED; unstructured
forgery BLOCKED (3 fails); structured forgery still blocked pre-
ratification by the G4 pin, and covered post-ratification by the A5
doctrine (the guard checks FORM; authenticity terminates at the
operator - that is the constitution's own trust model).

SIDE 2, BOOKED (charter v4.1): downgrade every claim the guard cannot
deliver to an explicit operator-anchored duty (continuity, actor
control, schema depth, quarantine access-control, state transitions);
fix HG2-R review-order circularity (pre-gate operator review carve-
out); tighten R2 grammar honesty; pin origin remote identity; define
normative-body byte policy (LF-canonical); A2 adds object path +
digest echo. v4.1 then goes to a fresh X9C review before HG1 is
served. HG1 REMAINS UNAVAILABLE (per the verdict and per G9).

QUEUE: worklist drained again (X0/X6/X1/X2/X9/X7/X9B all
LEAD-VERIFIED). NEXT -> X3 + X5 (heavies, freshness-stamped).

## X3 adjudication (lead, 2026-07-19) — the spine audit: 9/2/1

Verdict verdicts/X3-2026-07-19.md (Codex, OPEN, full weight): 9 SOUND /
2 REFUTED AS WRITTEN / 1 UNVERIFIABLE across the 12 keystone rows. The
deterministic single-loop core (K2-K5, K7-K9, K11, C1-SUB) HOLDS under
hostile audit. Adjudication of the material findings:

- FINDING 1 (K10, MAJOR) CONFIRMED BY THE LEAD'S OWN DERIVATION: the
  product saddle Z = SP_k x C_0 IS E_eps-critical for EVERY eps (equal
  sines make both coupled chains constant; zero-sum variations kill
  them) - the corpus's standing "NOT critical for eps > 0" premise was
  FALSE. Exact level E_eps(Z) = S_k + eps S_k/kappa; X3 also derives
  the full inertia (2N-3, 1, 2 zeros) under M2-PIN. IMPACT CONTAINED
  (LP.2/LP.4/LP.5 never consumed noncriticality). lane-lp corrected in
  place; lane-lt/reader-packet/canon sweep + the LEAN SEAL of the
  corrected premise = campaign #22 (booked). This is the external
  axis's first genuine MATHEMATICAL correction - and it strengthens
  the corpus (the saddle never moves; the "not located" narrative is
  retired).
- FINDING 2 (K6, LOAD-BEARING) CONFIRMED: SH.2'(b)'s GLOBAL
  minorization is false (T^2 tangential-cost counterexample pi^2/4 vs
  O(delta^2)) + four specific proof defects. lane-sh banner landed:
  SH.2'(b) REFUTED-AS-WRITTEN; K6 and its consumers DOWNGRADED TO
  CONDITIONAL until the local killed-kernel/Girsanov repair (X3 names
  the route; the corpus grounds are smooth compact orbits - repairable
  shape). The probabilistic bridge was the lead's own top suspect
  (X5 list) - the audit confirmed the suspicion precisely.
- FINDING 3 (K1) recorded: honest external obligation, matches the
  corpus's own typing.
- FINDING 4 (campaign #21 scope): convergent with the lens's own
  qualifiers, already in the headers. No action.
- FINDING 5 (MINOR, epsilon_0 k=0 division): CONFIRMED, piecewise
  branch landed in lane-m2.

## X9C + X5 adjudications (lead, 2026-07-19)

X9C (verdicts/X9C-2026-07-19-2.md, superseding per the collision rule):
NOT READY FOR HG1 - 8 ANSWERED / 3 ACCEPTED-RESIDUAL / 7 PARTIAL / 0
UNANSWERED; both X9B fixtures confirmed repaired. The remaining
findings ALL CONFIRMED and repaired same-day as charter v4.2 + guard
v1.3: B1 (HG1 text now names the live version + full A2 fields), B2
(schema leg IMPLEMENTED: URLs/images/markup/missing-S2-fields now
FAIL - X9C's own fixtures re-run: 6 fails across all three legs), M1
(registry bindings GATE-TYPED: right digest under wrong gate no
longer binds), M2 (per-event claims downgraded to the mandatory-run
duty), M3 (P1 auto-suspend -> lead duty at mandatory runs), MINOR 1
(labels). HG1 SERVICE DECISION (timing delegated to the lead): serve
after ONE more external look (X9D, cheap re-check of the v4.2 deltas)
OR serve with the three accepted-residuals declared - the lead will
decide when the queue tail (X4/X8) lands.

X5 (the lead's own suspect-list audit, hostile): NOT CLEAN - and the
axis converged: S4 = SH.2'(b) REFUTED with an INDEPENDENT flat-ground
counterexample (second eye on the same wound as X3 Finding 2 -
convergent refutation, already banner-downgraded; the SH.2'-LOCAL v2
repair design + Stage A probe PASS + Stage B Lean seal are the
response in flight). S3 (the lead's #22 prose sweep incomplete):
CONFIRMED, residual sites repaired same-day (lane-lp BLOCKED item ->
PARTIALLY DISCHARGED, canon continuation superseded, reader-packet
machine boundary honest). S1 PARTIAL (FW imports not pinned to a
compact-Morse-Bott-covering theorem - sharpens K1; folded into the
K1 external obligation). S2 honestly open (as typed). S5/S6/S7 SOUND
(S7 bonus: the true integer regime is N >= 4k+1, recorded). The
lead's suspect ranking was ACCURATE: the top suspect was exactly the
one real wound.

## X4 + X8 adjudications (lead, 2026-07-19) — QUEUE DRAINED

X4 (SR-SH1/SH2 cited-lemma dossier): MIXED - 10/11 invocation sites
MATCH, 0 unverifiable, no false internal algebra. HIGH VALUE: X4 PINS
the exact Freidlin-Wentzell sources the corpus imports - Ch.5 Thm 3.2
(pp.135-136) for the finite-window LDP with beta-dependent drift (the
epsilon_FW^2 = 2/beta identification exact), and Ch.6 Condition (A)
(p.150) + Lemmas 2.1-2.2 + Thm 5.3 (pp.176-177) for the COMPACT
Morse-Bott attractors (circles/tori), with full hypothesis matches.
**This DISCHARGES the K1 external obligation** that X3 left
UNVERIFIABLE and X5/S1 sharpened: the FW imports are now pinned to
theorems that cover compact attractors, not isolated equilibria - the
one-compactum Condition (A) reduction is the exact route, giving the
STRONGER exponent than the corpus consumes. The one MISMATCH (SR-T2
"bottom condition = NONE NEEDED" is too generic) CONFIRMED and
repaired in place (lane-c-exit-time-lower-bound: the exact Condition
(A) hypotheses now cited).

X8 (reader-packet Q3/Q5/Q7): MIXED - Q3 answered with a quantitative
qualifier, Q5 partial (exposes missing process/event types - already
the SH/PROD open rows), Q7 not closable from the packet alone
(manifest's scoped-follow-up, as typed). Three packet breaks CONFIRMED
and repaired: w_k defined at its lane-lt use (= S_k(1) = S_k/kappa,
the campaign-22 level shift), the stale Q9 saddle wording and the
assurance-taxonomy drift flagged for the packet's own next refresh.

QUEUE STATE: **ALL TEN ITEMS LEAD-VERIFIED - THE CROSS-PROVIDER QUEUE
IS DRAINED.** X0/X6/X1/X2/X9/X9B/X9C/X3/X5/X7/X4/X8 all terminal. This
FIRES the roadmap-v3 recalc trigger "X queue all-terminal" AND the
Lane R release trigger (queue drained -> triage -> pinned release).
NEXT.md: no dispatched item; the external agent stands by.

## XF adjudication (lead, 2026-07-19) — the queue's final look

Verdict verdicts/XF-2026-07-19.md (Codex, OPEN, two half-items):
(a) charter/guard NOT READY FOR HG1 - 2 BLOCKING + 2 MAJOR, ALL
document-to-implementation drift (NO false math): the closing Verdict
still said v4, the schema leg claimed more than the byte-scan does,
prefix gate matching should be exact equality, residual mechanical
state/source phrasings. ALL FOUR repaired same-day -> charter v4.3 +
guard v1.4: closing label fixed; schema NARROWED to the portable
byte-scan with OS-object restrictions reassigned to operator/platform
duty; exact governing-gate-type equality (fixture-verified: an HG2-R
binding no longer satisfies a type-A HG2 requirement); M5-STATE leg
downgraded to a checker (preserves, does not enforce dynamic
properties). (b) K6 REPAIR = all three lemmas REPAIRABLE - the cold
rederivation CONFIRMS the local mechanism AND confirms it respects the
X3 global-cost example; three concrete corrections adopted (chain uses
ceil(2 D_G/h) not ceil(D_G/h); the density carries the O(beta h^2)
local-drift term; beta_0 = O(1/h^2) is necessary, not conservative).
K6 stays CONDITIONAL (correct) - the repair is mechanism-confirmed and
correction-complete, final SOUND grade pending one more cold pass.

QUEUE STATE: all items LEAD-VERIFIED. TWO honest carry-overs, both
lead-owned, neither a false-math finding: (1) charter is now v4.3 -
HG1 timing: the lead will serve after a light XG delta-check of the
v4.3/v1.4 deltas OR with the drift-only residuals declared closed; (2)
K6 CONDITIONAL - the release tag ships WITH K6 marked CONDITIONAL
(honest: an externally-audited working repair whose final seal is one
pass away), the tag does not wait for it. Recorded so the release is
truthful, not triumphal.

DISPATCH PREREQS: X6/X2/X1/X9 all packeted as of 2026-07-18 (v2.1
worklist; X2 signatures regenerated at the 115-theorem corpus state;
X9's relay-era ENVELOPE-3 superseded by its packet). Freshness rule
stands: [REGENERATE] inputs re-verified against origin at dispatch
day; NEXT.md flips only after the lead confirms freshness. Direct
lead<->agent messaging lives in COORDINATION.md (v2.1) - the operator
is out of the message path.
