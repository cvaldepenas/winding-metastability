"""verify.py — B4 re-verification sweep for the canonical Lean files.

For every canonical .lean file in this directory:
  1. copy it into the pinned build project,
  2. `lake env lean` -> must EXIT 0 with no errors and NO sorry warnings,
  3. extract every `theorem` name, append `#print axioms` lines, recompile,
  4. every theorem must report EXACTLY [propext, Classical.choice,
     Quot.sound] - the three standard Lean axioms,
  5. write the full transcript to repro/axioms-transcript.txt.

Usage:  python verify.py [--project <path-to-mathlib-project>]
Default project: ~/leanwork/lanec (the pinned toolchain; see repro/).
Exit code 0 = everything verified; nonzero = a failure, with the reason
printed. This script is the automated form of each campaign's lead
re-verification; it certifies the FILES, not their faithfulness to the
corpus (that is the correspondence tables' job).
"""
from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).parent
STANDARD = "[propext, Classical.choice, Quot.sound]"
CANONICAL = ["LaneCT1.lean", "LabelTowerCore.lean", "RidgeLaw.lean",
             "QcbCfg.lean"]


def run(cmd, cwd):
    return subprocess.run(cmd, cwd=cwd, capture_output=True, text=True,
                          timeout=1800)


def verify_file(fname: str, project: Path, transcript: list[str]) -> bool:
    src = HERE / fname
    text = src.read_text(encoding="utf-8")
    namespace = re.search(r"^namespace\s+(\S+)", text, re.M).group(1)
    theorems = re.findall(r"^theorem\s+([A-Za-z0-9_']+)", text, re.M)
    ok = True

    # 1-2) plain compile
    work = project / f"_verify_{fname}"
    shutil.copy(src, work)
    r = run(["lake", "env", "lean", work.name], project)
    sorries = [ln for ln in r.stdout.splitlines() if "sorry" in ln]
    errors = [ln for ln in r.stdout.splitlines() if "error" in ln.lower()]
    transcript.append(f"== {fname}: compile exit={r.returncode} "
                      f"errors={len(errors)} sorry-warnings={len(sorries)} "
                      f"theorems={len(theorems)}")
    if r.returncode != 0 or errors or sorries:
        transcript.extend(r.stdout.splitlines()[:40])
        print(f"FAIL {fname}: exit={r.returncode} errors={len(errors)} "
              f"sorries={len(sorries)}")
        ok = False

    # 3-4) axiom audit
    ax = text + "\n" + "\n".join(
        f"#print axioms {namespace}.{t}" for t in theorems) + "\n"
    work.write_text(ax, encoding="utf-8", newline="\n")
    r = run(["lake", "env", "lean", work.name], project)
    # join wrapped continuation lines (long theorem names wrap the
    # axiom list onto following indented lines - seen first at
    # campaign #24's winding_k_ground_or_saddle_of_hotCount_le_one)
    joined: list[str] = []
    for raw in r.stdout.splitlines():
        if raw[:1].isspace() and joined:
            joined[-1] += " " + raw.strip()
        else:
            joined.append(raw)
    lines = [ln for ln in joined if "depends on axioms" in ln]
    bad = [ln for ln in lines if STANDARD not in ln]
    missing = len(theorems) - len(lines)
    transcript.extend(lines)
    if r.returncode != 0 or bad or missing:
        print(f"FAIL {fname} axiom audit: exit={r.returncode} "
              f"nonstandard={len(bad)} missing={missing}")
        for ln in bad:
            print("  ", ln)
        ok = False
    else:
        print(f"PASS {fname}: {len(theorems)} theorems, EXIT 0, "
              f"zero sorries, axioms standard")
    work.unlink(missing_ok=True)
    return ok


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--project",
                    default=str(Path.home() / "leanwork" / "lanec"))
    args = ap.parse_args()
    project = Path(args.project)
    if not (project / "lakefile.toml").exists():
        print(f"no lake project at {project} - see repro/README-repro.md")
        return 2
    transcript: list[str] = []
    all_ok = all([verify_file(f, project, transcript) for f in CANONICAL])
    out = HERE / "repro" / "axioms-transcript.txt"
    out.parent.mkdir(exist_ok=True)
    out.write_text("\n".join(transcript) + "\n", encoding="utf-8",
                   newline="\n")
    print(f"transcript -> {out}")
    print("VERIFY:", "PASS" if all_ok else "FAIL")
    return 0 if all_ok else 1


if __name__ == "__main__":
    sys.exit(main())
