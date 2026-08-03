# PACKET X1 — Lean repro, true compile (mode = OPEN)

## Task

Reproduce the corpus's machine-check sweep from the pinned kit, in
YOUR environment (that is the point: an independent machine).

Repo paths (relative to the repository root `research/`):

- `formal-framework/lean/repro/` — pinned toolchain manifest + the
  3-step recipe.
- `formal-framework/lean/LaneCT1.lean`, `LabelTowerCore.lean`,
  `RidgeLaw.lean`, `QcbCfg.lean` — the four canonical files.
- `formal-framework/lean/verify.py` — the automated sweep.
- `formal-framework/lean/repro/axioms-transcript.txt` — the committed
  transcript to compare against.

Steps: follow `repro/`'s recipe (elan → pinned mathlib project → copy
files → `python verify.py` or the manual `lake env lean` + `#print
axioms` form). Then diff YOUR transcript line-by-line against the
committed one.

TOOLCHAIN PROBE: if your sandbox cannot install or run the toolchain
(no network for elan/mathlib, no disk, timeout), STOP and sign the
verdict as `COULD NOT VERIFY: toolchain unavailable` with the EXACT
failing command and error line — that is a fully valid X1 outcome and
completes the capability map (X0 left this untested). Do not fake a
compile; do not substitute reading the files for running them.

## Verdict

Write `verdicts/X1-<YYYY-MM-DD>.md` (collision: `-2`, `-3`, ...):

```text
ITEM: X1 Lean repro (true compile)
AGENT IDENTITY: <model id / provider / version or date>   [REQUIRED]
LAUNCHED-BY: <direct session | controller session, launch date>
DATE: <YYYY-MM-DD>
INPUTS CONSUMED: <exact list, including your build environment>
BLINDNESS CLASS HONORED: OPEN

VERDICT: MATCH | MISMATCH (line-listed) | COULD NOT VERIFY (exact
  failure)

WHAT WAS CHECKED / WHAT WAS NOT CHECKED / FINDINGS / CONFIDENCE NOTES
  (all four sections required; include YOUR transcript verbatim or as
  an attached verdicts/X1-<date>-transcript.txt)
```

Then update the X1 row in `LEDGER.md` to `SIGNED <date> <verdict
path>` and stop this item.
