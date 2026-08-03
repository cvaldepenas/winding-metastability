#!/usr/bin/env python3
"""Prose-invariant runner (OP5, operator-prompted 2026-07-20).

Mechanizes the fact-classes that external reviews kept catching by
hand: counts drifting from the live corpus, retired premises
resurfacing, cited Lean names that do not exist, numeric claims
drifting from their source records, and missing honesty banners.
Read-only; exit 1 on FAIL. Semantic honesty stays human/lens work -
this checks FACTS, not meaning.
"""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
FF = ROOT / "formal-framework"
LEAN_FILES = ["LaneCT1.lean", "LabelTowerCore.lean", "RidgeLaw.lean",
              "QcbCfg.lean", "HarrisDiscrete.lean"]

failures: list[str] = []


def fail(msg: str) -> None:
    failures.append(msg)


# ---- I1: README theorem count == live count (public theorems) ----
def check_counts() -> None:
    live = 0
    for f in LEAN_FILES[:4]:
        t = (FF / "lean" / f).read_text(encoding="utf-8", errors="replace")
        live += len(re.findall(r"^theorem ", t, re.M))
    readme = (FF / "lean" / "README.md").read_text(encoding="utf-8",
                                                   errors="replace")
    m = re.search(r"(\d+)/(\d+) lemmas", readme)
    if not m:
        fail("I1: README count pattern missing")
        return
    if int(m.group(1)) != live:
        fail(f"I1: README says {m.group(1)} lemmas, live count is {live}")


# ---- I2: retired premises must not resurface outside corrections ----
# Each entry: (pattern, label, discharging markers, near_only). Legacy
# entries (near_only=False): a marker ANYWHERE in the file covers it
# (whole-file record banners). ACTIVE-surface entries (near_only=True,
# XM-R7 F2): coverage is ONLY an ALLOW_NEAR correction token within
# +-400 chars of the hit - the markers tuple is DOCUMENTARY for these
# (records which cure retired the phrase); it exempts nothing
# (XM-R8 F4: deliberately conservative - a topical marker nearby by
# coincidence must not cover a resurfaced phrase).
RETIRED = [
    ("NOT\n?E_eps-critical for eps > 0", "the X3-F1 refuted premise",
     ("X3 CORRECTION", "X3 cross-provider"), False),
    ("but NOT\\s+E_eps-critical", "the X3-F1 refuted premise (v2)",
     ("X3 CORRECTION", "X3 cross-provider"), False),
    ("bottom condition = NONE NEEDED", "the X4 site-6 over-broad row",
     ("X4 CORRECTION", "X4 cross-provider"), False),
    ("deterministic seeds inside each record", "the X7 seeds misclaim",
     ("X7",), False),
    (r"w_k := the coupled\s+saddle's linear coupling coefficient",
     "the X8 wrong w_k identity (XH finding 4)", ("XH", "CORRECTED"), False),
    (r"label-flip time scale is\s+exp\( beta \(2 kappa - m_1\) \)",
     "the XH finding-1 stopping-object upgrade", ("XH",), False),
    # ---- migration-release status classes (retired 2026-07-21, the
    # XM-R5/XM-R6 cure cycles; each phrase was cured corpus-wide) ----
    ("rounds 1-4; XM-R = the flip gate",
     "the pre-round-5 migration status snapshot", ("release gate",), True),
    (r"survived five fleet\s+rounds and three external reviews",
     "hardcoded migration review counts (stale twice; point at LEDGER)",
     ("LEDGER.md",), True),
    (r"PE\.1-PE\.4 composing", "the pre-ADJ-2 E2 route summary",
     ("ADJ-2",), True),
    (r"unconditional on the pinning \(sub\)range",
     "the withdrawn E2 window/subrange completion criterion",
     ("ADJ-2", "WITHDRAWN"), True),
    (r"red-flag scan bounds", "the withdrawn N-window claim (ADJ-2)",
     ("WITHDRAWN",), True),
    ("XM-signed", "the ambiguous release attribution class (XM-R5 F2)",
     ("XM-R5",), True),
]
ALLOW_NEAR = ("CORRECTION", "REFUTED", "was FALSE", "former", "previous",
              "retired", "RETIRED", "repair", "historical note")


def check_retired() -> None:
    for md in FF.rglob("*.md"):
        if "cross-provider" in str(md) or "_archive" in str(md):
            continue  # verdict records legitimately quote history
        t = md.read_text(encoding="utf-8", errors="replace")
        for pat, why, markers, near_only in RETIRED:
            if not near_only and any(mk in t for mk in markers):
                continue  # legacy: a whole-file record banner covers it
            for m in re.finditer(pat, t):
                ctx = t[max(0, m.start() - 400):m.end() + 400]
                covered = any(a in ctx for a in ALLOW_NEAR)
                if not covered:
                    fail(f"I2: retired premise ({why}) resurfaced in "
                         f"{md.relative_to(ROOT)}")


# ---- I3: Lean names cited in the master theorem pin map exist ----
def check_cited_names() -> None:
    mt = (FF / "governance" / "master-theorem-v1.md").read_text(
        encoding="utf-8", errors="replace")
    sec = mt.split("## Part-to-pillar pin map")[1].split("## ")[0]
    tokens = set(re.findall(r"[A-Za-z][A-Za-z0-9]*(?:_[A-Za-z0-9]+)+", sec))
    corpus = "".join((FF / "lean" / f).read_text(encoding="utf-8",
                                                 errors="replace")
                     for f in LEAN_FILES)
    ok_prose = {"lane_master", "rate_display"}  # md-name fragments
    for tok in sorted(tokens):
        if tok in ok_prose or tok.endswith("_md"):
            continue
        # tolerate the pin map's family-glob shorthand a/b(_c) by
        # checking the stem before any residual punctuation
        stem = tok.strip("_")
        if stem not in corpus:
            fail(f"I3: pin map cites '{stem}' - not found in the corpus")


# ---- I4: numeric claims match their source records ----
CLAIMS = [
    {"file": "governance/b2-numerics-results-v1.md",
     "pattern": r"sup S_1 = ([0-9.]+)",
     "source": "numerics/results/falsify_results.json",
     "extract": lambda d: round(d["cH_ledger"]["sup_S1_over_N_10_2000"], 3)
        if "cH_ledger" in d else None,
     "tol": 0.001},
]


def deep_find(d, key):
    if isinstance(d, dict):
        if key in d:
            return d[key]
        for v in d.values():
            r = deep_find(v, key)
            if r is not None:
                return r
    elif isinstance(d, list):
        for v in d:
            r = deep_find(v, key)
            if r is not None:
                return r
    return None


def check_numeric_claims() -> None:
    t = (FF / "governance" / "b2-numerics-results-v1.md").read_text(
        encoding="utf-8", errors="replace")
    m = re.search(r"sup S_1 = ([0-9.]+)", t)
    d = json.loads((FF / "numerics" / "results" / "falsify_results.json")
                   .read_text(encoding="utf-8"))
    src = deep_find(d, "sup_S1_over_N_10_2000")
    if m and src is not None and abs(float(m.group(1)) - round(src, 3)) > 1e-3:
        fail(f"I4: board says sup S_1 = {m.group(1)}, source JSON has "
             f"{round(src, 3)}")


# ---- I5: honesty banners present where owed ----
BANNERS = [
    ("pre-physics/lane-sh-sharpness-v1.md", "X3 STATUS"),
    ("pre-physics/lane-lp-product-saddle-v1.md", "X3 CORRECTION"),
    ("pre-physics/lane-c-exit-time-lower-bound-v1.md", "X4 CORRECTION"),
    ("governance/master-theorem-v1.md", "C-2"),
]


def check_banners() -> None:
    for rel, needle in BANNERS:
        t = (FF / rel).read_text(encoding="utf-8", errors="replace")
        if needle not in t:
            fail(f"I5: {rel} missing its '{needle}' banner")


def main() -> int:
    print("prose_invariants v1")
    for chk in (check_counts, check_retired, check_cited_names,
                check_numeric_claims, check_banners):
        try:
            chk()
        except Exception as e:  # a broken check is itself a failure
            fail(f"{chk.__name__}: runner error {e!r}")
    for f in failures:
        print("FAIL ", f)
    print(f"RESULT = {'FAIL' if failures else 'PASS'} "
          f"({len(failures)} failures)")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
