# E4(a) CHANGE LEDGER - la3-reader-packet-v1.md -> la3-reader-packet-refreshed.md

DRAFTED 2026-08-02. Repo read-only; outputs in scratchpad only.
SOURCE PACKET: `research/formal-framework/governance/la3-reader-packet-v1.md` (626 lines, read in full).
REFRESHED PACKET: `<scratchpad>/la3-reader-packet-refreshed.md` (735 lines).
RP:n line numbers below are the ORIGINAL packet's.

## 0. VERIFICATION BASIS (every status claim below was checked against these bytes before it was written)

| Source | What was read | What it establishes |
|---|---|---|
| `pre-physics/lane-lp-product-saddle-v1.md` head (1-40), 205-275, 775-800 | LP status block; the typed excursion rows; Theorem LP.5 header + XE-8 RELEASE FENCE | Excursion rows DISCHARGED XE-11 2026-08-02; the LP.5(c)/package FULL-upper reading still rides GAP-LP-RECUR @ A6; the XE-8 fence text is intact; "the discharge is of the EXCURSION-shaped row; no probability-floor strengthening"; "Sixteen external verdicts across the arc (XE-1..XE-11), zero mathematical cores refuted" |
| `pre-physics/lane-prodexc-v2.md` 3200-3260 (register block A, rows T-1/T-2) | T-1 GAP-LP-RECUR; T-2 SIGMA0-EXC | T-2 head FLIPPED: "DISCHARGED AT `(TIER-A6-RATE)`, BY THAT NAME (XE-14 SOUND, 2026-08-02; delivered by `lane-e5-gaplprecur-v1.md`)"; T-1: min-object/rate discharge recorded, "REOPENED / not discharged ... STANDS for the FULL `E_q[D(0)]` expectation"; both rows state the A6 fences "stand VERBATIM" |
| `pre-physics/lane-minmig-proofs-v1.md` :47, register/Section-11 grep, 3260-3300 | The status-surface A6 fence; the round-sum E5 record note | MM:47 fence VERBATIM and unchanged ("GAP-LP-RECUR at A6 strength is OPEN for the package/full LP.5(c) UPPER"); the E5 min-object restatement note is RECORD ONLY, externally signed, moves no display |
| `pre-physics/lane-e5-gaplprecur-v1.md` header 1-27, 365-420, 561-620, 1007-1060, 1246-1410 | STATUS line; the deliverable; the LEG split; LEG 1 domination; LEG 2 = W(q) | "EXTERNALLY SIGNED SOUND (XE-14, 2026-08-02) AT THE NARROW BOUNDARY"; min object `E_q[D(0) ^ L_0]`; `(H-DESC)` PROVED ON `D_k(eps)`, `err_desc = 0`; LEG 1 by pathwise DOMINATION (Phase-A time is off-R_0); LEG 2 = W(q) literally on branch (A); `P_E5(beta) = P(beta) + C_E5 beta^{2N}`, rate-inert, explicitly NOT beta-free |
| `pre-physics/e6-instantiation-table-v1.md` header, S1 (Stage 0), S3, S4 (F-1/F-2), S7 | 21/21 cell scalars; the three-class counts; F-1 | 21 asserted rows reproduce exactly (20 at 10 dp, C-06 at 7 dp); VERIFIED 10 / CONDITIONAL 47 / TYPED-UNVERIFIABLE 9 / REPORTED 2; L-02 cap `(2 kappa - m_k)/w_k = 0.0472135955` FAILS at `eps = 0.05`; S7.1 adjudicates the instantiation point to `eps = 0.045` |
| `governance/cross-provider/verdicts/XE-14-2026-08-02.md` | The signed boundary | Flip AUTHORIZED for SIGMA0-EXC at `(TIER-A6-RATE)` and for recording GAP-LP-RECUR as DISCHARGED-AT-THE-MIN-OBJECT AT RATE STRENGTH; "AUTHORIZED FENCE REMOVALS: NONE"; A6 fence files byte-identical by Git blob ID |
| `governance/cross-provider/verdicts/XE-12-2026-08-02.md` | E6 adjudication + the E5 blocking finding | "E6 PASSES" in full; the blocking finding was an object substitution (saddle tube cited for a ground-tube segment) in a PRE-SIGNATURE draft |
| `governance/cross-provider/LEDGER.md` rows XE-9..XE-14; `COORDINATION.md` [102], [105], [106] | The arc and the counts | "E2 FOLDED - sixteen verdicts, zero cores refuted"; "Twenty-one external verdicts across the E2+E5 campaigns; ZERO mathematical cores refuted in either"; the E5 design-check returned NOT SOUND AS DESIGNED with 4 BLOCKING before any drafting |
| `governance/attack-roadmap-v6.md` | Current roadmap | E1/E2 FOLDED; E5 FOLDED at the signed boundary with the honest residue stated; E6 FOLDED; C-2 parked |
| `lean/README.md` head | Lean state | Still 170/170 across 26 campaigns - the packet's Section-8 and Addendum Lean numbers are NOT stale |

VERIFIED-NOT-STALE (checked, left untouched): Parts I/II/IV of the Master Theorem; the Lean 170/170 counts and campaign numbers; Exhibits A and B; the R1-R6+RE row texts; the four sample certified displays at RP:266-289 (the label-law display is explicitly scoped to the single loop and remains true); Q1-Q9, Q11; the C-2 open (item 3); the calibration-gate paragraph; the X3/X5/XF/X4 finding bullets.

## 1. CHANGES (17)

### C-1 - RP:106-109 (Section 2, the layer list, LS/LT/LP entry)
OLD: `and carries the excursion rows PROD-EXCURSION + / PROD-EXCURSION-COND for the coupled product (LP-MIN-MIG / discharged)`
NEW: `and DISCHARGED for the coupled product as well (the excursion rows PROD-EXCURSION + PROD-EXCURSION-COND, XE-11 2026-08-02; LP-MIN-MIG discharged).  Exactly ONE named condition survives, and it bites only the PACKAGE/FULL form of the coupled upper: see Section 3 and Addendum 2.1`
REASON: pre-flip phrasing. The rows are DISCHARGED (lane-lp head; V2 register; XE-11), so "carries" is false; the pointer keeps the reader from reading "discharged" as unconditional.

### C-2 - RP:244-246 (Section 3, COUPLED PRODUCT (LP), the window sentence)
OLD: `the O(eps) label window is TWO-SIDED (the excursion rows DISCHARGED, / XE-11 2026-08-02; the package/full upper rides GAP-LP-RECUR @ A6) / (PROD-EXCURSION + PROD-EXCURSION-COND; LP-MIN-MIG discharged).`
NEW: separates the two facts and advances the second - the window is two-sided with the excursion pair discharged; the package/full form's second row GAP-LP-RECUR @ A6 is now DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14, 2026-08-02), object `E_q[D(0) ^ L_0]`, with the residue stated exactly: the full `E_q[D(0)]` expectation stays TYPED-UNCONSUMED and the A6 fence is KEPT VERBATIM ("No fence was removed").
REASON: "rides GAP-LP-RECUR @ A6" is the pre-XE-14 status. Written so the discharge cannot be over-read: the packet names the object, the strength, and the surviving reading.

### C-3 - RP:256-261 (Section 3, LP "Open, typed" list)
OLD: `Open, typed: the high-energy / doubly-wound stratum / (PROD-EXCURSION, and its conditional-uniform companion row / PROD-EXCURSION-COND; the migration rows LS-MIN-MIG / LP-MIN-MIG / are DISCHARGED, XM-R16-authorized), the composed/symmetric rerun / (PROD-TRANSFER), / k >= 2 (admissible from N = 40), and skew label sharpness.`
NEW: the typed-open list is now PROD-TRANSFER, k >= 2, skew label sharpness; the stratum entry is rewritten as a strength note - no longer a typed-open row, but the discharge is of the EXCURSION SHAPE, not a probability floor, the pinning tori are real traps, and the stratum's critical structure stays geometrically unclassified with nothing in the coupled upper reading it.
REASON: listing the discharged rows as "open, typed" is now false; deleting the stratum outright would DROP the honest caveat the lane preserves verbatim ("the discharge is of the EXCURSION-shaped row; no probability-floor strengthening"). Retyped rather than deleted.

### C-4 - RP:409-410 (Section 6, TYPED LIMITS, opening clause)
OLD: `TYPED LIMITS: all rate constants symbolic (no numerics); coupling / thresholds epsilon_0, epsilon_0^c symbolic, small-coupling only;`
NEW: the flagship CELL SCALARS are verified numerics reproducing the corpus's printed values to 10 dp; everything depending on the unlanded analytic constants (G, L, hence L_eps; injectivity radius; volume/capacity constants) stays symbolic and CONDITIONAL; the pass classification 10/47/9/2 is named; and the reader is warned in the packet's own voice not to instantiate at `eps = 0.05` - the cap is 0.0472135955 and the adjudicated point is `eps = 0.045`. The epsilon_0 / epsilon_0^c clause is preserved verbatim after it.
REASON: PARTLY stale after E6. "no numerics" is now false for the cell scalars and true for the rest; the F-1 adjudication is a live instantiation hazard for exactly the reader this packet is written for.

### C-5 - RP:421-431 (Section 6, TYPED LIMITS, label-sharpness clause)
OLD: `coupled product two-sided MODULO the excursion / rows PROD-EXCURSION + PROD-EXCURSION-COND (LP-MIN-MIG / discharged)) - with the high-energy / / doubly-wound stratum, the composed/symmetric rerun / (PROD-TRANSFER), k >= 2, and skew label sharpness all typed open,`
NEW: coupled product TWO-SIDED on the O(eps) window (excursion rows DISCHARGED, XE-11); the PACKAGE/FULL form fenced on exactly ONE reading - the full `E_q[D(0)]`, GAP-LP-RECUR @ A6, verbatim - while the MIN-OBJECT form is DISCHARGED at rate strength (XE-14); typed-open list reduced to PROD-TRANSFER, k >= 2, skew label sharpness.
REASON: "MODULO the excursion rows" and the stratum's presence in the typed-open list are both stale; this is the section a reader quotes when saying what is NOT claimed, so it must be exact.

### C-6 - RP:474-475 (Section 7, Q10 opening)
OLD: `Q10 The MIGRATION PIECES (the corpus's NEWEST and least-audited / proofs, 2026-07-20/21; ...)`
NEW: `Q10 The MIGRATION PIECES (2026-07-20/21; pre-physics/lane-minmig-proofs-v1.md - the corpus's newest proofs until the 2026-08 campaigns of Q12, and still among its least audited):`
REASON: the superlative is now false (the E5 artifact is 2026-08-02). The "least audited" invitation is preserved because it is still true.

### C-7 - Section 7, NEW Q12 (inserted after Q11, before Q9, matching the packet's own ordering)
NEW: an attack item on the initial-delay certificate naming three joints - (a) the exactness of the LEG 1 / LEG 2 split on the STOPPED object and whether any site still reads the full `E_q[D(0)]`; (b) LEG 1's pathwise DOMINATION (phase partition coverage, direction); (c) the descent-arc certificate's admissibility in the competitor class - and stating what is NOT claimed (prefactor not beta-free, only rate-inert), inviting attack on that reading too.
REASON: MISSING. The packet's whole purpose is to point a hostile reader at the newest and least-audited work; after 2026-08-02 that is E5, and the packet had no question on it. Every joint named is one the corpus's own gates found or fenced.

### C-8 - RP:522 (Section 8, the L-A2x rung)
OLD: `reviewing across ~20 items (X0-X9C incl. the calibration pair, XF, the XH arc's 4 passes, and the XM arc - live review count in cross-provider/LEDGER.md)`
NEW: `reviewing across five arcs (X0-X9C incl. the calibration pair; XF; the XH arc's 4 passes; the XM migration arc through XM-R16; and the XE arc, XE-1..XE-14, carrying the two 2026-08-02 campaigns - live review count in cross-provider/LEDGER.md)`
REASON: the arc ENUMERATION omitted the XE arc entirely. The "live count in LEDGER.md" guard is kept (the packet's own defence against hardcoded counts going stale, which it records happening twice).

### C-9 - RP:537-552 (Section 8, the DISCLOSED DELIBERATELY paragraph)
OLD: `EVERY new-analysis layer - the coupling class, sharpness, and each of the three label-tower storeys - FAILED its first adversarial wave outright, FIVE for five: ...` and `We consider this five-for-five record ...`
NEW: SIX for six, with the initial-delay certificate added and its failure stated: its promised bound shape was refuted by the corpus's own honest correction before a line was drafted (the adversarial DESIGN-check, run ahead of drafting, returned NOT SOUND AS DESIGNED with four blocking repairs, all named from landed bytes).
REASON: a load-bearing HONESTY count that went stale in the direction that flatters. E5 is a new-analysis layer and it failed its first adversarial wave; leaving "five for five" would understate the protocol's own record while omitting a failure.

### C-10 - RP:580-583 (Section 8, the provenance map)
NEW ROWS: migration pieces (`lane-minmig-proofs-v1.md`); the excursion-row discharge (`lane-prodexc-v2.md`, single-vintage statement of record, with the frozen historical appendix named); the initial-delay min object (`lane-e5-gaplprecur-v1.md`); the numerical instantiation (`e6-instantiation-table-v1.md` + `scripts/e6_instantiation.py`, `scripts/e6_adjudication.py`, `pre-physics/e6-runlogs/`); external verdicts (`governance/cross-provider/verdicts/` + `LEDGER.md`, flagged as the live counts).
REASON: MISSING. The map promises "where every proof lives" and had no home for the migration pieces (which Q10 already cites), the two 2026-08 campaigns, or the verdict record. All paths verified to exist.

### C-11 - RP:592 (Addendum header paragraph, final sentence)
NEW: appended `[Section 2.1 below extends this addendum through 2026-08-02, when the two campaigns it describes closed.]`; and in the same sentence `a second AI architecture reviewed the corpus across ~20 items` -> `a second AI architecture HAD BY THEN reviewed the corpus across ~20 items`.
REASON: the dated instrument is left intact; the reader is told where the later state lives instead of finding a 2026-07-21 header over 2026-08-02 content. The tense fix keeps the `~20 items` count truthful as a 2026-07-21 snapshot so it does not read as contradicting Section 8's five-arc enumeration; the count itself is not moved (the packet's own rule is that live counts live in the LEDGER).

### C-12 - RP:600 (Addendum 1, PART III)
OLD tail: `the package/full LP.5(c) UPPER additionally rides GAP-LP-RECUR @ A6, preserved verbatim per the release fence;`
NEW: `... additionally rode GAP-LP-RECUR @ A6, and THAT row is now DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14-authorized 2026-08-02; delivered by lane-e5-gaplprecur-v1.md), with the companion row SIGMA0-EXC flipped to DISCHARGED at (TIER-A6-RATE) by that name. The proved object is the STOPPED initial delay E_q[D(0) ^ L_0]; the FULL E_q[D(0)] expectation stays typed-unconsumed and the A6 fence stands VERBATIM over exactly that full-expectation reading (no fence was removed);`
REASON: PART III is the Master Theorem's status sentence for persistence; it carried the pre-XE-14 state. Both flipped row names are stated by name at their signed strengths, and the residue is stated in the same breath.

### C-13 - RP:603 (Addendum 1, the done-criterion)
OLD: `C-2 (the library pin) + GAP-LP-RECUR @ A6 for the package/full upper (the excursion rows ... DISCHARGED ...; the migration rows ... DISCHARGED, XM-R16).`
NEW: an explicit THREE-item enumeration - (1) C-2; (2) the A6 fence for the FULL-EXPECTATION reading of the package/full LP.5(c) upper ONLY, with everything else beneath that upper listed as discharged and the guarded reading named (`E_q[D(0)]` over all of the sample space vs the stopped `E_q[D(0) ^ L_0]`); (3) the standing PARAMETER rows as classified by E6 (10/47/9/2) with the F-1 adjudication at `eps = 0.045`. The closing "four parts otherwise stand AS SCOPED" sentence is preserved verbatim.
REASON: this is the sentence that defines DONE. Two of its three items moved: the second narrowed from a row to a reading, and the third did not exist before E6 landed.

### C-14 - RP:609 (Addendum 2, internal-fleet paragraph)
OLD: `... and each of the three label-tower storeys — FAILED its first adversarial wave ... (five for five)`
NEW: `... each of the three label-tower storeys, and the initial-delay certificate — ... (six for six)`
REASON: same stale count as C-9; the two statements must not disagree.

### C-15 - RP:611 (Addendum 2, external-axis paragraph)
OLD: `this axis reviewed across ~20 items — X0-X9, X9B/X9C, XF, the XH arc (...), and the XM arc (...)` and `**The honest headline: ... exactly ONE genuine mathematical correction (X3 Finding 1 ...)**  Every external finding was composition, record, status, or certificate-overrun wording ...`
NEW: five arcs, with the XE arc (XE-1 through XE-14) added; the headline re-scoped to `exactly ONE genuine mathematical correction against SEALED corpus content`, followed by the explicit disclosure that the 2026-08 campaigns DID produce mathematical findings against PRE-SIGNATURE drafts - notably XE-12's blocking object substitution - which is the gate working, not an exception to the sealed-content record.
REASON: without the re-scope the headline would be FALSE after XE-12. The correction preserves the true claim (nothing mathematically false in sealed or machine-checked content) and adds the finding rather than hiding it. RP:614's X3 bullet gets the same three-word narrowing ("against sealed content") for consistency.

### C-16 - Addendum, NEW subsection 2.1 (placed after the external-axis section, before "The honest opens")
NEW: `### 2.1 The two campaigns of 2026-08-02 — what closed, and at what strength`, in the packet's voice: WHAT WAS OPEN going in (the excursion pair; GAP-LP-RECUR @ A6, named as the initial delay the Wald bound carries additively); E2 (discharged at XE-11, sixteen verdicts, with the shape-not-floor strength stated and the frozen appendix named); E5 (the change of object to the stopped delay; the LEG split; LEG 1 by domination; LEG 2 as the just-discharged excursion functional; the displayed bound and the honest not-beta-free/rate-inert prefactor; the full arc from design-check to XE-14); E6 (fail-closed, the counts, the two gating analytic constants, F-1 and `eps = 0.045`); WHAT HONESTLY REMAINS (the full-expectation reading under its verbatim fence, C-2, the E6 parameter rows). Opens with the corpus's own aggregate: twenty-one external verdicts across the two, sixteen of them E2's, zero mathematical cores refuted in either.
REASON: the packet had no place telling a fresh reader what the two campaigns were, what they closed, and at what strength. Placed adjacent to the external-axis record because the campaigns ARE that axis's work.

### C-17 - RP:620-623 (Addendum 3, the honest opens)
- ITEM 1 OLD tail: `the remaining condition on the package/full upper is GAP-LP-RECUR @ A6 (the release fence), plus C-2.` NEW: the last analytic row beneath the excursion pair is DISCHARGED at the min object at rate strength (XE-14); what remains is ONE READING, not one row - the full `E_q[D(0)]` under its verbatim fence - plus C-2 and the E6 parameter rows.
- ITEM 2: `now DISCHARGED` -> `DISCHARGED` twice (the "now" was written on flip day and reads oddly once it is the standing state); tail `; the package/full upper keeps GAP-LP-RECUR @ A6 per the release fence` -> `, at the excursion shape and not at a probability floor` (the A6 clause moves to the new item 5, where it is stated at full strength; the shape caveat is the one thing item 2 lacked).
- ITEM 4 OLD tail: `the coupled window keeps only its excursion-row conditionality (item 2).` NEW: the coupled window's own conditionality is gone - excursion pair discharged (item 2), initial delay discharged at the min object (item 5) - and the only surviving conditionality on that side is the package/full form's full-expectation reading.
- NEW ITEM 5: GAP-LP-RECUR - the initial delay and the exact residue, stated "so it cannot be over-read": proved object `E_q[D(0) ^ L_0]`; full `E_q[D(0)]` TYPED-UNCONSUMED with a.s. finiteness still proved and consumed; prefactor rate-inert not beta-free, beta-free tier explicitly not claimed; the A6 fence PRESERVED VERBATIM, no fence removed.
- NEW ITEM 6: the standing parameter rows - now classified, not merely named: the E6 counts, the two gating constants with no landed numeral, and the F-1 adjudication at `eps = 0.045` with the deferred renumbering and the reader warning.
REASON: items 1-2 told the pre-E5 story and item 4 asserted a conditionality that no longer exists; items 5-6 are the two things a reader must know that the list had no entry for.

## 2. DELIBERATELY NOT CHANGED

| Site | Why left alone |
|---|---|
| RP:266-289 sample certified displays | The label-law display is scoped verbatim to the single loop, k = 1, N >= 10; nothing in it moved. Adding a coupled display would be new exposition, not a staleness fix. |
| Parts I, II, IV of the Master Theorem (RP:598-601) | Re-read; no status in them moved at XE-11/12/13/14. |
| Lean numbers (RP:524-525, RP:609, Q11) | `lean/README.md` still reports 170/170 across 26 campaigns; the "as of 2026-07-21" snapshot is accurate. |
| Exhibits A and B, R1-R6+RE, MAIN RESULT, COMPLETION ADDENDA | Mathematical exposition; no stale status asserted. |
| Q1-Q9, Q11 | Every one still names a live attack surface. |
| The Addendum's 2026-07-21 header date | A dated instrument; extended by pointer (C-11) rather than back-dated. |
| The E6 artifact's own header ("PENDING THE EXTERNAL GATE XE-12") | Stale in the corpus bytes - XE-12 signed E6 PASS - but that is a LANE-side record fix, not this packet's. Flagged as an open question, not silently propagated. |

## 3. FIDELITY NOTES

- ASCII: every fenced/code block, including all of Parts I-III and the provenance map, is pure ASCII in both the original and the refresh. The prose sections and the whole Addendum carry U+2014 em dashes in the LANDED bytes (30+ occurrences, starting at line 1). Preserved text is byte-identical, and new prose inside em-dash-styled paragraphs matches that local typography so the document reads as one hand. No other non-ASCII character was introduced. See open question 3.
- No gate name appears except as a dated signature identifier (XE-11 2026-08-02, XE-14 2026-08-02, XM-R16, XE-12, X3/X5/XF/X4), which is the packet's existing convention (XM-R16, X3 Finding 1).
- No internal-process vocabulary was imported: no lane/queue/handoff/worklist/roadmap/COORDINATION/LEDGER-row language, no campaign codenames beyond the E2/E5/E6 labels the new subsection defines in its own first line, no "flip" outside the packet's own already-landed glossed use.
- Every numeral printed in the refresh (0.0472135955, 0.045, 0.05, 10/47/9/2, 21/21, 10 dp, sixteen, twenty-one, 170/170) was read from the bytes cited in section 0.


## FOLD OF THE READER-LENS CHECK (2026-08-02, the lead)

C-18 [MAJOR-0] The three "object the renewal consumer actually reads"
     sites re-scoped to the corpus's own reading: E5 restates the Wald
     consumer; the PRINTED displays keep the full expectation, NOT
     re-pointed - what the A6 fence guards. (RP zones 255 / 468 / 718.)
C-19 [MAJOR-1] The done-criterion item 3 and honest-opens item 6 now
     carry the E6-table vintage clause (pre-XE-14 classification;
     C-23/C-24 since moved; the standing debt = 47 CONDITIONAL + the
     remaining seven typed rows). Lane-side: the E6 table gains Section
     7.5 + a header date-stamp (landed separately).
C-20 [MEDIUM-2/3/4] Q9 "newest" dropped; honest-opens item 2 retitled
     (the E2-closed excursion row); Section 2's "exactly ONE condition"
     scoped beneath the upper with the three-item pointer.
C-21 [LOW-7 + COUNT CORRECTION] The aggregate count corrected from
     twenty-one to NINETEEN external verdicts (sixteen E2 + three E5);
     the two E5-arc INTERNAL adversarial passes are named as internal
     and not counted; the live-count guard added. The twenty-one figure
     originated in the lead's COORDINATION [106] and is corrected there
     by [107].
C-22 [MEDIUM-6, declared] Section 8's status-bearing parenthetical
     "(the newest)" was deleted by C-9's edit and is hereby declared.
C-23 [LOW-8/9/10, MEDIUM-5] Numerics sentence softened (20 at 10 dp +
     one at its source's 7); "dominated by" -> "led by"; the
     conditional-class attribution widened; the E6 provenance row path
     qualified to repo-root.
C-24 [LOW-11, typography call] The em dashes in new prose are KEPT to
     match the landed packet's own typography; fenced blocks stay pure
     ASCII. Recorded as an owner-visible call, not silent.


C-25 [XE-15 P3, RELEASE-BLOCKING - THE COUNT TAXONOMY] The packet (and
     this ledger's own earlier entries, which stand as record) carried
     the legacy conflation: 'sixteen' for E2 absorbed five
     E1/MIN-MIG-primary signatures (XM-R12..XM-R16) whose window
     overlapped E2's run; 'nineteen'/'twenty-one' inherited it. FIXED at
     the STRICT primary-campaign taxonomy: E2 = eleven (XE-1..XE-11),
     E5 = three (XE-12..XE-14), E2+E5 = fourteen; the five XM rows are
     counted at their primary campaign and named. The canonical
     counted-set table is MECHANICALLY GENERATED and fail-closed:
     scripts/verdict_census.py -> governance/verdict-census-v1.md.
     Propagated to: the packet (Part III, Addendum 2.1's count sentence,
     the E2 paragraph, opens item 2), lane-lp's discharge clause (record
     correction), roadmap v6's tail line, LEDGER's XE-11 row (record
     correction). Historical COORDINATION entries [101]/[106]/[107] are
     NOT edited; [109] carries the correction pointer.
C-26 [XE-15 P2, READER-CLARITY] Section 3 retitled to 'The state
     ledger' with per-item [DISCHARGED - history] / [LIVE] tags; the
     P2-requested separation of genuinely open conditions from
     discharged history. The Q7 provenance/navigation item (XE-15
     aggregate repair 3) is DECLARED and deferred to an editorial pass -
     it needs the P0 dossier filenames and is not release-blocking.

C-27 [XE-15 repair 3, the substantive half] Q7 now carries exact
     pointers: canon/CANON-THEOREMS.md's P0 block (P0.2/P0.2b/P0.4, the
     FW rough exit lower bound) + the X4 source dossier. The COSMETIC
     half (Q-number order normalization) stays deferred: renumbering
     the attack list would break the packet's own Q9/Q10/Q12
     cross-references for zero reader value.
C-28 [the anti-ping-pong hardening] The census ships WITH its
     adversarial fixture suite, scripts/verdict_census_selftest.py -
     one command, eight fixtures, exit 0 only if all fail closed. Any
     future referee finding becomes a NEW FIXTURE, not a new gate
     cycle. The SUPERSEDED-vs-authoritative overlap gate was added to
     the census in the same pass. RECORD NOTE: commit a3df06c's message
     named these ledger/packet/QUEUE edits but carried only the two
     script files (its landing block aborted on a whitespace anchor);
     THIS commit completes what that message promised - declared, not
     hidden.
