# B2 numerics — build + first sweep results (2026-07-10)

```text
scope canonico = the B2 harness build record + the first bounded sweep's
  verdicts and findings (attack-roadmap-v1 B2, standing Lane-B go).
out of scope = the harness code (numerics/), the raw JSON (numerics/
  results/), the corrected artifact lines (landed in lane-lp in place).
type = HEURISTIC / SUPPORTING EVIDENCE. No assurance rung. STANDS =
  bounded-search evidence; FINDING = re-verified by hand before claiming.
```

## Verdict board (first sweep)

```text
B2a falsify.py (11 checks)
  prod_shell        STANDS   k=1 sup gap 1.9926 (-> 2k, no uniform bound,
                             as the honesty note records); THE OPEN k>=2
                             TYPED ROW MAPPED: 16,003 admissible (N,k)
                             pairs to N = 2000, ALL hold - first map of
                             the row a future gate would discharge.
  cH_ledger         STANDS   c_H > 0 all N in [10, 2000]; sup S_1 = 2.609
                             <= 2.7 (the LS.6(b) display).
  hessian_calib     FINDING  reference-value CONVENTIONS drift (below).
  lp1_band_floor    STANDS   c_Z est 2.9-3.6 bounded away from 0 across
                             r in [0.05, 0.3]; C_Z est 14-19 finite (the
                             band's r^2 scaling) - LP.1 feedstock healthy.
  wstar             STANDS   sup W* <= 2N, sup|grad| <= 2 sqrt(2N), slice
                             identity W*(theta, C_0) = J_kappa/kappa exact.
  Gkj_levels        STANDS   trap census: no G_{k,j} inside the band at
                             lambda in {1, 1.5, 2} (they sit ABOVE it -
                             m_1(kappa)+m_1(lambda) = 3.82 > band top 2.93).
  ladder_Lk         STANDS   2k < L_k < S_k on the full admissible grid;
                             unique interior stationary point (endpoint
                             m = 2 pi k/N is C_k itself, not interior).
  range_row         STANDS   2 pi k/N < pi - a_k, full grid.
  ridge_r_vacuity   STANDS   max residual-mean bound 2 pi k/N over the
                             admissible grid = 0.628319 = 2 pi/10 < 3/4
                             (X7 correction: the earlier 0.6981 = 2 pi/9
                             figure is EXCLUDED by the C1-SUB filter).
  valley_criticals  STANDS*  no TESTED descent endpoint survived the
                             filter (X7: absence-of-counterexample, not
                             a positive floor measurement; same caveat
                             for shell_floor's null min-grad).
  shell_floor       FINDING  STATEMENT finding (below) - with the repair,
                             STANDS (no sub-floor point; descents converge
                             only to the excised criticals).

B2b sde.py / sde_product.py (N = 10, k = 1, kappa = lambda = 1, eps = .05)
  prod_excursion    SUPPORTED  outside-time per renewal round decays with
                             slope -0.345 vs the row's required <= -c_H/2
                             = -0.163 (beta 10-16; 3,083-5,046 rounds/beta (X7: '3.7-5k' mis-rounded);
                             6.2-27k excursions/beta). ZERO Delta_phi
                             crossings (gate 3.91 energetically blocked,
                             as the ledger says); zero trap events (the
                             G_{k,1} torus at 3.82 unreachable). THE ROW's
                             expected-time form survives its first
                             empirical probe - and the reason the
                             probability-floor version fails (traps) is
                             invisible at reachable energies, consistent
                             with the reversibility pre-pay heuristic.
  forgetting        STANDS   flat-mode rate fitted 2.97/1.83/0.98 vs the
                             EXACT prediction N/beta = 3.33/2.00/1.25
                             (beta 3/5/8): within 22% (fit-window bias at
                             fast decay; the drift-telescoping identity
                             validated separately to 3% at 2048 replicas).
  exit_beta_slope   SUPPORTED  single-chain Arrhenius slope of log E[tau]
                             = 0.639 vs the certified asymptotic gap
                             S_1 - m_1 = 0.699 (beta 6-10, zero censoring,
                             24 reps/beta): 91% of the LS.5 rate from
                             below, as pre-asymptotics predicts.
  pinning_occupancy STANDS   at beta = 8: 3.5% deep-ground / 49.8%
                             mid-band / 46.7% upper (thermal energy ~80%
                             of the gap at this beta - spread expected).

B2c wc.py (class WC, difference subclass)
  Wstar_corpus      STANDS   calibration: C2/C3 machine-precision zeros,
                             kernel dim 2, transverse floor 0.324 >= c_1
                             = 0.309, no extra criticals, G_W est 7.77
                             <= 8.94 bound.
  v_(1-cos)^2       STANDS   fresh member passes C1-C5 + C7.
  v_mix (1-cos)+
    (1/4)(1-cos 2x) STANDS   fresh member passes C1-C5 + C7.
  a2_shield         REFUTED  the recorded WC.1 heuristic ("the cyclic
                             constraint can shield a narrow negative well
                             of v at x_0, N x_0 != 0 mod 2 pi") FAILS at
                             depth 0.05: minimizing over the exact
                             feasible set (sum u_i = 2 pi m), the
                             optimizer concentrates 5 bonds in the well
                             at winding-difference m = 2 and pays with 5
                             cheap compensators: W_min = -0.172 < 0
                             (hand-verified: 5(-0.05) + 5(+0.018) =
                             -0.16). The winding-difference freedom
                             defeats partial-concentration shielding.
                             CONSEQUENCE: (A2) must stay checked as
                             v >= 0 (the WC.1 sufficient condition);
                             do not weaken it via the shield note. The
                             corpus never proved the heuristic (typed
                             "well-depth bound NOT proved") - this
                             retires it at moderate depth.
```

## The two findings (re-verified by hand, corrections landed)

1. RELABELING COPIES (statement finding, lane-lp Standing Data / LP.1' /
   LP.4 tubes). The critical set at level S_k in the sector is N
   ISOMETRIC copies of Z = SP_k x C_0 (hot bond at each slot); the T^2
   ROTATION orbit fixes the hot-bond slot, so K_all as literally written
   (one copy excised) contains the other N-1 Z_i = SP_{1,i} x C_0 T^2 orbits (X7: 'saddle circles' was imprecise) with
   grad E_0 = 0, i.e. c_shell = 0. The shell probe found SP_1(hot bond
   2) x C_0 inside K_all at |grad| ~ 3e-6, level exactly S_1. REPAIR
   (landed in lane-lp in place): every tube/excision around Z is read as
   the UNION over the N relabeling copies - by isometry all constants
   and arguments are copy-independent (a reading note, not an inequality
   repair). The machine-sealed LS.6(b) already carries the correct
   `exists i0` (any-slot) form. With the union reading the probe finds
   no sub-floor point.

2. REFERENCE-VALUE CONVENTIONS (calibration finding, lane-lp Wave
   Record numerics). The recorded supporting numbers are THETA-ONLY
   (Lambda_s = 3.6-3.9; theta-block gives 3.595/3.734/3.914 at
   N = 10/12/20 - match) and PER-EIGENVECTOR (C_fr = 0.30/0.28/0.21;
   per-eigenvector gives 0.3035/0.2844/0.2141 - match). The conventions
   the DISPLAYS consume give: Lambda_s over the full transversal block
   = 4.0 lambda exactly (the phi-factor N/2 mode at even N), and C_fr
   as the norm of the first-bond row (the Cauchy-Schwarz constant
   |<b_s,s>| <= C_fr|s| needs) = 0.471; hence gamma_c = 0.277-0.287,
   not ~0.29 (X7 softening: 0.2865 at N = 20 agrees under coarse rounding). No proof consumes the recorded numbers (symbolic,
   min-composed ledger; smaller gamma_c only tightens apertures) -
   correction is to reference lines only (landed in lane-lp in place).
   Everything else matches the recorded precision (X7 wording): lambda_u 1.2317/1.2681/1.3131
   (recorded 1.23-1.31), Lambda_min 0.3529/0.2548/0.0964 (recorded
   0.35/0.25/0.10 with the 1/N^2 decay), c_1 1.3336 (recorded 1.333),
   slice alignment 0.9427/0.9342/0.9177 (the wave-2 refutation numbers,
   reproduced), theta-inertia (N-2, 1) exactly.

## Consequences for Lane F

- GATE v20 (PROD-EXCURSION): the roadmap made the B2b probe the
  re-decider of whether v20's barrier is where the corpus thinks. The
  probe says YES at moderate beta: the expected-time form scales as the
  row requires (2x margin), the doorway/gate level ordering is real,
  and the trap tori are energetically invisible from the band -
  supporting the reversibility pre-pay route recorded in the artifact.
  v20 remains SEQUENCED BEHIND the cross-provider rung (unchanged); its
  Phase-3 menu order can now be drawn up with the planned route first.
- GATE v19 (PROD-TRANSFER): its load-bearing displays (PROD-SHELL
  margins, ledger arithmetic, LP.1 feedstock) are all pre-run and
  healthy, including the first full map of the open k >= 2 PROD-SHELL
  row (16,003 pairs, all hold).

## Honesty (binding)

Moderate-beta evidence only; every slope carries the beta -> infinity
extrapolation caveat; bounded searches (multistart counts recorded in
the JSON); nothing here raises any assurance rung; the false-inference
firewall of lane-lp applies verbatim. Machine-sealed displays were used
only as code anchors (qcore.self_test), never re-checked as targets.
```
repro = numerics/README.md (deterministic seeds; JSON in numerics/results/)
```


## X7 cross-provider adjudication appendix (2026-07-19, lead)

Verdict verdicts/X7-2026-07-19.md (Codex, full-weight axis):
REPRODUCTION MATCH (all four JSONs semantically identical after
removing wall_seconds; both landed findings independently re-derived
from the formulas) - and the BOARD itself NOT CLEAN as previously
written. Lead adjudication: numerical corrections applied in place
above (2.609; 0.628319; 3,083-5,046), wording repairs applied
(T^2 orbits; STANDS* qualifier; precision phrasing), and the STALE
C_fr constants-ledger line in lane-lp REPLACED (the '0.30' figure was
the max single eigenvector coefficient, NOT the operator norm ~0.471
the display requires; the gamma_c change flows from the full-Lambda_s
arm and the C_fr arm is INACTIVE: c_1/(2 C_fr) > 1.4 > 1/2).

STANDING HARNESS CAVEATS (X7; the harness code is the PINNED
reproduced instrument and is not edited): Gkj_levels hard-codes its
STANDS string (falsify.py:273) rather than deriving it; SciPy
optimizer success flags are unchecked before consumption; WC's C1
'min-set exactness' records only the best objective (neither location
completeness nor negative-minimum rejection) and G_W only (no H_W);
falsify/WC records do not embed seeds (in-code constants are the seed
record); dependencies unpinned; full commands overwrite snapshots
(isolated-copy execution required for a safe diff, as X7 did).
These caveats BOUND what the harness's STANDS strings establish; the
two headline findings rest on the exact symmetry/spectral arguments,
not on optimizer residues.
