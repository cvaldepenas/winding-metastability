"""VERDICT CENSUS SELF-TEST -- the adversarial fixture suite for
scripts/verdict_census.py, runnable by anyone with ONE command:

    python scripts/verdict_census_selftest.py

It builds throwaway fixture trees (never mutating any evidence file),
replays EVERY adversarial fixture raised across XE-16/XE-17 plus the
lead's own additions, and exits 0 only if every fixture behaves
fail-closed. Any future referee finding against the census becomes a new
fixture HERE, so the contract carries its own proof. ASCII only."""
import ast
import os
import re
import shutil
import subprocess
import sys
import tempfile

sys.stdout.reconfigure(encoding="utf-8", errors="replace")
HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, ".."))
CENSUS = os.path.join(HERE, "verdict_census.py")
CP = os.path.join(REPO, "formal-framework", "governance", "cross-provider")
VD = os.path.join(CP, "verdicts")
LEDGER = os.path.join(CP, "LEDGER.md")
LANDED = os.path.join(REPO, "formal-framework", "governance", "verdict-census-v1.md")

RESULTS = []

def record(name, ok, detail):
    RESULTS.append((name, ok, detail))
    print("  %-34s %s  %s" % (name, "PASS" if ok else "FAIL", detail))

def run(script, mode=None):
    cmd = [sys.executable] + (["-O"] if mode == "-O" else []) + [script]
    return subprocess.run(cmd, capture_output=True, text=True)

def build_fixture(led_text, extra_file=None, census_src=None):
    root = tempfile.mkdtemp(prefix="census_fixture_")
    os.makedirs(os.path.join(root, "scripts"))
    vd = os.path.join(root, "formal-framework", "governance", "cross-provider", "verdicts")
    os.makedirs(vd)
    src = census_src or open(CENSUS, encoding="utf-8").read()
    open(os.path.join(root, "scripts", "verdict_census.py"), "w",
         encoding="utf-8", newline="\n").write(src)
    open(os.path.join(root, "formal-framework", "governance", "cross-provider",
         "LEDGER.md"), "w", encoding="utf-8", newline="\n").write(led_text)
    for f in os.listdir(VD):
        if f.endswith(".md"):
            shutil.copy(os.path.join(VD, f), vd)
    if extra_file:
        open(os.path.join(vd, extra_file), "w", encoding="utf-8").write("stub")
    return root, os.path.join(root, "scripts", "verdict_census.py")

def main():
    led = open(LEDGER, encoding="utf-8").read().replace("\r\n", "\n")
    tmp_roots = []
    print("VERDICT CENSUS SELF-TEST - the adversarial fixture matrix")
    print("")

    # F1 baseline: normal and -O byte-identical, exit 0, matches the landed file
    r_n = run(CENSUS)
    r_o = run(CENSUS, "-O")
    landed = open(LANDED, encoding="utf-8").read().replace("\r\n", "\n")
    same = (r_n.returncode == 0 and r_o.returncode == 0
            and r_n.stdout == r_o.stdout
            and r_n.stdout.replace("\r\n", "\n") == landed)
    record("F1 baseline normal==-O==landed", same,
           "exits %d/%d, bytes %s" % (r_n.returncode, r_o.returncode,
                                      "identical" if same else "DIFFER"))

    # F2 removed exact status row (XE-1), both modes -> hard fail
    led_bad = "\n".join(l for l in led.split("\n") if not re.match(r"^XE-1\s", l))
    root, script = build_fixture(led_bad); tmp_roots.append(root)
    a, b = run(script), run(script, "-O")
    record("F2 removed-row hard-fails", a.returncode != 0 and b.returncode != 0,
           "exits %d/%d" % (a.returncode, b.returncode))

    # F3 duplicate campaign rule under -O -> hard fail
    dup_src = open(CENSUS, encoding="utf-8").read().replace(
        "RULES = [", 'RULES = [\n    (r"^XE-1$", "DUPLICATE-TEST", "dup"),', 1)
    root, script = build_fixture(led, census_src=dup_src); tmp_roots.append(root)
    a = run(script, "-O")
    record("F3 duplicate-rule hard-fails (-O)", a.returncode != 0,
           "exit %d" % a.returncode)

    # F4 SIGNED -> VOID (exact path retained), both modes -> hard fail
    m = re.search(r"^(XE-16 .+?) SIGNED (\d{4}-\d{2}-\d{2} verdicts/\S+\.md)",
                  led, re.M)
    if not m:
        record("F4 VOID hard-fails", False, "could not locate the XE-16 row")
    else:
        led_void = led.replace(m.group(0),
                               m.group(1) + " VOID " + m.group(2), 1)
        root, script = build_fixture(led_void); tmp_roots.append(root)
        a, b = run(script), run(script, "-O")
        record("F4 VOID hard-fails", a.returncode != 0 and b.returncode != 0,
               "exits %d/%d" % (a.returncode, b.returncode))
        # F5 SIGNED -> GIBBERISH -> hard fail at the unknown-state gate
        led_gib = led.replace(m.group(0),
                              m.group(1) + " GIBBERISH " + m.group(2), 1)
        root, script = build_fixture(led_gib); tmp_roots.append(root)
        a = run(script, "-O")
        record("F5 unknown-state hard-fails (-O)", a.returncode != 0,
               "exit %d" % a.returncode)

    # F6 superseded-map / authoritative overlap -> hard fail
    led_x9c = led.replace("verdicts/X9C-2026-07-19-2.md",
                          "verdicts/X9C-2026-07-19.md", 1)
    root, script = build_fixture(led_x9c); tmp_roots.append(root)
    a = run(script, "-O")
    record("F6 superseded-overlap hard-fails", a.returncode != 0,
           "exit %d" % a.returncode)

    # F7 unknown stray .md dropped into verdicts/ -> hard fail
    root, script = build_fixture(led, extra_file="STRAY-2026-08-02.md")
    tmp_roots.append(root)
    a = run(script, "-O")
    record("F7 stray-file hard-fails", a.returncode != 0, "exit %d" % a.returncode)

    # F8 zero assert nodes anywhere in the census (AST)
    tree = ast.parse(open(CENSUS, encoding="utf-8").read())
    n_assert = sum(isinstance(n, ast.Assert) for n in ast.walk(tree))
    record("F8 zero assert gates (AST)", n_assert == 0, "%d assert nodes" % n_assert)

    for root in tmp_roots:
        shutil.rmtree(root, ignore_errors=True)

    print("")
    bad = [n for n, ok, _ in RESULTS if not ok]
    if bad:
        sys.exit("SELF-TEST FAIL-CLOSED: %s" % ", ".join(bad))
    print("ALL %d FIXTURES PASS. The census contract holds under normal and"
          % len(RESULTS))
    print("optimized Python; every adversarial fixture fails closed.")

if __name__ == "__main__":
    main()
