# PACKET X9 — M5 charter constitutional re-review (mode = OPEN)

## Task

ADVERSARIAL CONSTITUTIONAL REVIEW of a proposed governance charter.
The document governs how mathematical results of this program may be
mapped to discourse vocabulary, under strict containment. It was
drafted by an AI, adversarially reviewed by the SAME AI (16 defects
found and repaired across two versions), and is NOT yet ratified. You
are the first genuinely independent reviewer. NO DEFERENCE: assume it
may still be wrong; your job is to find where.

Input (repo path from the repository root `research/`):

- `interpretation/M5-INTERPRETATION-CHARTER-v1-PROPOSED.md` (the
  full charter, current proposed version v3).
- Optional context: the internal review record is reachable via
  `git log`/`git show` on that file (hash 0233bc0 marks the HG1
  baseline). Reading it is allowed (OPEN) but do your OWN pass FIRST
  and say in the verdict whether you read it before or after.

Hunt specifically: FORGEABLE GATES (any ratification/approval step an
AI could satisfy without the human operator actually deciding);
CONTAINMENT LEAKS (paths by which interpretation vocabulary can reach
theorem artifacts, or physics/agency vocabulary can enter sealed
math); WORLD-REFERENCE SMUGGLING (claims about reality dressed as
vocabulary mappings); AMBIGUOUS AUTHORITY (who may do what, when two
clauses conflict); DEAD RULES (unenforceable or unverifiable clauses).

## Verdict

Write `verdicts/X9-<YYYY-MM-DD>.md` (collision: `-2`, `-3`, ...):

```text
ITEM: X9 M5 charter constitutional re-review
AGENT IDENTITY: <model id / provider / version or date>   [REQUIRED]
LAUNCHED-BY: <direct session | controller session, launch date>
DATE: <YYYY-MM-DD>
INPUTS CONSUMED: <exact list; state whether the internal review record
  was read, and whether before or after your own pass>
BLINDNESS CLASS HONORED: OPEN

VERDICT: CLEAN | loophole list, SEVERITY-RANKED (FATAL / MAJOR /
  MINOR), each with the exact clause location, the concrete abuse
  mechanism, and proposed replacement text.

WHAT WAS CHECKED / WHAT WAS NOT CHECKED / FINDINGS / CONFIDENCE NOTES
  (all four sections required)
```

Then update the X9 row in `LEDGER.md` to `SIGNED <date> <verdict
path>` and stop this item.
