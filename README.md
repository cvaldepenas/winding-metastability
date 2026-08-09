# Winding Metastability

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21776817.svg)](https://doi.org/10.5281/zenodo.21776817)

**A verified research program on metastability of reversible diffusions
on the torus T^(2N): winding-label persistence, exit laws, and the
coupled label window.**

Independent research directed and operated by **C. Valdepenas**,
executed by AI systems under an adversarial, multi-architecture
verification protocol. **Full disclosure, stated up front: all
verification to date is by AI systems - machine-checked Lean proofs,
plus 55 authoritative external signatures from an independent AI
architecture (52 at the math-v2.0 seal + 3 post-seal documentary
governance gates - the XE-19 arc). No human has yet checked any proof in this corpus.** That
is exactly why everything here is offered for verification rather than
asserted on authority: the repository is designed so that you - human
or machine - can check it yourself.

## What is proved (release `math-v2.0`, 2026-08-02)

- **Part I (existence + exhaustive classification)** of the
  winding-label critical structure: UNCONDITIONAL, machine-checked end
  to end (Lean campaigns #24-#26; see `formal-framework/lean/`).
- **The label tower and migration rows**: discharged (17 external
  reviews, XM-R16).
- **The coupled upper's excursion rows**: discharged (the E2 campaign,
  XE-11; 11 external verdicts, zero mathematical cores refuted).
- **The initial delay**: discharged at the stopped (min-object) reading
  at rate strength (the E5 campaign, XE-14; narrow signed boundary).
- **Numerical instantiation**: externally verified pass over every
  standing condition (21/21 cell scalars exact to the printed
  precision; verified instantiation point `eps = 0.045`).

**What honestly remains open, by name**: the full-expectation reading of
the package/full upper (fenced verbatim in the lanes); the Lean library
pin C-2 at the mathlib boundary; the 47 conditional parameter rows
awaiting two unlanded analytic constants. See
`formal-framework/governance/math-v2.0-tag-annotation.md`.

## Start here

1. **`formal-framework/governance/la3-reader-packet-v1.md`** - the
   reader packet: the whole program in one document, adjudicated FIT
   for cold readers by a four-profile external panel (XE-15..XE-18).
   It includes an attack list (Q1-Q12) pointing you at the weakest
   joints on purpose.
2. `formal-framework/governance/master-theorem-v1.md` - the master
   statement.
3. The lanes (`formal-framework/pre-physics/lane-*.md`) - the full
   proofs, with per-display provenance tags.
4. The verification record
   (`formal-framework/governance/cross-provider/`) - the protocol, the
   ledger, the coordination log, and all 56 signed verdict artifacts.

## Verify it yourself

```
python scripts/verdict_census_selftest.py   # the signature census + its 8-fixture adversarial suite
python scripts/verdict_census.py            # regenerates the canonical signed-verdict census
python scripts/prose_invariants.py          # the prose/statement invariant guard
python scripts/e6_instantiation.py          # the numerical instantiation pass (deterministic; reports findings F-1/F-2)
python scripts/e6_adjudication.py           # the layer that resolves F-1 at the verified point eps = 0.045
```

Lean verification: see `formal-framework/lean/README.md`.

**On hashes, stated precisely**: the signed verdicts pin SHA-256
evidence locks *at audit intake*; because the corpus then advanced
through the very cures each verdict ordered, an intake lock verifies
against this tree only where the artifact was already frozen at that
point (for example the frozen appendix
`lane-prodexc-proofs-v1.md` = `2bbf6923...d68052`, exactly XE-8's and
XE-11's pin). What IS byte-verbatim is the export itself: **every file
in this repository is byte-identical to its original in the private
working repository** - independently re-verified during the
pre-publication audit (every exported file identical; the only new
files are this README and the citation/license/manifest set).

## Method

The program was directed and operated by C. Valdepenas and executed by
AI systems (Anthropic Claude as lead; OpenAI Codex as independent
external evaluator) under a signed-gate protocol: no theorem-status
change without an external signature from a different architecture,
with verdicts, cure cycles, and evidence locks recorded verbatim in
`formal-framework/governance/cross-provider/`. The operational log is
published unedited as part of the verification record; it occasionally
references private-workspace paths and adjacent private workstreams
that are outside this repository's scope (see `EXPORT-MANIFEST.md`).

## License and citation

Documents: CC BY 4.0 (`LICENSE`). Code (`scripts/`,
`formal-framework/lean/`, `formal-framework/numerics/`): MIT
(`LICENSE-CODE`). Cite via `CITATION.cff`. Zenodo: concept DOI
[10.5281/zenodo.21776817](https://doi.org/10.5281/zenodo.21776817)
(all versions); the sealed release (math-v2.0):
[10.5281/zenodo.21776818](https://doi.org/10.5281/zenodo.21776818).

Release math-v2.0.1 (2026-08-09) is a DOCUMENTARY REPAIR release:
zero mathematical change. It reconciles documentary surfaces that
still asserted pre-seal state (with every superseded sentence marked
in place, never silently rewritten), and was verified by three
external delta gates ending SEAL-STATE-CLEAN. Full record:
`formal-framework/governance/math-v2.0.1-tag-annotation.md` and the
XE-19 / XE-19-R / XE-19-R2 verdicts.
