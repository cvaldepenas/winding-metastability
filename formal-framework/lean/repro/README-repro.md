# repro/ — Lean verification repro kit (B4)

```text
purpose = let ANYONE (cross-provider auditor, future session, human
  reader) re-verify the machine-checked files from scratch, and let the
  workstation's out-of-repo build be reconstructed if it rots. This kit
  is an INPUT to the cross-provider kit (roadmap F0).
pin = leanprover/lean4:v4.32.0-rc1 + mathlib rev
  360da6fa66c1273b76b6b2d8c5666fd5ac2e3b56 (files here: lean-toolchain,
  lakefile.toml, lake-manifest.json - copied verbatim from the live
  build project).
```

## 3-step recipe (fresh machine)

1. Install elan (https://github.com/leanprover/elan). Create a project
   directory; copy `lean-toolchain`, `lakefile.toml`, `lake-manifest.json`
   from this kit into it; run `lake exe cache get` there (downloads the
   pinned mathlib oleans; ~8.5k files).
2. From the repo's `lean/` directory run
   `python verify.py --project <that directory>`.
3. Read the output: every canonical file must report
   `PASS ...: N theorems, EXIT 0, zero sorries, axioms standard`
   and the transcript lands in `repro/axioms-transcript.txt`.
   "Standard" = `[propext, Classical.choice, Quot.sound]` exactly.

## What a PASS certifies (and what it does not)

A PASS certifies: the Lean compiler accepts every statement AND proof in
the four canonical files, with no `sorry` and no axioms beyond Lean's
three standard ones, under the pinned toolchain. It does NOT certify
faithfulness to the corpus prose - that audit surface is
`../governance/lean-correspondence-tables-v1.md` (+ each file's honest-
scope header). Known benign lint: one unused-binder warning in
LaneCT1.lean on a statement variable.

## Files

- `lean-toolchain` / `lakefile.toml` / `lake-manifest.json` - the pin.
- `axioms-transcript.txt` - the latest full sweep transcript (generated
  by `verify.py`; regenerate rather than hand-edit).
