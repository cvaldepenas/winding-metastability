#!/usr/bin/env python3
"""OP3 - the campaign landing template (roadmap v4).

Usage: python land_campaign.py <spec.json>

Spec (all string fields; every replacement asserts count==1):
{
  "campaign": "#26", "date": "2026-07-21",
  "lean_edits":   [{"old": "...", "new": "..."}, ...],   // header block etc.
  "readme_edits": [{"old": "...", "new": "..."}, ...],   // counts + bullet
  "appendix": "## Campaign #26 appendix ...\n...",        // appended to tables
  "run_verify": true
}
Applies edits to BOTH the leanwork build copy and the repo canonical
file, appends the correspondence-tables appendix, optionally runs
verify.py, then prints the exact git command to finish. It never
commits by itself - the lead reviews and commits.
"""
import json
import subprocess
import sys
from pathlib import Path

LW = Path.home() / "leanwork" / "lanec" / "LabelTowerCore.lean"
REPO = Path(__file__).resolve().parent / "LabelTowerCore.lean"
README = Path(__file__).resolve().parent / "README.md"
TABLES = (Path(__file__).resolve().parent.parent / "governance"
          / "lean-correspondence-tables-v1.md")


def apply(path: Path, edits):
    t = path.read_text(encoding="utf-8").replace("\r\n", "\n")
    for e in edits:
        n = t.count(e["old"])
        assert n == 1, f"{path.name}: {n} matches for {e['old'][:60]!r}"
        t = t.replace(e["old"], e["new"])
    path.write_text(t, encoding="utf-8", newline="\n")
    print(f"OK {path.name} ({len(edits)} edits)")


def main() -> int:
    spec = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    apply(LW, spec.get("lean_edits", []))
    apply(REPO, spec.get("lean_edits", []))
    apply(README, spec.get("readme_edits", []))
    if spec.get("appendix"):
        t = TABLES.read_text(encoding="utf-8")
        TABLES.write_text(t + "\n\n" + spec["appendix"], encoding="utf-8")
        print("OK tables appendix")
    if spec.get("run_verify", True):
        r = subprocess.run([sys.executable, "verify.py"],
                           cwd=Path(__file__).resolve().parent,
                           capture_output=True, text=True)
        tail = "\n".join(r.stdout.splitlines()[-6:])
        print(tail)
        if "VERIFY: PASS" not in r.stdout:
            print("!! VERIFY FAILED - do not commit")
            return 1
    print("\nNEXT (lead reviews then runs):\n"
          f"  git add ... && git commit -m 'lean campaign {spec['campaign']}: ...'")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
