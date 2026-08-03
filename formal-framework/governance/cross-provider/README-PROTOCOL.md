# cross-provider/ — the external verification queue (F0, STANDING SYSTEM)

```text
scope canonico = the standing protocol + queue + ledger for the
  NON-ANTHROPIC verification agent (the L-A2 cross-provider rung of the
  assurance ladder). Provider-agnostic by design: "OpenAI, but as if it
  were any other" (operator, 2026-07-10).
gate record = F0 OPENED by operator in chat 2026-07-10.
status = ACTIVE. First external agent: OpenAI Codex (GPT-5-based),
  X0 signed 2026-07-18 (filesystem mode, web access confirmed).
version = v2.1 (2026-07-18): CONTROLLER MODE + the COORDINATION.md
  file channel, per the external agent's direct request (recorded in
  COORDINATION.md entry 1) - the operator is out of the message path
  entirely. v2 (same day): protocol repaired per the X0 verdict
  (state machine, NEXT.md pointer, self-contained blind packets).
  v1 relay design retained as fallback only.
```

## Session entry (the ONLY entry point)

Every external-agent session begins by reading `NEXT.md` in this
directory and obeying it exactly. NEXT.md is maintained by the LEAD;
it contains either a single item or an ordered WORKLIST, each entry
naming an item and its mode. Two ways to operate:

- DIRECT SESSION: work exactly ONE item (the first eligible entry).
  BLIND entries require that this session has read nothing but the
  item's packet — a fresh session satisfies this by construction.
- CONTROLLER SESSION (v2.1, requires the ability to launch fresh
  evaluator contexts): the controller may read the global control
  documents and work the WORKLIST in order. For each BLIND entry it
  MUST launch a FRESH evaluator context with NO inherited history,
  serve it ONLY `dispatch/<item>/PACKET.md` (+ the files that packet
  lists), and land the evaluator's verdict VERBATIM (writing it
  itself if the evaluator cannot write). The verdict must carry the
  LAUNCHED-BY freshness attestation (see packets). A controller that
  CANNOT launch fresh contexts does OPEN entries only and leaves
  BLIND entries for a fresh direct session, saying so in
  COORDINATION.md.

Item modes:

- `mode = OPEN`: full repo read access for that item's work.
- `mode = BLIND`: the evaluator context reads ONLY
  `dispatch/<item>/PACKET.md` and the files it lists — the packet is
  SELF-CONTAINED. Opening ANY other path before the verdict file is
  saved VOIDS the verdict. After saving, LEDGER.md may be opened
  solely to update the item's row.

A context that has read the global control documents is permanently
BLIND-INELIGIBLE as an evaluator (it may still control, and work OPEN
items).

## COORDINATION.md — the file channel (v2.1)

Two-way, append-only message log between the LEAD and the EXTERNAL
AGENT. Each entry: date, author identity, message. The agent writes
protocol questions, missing-input reports, capability updates, and
requests there — NEVER through the operator. The lead reads it at
every session start and answers in place; lead decisions that change
the protocol are landed in the protocol files and referenced from the
entry. Verdicts do NOT go here — they go to `verdicts/` as always.

## State machine (X0 finding 2)

```text
OPEN        item defined in QUEUE.md; inputs not yet served/refreshed.
DISPATCHED  lead has served/refreshed the item's inputs (dispatch/<item>/).
            Selectable.
IN-PROGRESS the evaluator has claimed it (LEDGER row updated).
SIGNED      verdict landed in verdicts/ per the required format.
LEAD-VERIFIED  terminal: the lead re-verified the verdict two ways and
            recorded the adjudication.
VOID        signature discipline failed (missing identity line /
            not-checked section / blindness or freshness attestation,
            or blindness broken). Item returns to DISPATCHED.
```

WORKLIST MODE (protocol amendment, lead, 2026-07-25; operator
calibration: batch the external asks). NEXT.md may list MULTIPLE
INDEPENDENT items as one worklist. A single fresh evaluator context
may process the worklist SEQUENTIALLY, provided: (a) the items are
independent (no item consumes another item's verdict); (b) each item
gets its OWN verdict file, LEDGER row transition and per-item
attestation; (c) the evaluator records, per item, whether any earlier
worklist item's content was consulted (the freshness note replaces
the per-item fresh-context attestation inside a worklist run); (d) a
worklist item that cannot complete is left IN-PROGRESS with a note -
later items may still run. One-item dispatches remain valid and are
the default for dependent or heavyweight items.

Selection is by NEXT.md only — no self-selection outside the worklist
it defines. IN-PROGRESS older than 14 days returns to DISPATCHED,
recorded.

## How the external agent operates

1. IDENTITY LINE FIRST: every verdict records model id, provider,
   version/date. No verdict without an identity line is valid.
2. ONE ITEM PER EVALUATOR CONTEXT: a controller session may chain
   items, but each item's verdict comes from a single context, and
   each BLIND item from a FRESH one.
3. VERDICTS ONLY, NEVER EDITS: the agent writes ONLY verdict documents
   into `verdicts/<item>-<date>.md` (same-day collision: append `-2`,
   `-3`, ...), COORDINATION.md entries, and its own LEDGER rows. It
   NEVER edits corpus files, canon, prose artifacts, or this protocol.
   Findings are INPUTS for the lead to re-verify both ways (house law).
4. HONESTY STANDARD: verdicts state what was checked and what was NOT;
   "could not verify" is a valid outcome; no assurance qualifier may be
   upgraded by the agent — the ladder moves only through the lead +
   operator.
5. LANGUAGE: verdicts in English; the math is the math.

## Relay mode (fallback only; kept from v1)

If a future external agent has NO filesystem access: the lead prepares
prompts, the operator pastes and relays replies verbatim, the lead
lands every verdict VERBATIM and updates the ledger. The operator never
maintains any file.

## Binding preemption (doctrine panel condition, 2026-07-10)

The moment operator-provided non-Anthropic access lands, DISPATCH OF
THIS QUEUE PREEMPTS every other lead workstream — explicitly including
any in-flight interpretation-layer (M5) work.

## What this buys (and does not)

Signed items raise the cross-provider rung (L-A2) on exactly the
content they cover — the training-distribution-correlated failure mode
that same-provider waves (L-A2f) cannot see. Nothing here touches
L-A3 (human reader) or publication; those stay operator-gated.
CALIBRATION GATE: until the lead's strength verdict on the calibration
pair passes, all signatures are SUPPORTING-ONLY.

## Files

- `NEXT.md` — THE pointer/worklist (lead-maintained): the session's
  entire entry instruction.
- `COORDINATION.md` — the two-way lead<->agent message log (v2.1).
- `QUEUE.md` — the ordered item definitions (WHAT/INPUTS/DELIVERABLE/
  BLINDNESS).
- `LEDGER.md` — status table per the state machine above.
- `VERDICT-TEMPLATE.md` — the signature format (OPEN items; BLIND
  packets inline their own copy).
- `verdicts/` — landed verdict documents (external agent writes here).
- `dispatch/<item>/` — served inputs; PACKET.md per item is the
  evaluator's instruction (and, for BLIND, its complete world).
