# VERDICT-TEMPLATE — copy into verdicts/<item>-<date>.md and fill

```text
ITEM: <X-number + title from QUEUE.md>
AGENT IDENTITY: <model id / provider / version or date>   [REQUIRED]
DATE: <YYYY-MM-DD>
INPUTS CONSUMED: <exact file list; for BLIND items, ONLY the dispatch/
  contents - state that nothing else was opened>
BLINDNESS CLASS HONORED: <BLIND: dispatch-only | OPEN>

VERDICT: <the item's own verdict vocabulary - e.g. MATCH/MISMATCH,
  SOUND/REFUTED per keystone, CLEAN/loophole list>

WHAT WAS CHECKED: <specific, enumerable>
WHAT WAS NOT CHECKED: <honest scope - required section>
FINDINGS: <numbered; each with the exact location and the concrete
  mechanism; findings are INPUTS for the lead's two-way re-verification,
  not applied edits>
CONFIDENCE NOTES: <where the agent is unsure, say so>
```

Signature discipline: a verdict without the identity line, the
not-checked section, or (for BLIND items) the blindness attestation is
VOID and the item returns to OPEN.
