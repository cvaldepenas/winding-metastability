# PACKET X6 — blind gate re-adjudication (SELF-CONTAINED)

This packet is your complete world for this session. ALLOWED FILES:
this file + `brief-1-blind.md` (same directory). Opening ANY other
path before your verdict file is saved VOIDS your verdict. After the
verdict is saved you may open `../../LEDGER.md` ONLY to update the X6
row (see step 4).

## Task

Execute `brief-1-blind.md` exactly as written — it is a self-contained
blind-audit brief with its own severity scale and output format. You
verify; you never author new mathematics. Honesty standard: state what
you checked and what you did NOT check; "could not verify" is a valid
outcome; do not upgrade or soften any claim.

## Steps

1. IDENTITY FIRST. Your verdict must open with:

```text
ITEM: X6 Gate re-adjudication (brief 1)
AGENT IDENTITY: <model id / provider / version or date>   [REQUIRED]
LAUNCHED-BY: <direct fresh session | controller-launched fresh
  evaluator, launch date> — attest this context had NO inherited
  history before this packet.   [REQUIRED]
DATE: <YYYY-MM-DD>
INPUTS CONSUMED: dispatch/X6/PACKET.md + dispatch/X6/brief-1-blind.md
  ONLY - nothing else was opened before this verdict was saved.
BLINDNESS CLASS HONORED: BLIND (dispatch-only)   [attestation REQUIRED]
```

2. Work the brief. Your verdict body = the brief's own structured
   output (its Section-by-Section verdict with severities, exact
   locations, replacement text), followed by:

```text
WHAT WAS CHECKED: <specific, enumerable>
WHAT WAS NOT CHECKED: <honest scope - required>
CONFIDENCE NOTES: <where you are unsure, say so>
```

3. Save the verdict as `../../verdicts/X6-<YYYY-MM-DD>.md` (relative
   to this directory; if that filename exists, append `-2`, `-3`, ...).
   Save it COMPLETE before opening anything else.

4. Only after saving: open `../../LEDGER.md` and set the X6 row to
   `SIGNED <date> verdicts/X6-<date>.md`. Touch nothing else in that
   file. Then stop — one item per session.

A verdict missing the identity line, the not-checked section, or the
blindness attestation is VOID.
