# -*- coding: ascii -*-
"""
E6 NUMERICAL INSTANTIATION PASS -- stdlib only (math), no sympy, no numpy.

SPEC: the closed condition inventory E6 (conditions / closed_forms / notes) delivered by E5.
      This script IMPLEMENTS that inventory; it does not re-derive it.

ASCII MATH ONLY. No unicode math symbols anywhere in this file or its output.

--------------------------------------------------------------------------------------
COORDINATE / CITATION CONVENTION (stated explicitly, per house rule)
--------------------------------------------------------------------------------------
  V2:n  = PHYSICAL line n of research/formal-framework/pre-physics/lane-prodexc-v2.md
  MM:n  = PHYSICAL line n of research/formal-framework/pre-physics/lane-minmig-proofs-v1.md
  LP:n  = PHYSICAL line n of research/formal-framework/pre-physics/lane-lp-product-saddle-v1.md
  PX:n  = the FROZEN appendix research/formal-framework/pre-physics/lane-prodexc-proofs-v1.md.
          Per V2 S8.1 that document's DEFAULT citation convention is PRE-BANNER, and
          PHYSICAL = PRE-BANNER + 4.  Every PX anchor below is tagged "(pre-banner)" or
          "(physical)" so no reader has to guess which vintage a number is.

--------------------------------------------------------------------------------------
FLAGSHIP CELL
--------------------------------------------------------------------------------------
  E_eps = J_kappa + J_lambda + eps W on M = T^{2N};  (N, kappa, lambda) = (10, 1, 1+);
  design eps = 0.05; delta -> 0 LAST.   [PROV] V2:345-346 (FLAG)

--------------------------------------------------------------------------------------
SYMBOL-COLLISION GUARDS ENFORCED BY THIS SCRIPT (each pair is TWO objects; never merged)
--------------------------------------------------------------------------------------
  G1  h_hop      (MM/LP.5(c) hop-and-relocate scale; L-07, L-08, Gamma(h))
      vs h_pot   (equilibrium / entry potential; "(SANDWICHw) h <= 1/2", "1 - 2h >= 0 q.e."; C-16)
  G2  C_3        (companion leg, carries factor e:   C_H'' * C_up' / c(N,delta), C_up' = e G^2 V_M)
      vs C_3main (main leg,      carries factor e^2: C_H'' e^2 G^2 V_M / c(N,delta))
  G3  beta_star  (= max(16/delta, 24G/(3 c_H), 1 + (5G+2)/(3 c_H)))
      vs beta_star_DR (= max(8/delta, (2+G)/(S_k + c_H - A_tube)))
      Split BY NAMING per (BETA-STAR) S0.5; never merged by arithmetic.
  G4  A_tube_operative  = m_k + eps w_k + L_eps N delta^2/4   [PX:9785 pre-banner = PX:9789 physical]
      vs A_tube_superseded = m_k + eps w_k + (25/128) L_eps delta^2
                                                   [PX:8365 pre-banner = PX:8369 physical]
      beta_star_DR reads the OPERATIVE vintage only.
  G5  C_H_dd (C_H'' = C(n, e^{4G})^8, chained, LIVE, read by beta_1^weak)
      vs C_H_d (C_H', single application, SUPERSEDED, read by beta_1^hist)
  G6  D_G_product = pi sqrt(2N) = 14.0496294621  (LIVE; campaign-#23 seal)
      vs D_G_single = pi sqrt(N) = 9.9345882658  (single loop)
      vs D_G_maxnorm = pi                        (explicitly NOT used)
      Gamma(h) is evaluated on D_G_product ONLY.
  G7  err_A has TWO readings the corpus never reconciles: (i) the TRAP_2 leg's loss in the
      two-leg identity (V2:414, NO closed form) and (ii) err_A := c_0 + eps w_k + L_eps N delta^2/4
      (V2:3248).  Reading (i) has no closed form, so the instantiation CANNOT confirm the
      identification: both are carried and the row is FLAGGED.
  G8  "The constant is c_plate, never kappa" (V2:3248). kappa is the standing coupling.
  G9  Torus normalization: T-3's inj = 1/2 is the UNIT-LATTICE reading; the standing bond
      coordinates carry |e_i| = pi on Delta_phi. ONE normalization must be declared before
      (H-INJ) is evaluated; this script declares NONE and reports (H-INJ) CONDITIONAL.

--------------------------------------------------------------------------------------
EVALUATION-ORDER RULES ENFORCED
--------------------------------------------------------------------------------------
  R1  pin delta > 0  ->  c_0 / eta / err_A  ->  c_plate  ->  ANY beta threshold.
      No beta threshold is emitted before c_plate's row has been emitted.
  R2  Never evaluate at delta = 0 or h = 0 (the mandated order is beta -> infinity FIRST
      at fixed positive delta, THEN delta -> 0).  Guarded by assert_positive_scale().
  R3  Implicit thresholds are solved as the UPPER root; never read off.
  R4  Take maxima. NO domination is assumed anywhere. Where an arithmetic domination is
      visible it is REPORTED as an observation and the leg is still carried in the max.
  R5  FAIL CLOSED: a stage that needs an unsupplied Stage-1 input emits a CONDITIONAL row
      carrying the closed form with the missing symbols NAMED. It never invents a numeral.

--------------------------------------------------------------------------------------
ENUMERATION DISCIPLINE
--------------------------------------------------------------------------------------
  This pass checks the rows NAMED below (C-01..C-24, B-01..B-14, L-01..L-14) and nothing
  else. Its authority is that enumeration. No quantified exhaustiveness is asserted over
  the corpus.
"""

import math

# =====================================================================================
# INFRASTRUCTURE
# =====================================================================================

VERIFIED = "VERIFIED"
CONDITIONAL = "CONDITIONAL"
TYPED = "TYPED-UNVERIFIABLE"
FINDING = "FINDING"

PASS = "PASS"
FAIL = "FAIL"
COND = "CONDITIONAL"
REPORTED = "REPORTED"

ROWS = []
_HARD_FAILS = []
_STATE = {"delta_pinned": False, "c_plate_emitted": False}


def hr(ch="="):
    print(ch * 100)


def stage(n, title):
    print("")
    hr("=")
    print("STAGE %s -- %s" % (n, title))
    hr("=")


def f10(x):
    return "%.10f" % x


def emit(rid, name, kind, status, computed="", required="", closed_form="",
         missing=None, prov="", note=""):
    """Every check prints: name, computed value, required bound, PASS/FAIL/CONDITIONAL."""
    missing = list(missing or [])
    # CLASS/STATUS INVARIANT: a definite verdict (PASS/FAIL) means the row reached a
    # numeral, i.e. class VERIFIED; CONDITIONAL status means class CONDITIONAL; REPORTED
    # status belongs to the TYPED or FINDING classes only. Enforced so the Stage-9
    # three-class table can never disagree with the per-row verdicts.
    if status in (PASS, FAIL):
        assert kind == VERIFIED, "class/status invariant: %s has status %s but class %s" % (rid, status, kind)
    elif status == COND:
        assert kind == CONDITIONAL, "class/status invariant: %s has status %s but class %s" % (rid, status, kind)
    elif status == REPORTED:
        assert kind in (TYPED, FINDING), "class/status invariant: %s has status %s but class %s" % (rid, status, kind)
    rec = dict(id=rid, name=name, kind=kind, status=status, computed=computed,
               required=required, closed_form=closed_form, missing=missing,
               prov=prov, note=note)
    ROWS.append(rec)
    print("")
    print("[%s] %s" % (rid, name))
    print("    class    : %s" % kind)
    if closed_form:
        print("    closed   : %s" % closed_form)
    if computed != "":
        print("    computed : %s" % computed)
    if required != "":
        print("    required : %s" % required)
    print("    status   : %s%s" % (status, ("  (missing: " + ", ".join(missing) + ")") if missing else ""))
    if note:
        for ln in note.split("\n"):
            print("    note     : %s" % ln)
    if prov:
        print("    [PROV]   : %s" % prov)
    return rec


def assert_printed(label, computed, printed, dp=10):
    """Stage-0 regression gate. Any mismatch is a HARD FAIL."""
    got = ("%." + str(dp) + "f") % computed
    ok = (got == printed)
    print("    %-34s computed %-16s corpus %-16s %s" % (label, got, printed, "PASS" if ok else "FAIL"))
    if not ok:
        _HARD_FAILS.append("%s: computed %s != corpus %s" % (label, got, printed))
    return ok


def assert_positive_scale(**kw):
    """R2: never evaluate at delta = 0 or h = 0."""
    for k, v in kw.items():
        if v is not None and v <= 0.0:
            raise AssertionError("ORDER-OF-LIMITS GUARD: %s must be > 0 (got %r); "
                                 "the mandated order is beta -> infinity FIRST at fixed "
                                 "positive scale, THEN the scale -> 0." % (k, v))
    return True


def need(*names):
    """R5: return (ok, missing_names) against the SUPPLIED dict."""
    miss = [n for n in names if SUPPLIED.get(n) is None]
    return (len(miss) == 0, miss)


def solve_upper_root(logf, lo, hi_seed, tol=1e-12, maxit=400):
    """
    R3: UPPER root of logf(beta) = 0 for a function that is eventually decreasing
    (shape: const + p*log(beta) - a*beta). Bracket by doubling from hi_seed until
    logf < 0, then bisect. Returns None if no bracket is found.
    """
    hi = float(hi_seed)
    for _ in range(200):
        if logf(hi) < 0.0:
            break
        hi *= 2.0
    else:
        return None
    a = float(lo)
    if logf(a) < 0.0:
        # already below the target at the seed lower end: walk the lower end down
        # to the interior maximum instead.
        return None
    for _ in range(maxit):
        m = 0.5 * (a + hi)
        if logf(m) >= 0.0:
            a = m
        else:
            hi = m
        if hi - a < tol * max(1.0, hi):
            break
    return 0.5 * (a + hi)


# =====================================================================================
# STAGE 0 -- CELL SCALARS FROM (N, kappa, lambda) ALONE.  REGRESSION GATE.
# =====================================================================================

def g_of(N):
    """[CF1] g(N) := N(1 - cos(2 pi / N))."""
    return N * (1.0 - math.cos(2.0 * math.pi / N))


def m_of(N, k, kappa):
    """m_k := kappa N (1 - cos(2 pi k / N))."""
    return kappa * N * (1.0 - math.cos(2.0 * math.pi * k / N))


def S1_of(N, kappa):
    """S_1 = kappa[2 + (N-2)(1 - cos a_1)], a_1 = pi/(N-2)."""
    return kappa * (2.0 + (N - 2) * (1.0 - math.cos(math.pi / (N - 2))))


def cH_of(m_k, S_k, kappa):
    """c_H := (1/4) min( m_k + 2 kappa - S_k , 4 kappa - S_k )."""
    return 0.25 * min(m_k + 2.0 * kappa - S_k, 4.0 * kappa - S_k)


def adj2_of(N, lam, kappa=1.0):
    """(ADJ-2) m_1 - c_H/2 = g(N)(lambda - 1/8) + (S_k - 2)/8."""
    return g_of(N) * (lam - 0.125) + (S1_of(N, kappa) - 2.0) / 8.0


def stage0():
    stage(0, "CELL SCALARS FROM (N, kappa, lambda) = (10, 1, 1+)  --  REGRESSION GATE")
    print("Closed forms recomputed here; asserted against the corpus's printed values.")
    print("Any mismatch is a HARD FAIL and the pass aborts.")
    print("[PROV] V2:370-373 (round-3 checker block, 10 dp); V2:362-364, V2:369, V2:381-384,")
    print("       V2:394-404; PX:1430/3003/3409 (pre-banner) [CF1]; MM:1378; MM:1370; MM:116/125;")
    print("       PX:7411-7413 (physical) (THR) RHS; LP:156-159 (c_H).")
    print("")

    C = {}
    C["N"] = 10
    C["k"] = 1
    C["kappa"] = 1.0
    C["lambda"] = 1.0          # lambda -> 1 FROM ABOVE; the flagship NAME is the boundary
    C["eps"] = 0.05            # design scale

    N, k, kappa, lam, eps = C["N"], C["k"], C["kappa"], C["lambda"], C["eps"]

    C["g10"] = g_of(N)
    C["m_k"] = m_of(N, k, kappa)
    C["w_k"] = g_of(N)                     # w_k = W*(G_k) = N(1-cos(2 pi k/N)) = g(N) at k=1
    C["m_1_lambda"] = lam * g_of(N)
    C["S_k"] = S1_of(N, kappa)
    C["c_H"] = cH_of(C["m_k"], C["S_k"], kappa)
    C["c_H_half"] = C["c_H"] / 2.0
    C["three_c_H"] = 3.0 * C["c_H"]
    C["Delta_door"] = C["S_k"] + C["c_H"] - C["m_k"]
    C["MRG"] = C["Delta_door"] - C["c_H_half"]
    C["MRG_alt"] = (7.0 / 8.0) * (C["S_k"] - C["m_k"]) + kappa / 4.0
    C["ADJ2_10"] = adj2_of(10, 1.0)
    C["ADJ2_18"] = adj2_of(18, 1.05)
    C["ADJ2_46"] = adj2_of(46, 4.0)
    C["ADJ2_200"] = adj2_of(200, 1.0001)
    C["err_flag"] = eps * C["g10"]
    C["THR_RHS"] = C["S_k"] + C["c_H"] - C["m_k"] - eps * C["w_k"]
    C["D_G_product"] = math.pi * math.sqrt(2.0 * N)
    C["D_G_single"] = math.pi * math.sqrt(float(N))
    C["D_G_maxnorm"] = math.pi
    C["S_k_plus_c_H"] = C["S_k"] + C["c_H"]
    C["eps_cap_L02"] = (2.0 * kappa - C["m_k"]) / C["w_k"]
    C["eps_cap_C06"] = kappa / (4.0 * C["g10"])
    C["A_tube_eps_part"] = C["m_k"] + eps * C["w_k"]

    print("  -- asserted rows (corpus printed value on the right) --")
    assert_printed("g(10)", C["g10"], "1.9098300563")
    assert_printed("m_k  (k=1, kappa=1, N=10)", C["m_k"], "1.9098300563")
    assert_printed("w_k  (= g(N) at k=1)", C["w_k"], "1.9098300563")
    assert_printed("m_1(lambda), lambda -> 1+", C["m_1_lambda"], "1.9098300563")
    assert_printed("S_1 = S_k", C["S_k"], "2.6089637399")
    assert_printed("c_H", C["c_H"], "0.3252165791")
    assert_printed("c_H/2", C["c_H_half"], "0.1626082895")
    assert_printed("3 c_H", C["three_c_H"], "0.9756497373")
    assert_printed("Delta_door = S_k + c_H - m_k", C["Delta_door"], "1.0243502627")
    assert_printed("(MRG)", C["MRG"], "0.8617419732")
    assert_printed("(MRG) via lambda-free identity", C["MRG_alt"], "0.8617419732")
    assert_printed("(ADJ-2) at (10, 1+)", C["ADJ2_10"], "1.7472217667")
    assert_printed("(ADJ-2) at (18, 1.05)", C["ADJ2_18"], "1.0425473031")
    assert_printed("(ADJ-2) at (46, 4)", C["ADJ2_46"], "1.6742434887")
    assert_printed("(ADJ-2) at (200, 1.0001)", C["ADJ2_200"], "0.0894771449")
    assert_printed("flagship err = eps g(10)", C["err_flag"], "0.0954915028")
    assert_printed("(THR) RHS", C["THR_RHS"], "0.9288587599")
    assert_printed("D_G product torus = pi sqrt(2N)  [G6]", C["D_G_product"], "14.0496294621")
    assert_printed("D_G single loop  = pi sqrt(N)   [G6]", C["D_G_single"], "9.9345882658")
    assert_printed("eps cap (2kappa - m_k)/w_k  [L-02]", C["eps_cap_L02"], "0.0472135955")
    assert_printed("eps cap kappa/(4 g(10)) [C-06, 7dp]", C["eps_cap_C06"], "0.1309017", dp=7)

    print("")
    print("  -- derived cell numerals used downstream (not part of the printed gate) --")
    print("    %-42s %s" % ("S_k + c_H", f10(C["S_k_plus_c_H"])))
    print("    %-42s %s" % ("m_k + eps w_k  (A_tube's eps part)", f10(C["A_tube_eps_part"])))
    print("    %-42s %s" % ("m_k + 2 kappa", f10(C["m_k"] + 2.0 * kappa)))
    print("    %-42s %s" % ("S_k + 4 c_H", f10(C["S_k"] + 4.0 * C["c_H"])))
    print("    %-42s %s" % ("D_G max-norm reading (NOT USED) [G6]", f10(C["D_G_maxnorm"])))

    print("")
    if _HARD_FAILS:
        print("  STAGE 0 RESULT: HARD FAIL -- %d mismatch(es):" % len(_HARD_FAILS))
        for m in _HARD_FAILS:
            print("    " + m)
        raise SystemExit("STAGE 0 REGRESSION GATE FAILED -- pass aborted.")
    print("  STAGE 0 RESULT: PASS -- 21 asserted rows, 21 reproduce the corpus's printed")
    print("  values exactly (20 at 10 dp, C-06's cap at the corpus's own 7 dp printing).")
    print("  Authority is this enumeration of 21 named rows; no exhaustiveness is claimed.")
    return C


# =====================================================================================
# STAGE 1 -- SUPPLIED TYPED INPUTS.  FAIL CLOSED.
# =====================================================================================

# Every key is a typed input the corpus declares WITHOUT a landed numeral for the
# flagship cell. NONE is supplied by this pass. Set a value here to make the dependent
# rows evaluate; leave None to keep them CONDITIONAL.
SUPPLIED = {
    # --- the two that gate the most rows ---
    "G":            None,   # G := sup_M |grad E_eps| < infinity   [PROV] V2:160, V2:3317
    "L":            None,   # L = sup ||Hess J||_op                [PROV] MM:132
    # L_eps is DERIVED from L when L is supplied: L_eps <= L + 8 eps  [PROV] V2:161, MM:657
    "L_eps":        None,   # or supply L_eps directly
    # --- geometry / measure ---
    "inj_M":        None,   # inj(T^{2N})                          [PROV] V2:520, V2:3245
    "V_M":          None,   # V_M := Leb(M)                        [PROV] V2:160
    "omega_nm1":    None,   # omega_{n-1}                          [PROV] V2:161
    "c_N_delta":    None,   # c(N,delta), beta-free                [PROV] V2:1613
    "C_n_harnack":  None,   # C(n, .) inside C_H'' = C(n,e^{4G})^8 [PROV] V2:1547
    "c_perp":       None,   # transverse floor                     [PROV] MM:109
    "r0":           None,   # ground-tube radius                   [PROV] MM:106, PX:7405-7406 (physical)
    # --- MM / LP.5(c) constants ---
    "C_1":          None,   # C_1 = 1/2 + L/4 + L^2/24 (DERIVED from L if L supplied) [PROV] MM:131
    "C_Z_tau":      None,   # inside err(delta) := 18 C_Z(tau) delta^2 [PROV] MM:549-550
    "gamma_2":      None,   # relocate-chain cost per pass          [PROV] MM:2382, MM:1256
    "C_w":          None,   # C := C_w + gamma_2                    [PROV] MM:1256-1257
    "C_B":          None,   # LP.5(a) sandwich level constant       [PROV] LP:198-207
    "C_ch":         None,   # symbolic                              [PROV] LP:198-207
    "err_B":        None,   # err_tot := err_A + err_B              [PROV] V2:414-416, V2:2927
    "err_S":        None,   # (ENTRY-MARGIN) CASE 2                 [PROV] V2:3264
    # --- beta-free horizons / prefactors ---
    "T_sig":        None, "T_row": None, "T_1": None, "T_b": None, "T_init": None,
    "T_relax":      None, "T_sub": None, "C_s": None, "K_abs": None,   # [PROV] V2:3244, V2:3289; MM:1139, MM:3026
    # --- LP constants ledger ---
    "c_Z":          None, "C_Z": None, "C_Z_prime": None, "lambda_u": None, "Lambda_s": None,
    "Lambda_min":   None, "C_N": None, "c_1": None, "C_fr": None, "L_fr": None,
    "W_sup":        None, "c_shell": None, "L_E": None, "r_0_prime": None,
    "eps_prime_0":  None, "epsilon_0": None, "epsilon_1": None, "eps_2": None,
    # --- free err-class choices (C-05) ---
    "s":            None, "s_prime": None,
    # --- free scales the pass could pin but does not ---
    "delta":        None,   # the only geometric free scale on the V2 side
    "h_hop":        None,   # MM/LP.5(c) hop-and-relocate scale [G1] -- NOT the potential h
    "theta_2":      None, "tau": None,
}

STAGE1_ORDER = [
    "G", "L", "L_eps", "inj_M", "V_M", "omega_nm1", "c_N_delta", "C_n_harnack", "c_perp", "r0",
    "C_1", "C_Z_tau", "gamma_2", "C_w", "C_B", "C_ch", "err_B", "err_S",
    "T_sig", "T_row", "T_1", "T_b", "T_init", "T_relax", "T_sub", "C_s", "K_abs",
    "c_Z", "C_Z", "C_Z_prime", "lambda_u", "Lambda_s", "Lambda_min", "C_N", "c_1", "C_fr",
    "L_fr", "W_sup", "c_shell", "L_E", "r_0_prime", "eps_prime_0", "epsilon_0", "epsilon_1",
    "eps_2", "s", "s_prime", "delta", "h_hop", "theta_2", "tau",
]


def stage1(C):
    stage(1, "SUPPLIED TYPED INPUTS -- FAIL CLOSED")
    print("Rule R5: no numeral is invented. A stage needing an unsupplied input emits a")
    print("CONDITIONAL row whose closed form is printed with the missing symbols NAMED.")
    print("")

    # DERIVATIONS permitted inside Stage 1 (only from other SUPPLIED values):
    if SUPPLIED.get("L_eps") is None and SUPPLIED.get("L") is not None:
        SUPPLIED["L_eps"] = SUPPLIED["L"] + 8.0 * C["eps"]   # L_eps <= L + 8 eps  [PROV] V2:161
        print("  DERIVED L_eps := L + 8 eps = %s  [PROV] V2:161 (upper bound, taken as the value)" % f10(SUPPLIED["L_eps"]))
    if SUPPLIED.get("C_1") is None and SUPPLIED.get("L") is not None:
        Lv = SUPPLIED["L"]
        SUPPLIED["C_1"] = 0.5 + Lv / 4.0 + Lv * Lv / 24.0     # [PROV] MM:131
        print("  DERIVED C_1 := 1/2 + L/4 + L^2/24 = %s  [PROV] MM:131" % f10(SUPPLIED["C_1"]))

    sup, unsup = [], []
    for kname in STAGE1_ORDER:
        (sup if SUPPLIED.get(kname) is not None else unsup).append(kname)

    print("  SUPPLIED (%d): %s" % (len(sup), (", ".join(sup) if sup else "<none>")))
    print("")
    print("  UNSUPPLIED (%d) -- every dependent row below is CONDITIONAL:" % len(unsup))
    line = "    "
    for i, kname in enumerate(unsup):
        line += "%-14s" % kname
        if (i + 1) % 6 == 0:
            print(line)
            line = "    "
    if line.strip():
        print(line)
    print("")
    print("  GATE COUNT: G and L (hence L_eps) are the two that gate the most rows and")
    print("  neither has a landed numeral anywhere in V2 / MM / LP / PX for the flagship cell.")
    print("  [PROV] V2:160, V2:3317 (G); V2:161, MM:132, MM:657 (L, L_eps)")
    return sup, unsup


# =====================================================================================
# STAGE 2 -- eps-ONLY CAPS  (independent of delta and beta)
# =====================================================================================

def stage2(C):
    stage(2, "eps-ONLY CAPS -- C-07, C-06, L-02, then L-01 / L-03")
    eps = C["eps"]
    print("Design scale under test: eps = %s  [PROV] V2:430-432 ('the design scale eps = 0.05')" % f10(eps))
    print("This stage does NOT choose a different eps. A violated cap is a REPORTED FINDING")
    print("for the lead, with dispositions listed; the disposition is a lead decision.")

    caps = []

    # ---- C-07 ----
    cap = 0.125
    ok = eps < cap
    caps.append(("C-07", "eps < 1/8", cap, ok))
    emit("C-07", "(SML') operative eps anchor B: eps < 1/8",
         VERIFIED, PASS if ok else FAIL,
         computed="eps = %s" % f10(eps),
         required="eps < %s" % f10(cap),
         closed_form="eps < 1/8",
         prov="V2:433 ('the simpler eps < 1/8 condition below both')")

    # ---- C-06 ----
    cap = C["eps_cap_C06"]
    ok = eps < cap
    caps.append(("C-06", "eps < kappa/(4 g(10))", cap, ok))
    emit("C-06", "(SML') operative eps anchor A: eps < kappa/(4 g(10))",
         VERIFIED, PASS if ok else FAIL,
         computed="eps = %s ; cap = kappa/(4 g(10)) = %s" % (f10(eps), f10(cap)),
         required="eps < %s  (corpus prints 0.1309017)" % f10(cap),
         closed_form="eps < kappa / (4 g(10))",
         prov="V2:429-431 ('1/(4 g(10)) = 0.130901699... at kappa = 1; the inherited "
              "0.130906 is a stale transcription and is not carried')")

    # ---- L-02 : the sharpest cross-lane cap ----
    cap = C["eps_cap_L02"]
    ok = eps < cap
    caps.append(("L-02", "eps < (2 kappa - m_k)/w_k", cap, ok))
    m2p_lhs = 2.0 * C["kappa"]
    m2p_rhs = C["m_k"] + eps * C["w_k"]
    emit("L-02", "M2P third entry (epsilon_0 cap): eps < epsilon_0 <= (2 kappa - m_k)/w_k",
         VERIFIED, PASS if ok else FAIL,
         computed="eps = %s ; cap = (2 kappa - m_k)/w_k = (2 - %s)/%s = %s"
                  % (f10(eps), f10(C["m_k"]), f10(C["w_k"]), f10(cap)),
         required="eps < %s" % f10(cap),
         closed_form="eps < epsilon_0 <= (2 kappa - m_k) / w_k",
         prov="LP:431-433",
         note=("VIOLATED by %s at the design eps.\n" % f10(eps - cap)) +
              ("The substance: M2P's supporting inequality 2 kappa > m_k + eps w_k reads\n"
               "2 kappa = %s  vs  m_k + eps w_k = %s  --  the inequality is FALSE at\n"
               "(N, kappa, eps) = (10, 1, 0.05) by %s." % (f10(m2p_lhs), f10(m2p_rhs), f10(m2p_rhs - m2p_lhs))))

    # ---- L-01 / L-03 ----
    ok, miss = need("eps_2")
    emit("L-01", "eps < eps_2, q in D_k(eps)  (the ONE smallness threshold cited by LP.3/LP.4/LP.5)",
         CONDITIONAL, COND,
         closed_form="eps < eps_2",
         missing=miss,
         prov="LP:218-219, LP:211-212")
    miss3 = need("epsilon_1", "eps_prime_0", "C_Z", "c_shell", "lambda_u",
                 "r_0_prime", "W_sup", "C_B", "C_ch", "c_Z", "epsilon_0")[1] + [
        "C_inv", "c_cone", "K_M", "C*", "A_x"]
    emit("L-03", "eps_2 ledger, entry list (a MIN over the named entries, epsilon_0 among them)",
         CONDITIONAL, COND,
         closed_form=("eps_2 := min( epsilon_1(eps'_0), sqrt(eps'_0/C_inv), c_shell/(4 sqrt(2N)), "
                      "c_cone r_0'^2/(2 W_sup), (S_k - 2 kappa - eps'_0)/(2 W_sup), "
                      "[phi-desc] least entry with eps S_k/kappa + C_B eps^2 <= c_H AND C_ch eps^2 <= c_H, "
                      "the corridor entries (C* + 8)(K_M + 1) r(C_inv eps^2) <= r_0' and "
                      "(C* + 8)(K_M + 1) A_x eps <= r_0', epsilon_0 )"),
         missing=miss3,
         prov="LP:185-212",
         note=("eps_2 is a MIN that INCLUDES epsilon_0, so L-02's cap is inherited by eps_2:\n"
               "eps_2 <= epsilon_0 <= %s. C-06 and C-07 are LOOSER and do NOT subsume it."
               % f10(C["eps_cap_L02"])))
    emit("L-04", "eps'_0 ledger: eps'_0 < S_k - 2 kappa ; eps'_0 <= 2 C_Z r_0'^2 ; eps'_0 <= c_cone r_0'^2/4",
         CONDITIONAL, COND,
         computed="landed leg computable: S_k - 2 kappa = %s (so eps'_0 < %s)"
                  % (f10(C["S_k"] - 2.0 * C["kappa"]), f10(C["S_k"] - 2.0 * C["kappa"])),
         closed_form="eps'_0 < S_k - 2 kappa ; eps'_0 <= 2 C_Z r_0'^2 ; eps'_0 <= c_cone r_0'^2 / 4",
         missing=need("C_Z", "r_0_prime", "lambda_u")[1],
         prov="LP:183-184")

    # ---- binding cap over the LANDED-numeral caps ----
    landed = [(rid, nm, cp, okk) for (rid, nm, cp, okk) in caps]
    binding = min(landed, key=lambda t: t[2])
    print("")
    hr("-")
    print("STAGE 2 BINDING eps CAP (argmin over the caps with landed numerals: C-07, C-06, L-02)")
    for rid, nm, cp, okk in sorted(landed, key=lambda t: t[2]):
        print("    %-6s %-32s cap = %-14s  design eps = %s  ->  %s"
              % (rid, nm, f10(cp), f10(eps), "PASS" if okk else "FAIL"))
    print("    ARGMIN  : %s  at cap = %s" % (binding[0], f10(binding[2])))
    print("    VERDICT : design eps = %s does NOT satisfy the binding cap." % f10(eps))
    print("    (L-01 / L-03's eps_2 is a MIN that includes epsilon_0, hence cannot loosen it.)")
    hr("-")

    print("")
    print("FINDING F-1 (REPORTED TO THE LEAD, NOT ADJUDICATED HERE)")
    print("  L-02's cap 0.0472135955 is violated by the design scale eps = 0.05.")
    print("  N = 10 is the WORST cell for this cap: g(N) decreases in N, so 2 kappa - m_k")
    print("  grows and the cap loosens with N. Recomputed here at the sampled cells:")
    for Nv in (10, 18, 46, 200):
        cp = (2.0 * 1.0 - g_of(Nv)) / g_of(Nv)
        print("      N = %-4d cap = (2 kappa - m_k)/w_k = %s   design eps = 0.05 -> %s"
              % (Nv, f10(cp), "PASS" if 0.05 < cp else "FAIL"))
    print("  CANDIDATE DISPOSITIONS (the choice is the lead's):")
    print("    D1  Retune the design eps below 0.0472135955 and re-run every eps-bearing row")
    print("        (err = eps w_k, err_A, c_plate, (THR) RHS, A_tube, (SML')). Cheap arithmetic,")
    print("        but 'eps = 0.05' is a NAMED numeral in landed displays [V2:369, V2:430-432,")
    print("        PX:7412 (physical)], so it is a corpus-wide renumbering, not a local edit.")
    print("    D2  Move the flagship cell off N = 10. The L-02 cap loosens with N, but (MRG) is")
    print("        'LAMBDA-FREE AND INCREASING IN N, so N = 10 is the worst TRAP_2 cell'")
    print("        [V2:381-384] -- moving N trades one worst-cell for another and requires")
    print("        re-reading which cell is worst for which leg.")
    print("    D3  Consumer walk: establish whether M2P's third entry is actually instantiated")
    print("        at the flagship by the LP.5(c) / A6 consumer. LP:431-433 types epsilon_0 as")
    print("        the support for 'points outside have E_eps >= 2 kappa > m_k + eps w_k'. If no")
    print("        consumer instantiates M2P at N = 10 the cap may be out of scope here -- but")
    print("        that is a walk to be performed, not an assertion to be made.")
    print("    D4  Carry it as a TYPED row in the register, which is the corpus's own existing")
    print("        device for exactly this situation (cf. T-3 / T-6's 'NOT VERIFIED against the")
    print("        lane's standing delta' [V2:3245, V2:3248]).")
    print("  NOTE: this pass does NOT silently substitute a compliant eps. Every downstream")
    print("  row below is evaluated at the design eps = 0.05 as specified.")

    return caps, binding


# =====================================================================================
# STAGE 3 -- delta ROWS AS CLOSED-FORM CAPS IN L_eps
# =====================================================================================

def stage3(C):
    stage(3, "delta ROWS -- CLOSED-FORM CAPS IN L_eps (delta NOT pinned; L_eps unsupplied)")
    print("Rule R2: this pass never evaluates at delta = 0. delta is left as a free positive")
    print("scale and every cap is printed in the single quantity")
    print("      Q := L_eps N delta^2 / 4   (= 2.5 L_eps delta^2 at N = 10),")
    print("which is the form in which C-03, C-08, C-09, C-11 and C-12 all reduce.")
    _STATE["delta_pinned"] = True   # 'pinned' in the sense of R1: fixed positive, symbolic

    eps, N = C["eps"], C["N"]
    THR = C["THR_RHS"]

    cap_cplate = THR / 2.0
    cap_thr = THR
    cap_c11 = C["three_c_H"]
    cap_hsep = THR / 2.0

    miss = need("L_eps")[1]

    def deltacap(Q):
        """delta cap implied by Q < cap, as a coefficient on 1/sqrt(L_eps)."""
        return math.sqrt(4.0 * Q / N)

    emit("C-08", "c_plate > 0  [T-6]",
         CONDITIONAL, COND,
         closed_form=("c_plate := (S_k + c_H - m_k) - err_A,  err_A := c_0 + eps w_k + L_eps N delta^2/4 ; "
                      "c_plate = %s - L_eps N delta^2/2 = %s - 2Q" % (f10(THR), f10(THR))),
         computed="c_plate > 0  <=>  Q < %s  <=>  delta < %s / sqrt(L_eps)"
                  % (f10(cap_cplate), f10(deltacap(cap_cplate))),
         required="Q < %s" % f10(cap_cplate),
         missing=miss,
         prov="V2:3248 (S7.1 T-6); warrant V2:2600-2602",
         note="Self-typed in the corpus: 'NOT instantiated against a standing numerical delta either.'")
    _STATE["c_plate_emitted"] = True   # R1 gate opens only now

    emit("C-03", "(H-SEP), N-corrected form  [T-4]",
         CONDITIONAL, COND,
         closed_form="delta^2 < 2(S_k + c_H - m_k - eps w_k)/(N L_eps)",
         computed="<=>  Q < %s  <=>  delta < %s / sqrt(L_eps)"
                  % (f10(cap_hsep), f10(deltacap(cap_hsep))),
         required="Q < %s" % f10(cap_hsep),
         missing=miss,
         prov="V2:3246 (S7.1 T-4)",
         note=("OBSERVATION (computed here, not claimed by the corpus): C-03's cap and C-08's cap\n"
               "are the SAME number, %s. The two rows TIE for binding. The inventory's\n"
               "tension (b) compares C-08 / C-09 / C-11 only and names C-08 binding; adding C-03\n"
               "makes it a TIE, not a change of binder. Both legs are carried; neither is dropped."
               % f10(cap_cplate)))

    emit("C-09", "(THR), AM-R5-15's home",
         CONDITIONAL, COND,
         closed_form="L_eps N delta^2/4  <  S_k + c_H - m_k - eps w_k",
         computed="<=>  Q < %s  <=>  delta < %s / sqrt(L_eps)"
                  % (f10(cap_thr), f10(deltacap(cap_thr))),
         required="Q < %s" % f10(cap_thr),
         missing=miss,
         prov="PX:7411 physical (= PX:7407 pre-banner); AM-R5-15 at PX:9239 physical")

    emit("C-11", "3 c_H - 2 eta > 0  [T-27; beta_1^weak's existence]",
         CONDITIONAL, COND,
         closed_form="L_eps N delta^2/4 < 3 c_H",
         computed="<=>  Q < %s  <=>  delta < %s / sqrt(L_eps)"
                  % (f10(cap_c11), f10(deltacap(cap_c11))),
         required="Q < %s" % f10(cap_c11),
         missing=miss,
         prov="V2:3290 (T-27), V2:1832, V2:2395",
         note="This is the positivity that makes beta_1^weak EXIST and be beta-free (V2:177-180).")

    emit("C-12", "(MARGIN-GEN): c_0 - eta = L_eps N delta^2/8 > 0",
         VERIFIED, PASS,
         closed_form="c_0 - eta = L_eps N delta^2 / 8 = Q/2",
         computed="Q/2 > 0 for every L_eps > 0 and every delta > 0",
         required="Q/2 > 0",
         prov="V2:277, V2:1716",
         note="Structural: no numeral needed. It FAILS only at delta = 0, which R2 forbids.")

    emit("C-13", "(NEARS-ERR) [T-17], CASE-2 ONLY: (ENTRY-MARGIN) reads c_0 - eta - err_S > 0",
         CONDITIONAL, COND,
         closed_form="c_0 - eta - err_S > 0, i.e. L_eps N delta^2/8 > err_S, i.e. Q/2 > err_S",
         computed=("the LHS reduces to Q/2 by C-12; the row is a comparison of TWO err-class "
                   "quantities, so no landed numeral decides it"),
         required="Q/2 > err_S",
         missing=need("err_S", "L_eps", "delta")[1],
         prov="V2:3264 (T-17)",
         note=("err_S is the loss from replacing S by S' := B_{delta/8}(g*). The corpus's landed licence\n"
               "is qualitative: 'sup_S E_eps and sup_{S'} E_eps differ by O(delta^2) inside the same err\n"
               "class. No exponent moves.' -- an err-class statement, NOT a numerically instantiated\n"
               "margin. SCOPE: CASE 2 only, and per B-09 the halved-plate branch is the NONCONSUMED\n"
               "near-S branch, so this row conditions no consumed display in the flagship instantiation."))

    emit("C-20", "delta < pi (label well-definedness on S^+)",
         CONDITIONAL, COND,
         closed_form="delta < pi",
         computed="cap = %s (LANDED numeral; delta itself is not pinned by this pass)" % f10(math.pi),
         required="delta < %s" % f10(math.pi),
         missing=["delta"],
         prov="PX:7399 physical",
         note=("The CAP is landed and needs nothing supplied; only the comparison awaits a pinned\n"
               "delta. It is the LOOSEST delta cap in the inventory by a wide margin -- the binding\n"
               "cap is C-08 / C-03's."))

    emit("C-21", "delta/2 <= r0  (UP-QUAD applicability on the GROUND tube U = T_{r0}(G_k))",
         CONDITIONAL, COND,
         closed_form="delta/2 <= r0",
         missing=need("r0", "delta")[1],
         prov="PX:7405-7406 physical",
         note="r0 additionally carries L-11's r0 <= inj(M)/4, so this row chains to inj(M).")

    # (SML') -- two RHS vintages
    smlp_rhs_printed = C["ADJ2_200"]
    smlp_rhs_flagship = C["MRG"]
    epswk = eps * C["w_k"]
    emit("C-05", "(SML')  [T-5]: eps w_k + O(N L_eps delta^2) + s + s' < RHS",
         CONDITIONAL, COND,
         closed_form="eps w_k + O(N L_eps delta^2) + s + s' < RHS",
         computed=("eps w_k = %s ; the O(.) constant is NOT displayed, so the delta part is not evaluable"
                   % f10(epswk)),
         required=("RHS(flagship reading) = (MRG) = %s  ->  slack for O(N L_eps delta^2) + s + s' is %s ; "
                   "RHS(as printed) = %s"
                   % (f10(smlp_rhs_flagship), f10(smlp_rhs_flagship - epswk), f10(smlp_rhs_printed))),
         missing=["<the O(N L_eps delta^2) constant>", "L_eps", "delta", "s", "s'"],
         prov="V2:425 (display), V2:426-427 (flagship reading), V2:3247 (T-5)",
         note=("OBSERVATION (computed here): the constant PRINTED in the display, %s, is the\n"
               "(ADJ-2) value at the WORST SAMPLED CELL (200, 1.0001) [V2:394-404], not the\n"
               "flagship RHS. V2:426-427 states the flagship reading explicitly: 'at the flagship\n"
               "cell the same condition clears against 0.861742 with room'. Read at the flagship\n"
               "the row PASSES with slack %s before the err terms. Read with the flagship\n"
               "eps w_k = %s against the PRINTED %s it would FAIL by %s -- but that mixes the\n"
               "flagship's eps w_k with another cell's RHS, which is a category error, not a\n"
               "corpus defect: at (200, 1.0001) the same row reads eps w_k = eps g(200) = %s.\n"
               "The pass therefore evaluates (SML') at the FLAGSHIP RHS and flags the vintage."
               % (f10(smlp_rhs_printed), f10(smlp_rhs_flagship - epswk), f10(epswk),
                  f10(smlp_rhs_printed), f10(epswk - smlp_rhs_printed), f10(eps * g_of(200)))))

    emit("C-01", "(T4) H-INJ  [T-3]: delta/2 + 4/beta < inj(T^{2N})",
         CONDITIONAL, COND,
         closed_form=("delta/2 + 4/beta < inj(T^{2N})  [full]  ;  delta/2 + 1/beta < inj  [reduced, "
                      "post half-radius-disc repair]"),
         computed=("under the UNIT-LATTICE reading inj = 1/2 the two forms give delta < 1 - 8/beta and "
                   "delta < 1 - 2/beta respectively (T-3's parenthetical 'delta <= 2/5 suffices')"),
         missing=need("inj_M", "delta")[1] + ["beta", "<declared torus normalization> [G9]"],
         prov="V2:3245 (S7.1 T-3); V2:508, V2:519-520 (C-02's beta-free reading)",
         note=("[G9] NORMALIZATION FLAG: T-3's inj = 1/2 is the UNIT-LATTICE reading, while the\n"
               "standing bond coordinates carry |e_i| = pi on Delta_phi [PX:7399 physical] and\n"
               "'SP_k's max bond is pi - a_k < pi' [LP:179]. The two normalizations are not the\n"
               "same and the inj numeral is not transportable between them. This pass declares NO\n"
               "normalization and leaves the row CONDITIONAL. The corpus row is itself marked\n"
               "'NOT VERIFIED against the lane's standing delta'."))

    emit("C-22", "(GATE-LOWER) consumed NON-STRICT chain: m_k + 2 lambda >= m_k + 2 kappa >= S_k + 4 c_H",
         VERIFIED, PASS,
         closed_form="m_k + 2 lambda >= m_k + 2 kappa >= S_k + 4 c_H",
         computed=("m_k + 2 kappa = %s ; S_k + 4 c_H = %s ; difference = %.3e"
                   % (f10(C["m_k"] + 2.0), f10(C["S_k"] + 4.0 * C["c_H"]),
                      (C["m_k"] + 2.0) - (C["S_k"] + 4.0 * C["c_H"]))),
         required="the NON-STRICT chain only",
         prov="V2:1279, V2:3299",
         note=("Confirms the corpus's own row 'The STRICT middle clause is NOT CONSUMED: it FAILS\n"
               "at the flagship'. The second inequality holds with EXACT EQUALITY because the\n"
               "active c_H branch is (m_k + 2 kappa - S_k)/4, so S_k + 4 c_H = m_k + 2 kappa\n"
               "identically. Strictness is unavailable; the non-strict chain is what is consumed.\n"
               "(This row reads no free scale; it is checked here because Stage 0 is a regression\n"
               "gate, not a condition stage.)"))

    # binding delta cap
    print("")
    hr("-")
    print("STAGE 3 BINDING delta CAP (argmin over the caps expressible in Q := L_eps N delta^2/4)")
    tbl = [("C-08", "c_plate > 0", cap_cplate),
           ("C-03", "(H-SEP)", cap_hsep),
           ("C-09", "(THR)", cap_thr),
           ("C-11", "3 c_H - 2 eta > 0", cap_c11)]
    for rid, nm, cp in sorted(tbl, key=lambda t: t[2]):
        print("    %-6s %-22s Q < %-14s  <=>  delta < %s / sqrt(L_eps)"
              % (rid, nm, f10(cp), f10(deltacap(cp))))
    print("    ARGMIN  : C-08 (c_plate > 0) at Q < %s, TIED by C-03 (H-SEP) at the same number."
          % f10(cap_cplate))
    print("    Per the inventory's tension (b) the BINDING delta cap is c_plate's; this pass")
    print("    confirms that and records the C-03 tie. C-09 and C-11 are strictly looser")
    print("    (by factors %s and %s on Q respectively)."
          % ("%.6f" % (cap_thr / cap_cplate), "%.6f" % (cap_c11 / cap_cplate)))
    print("    No leg is dropped (R4): the standing delta must satisfy the MAX of the rows,")
    print("    i.e. the MIN of the caps.")
    hr("-")
    return dict(cap_cplate=cap_cplate, cap_hsep=cap_hsep, cap_thr=cap_thr, cap_c11=cap_c11,
                deltacap=deltacap)


# =====================================================================================
# STAGE 4 -- DERIVED beta-FREE SCALARS AT THE CHOSEN (eps, delta)
# =====================================================================================

def stage4(C):
    stage(4, "DERIVED beta-FREE SCALARS AT (eps, delta) -- R1 ORDER: c_0/eta/err_A -> c_plate -> beta")
    assert _STATE["delta_pinned"], "R1 violated: delta must be pinned before Stage 4."
    eps, N = C["eps"], C["N"]
    miss = need("L_eps")[1]

    emit("S4-c_0", "(C0) c_0 := L_eps N delta^2 / 4",
         CONDITIONAL, COND,
         closed_form="c_0 = L_eps N delta^2 / 4 = 2.5 L_eps delta^2  (N = 10) = Q",
         missing=miss + ["delta"], prov="V2:271")
    emit("S4-eta", "(ETA) eta := L_eps N delta^2 / 8  (frozen at err class, NEVER sent to 0)",
         CONDITIONAL, COND,
         closed_form="eta = 1.25 L_eps delta^2 = Q/2 ; eta_den = eta_lev = eta ; eta_den + eta_lev = Q",
         missing=miss + ["delta"], prov="V2:264-267, V2:2385-2386")
    emit("S4-err_A", "err_A := c_0 + eps w_k + L_eps N delta^2/4   [G7 reading (ii)]",
         CONDITIONAL, COND,
         closed_form="err_A = %s + 5 L_eps delta^2 = %s + 2Q" % (f10(eps * C["w_k"]), f10(eps * C["w_k"])),
         computed="eps w_k part is landed: %s" % f10(eps * C["w_k"]),
         missing=miss + ["delta"], prov="V2:3248",
         note=("[G7] FLAGGED, NOT MERGED: the corpus also uses err_A as 'the TRAP_2 leg's loss' in the\n"
               "two-leg identity err_tot := err_A + err_B [V2:414-416], where NO closed form is given.\n"
               "Reading (i) has no closed form, so this instantiation CANNOT confirm the identification\n"
               "of the two readings. Both are carried; err_B is a Stage-1 unsupplied input."))
    emit("S4-c_plate", "c_plate := (S_k + c_H - m_k) - err_A",
         CONDITIONAL, COND,
         closed_form="c_plate = %s - 2Q  (beta-free)" % f10(C["THR_RHS"]),
         computed="landed part %s ; positive iff Q < %s (C-08)" % (f10(C["THR_RHS"]), f10(C["THR_RHS"] / 2.0)),
         missing=miss + ["delta"], prov="V2:3248")
    emit("S4-A_tube", "A_tube (OPERATIVE vintage)  [G4]",
         CONDITIONAL, COND,
         closed_form="A_tube = m_k + eps w_k + L_eps N delta^2/4 = %s + Q  (TUBE-LEVEL')"
                     % f10(C["A_tube_eps_part"]),
         computed="landed part m_k + eps w_k = %s" % f10(C["A_tube_eps_part"]),
         missing=miss + ["delta"],
         prov="PX:9785 pre-banner = PX:9789 physical (TUBE-LEVEL'); carried at V2:162",
         note=("[G4] The SUPERSEDED PE-DOORREACH vintage A_tube := m_k + eps w_k + (25/128) L_eps delta^2\n"
               "[PX:8365 pre-banner = PX:8369 physical] is NOT used. beta_*^{DR} reads the OPERATIVE\n"
               "vintage only [V2:162, V2:3376]. Verified by read: physical 9789 carries\n"
               "'= m_k + eps w_k + L_eps N delta^2 / 4 =: A_tube. (TUBE-LEVEL')' and physical 8369\n"
               "carries the (25/128) scale choice."))
    emit("S4-gap_DR", "S_k + c_H - A_tube  (read by beta_*^{DR})",
         CONDITIONAL, COND,
         closed_form="S_k + c_H - A_tube = %s - Q" % f10(C["THR_RHS"]),
         computed="landed part %s ; note this is c_plate + Q, i.e. LARGER than c_plate for Q > 0"
                  % f10(C["THR_RHS"]),
         missing=miss + ["delta"], prov="V2:3364, V2:162")

    for rid, nm, cf, mnames, prov in [
        ("S4-C_H''", "C_H'' := C(n, e^{4G})^8, BETA-FREE (chained, LIVE)  [G5]",
         "C_H'' = C(n, e^{4G})^8", ("C_n_harnack", "G"), "V2:1547, V2:1556, V2:3289"),
        ("S4-C_3", "C_3 := C_H'' * C_up' / c(N,delta),  C_up' = e G^2 V_M  (companion leg, factor e)  [G2]",
         "C_3 = C_H'' * e * G^2 * V_M / c(N,delta)", ("C_n_harnack", "G", "V_M", "c_N_delta"), "V2:1685-1686"),
        ("S4-C_3main", "C_3^main := C_H'' e^2 G^2 V_M / c(N,delta)  (main leg, factor e^2)  [G2]",
         "C_3^main = C_H'' * e^2 * G^2 * V_M / c(N,delta)", ("C_n_harnack", "G", "V_M", "c_N_delta"),
         "V2:1697, V2:3303"),
        ("S4-C_4", "C_4 := 2 C_H'' e^{5G} V_M / c(N,delta), beta-free",
         "C_4 = 2 C_H'' e^{5G} V_M / c(N,delta)", ("C_n_harnack", "G", "V_M", "c_N_delta"), "V2:2285"),
        ("S4-C_5", "C_5 -- not displayed in closed form; carries the Sard factor e",
         "<no closed form displayed>", ("C_s",), "V2:3298"),
        ("S4-T_row", "T_row = (C_5 + C_s C_4) K_abs, beta-free",
         "T_row = (C_5 + C_s C_4) K_abs", ("C_s", "K_abs"), "V2:3289; LP:226"),
    ]:
        ok, m = need(*mnames)
        extra = []
        if rid == "S4-C_3":
            extra = ["[G2] carries factor e -- NEVER substitute C_3^main's e^2 here."]
        if rid == "S4-C_3main":
            extra = ["[G2] carries factor e^2 -- NEVER substitute C_3's e here.",
                     "[G5] runs on C_H'' (chained, LIVE), NOT C_H' (single application, SUPERSEDED)."]
        if rid == "S4-C_5":
            extra = ["No closed form is displayed in the corpus, so this row is CONDITIONAL on the FORM",
                     "as well as on the numerals."]
        emit(rid, nm, CONDITIONAL, COND, closed_form=cf, missing=m, prov=prov,
             note="\n".join(extra))
    return None


# =====================================================================================
# STAGE 5 -- CLOSED-FORM beta THRESHOLDS
# =====================================================================================

def stage5(C):
    stage(5, "CLOSED-FORM beta THRESHOLDS (S7.2 ledger). R1: c_plate row already emitted.")
    assert _STATE["c_plate_emitted"], "R1 violated: no beta threshold before c_plate."
    print("Ledger header, verbatim: 'One list. Every entry is beta-free.'")
    print("Register row T-7, verbatim: 'Nothing is claimed below the collected threshold.'")
    print("R4: NO domination is assumed. Every leg is carried in the max.")
    print("")
    print("PARTIAL REDUCTION available from Stage 0's landed 3 c_H = %s:" % f10(C["three_c_H"]))
    k1 = 24.0 / C["three_c_H"]
    k2 = 5.0 / C["three_c_H"]
    k3 = 2.0 / C["three_c_H"]
    print("    24 / (3 c_H)      = %s   ->  beta_*'s (G4) gradient leg is %s * G" % (f10(k1), f10(k1)))
    print("    5  / (3 c_H)      = %s ,  2 / (3 c_H) = %s" % (f10(k2), f10(k3)))
    print("    beta_* = max( 16/delta , %s G , 1 + %s G + %s )" % (f10(k1), f10(k2), f10(k3)))

    mG = need("G")[1]
    mD = need("delta")[1]
    mLD = need("L_eps", "delta")[1]

    emit("B-01", "beta >= beta_plate := 2 / c_plate   (PLATE-SEP)",
         CONDITIONAL, COND,
         closed_form="beta_plate = 2 / c_plate = 2 / (%s - 2Q)" % f10(C["THR_RHS"]),
         missing=mLD, prov="V2:3313")
    emit("B-02", "beta >= 8 / delta   (v4c);  2rho <= delta/4 with rho := 1/beta",
         CONDITIONAL, COND, closed_form="beta >= 8 / delta", missing=mD, prov="V2:3314")
    emit("B-03", "beta >= beta_S4 := max( 2/c_plate , 8/delta )",
         CONDITIONAL, COND,
         closed_form="beta_S4 = max( 2/c_plate , 8/delta )", missing=mLD, prov="V2:3315-3316",
         note="ARITHMETIC OBSERVATION (leg still carried): beta_S4 >= beta_plate by construction.")
    emit("B-04", "beta >= beta_env := max( 4G/c_0 , 2/c_0 ),  G := sup_M |grad E_eps| < infinity",
         CONDITIONAL, COND,
         closed_form="beta_env = (2/c_0) * max(2G, 1) = (2/Q) * max(2G, 1) = 8 max(2G,1) / (L_eps N delta^2)",
         missing=need("G", "L_eps", "delta")[1], prov="V2:3317-3319",
         note=("This is a delta^{-2} beta FLOOR. It is consistent ONLY under the mandated order\n"
               "beta -> infinity FIRST at fixed delta, then delta -> 0 [MM:3025-3039]. Structurally\n"
               "the same shape as MM's diffusive floor beta_0(h) = 16/h^2 (L-07)."))
    emit("B-06", "beta >= beta_door := 8G / c_plate   (the (DOOR-CASE1) separation threshold)",
         CONDITIONAL, COND,
         closed_form="beta_door = 8G / (%s - 2Q)" % f10(C["THR_RHS"]),
         missing=need("G", "L_eps", "delta")[1], prov="V2:3335-3343",
         note=("'COLLECTED, NOT INFERRED: no other leg is claimed to dominate it' [XE-8 F1 residual 1].\n"
               "Arithmetic: beta_door >= beta_plate iff G >= 1/4 -- CONDITIONAL on G, so not asserted."))
    emit("B-10", "beta >= beta_* := max( 16/delta , 24G/(3 c_H) , 1 + (5G+2)/(3 c_H) )   [G3]",
         CONDITIONAL, COND,
         closed_form="beta_* = max( 16/delta , %s G , 1 + %s G + %s )" % (f10(k1), f10(k2), f10(k3)),
         computed="the two 3 c_H legs are reduced to landed coefficients above; only G and delta are missing",
         missing=need("G", "delta")[1], prov="V2:3363, V2:3365-3375, V2:199",
         note="[G3] beta_* and beta_*^{DR} are DISTINCT symbols, split by naming per (BETA-STAR) S0.5.")
    emit("B-11", "beta >= beta_*^{DR} := max( 8/delta , (2+G)/(S_k + c_H - A_tube) )   [G3][G4]",
         CONDITIONAL, COND,
         closed_form="beta_*^{DR} = max( 8/delta , (2+G)/(%s - Q) )" % f10(C["THR_RHS"]),
         missing=need("G", "L_eps", "delta")[1], prov="V2:3364, V2:3376-3380",
         note=("[G4] reads the OPERATIVE DOORREACH-MAXFIX A_tube [PX:9814 pre-banner = PX:9818-9819\n"
               "physical]. The form 2/(S_k + c_H - A_tube) [PX:8367 pre-banner] is the SUPERSEDED\n"
               "predecessor and is NOT a ledger line."))
    emit("B-13", "beta >= 4/delta   ((MARG) sub-condition rho <= delta/4) -- DOMINATED",
         VERIFIED, PASS,
         closed_form="4/delta",
         computed="16/delta >= 4/delta for every delta > 0, so beta_*'s 16/delta leg dominates it",
         required="dominated by B-10's 16/delta leg",
         prov="V2:3389-3391",
         note=("The ONLY domination the ledger itself asserts, and it is arithmetically confirmed here.\n"
               "'therefore NOT a separate standing hypothesis'. Recorded, not dropped."))
    emit("B-12", "beta >= max( beta_S4 , beta_* )   ((MAIN-V2ID) standing threshold)",
         CONDITIONAL, COND,
         closed_form="max( beta_S4 , beta_* )",
         missing=need("G", "L_eps", "delta")[1], prov="V2:3381-3388",
         note="'NO DOMINATION beta_S4 >= beta_* is proved' [XE-8 F1 residual 4]. The max is carried.")
    emit("B-14", "conservative single reading: max( beta_* , beta_*^{DR} )",
         CONDITIONAL, COND,
         closed_form="max( beta_* , beta_*^{DR} )",
         missing=need("G", "L_eps", "delta")[1], prov="V2:249-252, V2:3394",
         note=("'A row wanting one number may read max(beta_*, beta_*^{DR})', 'conservative at every\n"
               "site'. Enlarging a threshold moves no exponent and no prefactor."))
    return dict(k1=k1, k2=k2, k3=k3)


# =====================================================================================
# STAGE 6 -- IMPLICIT beta THRESHOLDS BY NUMERICAL ROOT-FINDING
# =====================================================================================

def beta1weak_logf(beta, C3main, G, three_cH, eta):
    """log( C_3^main e^{6G} beta^{2N+1} exp(-beta(3 c_H - 2 eta)) ) - log(1/2), N = 10."""
    p = 2 * 10 + 1
    a = three_cH - 2.0 * eta
    return math.log(C3main) + 6.0 * G + p * math.log(beta) - a * beta - math.log(0.5)


def stage6(C):
    stage(6, "IMPLICIT beta THRESHOLDS BY NUMERICAL ROOT-FINDING (R3: UPPER root)")
    print("Each of beta_1^hist, beta_1^weak, beta_2 is defined as 'the beta-free value at or")
    print("above which <a beta-bearing expression> <= 1/2'. beta appears on BOTH sides of the")
    print("defining relation, so each must be SOLVED, never read off.")

    # -- beta_1^weak --
    ok, miss = need("C_n_harnack", "G", "V_M", "c_N_delta", "L_eps", "delta")
    if ok:
        G = SUPPLIED["G"]
        C_H_dd = SUPPLIED["C_n_harnack"] ** 8            # C_H'' = C(n, e^{4G})^8   [G5]
        C3main = C_H_dd * math.exp(2.0) * G * G * SUPPLIED["V_M"] / SUPPLIED["c_N_delta"]  # [G2] e^2
        Q = SUPPLIED["L_eps"] * C["N"] * SUPPLIED["delta"] ** 2 / 4.0
        eta = Q / 2.0
        a = C["three_c_H"] - 2.0 * eta
        if a <= 0.0:
            emit("B-05a", "beta_1^weak (IMPLICIT)", CONDITIONAL, FAIL,
                 computed="3 c_H - 2 eta = %s <= 0 -- C-11 violated, the threshold does NOT exist" % f10(a),
                 required="3 c_H - 2 eta > 0 (C-11)", prov="V2:3325-3333, V2:173-180")
        else:
            seed = (2 * C["N"] + 1) / a
            root = solve_upper_root(lambda b: beta1weak_logf(b, C3main, G, C["three_c_H"], eta),
                                    lo=seed, hi_seed=max(2.0 * seed, 10.0))
            emit("B-05a", "beta_1^weak (IMPLICIT, solved as the UPPER root)",
                 VERIFIED, PASS if root else FAIL,
                 closed_form="C_3^main e^{6G} beta^{2N+1} exp(-beta(3 c_H - 2 eta)) <= 1/2",
                 computed="beta_1^weak = %s (upper root)" % (f10(root) if root else "<no bracket>"),
                 required="the least beta-free value above which the left side is <= 1/2",
                 prov="V2:3325-3333, V2:173-180")
    else:
        emit("B-05a", "beta_1^weak (IMPLICIT)", CONDITIONAL, COND,
             closed_form=("beta_1^weak := any beta-free value at or above which "
                          "C_3^main e^{6G} beta^{2N+1} exp(-beta(3 c_H - 2 eta)) <= 1/2, "
                          "with C_3^main := C_H'' e^2 G^2 V_M / c(N,delta), C_H'' = C(n, e^{4G})^8, "
                          "2N+1 = 21 at N = 10, and 3 c_H = %s landed" % f10(C["three_c_H"])),
             computed=("solvable the moment C_3^main, G and eta are supplied: the left side is "
                       "log-concave in beta with interior maximum at beta = 21/(3 c_H - 2 eta), and "
                       "the UPPER root is bracketed by doubling from there"),
             missing=miss, prov="V2:3325-3333, V2:173-180",
             note=("[G2] runs on C_3^main (factor e^2), NOT C_3 (factor e).\n"
                   "[G5] runs on C_H'' (chained, LIVE), NOT C_H' (SUPERSEDED).\n"
                   "EXISTENCE is landed and beta-free BECAUSE 3 c_H - 2 eta > 0 (C-11)."))

    # -- beta_1^hist --
    emit("B-05b", "beta_1^hist (IMPLICIT) -- CONDITIONAL ON THE FORM, not only on the numerals",
         CONDITIONAL, COND,
         closed_form=("beta_1^hist := the beta-free threshold at which THE LAST LINE OF THE HISTORICAL "
                      "(ENTRY) (Section 3.2) falls to 1/2 on dA_z. That line runs on C_H' and a ONE-eta "
                      "margin [PE-TRAPOCC Section 5 (5c), landed at PX:9074]."),
         computed="the defining EXPRESSION is not displayed in the inventory, so no root-finder can run",
         missing=["<the last line of the HISTORICAL (ENTRY), Section 3.2>", "C_H'", "eta"],
         prov="V2:170-172, V2:3320-3324",
         note=("[G5] beta_1^hist runs on C_H' (single application, SUPERSEDED as a Harnack constant but\n"
               "LIVE as this threshold's own input). Do NOT substitute C_H'' here -- that is exactly the\n"
               "enlargement the corpus refuses to assume: 'the live route runs the LARGER C_H'', ... so\n"
               "beta_1^hist is NOT claimed to serve it' [V2:181-183]."))

    emit("B-05", "beta >= beta_1 := max( beta_1^hist , beta_1^weak )",
         CONDITIONAL, COND,
         closed_form="beta_1 = max( beta_1^hist , beta_1^weak )",
         missing=["beta_1^hist", "beta_1^weak"], prov="V2:3320-3334, V2:167-185",
         note="'NO domination between the two is claimed; the max is what every consumer reads'. R4 honored.")

    # -- beta_2 --
    c0_leg_form = "1 / c_plate = 1 / (%s - 2Q)" % f10(C["THR_RHS"])
    emit("B-07", "beta >= beta_2(N, delta, eps) (IMPLICIT)",
         CONDITIONAL, COND,
         closed_form=("beta_2 := max( <the threshold at which the (ENTRY-W) last line becomes <= 1/2, "
                      "Section 4.2(e) -- relation NOT displayed> , <the (C0) hinge leg> , beta_env )"),
         computed=("the (C0) leg IS solvable in closed form here: (C0) reads "
                   "m_k + eps w_k + (1/2) L_eps N delta^2 + 1/beta <= S_k + c_H, i.e. "
                   "1/beta <= %s - 2Q = c_plate, i.e. beta >= %s" % (f10(C["THR_RHS"]), c0_leg_form)),
         missing=["<the (ENTRY-W) last line, Section 4.2(e)>", "L_eps", "delta", "G"],
         prov="V2:3344-3348; (C0) at V2:271-273",
         note=("DISCLOSED ORDERING CONSTRAINT: beta_2 is 'REQUIRED to additionally dominate beta_env',\n"
               "so beta_2 cannot be solved in isolation.\n"
               "ARITHMETIC OBSERVATION (computed here, leg still carried per R4): the (C0) leg equals\n"
               "1/c_plate, which is exactly HALF of beta_plate = 2/c_plate. So beta_plate dominates the\n"
               "(C0) leg of beta_2. This is stated as an observation only; no leg is dropped and the\n"
               "corpus's 'no domination claimed' discipline is preserved."))

    emit("B-08", "beta >= beta_W := max( beta_2(N,delta,eps), beta_env, beta_plate, 6G/c_0, 2/c_0 )",
         CONDITIONAL, COND,
         closed_form="beta_W = max( beta_2 , beta_env , beta_plate , 6G/c_0 , 2/c_0 )",
         missing=["beta_2", "G", "L_eps", "delta"], prov="V2:3349-3351",
         note=("ARITHMETIC OBSERVATION: (2/c_0) max(2G,1) = beta_env, so the 2/c_0 leg is inside\n"
               "beta_env and the 6G/c_0 leg exceeds beta_env's 4G/c_0 leg. beta_W >= beta_env and\n"
               "beta_W >= beta_plate by construction. All legs carried."))
    emit("B-09", "beta >= beta_W' := max( beta_W , 32/delta )",
         CONDITIONAL, COND,
         closed_form="beta_W' = max( beta_W , 32/delta )",
         missing=["beta_W", "delta"], prov="V2:3352-3362",
         note=("'the 32/delta leg is the near-S radius condition at the halved plate S' = B_{delta/8}(g*).\n"
               "It affects only the NONCONSUMED near-S branch, and it carries the (NEARS-ERR) row (T-17).'\n"
               "ARITHMETIC: 32/delta dominates 16/delta and 8/delta, so beta_W' >= beta_*'s first leg."))

    # -- solver self-test (NOT a corpus claim) --
    print("")
    hr("-")
    print("SOLVER SELF-TEST -- SYNTHETIC INPUTS, NOT CORPUS VALUES, NOT A VERIFICATION OF ANY ROW.")
    print("Purpose: prove the upper-root machinery of Stage 6 is live, so that supplying Stage-1")
    print("inputs converts B-05a from CONDITIONAL to VERIFIED with no code change.")
    for (C3m, Gs, etas) in [(1.0, 1.0, 0.0), (1.0e6, 2.0, 0.10), (1.0e12, 0.5, 0.30)]:
        a = C["three_c_H"] - 2.0 * etas
        if a <= 0:
            print("    C_3^main=%-10g G=%-4g eta=%-5g -> 3 c_H - 2 eta = %s <= 0, no threshold"
                  % (C3m, Gs, etas, f10(a)))
            continue
        seed = 21.0 / a
        r = solve_upper_root(lambda b: beta1weak_logf(b, C3m, Gs, C["three_c_H"], etas),
                             lo=seed, hi_seed=max(2.0 * seed, 10.0))
        chk = beta1weak_logf(r, C3m, Gs, C["three_c_H"], etas) if r else None
        print("    C_3^main=%-10g G=%-4g eta=%-5g  3cH-2eta=%s  interior max at beta=%s  "
              "UPPER ROOT beta_1^weak=%s  residual log f = %.2e"
              % (C3m, Gs, etas, f10(a), f10(seed), f10(r) if r else "none", chk if chk is not None else float("nan")))
    hr("-")
    return None


# =====================================================================================
# STAGE 7 -- beta-COUPLED GEOMETRIC ROWS
# =====================================================================================

def stage7(C):
    stage(7, "beta-COUPLED GEOMETRIC ROWS at beta = max over Stages 5-6")
    print("beta itself is CONDITIONAL (every leg of the collected threshold reads G and/or")
    print("delta and/or L_eps). Rows that are discharged STRUCTURALLY by a ledger leg are")
    print("still VERIFIED, because the discharge is an arithmetic implication, not a numeral.")

    emit("C-14", "(RAMP-ADM): 3 beta c_H > 5G + 2",
         VERIFIED, PASS,
         closed_form="inclusion holds IFF (5G+2)/beta < 3 c_H, i.e. IFF beta > (5G+2)/(3 c_H)",
         computed=("beta_* carries the leg 1 + (5G+2)/(3 c_H) [B-10], and 1 + x > x for every x, "
                   "so beta >= beta_* delivers beta > (5G+2)/(3 c_H) STRICTLY, for every G >= 0"),
         required="beta > (5G+2)/(3 c_H) = %s G + %s" % (f10(5.0 / C["three_c_H"]), f10(2.0 / C["three_c_H"])),
         prov="V2:215-216, V2:220-223, V2:3292 (T-29)",
         note=("Structural discharge, no numeral required: 'the non-strict standing hypothesis\n"
               "beta >= beta_* delivers the STRICT inequality 3 beta c_H > 5G + 2'. The '+1' in the\n"
               "leg is 'a choice, not a computed constant' [V2:224] and it is exactly what buys the\n"
               "strictness."))

    emit("C-15", "(DOOR-CASE1): dist(z, closure(S)) >= c_plate/(2G) >= 4/beta",
         VERIFIED, PASS,
         closed_form="c_plate/(2G) >= 4/beta for beta >= beta_door := 8G/c_plate",
         computed="beta >= 8G/c_plate  =>  4/beta <= 4 c_plate/(8G) = c_plate/(2G). Identity, all G > 0.",
         required="beta >= beta_door",
         prov="V2:3251 (T-9 residual 1), V2:3335-3339",
         note=("Structural discharge by B-06. It presupposes c_plate > 0 (C-08), which is CONDITIONAL\n"
               "on L_eps and delta -- so the row is verified AS AN IMPLICATION, not as a numeral."))

    emit("C-10", "(C0) Regime-A hinge: m_k + eps w_k + (1/2) L_eps N delta^2 + 1/beta <= S_k + c_H",
         CONDITIONAL, COND,
         closed_form="<=>  1/beta <= (S_k + c_H - m_k - eps w_k) - L_eps N delta^2/2 = c_plate  <=>  beta >= 1/c_plate",
         computed="landed part: S_k + c_H - m_k - eps w_k = %s ; so (C0) <=> beta >= 1/(%s - 2Q)"
                  % (f10(C["THR_RHS"]), f10(C["THR_RHS"])),
         required="beta >= beta_2, and beta_2 carries this leg",
         missing=["L_eps", "delta"], prov="V2:271-273",
         note=("The ALGEBRAIC REDUCTION to beta >= 1/c_plate is exact and is performed here; only the\n"
               "NUMERAL awaits L_eps and delta, which is why the row is classed CONDITIONAL."))

    emit("C-19", "theta_2 admissibility window: theta_2 Sard-regular in [S_k + c_H - 1/beta, S_k + c_H]",
         VERIFIED, PASS,
         closed_form="theta_2 in [S_k + c_H - 1/beta, S_k + c_H], Sard-regular",
         computed="window = [%s - 1/beta, %s] ; length 1/beta > 0, hence NONEMPTY for every finite beta > 0"
                  % (f10(C["S_k_plus_c_H"]), f10(C["S_k_plus_c_H"])),
         required="only theta_2 >= S_k + c_H - 1/beta is available; window must be nonempty",
         prov="V2:3298, V2:605-606, V2:2674",
         note=("VERDICT IS DEFINITE FOR THE NONEMPTINESS ONLY: the right endpoint S_k + c_H = %s is a\n"
               "landed numeral and the window has positive length at every finite beta, so no input is\n"
               "needed. The SARD-REGULAR SELECTION of theta_2 inside the window is a measure-theoretic\n"
               "a.e. statement and is TYPED-UNVERIFIABLE by a numerical pass; it is NOT claimed here."
               % f10(C["S_k_plus_c_H"])))

    emit("C-02", "H-INJ, the S1.1 (G4') beta-free reading: 8/beta < inj(M),  rho := 1/beta",
         CONDITIONAL, COND,
         closed_form="8 rho < inj(M) with rho := 1/beta, i.e. beta > 8/inj(M)",
         missing=need("inj_M")[1] + ["beta", "<declared torus normalization> [G9]"],
         prov="V2:508, V2:519-520",
         note="Same [G9] normalization flag as C-01. Also requires 'a minimizing geodesic of length < inj(M)'.")
    return None


# =====================================================================================
# STAGE 8 -- LP.5(c) / MM SIDE, AND THE h-DISCIPLINE ADJUDICATION
# =====================================================================================

def stage8(C):
    stage(8, "LP.5(c) / MM SIDE -- h-DISCIPLINE, DIFFUSIVE FLOOR, Gamma(h), err(delta)")
    print("[G1] Throughout this stage h is h_hop, the MM/LP.5(c) HOP-AND-RELOCATE scale.")
    print("It is NOT the equilibrium/entry potential h of (SANDWICHw)'s 'h <= 1/2' and")
    print("'1 - 2h >= 0 q.e.' (C-16). The two are different objects and are never merged.")

    # -- the h-discipline conflict --
    print("")
    hr("-")
    print("FINDING F-2 (REPORTED TO THE LEAD, NOT ADJUDICATED HERE): the h-DISCIPLINE CONFLICT")
    print("  L-08 [MM:3025-3039] : '1. FIX (eps, delta, h = delta/2) ... 2. beta -> infinity FIRST")
    print("                        ... 3. THEN delta -> 0 and h -> 0 (h = delta/2) ...'")
    print("  L-09 [MM:344-345]   : '3. THEN delta -> 0 - err(delta) -> 0 (taken at fixed h, so")
    print("                        delta <= h stays in force);'   then '4. THEN h -> 0'")
    print("  ARITHMETIC: h = delta/2 gives h <= delta, and delta <= h reads delta <= delta/2,")
    print("  which is FALSE for every delta > 0 and true only at delta = 0 -- which rule R2")
    print("  forbids the pass from evaluating at. The two clauses are therefore jointly")
    print("  satisfiable at NO admissible point of the schedule.")
    for d in (0.4, 0.2, 0.1, 0.05):
        print("      delta = %-6s -> h = delta/2 = %-8s : 'h <= delta' %s ; 'delta <= h' %s"
              % (f10(d)[:6], f10(d / 2.0)[:8], "TRUE", "FALSE"))
    print("  CANDIDATE DISPOSITIONS (the choice is the lead's):")
    print("    E1  L-08 governs. MM:3025's 'FIX (eps, delta, h = delta/2)' is the TOP of the")
    print("        mandated order, and L-09's 'delta <= h' is read as an inverted transcription")
    print("        of 'h <= delta'. Under E1 the diffusive floor becomes beta_0 = 16/h^2 = 64/delta^2.")
    print("    E2  The two printings are TWO DIFFERENT SCHEDULES in the same file and each site")
    print("        reads its own: MM:3025 ties h = delta/2 and sends them together; MM:344-345")
    print("        sends delta -> 0 at FIXED h and only afterwards h -> 0. Under E2 the pass must")
    print("        record, per consumer of Gamma(h) / err(delta), WHICH schedule it reads.")
    print("    E3  Both stand and L-09 is a statement about the ORDER rather than a standing")
    print("        constraint: under MM:344-345's schedule delta drops below the fixed h, so")
    print("        'delta <= h' becomes true en route. E3 is the most economical reconciliation")
    print("        and is consistent with both printings read verbatim -- but adopting it is a")
    print("        lead adjudication, and it is NOT performed here.")
    print("  CONSEQUENCE FOR THIS PASS: h is NOT pinned. L-07's floor, Gamma(h) and the order")
    print("  guard below are all reported under BOTH readings where they differ.")
    hr("-")

    emit("L-08", "order-of-limits discipline: FIX (eps, delta, h = delta/2); beta -> infinity FIRST; "
                 "THEN delta -> 0 and h -> 0 (h = delta/2); THEN the eps-window",
         FINDING, REPORTED,
         closed_form="h = delta/2",
         computed="h/delta = 0.5 ; 'h <= delta' TRUE",
         prov="MM:3025-3039; MM:511 ('beta -> infinity before h -> 0 is mandatory')",
         note="See FINDING F-2. Not adjudicated against L-09 by this pass.")
    emit("L-09", "competing h/delta discipline (SECOND wording): 'THEN delta -> 0 ... (taken at fixed h, "
                 "so delta <= h stays in force)'",
         FINDING, REPORTED,
         closed_form="delta <= h",
         computed="under L-08's h = delta/2 this reads delta <= delta/2, FALSE for every delta > 0",
         prov="MM:344-345",
         note="See FINDING F-2. Not adjudicated against L-08 by this pass.")

    # -- L-07 diffusive floor --
    ok, miss = need("h_hop")
    emit("L-07", "diffusive floor: beta h^2 >= B_Z = 16, i.e. beta_0(h) = 16/h^2 = O(h^{-2})",
         CONDITIONAL, COND,
         closed_form="beta >= 16 / h^2",
         computed=("under reading E1 (h = delta/2) this becomes beta >= 64 / delta^2, a delta^{-2} "
                   "floor of the SAME shape as beta_env = 8 max(2G,1)/(L_eps N delta^2) [B-04]; "
                   "under reading E2/E3 h is an independent fixed scale and no delta reduction is available"),
         required="beta h^2 >= 16",
         missing=miss + ["beta", "<h-discipline adjudication: see FINDING F-2>"],
         prov="MM:511, MM:533, MM:446",
         note="LOAD-BEARING per the ledger row; 'the order beta -> infinity before h -> 0 is mandatory'.")

    # -- Gamma(h) --
    coef = 6.0 * C["D_G_product"]
    emit("S8-Gamma", "Gamma(h) := 6 C_1 D_G h = O(h)   [G6: D_G is the PRODUCT torus value]",
         CONDITIONAL, COND,
         closed_form="Gamma(h) = 6 C_1 D_G h with D_G = pi sqrt(2N) = %s at N = 10" % f10(C["D_G_product"]),
         computed=("Gamma(h) = %s * C_1 * h ; under reading E1 (h = delta/2), Gamma = %s * C_1 * delta"
                   % (f10(coef), f10(coef / 2.0))),
         missing=need("C_1")[1] + ["h_hop", "<h-discipline adjudication>"],
         prov="MM:312, MM:135, MM:131 (C_1 = 1/2 + L/4 + L^2/24); MM:1370 (D_G product, campaign-#23 seal)",
         note=("[G6] The single-loop reading D_G = pi sqrt(N) = %s and the max-norm reading D_G = pi = %s\n"
               "are NOT used here; MM:125 says of the latter, verbatim, that it 'is NOT used here'.\n"
               "C_1 is derivable the moment L is supplied (C_1 = 1/2 + L/4 + L^2/24)."
               % (f10(C["D_G_single"]), f10(C["D_G_maxnorm"]))))

    emit("S8-err", "err(delta) := 18 C_Z(tau) delta^2 = O(delta^2)",
         CONDITIONAL, COND,
         closed_form="err(delta) = 18 C_Z(tau) delta^2",
         missing=need("C_Z_tau", "delta", "tau")[1], prov="MM:549-550")

    # -- order guard --
    print("")
    print("ORDER-OF-LIMITS GUARD (R2) -- executed, not merely asserted:")
    try:
        assert_positive_scale(delta=1e-3, h_hop=5e-4)
        print("    assert_positive_scale(delta=1e-3, h=5e-4)  -> OK (fixed positive scales admitted)")
    except AssertionError as e:
        print("    UNEXPECTED: %s" % e)
    for bad in ({"delta": 0.0}, {"h_hop": 0.0}):
        try:
            assert_positive_scale(**bad)
            print("    GUARD FAILED TO FIRE on %r -- THIS IS A BUG" % bad)
        except AssertionError as e:
            print("    assert_positive_scale(%s) -> correctly REFUSED: %s"
                  % (", ".join("%s=%r" % kv for kv in bad.items()), str(e).split(";")[0]))
    print("    Consequence: every delta cap in Stage 3 and every beta threshold in Stages 5-6 is")
    print("    evaluated at a FIXED POSITIVE delta (symbolically, since delta is unsupplied), never")
    print("    at delta = 0. beta -> infinity is taken FIRST. [PROV] MM:3025-3039, MM:511")

    # -- remaining L rows --
    emit("L-05", "r_0' shrink ledger ([tube]/[cone]/[cube]/[phi]/[theta] entries)",
         CONDITIONAL, COND,
         closed_form=("r_0' <= r_0/2 ; r_0' <= gamma_c lambda_u/(16 C_N (1 + gamma_c^2)) ; "
                      "[cube] r_0' small enough to bury every cubic Taylor remainder ; "
                      "C_Z r_0'^2 <= 4 c_H (so r_0' <= sqrt(4 c_H / C_Z) = sqrt(%s / C_Z)) ; "
                      "r_0' <= (1/2) dist(Z, Delta_theta)" % f10(4.0 * C["c_H"])),
         computed="landed part of the [phi] entry: 4 c_H = %s" % f10(4.0 * C["c_H"]),
         missing=need("r0", "lambda_u", "C_N", "C_Z", "r_0_prime")[1] + ["gamma_c", "dist(Z, Delta_theta)"],
         prov="LP:170-182",
         note=("The M2-PIN strict clause inside [phi] is checkable at the cell level: it needs\n"
               "m_k + 2 lambda > m_k + 2 kappa >= S_k + 4 c_H. Per C-22 the SECOND inequality holds\n"
               "with EQUALITY (%s = %s) and the FIRST is strict only because lambda > kappa\n"
               "STRICTLY (L-06) -- at the flagship NAME lambda -> 1+ this is the boundary."
               % (f10(C["m_k"] + 2.0), f10(C["S_k"] + 4.0 * C["c_H"]))))

    emit("L-06", "M2-PIN (standing cell condition): lambda > kappa",
         VERIFIED, PASS,
         closed_form="lambda > kappa",
         computed="flagship NAME is (N, lambda) = (10, 1+), kappa = 1, i.e. lambda -> 1 FROM ABOVE",
         required="lambda > kappa STRICTLY",
         prov="V2:347-348, V2:345-346",
         note=("BOUNDARY ROW, per the inventory: 'L-06 (M2-PIN lambda > kappa) is STRICT and the\n"
               "flagship name (10, 1+) is the BOUNDARY of the standing regime, not a point of it.'\n"
               "Every lambda > 1 satisfies it; lambda = 1 does not. All lambda-bearing numerals in\n"
               "Stage 0 are evaluated at the LIMIT lambda = 1, which is the corpus's own convention\n"
               "for the flagship printings -- so they are limit values, not interior-point values."))

    emit("L-10", "[23] SS C one-metric discipline: ONE declared metric per consumer",
         TYPED, REPORTED, closed_form="<discipline row; no scalar>",
         prov="MM:101-102, MM:588, MM:1359",
         note="Interacts with [G6]/[G9]: the D_G reading and the inj normalization are metric choices.")
    emit("L-11", "tube radius vs injectivity: r0 <= inj(M)/4 ; (H2) r < normal injectivity radius of Z",
         CONDITIONAL, COND, closed_form="r0 <= inj(M)/4",
         missing=need("r0", "inj_M")[1], prov="MM:106, MM:421, MM:530")
    emit("L-12", "[23] SS D.2 no-common-small-set discipline",
         TYPED, REPORTED, closed_form="<composition discipline; no scalar>", prov="MM:1965")
    emit("L-13", "[23] SS B.3 non-identification fence: w_k and S_k/kappa are NEVER identified; "
                 "'g_k := m_k/kappa = W*(G_k)' is DELETED",
         TYPED, REPORTED, closed_form="<fence row; no scalar>",
         prov="MM:760, MM:766, MM:940",
         note=("ENFORCED BY THIS SCRIPT: w_k is computed from N(1 - cos(2 pi k/N)) and S_k from its own\n"
               "closed form; the deleted identity is never used, and no code path divides m_k by kappa\n"
               "to obtain w_k. At the flagship they coincide numerically (kappa = 1) -- which is exactly\n"
               "why the fence exists."))
    emit("L-14", "transverse nondegeneracy on the tube: J - m_k >= (c_perp/2) dist(.,C_k)^2 ; "
                 "|grad J| <= L dist(.,C_k)",
         CONDITIONAL, COND,
         closed_form="J - m_k >= (c_perp/2) dist(., C_k)^2 ;  |grad J| <= L dist(., C_k)",
         missing=need("c_perp", "L")[1], prov="MM:109")
    return None


# =====================================================================================
# THE REMAINING TYPED / QUALITATIVE ROWS (emitted so the enumeration is complete BY NAME)
# =====================================================================================

def typed_rows(C):
    print("")
    hr("-")
    print("REMAINING NAMED ROWS THAT CARRY NO NUMERICAL CONTENT A PASS CAN EVALUATE")
    hr("-")
    emit("C-04", "(H-SEP) strength flag, UNRESOLVED: PE-DOORREACH's separation row displays "
                 "dist(z, Door') > 0 while B_{2rho}(z) subset Omega requires >= 2rho",
         TYPED, REPORTED,
         closed_form="dist(z, Door') > 0   vs   dist(z, Door') >= 2rho",
         computed="a strength mismatch between two displayed rows; no numeral resolves it",
         prov="V2:3246",
         note="At the TRAP instantiation it is 'supplied at full strength by (G4)/(G4')'.")
    emit("C-16", "(SANDWICHw) hypothesis on the SOLID ball: 1 - 2h >= 0 q.e., companion h <= 1/2   [G1]",
         TYPED, REPORTED,
         closed_form="1 - 2h >= 0 q.e. on the SOLID A_z ;  h <= 1/2",
         prov="V2:3251 (T-9)",
         note=("[G1] SYMBOL WARNING ENFORCED: this h is the EQUILIBRIUM / ENTRY-POTENTIAL quantity,\n"
               "NOT the MM/LP.5(c) hop-and-relocate scale h of L-07/L-08/Gamma(h). The script never\n"
               "substitutes h_hop here. 'q.e.' is a quasi-everywhere statement -- not numerically\n"
               "checkable by this pass."))
    emit("C-17", "TRAP nonemptiness / properness [T-12]: dTRAP nonempty provided TRAP is a proper "
                 "nonempty subset of M",
         TYPED, REPORTED, closed_form="TRAP a proper nonempty subset of M",
         prov="V2:3259 (T-12)",
         note="'a standing side condition of the realization' -- set-theoretic, not numerical.")
    emit("C-18", "positive-capacity rows: cap(A_z, closure(S)) > 0 ; cap(TRAP, closure(S)) > 0",
         TYPED, REPORTED, closed_form="cap(A_z, closure(S)) > 0 ; cap(TRAP, closure(S)) > 0",
         prov="V2:3296",
         note="Potential-theoretic positivity from a nonempty regular level set; no numeral.")
    emit("C-23", "(SIGMA0-EXC) tier bounds [T-2] -- TYPED, NOT DISCHARGED",
         TYPED, REPORTED,
         closed_form=("(TIER-A6) <= T_sig exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta))), T_sig beta-free ; "
                      "(TIER-DISPLAY) <= T_row exp(-beta(c_H/2 - err(delta)))"),
         computed="the only landed numeral inside either tier is c_H/2 = %s" % f10(C["c_H_half"]),
         missing=need("T_sig", "T_row", "gamma_2", "C_Z_tau", "h_hop")[1],
         prov="V2:3244 (T-2), V2:3210",
         note=("Typed and NOT discharged in the corpus. E5's BLOCKING finding on this row (the\n"
               "beta-free-T_sig vs polynomial-P(beta) conflict) is an E5 matter; this pass records\n"
               "the row as typed and evaluates nothing into it."))
    emit("C-24", "GAP-LP-RECUR @ A6 strength [T-1] -- REOPENED, not discharged",
         TYPED, REPORTED,
         closed_form=("beta^{-1} log E_q[sigma_0] bounded by S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 + err ; "
                      "binds 'LP.5(c) upper limsup ONLY'"),
         computed=("landed cell part: S_k - m_k = %s ; eps(S_k/kappa - w_k) = %s at eps = 0.05 "
                   "[L-13 fence: S_k/kappa and w_k are DISTINCT coefficients, never identified]"
                   % (f10(C["S_k"] - C["m_k"]), f10(C["eps"] * (C["S_k"] / C["kappa"] - C["w_k"])))),
         missing=need("C_w", "gamma_2")[1] + ["err"],
         prov="V2:3243 (T-1)",
         note="C := C_w + gamma_2 (MM:1256-1257, MM:3036); both are Stage-1 unsupplied.")


# =====================================================================================
# STAGE 9 -- REPORT
# =====================================================================================

def stage9(C, caps, binding_eps, delta_caps, sup, unsup):
    stage(9, "REPORT")

    print("A. ARGMIN OVER eps CAPS (caps with landed numerals; L-01/L-03's eps_2 is a MIN that")
    print("   INCLUDES epsilon_0 and therefore cannot loosen the binder)")
    for rid, nm, cp, okk in sorted(caps, key=lambda t: t[2]):
        print("     %-6s %-34s %s   design eps = %s -> %s"
              % (rid, nm, f10(cp), f10(C["eps"]), "PASS" if okk else "FAIL"))
    print("     ARGMIN  = %s  at eps < %s" % (binding_eps[0], f10(binding_eps[2])))
    print("     STATUS  = the design eps = %s VIOLATES it (FINDING F-1)." % f10(C["eps"]))

    print("")
    print("B. ARGMIN OVER delta CAPS, in Q := L_eps N delta^2 / 4")
    dtbl = [("C-08", "c_plate > 0", delta_caps["cap_cplate"]),
            ("C-03", "(H-SEP)", delta_caps["cap_hsep"]),
            ("C-09", "(THR)", delta_caps["cap_thr"]),
            ("C-11", "3 c_H - 2 eta > 0", delta_caps["cap_c11"])]
    for rid, nm, cp in sorted(dtbl, key=lambda t: t[2]):
        print("     %-6s %-22s Q < %-14s   delta < %s / sqrt(L_eps)"
              % (rid, nm, f10(cp), f10(delta_caps["deltacap"](cp))))
    print("     ARGMIN  = C-08 (c_plate > 0), TIED by C-03 (H-SEP), both at Q < %s"
          % f10(delta_caps["cap_cplate"]))
    print("     Matches the inventory's tension (b): the binding delta cap is c_plate's.")
    print("     Additional landed delta cap not expressible in Q: C-20, delta < pi = %s." % f10(math.pi))

    print("")
    print("C. ARGMAX OVER beta LEGS")
    print("     CONDITIONAL. Every leg of the collected standing threshold reads at least one")
    print("     unsupplied Stage-1 input (G, and/or L_eps, and/or delta), so no argmax can be")
    print("     taken. What IS established:")
    print("       - the collected threshold is the MAX over the ten named thresholds")
    print("         beta_plate, beta_S4, beta_env, beta_1, beta_2, beta_W, beta_W', beta_*,")
    print("         beta_*^{DR}, beta_door, plus the bare condition beta >= 8/delta ((v4c));")
    print("         the bare beta >= 4/delta is DOMINATED (B-13, arithmetically confirmed).")
    print("       - the conservative single reading is max(beta_*, beta_*^{DR}) (B-14).")
    print("       - NO domination is assumed anywhere else (R4). The arithmetic observations")
    print("         recorded above (beta_S4 >= beta_plate; beta_W >= beta_env, beta_plate;")
    print("         beta_W' >= beta_W; beta_2's (C0) leg = 1/c_plate = beta_plate/2) are")
    print("         OBSERVATIONS; no leg was dropped.")
    print("       - partial reduction achieved from landed numerals:")
    print("         beta_* = max( 16/delta , %s G , 1 + %s G + %s )"
          % (f10(24.0 / C["three_c_H"]), f10(5.0 / C["three_c_H"]), f10(2.0 / C["three_c_H"])))
    print("         beta_*^{DR} = max( 8/delta , (2+G)/(%s - Q) )" % f10(C["THR_RHS"]))
    print("         beta_plate = 2/(%s - 2Q) ,  beta_door = 8G/(%s - 2Q)"
          % (f10(C["THR_RHS"]), f10(C["THR_RHS"])))
    print("         beta_env = 8 max(2G, 1) / (L_eps N delta^2) = 2 max(2G,1) / Q")

    print("")
    print("D. STAGE-1 INPUTS THAT HAD TO BE SUPPLIED AND WERE NOT (%d)" % len(unsup))
    line = "     "
    for i, kname in enumerate(unsup):
        line += "%-14s" % kname
        if (i + 1) % 6 == 0:
            print(line)
            line = "     "
    if line.strip():
        print(line)
    print("     Supplied: %s" % (", ".join(sup) if sup else "<none>"))
    print("     G and L (hence L_eps) gate the most rows; neither has a landed numeral.")

    print("")
    hr("=")
    print("E. THREE-CLASS TABLE")
    hr("=")
    order = [VERIFIED, CONDITIONAL, TYPED, FINDING]
    labels = {
        VERIFIED: "VERIFIED  -- closed form + landed numerals; evaluated to a definite verdict",
        CONDITIONAL: "CONDITIONAL -- closed form printed, awaiting supplied Stage-1 inputs",
        TYPED: "TYPED-UNVERIFIABLE -- no numerical content a pass can evaluate",
        FINDING: "REPORTED FINDING -- surfaced for the lead; NOT adjudicated by this pass",
    }
    for cls in order:
        rows = [r for r in ROWS if r["kind"] == cls]
        print("")
        print("--- %s   (%d rows) ---" % (labels[cls], len(rows)))
        for r in rows:
            head = "  %-9s %-6s %s" % ("[" + r["status"] + "]", r["id"], r["name"][:78])
            print(head)
            if cls == CONDITIONAL and r["closed_form"]:
                print("            closed form: %s" % r["closed_form"][:150])
                if r["missing"]:
                    print("            missing    : %s" % ", ".join(r["missing"]))
            if r["prov"]:
                print("            [PROV] %s" % r["prov"])

    counts = dict((c, len([r for r in ROWS if r["kind"] == c])) for c in order)
    print("")
    hr("=")
    print("F. COUNTS: VERIFIED %d | CONDITIONAL %d | TYPED-UNVERIFIABLE %d | REPORTED FINDING %d "
          "| total rows emitted %d"
          % (counts[VERIFIED], counts[CONDITIONAL], counts[TYPED], counts[FINDING], len(ROWS)))
    print("   Plus Stage 0's 21 asserted cell-scalar rows, all PASS (the regression gate).")
    print("   Authority is this enumeration by name. No exhaustiveness over the corpus is claimed.")
    hr("=")

    print("")
    print("G. THE TWO NAMED TENSIONS")
    print("   F-1  L-02 eps cap VIOLATED at the design eps.")
    print("        eps = %s  vs  cap (2 kappa - m_k)/w_k = %s  ->  FAIL by %s."
          % (f10(C["eps"]), f10(C["eps_cap_L02"]), f10(C["eps"] - C["eps_cap_L02"])))
    print("        Substance: M2P's supporting inequality 2 kappa > m_k + eps w_k reads")
    print("        %s > %s, which is FALSE by %s."
          % (f10(2.0 * C["kappa"]), f10(C["A_tube_eps_part"]),
             f10(C["A_tube_eps_part"] - 2.0 * C["kappa"])))
    print("        Four dispositions listed in Stage 2; the choice is the lead's.")
    print("   F-2  h-discipline conflict L-08 (h = delta/2) vs L-09 (delta <= h).")
    print("        Jointly satisfiable only at delta = 0, which rule R2 forbids evaluating at.")
    print("        Three dispositions listed in Stage 8; the choice is the lead's.")
    print("")
    print("H. SUBORDINATE OBSERVATIONS (computed by this pass; NOT among the two named tensions)")
    print("   O-1  C-03 (H-SEP) and C-08 (c_plate > 0) reduce to the SAME cap Q < %s."
          % f10(delta_caps["cap_cplate"]))
    print("        They TIE for binding. The inventory's tension (b) compares C-08/C-09/C-11 only.")
    print("   O-2  (SML')'s printed constant %s is the (ADJ-2) value at the WORST SAMPLED"
          % f10(C["ADJ2_200"]))
    print("        cell (200, 1.0001), not the flagship RHS. The flagship reading is against")
    print("        (MRG) = %s [V2:426-427] and PASSES with slack %s before the err terms."
          % (f10(C["MRG"]), f10(C["MRG"] - C["eps"] * C["w_k"])))
    print("   O-3  C-22's second inequality holds with EXACT equality (S_k + 4 c_H = m_k + 2 kappa")
    print("        identically, since the active c_H branch is (m_k + 2 kappa - S_k)/4). This is")
    print("        why the corpus records the STRICT middle clause as NOT CONSUMED.")
    print("   O-4  beta_2's (C0) leg reduces exactly to beta >= 1/c_plate = beta_plate/2.")
    print("")
    print("I. SCOPE FENCE")
    print("   This pass evaluated the rows NAMED C-01..C-24, B-01..B-14, L-01..L-14 and the")
    print("   derived-scalar rows S4-*, S8-* listed above, at the flagship cell")
    print("   (N, kappa, lambda) = (10, 1, 1+) with the design eps = 0.05 and delta left as a")
    print("   free positive scale. Its authority is that enumeration. It asserts nothing about")
    print("   rows not named here, and it makes no quantified claim of exhaustiveness over")
    print("   V2 / MM / LP / PX. Rows T-19..T-22, T-23..T-25 and T-26..T-29 are outside the")
    print("   inventory's scope by the inventory's own fence and were not evaluated.")


# =====================================================================================
# MAIN
# =====================================================================================

def main():
    hr("=")
    print("E6 NUMERICAL INSTANTIATION PASS")
    print("Flagship cell (N, kappa, lambda) = (10, 1, 1+), design eps = 0.05, delta -> 0 LAST.")
    print("ASCII math only. Anchors: V2/MM/LP = PHYSICAL lines; PX = PRE-BANNER unless tagged")
    print("'physical' (PHYSICAL = PRE-BANNER + 4, per V2 S8.1).")
    hr("=")

    C = stage0()
    sup, unsup = stage1(C)
    caps, binding_eps = stage2(C)
    delta_caps = stage3(C)
    stage4(C)
    stage5(C)
    stage6(C)
    stage7(C)
    stage8(C)
    typed_rows(C)
    stage9(C, caps, binding_eps, delta_caps, sup, unsup)

    print("")
    hr("=")
    print("END OF PASS. Stage 0 regression gate: PASS. Two tensions reported (F-1, F-2).")
    hr("=")


if __name__ == "__main__":
    main()
