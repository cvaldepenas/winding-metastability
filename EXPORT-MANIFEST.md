# EXPORT MANIFEST

This repository is a curated, BYTE-VERBATIM projection of the
mathematical program from a private working repository. The export is
produced by an allowlist, fail-closed script (the same philosophy as
scripts/verdict_census.py): only named files enter, a hygiene sweep
hard-fails on private markers, and every exported file is byte-identical
to its private original.

INCLUDED: the proof lanes (formal-framework/pre-physics/lane-*.md, the
E5 charter, the E6 instantiation table + runlogs), the governance record
(reader packet, master theorem, verdict census, tag annotation, change
ledger, flip manifests, roadmap v6, lean correspondence tables, numerics
results board), the cross-provider verification record (protocol,
ledger, coordination log, queue, template, all 56 verdict artifacts,
dispatch workbenches), the Lean formalization (formal-framework/lean/),
the numerics (formal-framework/numerics/), and the verification scripts.

EXCLUDED, BY NAME: private workstreams adjacent to this program
(gtpa-lab/**, the fd2-ga-* in-flight program and every reproduction of
its content - including the internal canon layer canon/**, which mixes
winding material with that program's full proofs and with private
lineage records; candidate registries); operational handoffs and
workspace boot/ops documents; the live session pointer NEXT.md; one
dispatch envelope embedding a private charter (ENVELOPE-3); one spent
one-off release tool with a hardcoded local path (minmig_flip_batch.py);
and one guard script that checks private cross-lane structure
(coherence_guard.py - the math-lane green signal, prose_invariants.py,
IS included).

DECLARED COSMETIC WART, kept on purpose: local workstation paths appear
verbatim in a handful of files (notably 41 occurrences inside the frozen
historical appendix lane-prodexc-proofs-v1.md, and in a few historical
verdicts and the operational log). They ship verbatim because these
files are hash-pinned or record-class and rewriting them would break
evidence fidelity; every occurrence was audited to be name-level only (a
username and folder names - no private content). The operational log
also mentions adjacent private workstreams BY NAME only (audited: no
content leaks) and quotes the operator's working notes in places.

The tag math-v2.0 in this repository reproduces the annotation of the
identically named tag in the private working repository.
