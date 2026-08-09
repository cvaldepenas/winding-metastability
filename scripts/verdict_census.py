"""VERDICT CENSUS v3 (XE-16's repair class + XE-17's status-semantics cure) -- the
canonical counted-set table, generated from verdicts/*.md and STRUCTURALLY
bound to LEDGER.md's status rows. ASCII only.
Run: python scripts/verdict_census.py   (gates survive python -O: no assert)

FAIL-CLOSED CONTRACT (v3):
  (a) LEDGER status rows are parsed STRUCTURALLY (the region above the first
      '## ' heading; one row per item token; exactly one verdicts/ path per
      row); duplicate or malformed rows are hard failures.
  (b) Every counted file must EQUAL some status row's authoritative path
      (string equality on 'verdicts/<filename>'), and every status row's
      path must exist on disk - a bijection, not substring membership.
  (c) Files NOT equal to any authoritative path must appear in the explicit
      SUPERSEDED map below (with the LEDGER anchor that supersedes them) or
      the census hard-fails. Superseded artifacts are reported separately
      and are NOT summed into any campaign count.
  (d) Every gate is an explicit sys.exit, active under python -O.
  (e) The STATUS field is parsed by an anchored grammar and enforced per
      the protocol state machine: only SIGNED / LEAD-VERIFIED rows are
      authoritative; VOID / OPEN / DISPATCHED / IN-PROGRESS rows are
      excluded (their on-disk artifact then hard-fails the file gate);
      unknown states hard-fail immediately."""
import os
import re
import sys

sys.stdout.reconfigure(encoding="utf-8", errors="replace")
HERE = os.path.dirname(os.path.abspath(__file__))
VD = os.path.join(HERE, "..", "formal-framework", "governance", "cross-provider", "verdicts")
LEDGER = os.path.join(HERE, "..", "formal-framework", "governance", "cross-provider", "LEDGER.md")

def fail(msg):
    sys.exit("CENSUS FAIL-CLOSED: " + msg)

# item-token grammar for LEDGER status rows
TOKEN = re.compile(r"^X[0-9]$|^X[0-9][BC]$|^X[FHM]$|^X[HM]-R\d*$|^XE-\d+$|^XE-\d+-R\d*$|^XM-R\d+$")
PATH = re.compile(r"verdicts/[A-Za-z0-9.\-]+\.md")

# (regex over the item token, primary campaign, note)
RULES = [
    (r"^X0$|^X[1-9]$|^X9B$|^X9C$|^XF$", "FOUNDATION (X-arc)",
     "the 2026-07-18/19 foundation audits"),
    (r"^XH(-R\d*)?$", "H-ARC", "the 2026-07-20 H-arc reviews"),
    (r"^XM(-R)?$", "E1/MIN-MIG", "the 2026-07-20 opening migration reviews"),
    (r"^XM-R([2-9]|1[01])$", "E1/MIN-MIG", "migration-proofs reviews 3rd..12th"),
    (r"^XM-R1[2-6]$", "E1/MIN-MIG",
     "migration reviews 13th..17th; window overlapped the E2 run - the five "
     "rows the legacy 'sixteen' conflated into E2's count (RETIRED)"),
    (r"^XE-([1-9]|1[01])$", "E2 (PROD-EXCURSION)", "the excursion campaign arc XE-1..XE-11"),
    (r"^XE-1[2-4]$", "E5 (GAP-LP-RECUR)", "the initial-delay campaign arc XE-12..XE-14"),
    (r"^XE-1[5-8]$", "E4 (READER)",
     "the reader-panel comprehension gates (not soundness signatures)"),
    (r"^XE-19(-R\d*)?$", "GOVERNANCE (SEAL-RECON)",
     "the post-seal documentary reconciliation gates (not soundness signatures)"),
]

# files that are physical artifacts but NOT the authoritative path for their
# item; each entry names the LEDGER authority that supersedes it
SUPERSEDED = {
    "X9C-2026-07-19.md": ("X9C", "LEDGER row X9C authorizes verdicts/X9C-2026-07-19-2.md; "
                                 "LEDGER's X9C adjudication section calls it superseding "
                                 "per the collision rule"),
}

# the protocol state machine (README-PROTOCOL): SIGNED / LEAD-VERIFIED are
# valid signature states; VOID is an invalid signature (returns to
# dispatch); OPEN / DISPATCHED / IN-PROGRESS are pre-signature.
AUTHORITATIVE_STATUS = {"SIGNED", "LEAD-VERIFIED"}
KNOWN_NONAUTH_STATUS = {"VOID", "OPEN", "DISPATCHED", "IN-PROGRESS"}
ROW = re.compile(
    r"^(X\S+)\s+(.+?)\s+(\S+)\s+(\d{4}-\d{2}-\d{2})\s+(verdicts/[A-Za-z0-9.\-]+\.md)")

def parse_ledger_rows():
    text = open(LEDGER, encoding="utf-8").read().replace("\r\n", "\n")
    region = text.split("\n## ", 1)[0]
    rows, excluded = {}, {}
    for ln in region.split("\n"):
        parts = ln.split()
        if not parts or not TOKEN.match(parts[0]):
            continue
        paths = PATH.findall(ln)
        if len(paths) == 0:
            # wrapped continuation text of the previous row (the region
            # carries multi-line parentheticals). Skipping here cannot
            # fail OPEN: a genuine status row that lost its path leaves
            # its file unmatched, and the file-side gate hard-fails.
            continue
        if len(paths) > 1:
            fail("status row for %r carries %d verdicts/ paths (need exactly 1): %r"
                 % (parts[0], len(paths), ln[:90]))
        m = ROW.match(ln)
        if not m:
            fail("status row for %r does not match the anchored grammar "
                 "item/title/STATUS/date/path: %r" % (parts[0], ln[:90]))
        item, _title, status, _date, path = m.groups()
        if item in rows or item in excluded:
            fail("duplicate LEDGER status row for item %r" % item)
        if status in AUTHORITATIVE_STATUS:
            rows[item] = path
        elif status in KNOWN_NONAUTH_STATUS:
            # excluded per the state machine; if its physical artifact
            # exists on disk, the file-side gate hard-fails loudly.
            excluded[item] = (status, path)
        else:
            fail("status row for %r carries UNKNOWN state %r - not in the "
                 "protocol state machine" % (item, status))
    if not rows:
        fail("no LEDGER status rows parsed - region or grammar drift")
    return rows

def main():
    rows = parse_ledger_rows()
    files = sorted(f for f in os.listdir(VD) if f.endswith(".md"))
    authoritative_paths = set(rows.values())

    # (f) SUPERSEDED-map consistency: a file the map calls superseded must
    # never simultaneously be some row's authoritative path
    for f in SUPERSEDED:
        if ("verdicts/" + f) in authoritative_paths:
            fail("SUPERSEDED map entry %r is simultaneously an authoritative "
                 "LEDGER path - the map and the LEDGER contradict" % f)

    # (b) every row's path exists on disk
    for item, path in sorted(rows.items()):
        if not os.path.isfile(os.path.join(VD, os.path.basename(path))):
            fail("LEDGER row %r names %r, which does not exist on disk" % (item, path))

    auth, superseded = [], []
    for f in files:
        rel = "verdicts/" + f
        if rel in authoritative_paths:
            items = [it for it, p in rows.items() if p == rel]
            if len(items) != 1:
                fail("path %r bound by %d LEDGER rows (need exactly 1)" % (rel, len(items)))
            item = items[0]
            hits = [(camp, note) for pat, camp, note in RULES if re.match(pat, item)]
            if len(hits) != 1:
                fail("item %r matched %d campaign rules (need exactly 1)" % (item, len(hits)))
            auth.append((item, f, hits[0][0]))
        elif f in SUPERSEDED:
            superseded.append((f,) + SUPERSEDED[f])
        else:
            fail("file %r equals no authoritative LEDGER path and is not in the "
                 "explicit SUPERSEDED map" % f)

    counts = {}
    for _, _, camp in auth:
        counts[camp] = counts.get(camp, 0) + 1

    print("VERDICT CENSUS v3 - generated from verdicts/*.md, STRUCTURALLY bound to")
    print("LEDGER.md status rows (exact-path bijection; gates survive python -O)")
    print("")
    print("| item | authoritative file | primary campaign |")
    print("|---|---|---|")
    for item, f, camp in auth:
        print("| %s | %s | %s |" % (item, f, camp))
    print("")
    print("SUPERSEDED / NON-AUTHORITATIVE PHYSICAL ARTIFACTS (reported, never counted):")
    for f, item, why in superseded:
        print("  %s  [item %s] - %s" % (f, item, why))
    print("")
    print("CAMPAIGN TOTALS (strict primary-campaign taxonomy, AUTHORITATIVE rows only):")
    for camp in sorted(counts):
        print("  %-22s %d" % (camp, counts[camp]))
    e2 = counts.get("E2 (PROD-EXCURSION)", 0)
    e5 = counts.get("E5 (GAP-LP-RECUR)", 0)
    print("")
    print("HEADLINE (strict): E2 = %d (XE-1..XE-11); E5 = %d (XE-12..XE-14); E2+E5 = %d." % (e2, e5, e2 + e5))
    print("PHYSICAL artifacts on disk: %d. AUTHORITATIVE verdicts: %d. Superseded: %d." % (len(files), len(auth), len(superseded)))
    print("THE RETIRED CONFLATION, named: the legacy figure 'sixteen for E2' was")
    print("eleven XE items plus the five E1/MIN-MIG-primary reviews XM-R12..XM-R16,")
    print("whose signing window (2026-07-25/26) overlapped the E2 run. They are")
    print("counted at their primary campaign above and nowhere else.")
    print("NOTE: XE-15..XE-18 are comprehension/fidelity panels, not")
    print("soundness signatures, and are not summed into any campaign's")
    print("soundness count.")
    print("NOTE: XE-19-class rows (GOVERNANCE, the post-seal documentary")
    print("reconciliation gates) are likewise authoritative signatures but")
    print("not soundness signatures.")

if __name__ == "__main__":
    main()
