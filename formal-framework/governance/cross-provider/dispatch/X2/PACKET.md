# PACKET X2 — blind back-translation of the Lean signatures (SELF-CONTAINED)

This packet is your complete world for this session. ALLOWED FILES:
this file + the four signature files in this directory:
`LaneCT1-signatures.txt`, `LabelTowerCore-signatures.txt`,
`RidgeLaw-signatures.txt`, `QcbCfg-signatures.txt`. Opening ANY other
path before your verdict file is saved VOIDS your verdict. After the
verdict is saved you may open `../../LEDGER.md` ONLY to update the X2
row (see step 4).

## Task

The four files contain every theorem SIGNATURE (statements only,
comments stripped) of a machine-checked Lean 4 / mathlib corpus, plus
the definitions they use. For EVERY theorem: back-translate the
statement into the sharpest honest plain-math claim it actually
establishes, and flag: hidden hypotheses doing load-bearing work;
narrowings (principal branch, specific k or N, constant/specific
configurations, slice constraints); degenerate or vacuous cases
(satisfiable hypotheses? nonempty domains?); names that suggest more
than the statement delivers. You verify; you never author new
mathematics. "Could not determine" is a valid per-item outcome.

## Steps

1. IDENTITY FIRST. Your verdict must open with:

```text
ITEM: X2 Blind back-translation (Lean corpus)
AGENT IDENTITY: <model id / provider / version or date>   [REQUIRED]
LAUNCHED-BY: <direct fresh session | controller-launched fresh
  evaluator, launch date> — attest this context had NO inherited
  history before this packet.   [REQUIRED]
DATE: <YYYY-MM-DD>
INPUTS CONSUMED: dispatch/X2/PACKET.md + the four signatures files
  ONLY - nothing else was opened before this verdict was saved.
BLINDNESS CLASS HONORED: BLIND (dispatch-only)   [attestation REQUIRED]
```

2. Verdict body: one numbered entry PER THEOREM (file + name), each
   with (a) the honest plain-math claim, (b) flags (or "none"), and a
   per-file summary listing the entries a reader would most likely
   over-read. Then:

```text
WHAT WAS CHECKED: <specific, enumerable>
WHAT WAS NOT CHECKED: <honest scope - required>
CONFIDENCE NOTES: <where you are unsure, say so>
```

3. Save the verdict as `../../verdicts/X2-<YYYY-MM-DD>.md` (if that
   filename exists, append `-2`, `-3`, ...). Save it COMPLETE before
   opening anything else.

4. Only after saving: open `../../LEDGER.md` and set the X2 row to
   `SIGNED <date> verdicts/X2-<date>.md`. Touch nothing else in that
   file. Then stop — one item per session.

A verdict missing the identity line, the not-checked section, or the
blindness attestation is VOID.
