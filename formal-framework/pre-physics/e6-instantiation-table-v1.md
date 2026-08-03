# E6 -- NUMERICAL INSTANTIATION TABLE
(LANDED 2026-08-02; EXTERNALLY PASS AT XE-12 ("E6 PASSES" in full,
verdicts/XE-12-2026-08-02.md question 5) - the classification below is the
design-run RECORD; Section 7.5 records the post-XE-14 movement of rows
C-23/C-24.
LOCATIONS: the pass script is scripts/e6_instantiation.py, the adjudication
layer scripts/e6_adjudication.py; the runlogs are
formal-framework/pre-physics/e6-runlogs/e6_runlog.txt and
formal-framework/pre-physics/e6-runlogs/e6_adjudication_runlog.txt.)

Flagship cell `(N, kappa, lambda) = (10, 1, 1+)`, design `eps = 0.05`, `delta -> 0` LAST.
Script: `e6_instantiation.py` (stdlib only: `math`). Full output: `e6_runlog.txt`.

---

## 0. CONVENTIONS, STATED EXPLICITLY

**Citation / line-number convention.**

| Tag | File | Line convention |
|---|---|---|
| `V2:n` | `research/formal-framework/pre-physics/lane-prodexc-v2.md` | PHYSICAL line n |
| `MM:n` | `research/formal-framework/pre-physics/lane-minmig-proofs-v1.md` | PHYSICAL line n |
| `LP:n` | `research/formal-framework/pre-physics/lane-lp-product-saddle-v1.md` | PHYSICAL line n |
| `PX:n` | `research/formal-framework/pre-physics/lane-prodexc-proofs-v1.md` (frozen appendix) | PRE-BANNER unless tagged `physical`. **PHYSICAL = PRE-BANNER + 4** (per V2 S8.1). |

Every PX anchor below is tagged `pre-banner` or `physical` so no reader has to infer which
vintage a number is. Where a PX row matters twice (A_tube), BOTH numbers are printed.

**Energy / cell normalization.** `E_eps = J_kappa + J_lambda + eps W` on `M = T^{2N}`;
`(N, kappa, lambda) = (10, 1, 1+)`; `k = 1`; design `eps = 0.05`; `delta` left as a FREE
POSITIVE scale. `[PROV] V2:345-346 (FLAG)`.

**Torus normalization -- DECLARED ABSENT.** T-3's `inj = 1/2` is the UNIT-LATTICE reading
`[PROV] V2:3245`, while the standing bond coordinates carry `|e_i| = pi` on `Delta_phi`
`[PROV] PX:7399 physical` and "SP_k's max bond is `pi - a_k < pi`" `[PROV] LP:179`. These are
two different normalizations and the `inj` numeral is not transportable between them. **This
pass declares no normalization**, so C-01 and C-02 stay CONDITIONAL. Fixing one is a lead
decision, not a pass decision.

**Evaluation-order rules enforced in code.**

- **R1** pin `delta > 0` -> `c_0` / `eta` / `err_A` -> `c_plate` -> only then any beta threshold.
  (Asserted: no beta row may be emitted before the `c_plate` row has been.)
- **R2** never evaluate at `delta = 0` or `h = 0`. Guard `assert_positive_scale()` is executed
  in Stage 8 against both a good and a bad input and is shown to fire.
- **R3** implicit thresholds are solved as the UPPER root, never read off.
- **R4** take maxima. NO domination is assumed anywhere. Where an arithmetic domination is
  visible it is recorded as an OBSERVATION and the leg is still carried.
- **R5** FAIL CLOSED. A stage needing an unsupplied Stage-1 input emits a CONDITIONAL row with
  the closed form printed and the missing symbols NAMED. It never invents a numeral.

**Symbol-collision guards enforced in code** (each pair is TWO objects; never merged):

| Guard | Live object | Never substituted for it |
|---|---|---|
| G1 | `h_hop` -- MM/LP.5(c) hop-and-relocate scale (L-07, L-08, `Gamma(h)`) | `h_pot` -- equilibrium/entry potential in `(SANDWICHw)`'s `h <= 1/2`, `1 - 2h >= 0` q.e. (C-16) |
| G2 | `C_3^main = C_H'' e^2 G^2 V_M / c(N,delta)` (factor `e^2`) | `C_3 = C_H'' * e G^2 V_M / c(N,delta)` (companion, factor `e`) |
| G3 | `beta_*` = `max(16/delta, 24G/(3 c_H), 1 + (5G+2)/(3 c_H))` | `beta_*^{DR}` = `max(8/delta, (2+G)/(S_k + c_H - A_tube))` -- split BY NAMING per (BETA-STAR) S0.5 |
| G4 | `A_tube = m_k + eps w_k + L_eps N delta^2/4` (TUBE-LEVEL'), `PX:9785 pre-banner = PX:9789 physical` | `A_tube = m_k + eps w_k + (25/128) L_eps delta^2`, `PX:8365 pre-banner = PX:8369 physical` (SUPERSEDED) |
| G5 | `C_H'' = C(n, e^{4G})^8` (chained, LIVE) -- read by `beta_1^weak` | `C_H'` (single application, SUPERSEDED) -- read by `beta_1^hist`, and NOT enlargeable to `C_H''` |
| G6 | `D_G = pi sqrt(2N) = 14.0496294621` (product torus, campaign-#23 seal) | `pi sqrt(N) = 9.9345882658` (single loop); `pi` (max-norm, "NOT used here") |
| G7 | `err_A := c_0 + eps w_k + L_eps N delta^2/4` (V2:3248) | the two-leg-identity reading of `err_A` (V2:414-416) -- NO closed form, so the identification is **not confirmable** and BOTH readings are carried, FLAGGED |
| G8 | `c_plate` | `kappa` -- "The constant is `c_plate`, never `kappa`" |

**Anchor provenance.** Anchors marked **[v]** were re-read directly in the read-only corpus
during this pass. All other anchors are carried from the E6 condition inventory and were **not**
independently re-verified here. Verified this pass: `V2:162, 164, 234, 237, 260, 264, 271-278,
362-364, 369, 370-373, 381, 394, 425-435, 167-186, 2600-2603, 3248, 3313-3320, 3325-3334,
3344-3352, 3363-3366, 3376, 3394, 3400`; `LP:156-159, 431-433`; `MM:116, 125, 131, 312, 344-345,
511, 533, 550, 1370, 3025-3026`; `PX physical 7399, 7405-7406, 7411-7413, 8369, 8371, 9789,
9818-9819`.

---

## 1. STAGE 0 -- REGRESSION GATE (PASS)

21 asserted rows; 21 reproduce the corpus's printed values **exactly** -- 20 at 10 dp, plus C-06's
cap at the corpus's own 7 dp printing. Any mismatch was wired as a HARD FAIL that aborts the pass.
`[PROV] V2:370-373` **[v]** (round-3 checker block, 10 dp).

| Symbol | Closed form | Computed | Corpus printed | Anchor |
|---|---|---|---|---|
| `g(10)` | `N(1 - cos(2 pi/N))` | 1.9098300563 | 1.9098300563 | `PX:1430/3003/3409 pre-banner` [CF1] |
| `m_k` | `kappa N(1 - cos(2 pi k/N))` | 1.9098300563 | 1.9098300563 | `MM:1378`; `PX:613-614, 841 pre-banner` |
| `w_k` | `W*(G_k) = N(1 - cos(2 pi k/N)) = g(N)` at `k=1` | 1.9098300563 | 1.9098300563 | `PX:565, 938, 2330 pre-banner` |
| `m_1(lambda)` | `lambda g(N)`, `lambda -> 1+` | 1.9098300563 | 1.9098300563 | `PX:1430, 3003 pre-banner` |
| `S_1 = S_k` | `2 + 8(1 - cos(pi/8))` | 2.6089637399 | 2.6089637399 | `V2:362` **[v]**; `PX:789, 849 pre-banner` |
| `c_H` | `(1/4) min(m_k + 2 kappa - S_k, 4 kappa - S_k)` | 0.3252165791 | 0.3252165791 | `LP:156-159` **[v]**; `V2:363` **[v]** |
| `c_H/2` | -- | 0.1626082895 | 0.1626082895 | `V2:363` **[v]** |
| `3 c_H` | -- | 0.9756497373 | 0.9756497373 | `V2:3290` |
| `Delta_door` | `S_k + c_H - m_k` | 1.0243502627 | 1.0243502627 | `V2:364` **[v]** |
| `(MRG)` | `Delta_door - c_H/2` | 0.8617419732 | 0.8617419732 | `V2:381-384` **[v]** |
| `(MRG)` again | `(7/8)(S_k - m_k) + kappa/4` (lambda-free identity) | 0.8617419732 | 0.8617419732 | `V2:381-384` **[v]** |
| `(ADJ-2)` @ (10, 1+) | `g(N)(lambda - 1/8) + (S_k - 2)/8` | 1.7472217667 | 1.7472217667 | `V2:394-404` **[v]** |
| `(ADJ-2)` @ (18, 1.05) | same | 1.0425473031 | 1.0425473031 | `V2:394-404` **[v]** |
| `(ADJ-2)` @ (46, 4) | same | 1.6742434887 | 1.6742434887 | `V2:394-404` **[v]** |
| `(ADJ-2)` @ (200, 1.0001) | same | 0.0894771449 | 0.0894771449 | `V2:394-404` **[v]** |
| flagship `err` | `eps g(10)` | 0.0954915028 | 0.0954915028 | `V2:369` **[v]** |
| `(THR)` RHS | `S_k + c_H - m_k - eps w_k` | 0.9288587599 | 0.9288587599 | `PX:7411-7413 physical` **[v]** |
| `D_G` product [G6] | `pi sqrt(2N)` | 14.0496294621 | 14.0496294621 | `MM:1370` **[v]** |
| `D_G` single [G6] | `pi sqrt(N)` | 9.9345882658 | 9.9345882658 | `MM:116` **[v]** |
| L-02 cap | `(2 kappa - m_k)/w_k` | 0.0472135955 | 0.0472135955 | `LP:432` **[v]** |
| C-06 cap | `kappa/(4 g(10))` | 0.1309017 (7 dp) | 0.1309017 | `V2:429-431` **[v]** |

Derived cell numerals used downstream (not part of the gate): `S_k + c_H = 2.9341803190`;
`m_k + eps w_k = 2.0053215591`; `m_k + 2 kappa = 3.9098300563`; `S_k + 4 c_H = 3.9098300563`.

---

## 2. BINDING CAPS

### 2.1 Binding `eps` cap -- **L-02**, and the design `eps` violates it

Argmin over the caps that carry landed numerals:

| Row | Cap | Value | Design `eps = 0.05` | Anchor |
|---|---|---|---|---|
| **L-02** | `eps < epsilon_0 <= (2 kappa - m_k)/w_k` | **0.0472135955** | **FAIL** by 0.0027864045 | `LP:431-433` **[v]** |
| C-07 | `eps < 1/8` | 0.1250000000 | PASS | `V2:433` **[v]** |
| C-06 | `eps < kappa/(4 g(10))` | 0.1309016994 | PASS | `V2:429-431` **[v]** |

`L-01` / `L-03` (`eps < eps_2`) are CONDITIONAL, and **cannot loosen the binder**: `eps_2` is a
`min` that INCLUDES `epsilon_0` `[PROV] LP:185-212`, so `eps_2 <= epsilon_0 <= 0.0472135955`.

### 2.2 Binding `delta` cap -- **C-08 (`c_plate > 0`), tied by C-03 (H-SEP)**

All four delta rows reduce to a cap on the single quantity `Q := L_eps N delta^2 / 4`
(`= 2.5 L_eps delta^2` at `N = 10`):

| Row | Condition | Cap on `Q` | Equivalent `delta` cap | Anchor |
|---|---|---|---|---|
| **C-08** | `c_plate > 0` | **`Q < 0.4644293800`** | `delta < 0.4310124731 / sqrt(L_eps)` | `V2:3248` **[v]** |
| **C-03** | `(H-SEP)`, N-corrected | **`Q < 0.4644293800`** (TIE) | `delta < 0.4310124731 / sqrt(L_eps)` | `V2:3246` |
| C-09 | `(THR)` | `Q < 0.9288587599` | `delta < 0.6095436850 / sqrt(L_eps)` | `PX:7411 physical` **[v]** |
| C-11 | `3 c_H - 2 eta > 0` | `Q < 0.9756497373` | `delta < 0.6247078476 / sqrt(L_eps)` | `V2:3290` |

C-09 is looser by a factor 2.000000 on `Q`; C-11 by 2.100749. C-20 (`delta < pi = 3.1415926536`,
`PX:7399 physical` **[v]**) has a landed cap but is the loosest by a wide margin. C-12
(`c_0 - eta = Q/2 > 0`) holds structurally for every `delta > 0`, `L_eps > 0`.

This **confirms the inventory's tension (b)**: the binding delta cap is `c_plate`'s. The C-03 tie
is new to this pass (the inventory's tension (b) compares C-08 / C-09 / C-11 only) -- see O-1.

### 2.3 Binding `beta` leg -- **CONDITIONAL, no argmax available**

Every leg of the collected S7.2 threshold reads at least one unsupplied Stage-1 input (`G`, and/or
`L_eps`, and/or `delta`), so no argmax can be taken. What the pass DID establish:

- The collected threshold is the MAX over the ten named thresholds `beta_plate, beta_S4, beta_env,
  beta_1, beta_2, beta_W, beta_W', beta_*, beta_*^{DR}, beta_door`, plus the bare condition
  `beta >= 8/delta` ((v4c)). The bare `beta >= 4/delta` is DOMINATED -- the ONLY domination the
  ledger itself asserts, and arithmetically confirmed here (`16/delta >= 4/delta`).
  `[PROV] V2:3400` **[v]** (ledger completeness clause; "this ledger's authority is the
  enumeration by name").
- Conservative single reading: `max(beta_*, beta_*^{DR})`. `[PROV] V2:249-252, V2:3394` **[v]**
- **Partial reductions achieved** from landed numerals alone (`3 c_H = 0.9756497373`,
  `S_k + c_H - m_k - eps w_k = 0.9288587599`):

```
beta_*      = max( 16/delta , 24.5989919164 G , 1 + 5.1247899826 G + 2.0499159930 )
beta_*^{DR} = max( 8/delta  , (2 + G) / (0.9288587599 - Q) )
beta_plate  = 2 / (0.9288587599 - 2Q)
beta_door   = 8G / (0.9288587599 - 2Q)
beta_env    = 8 max(2G, 1) / (L_eps N delta^2) = 2 max(2G, 1) / Q
```

- **No leg was dropped.** The arithmetic observations recorded (`beta_S4 >= beta_plate`;
  `beta_W >= beta_env, beta_plate`; `beta_W' >= beta_W`; `beta_2`'s (C0) leg `= 1/c_plate =
  beta_plate/2`) are OBSERVATIONS only. `[PROV]` "NO domination between the two is claimed; the
  max is what every consumer reads" `V2:3333-3334` **[v]**; "NO DOMINATION `beta_S4 >= beta_*`
  is proved" `V2:3381-3388`.

---

## 3. THREE-CLASS TABLE

Counts: **VERIFIED 10 | CONDITIONAL 47 | TYPED-UNVERIFIABLE 9 | REPORTED FINDING 2** (68 rows
emitted), plus Stage 0's 21 asserted cell-scalar rows (all PASS).

### 3.1 VERIFIED -- closed form + landed numerals; a definite verdict was reached (10)

| Row | Statement | Verdict | Basis | Anchor |
|---|---|---|---|---|
| C-07 | `eps < 1/8` | PASS | 0.05 < 0.125 | `V2:433` **[v]** |
| C-06 | `eps < kappa/(4 g(10))` | PASS | 0.05 < 0.1309016994 | `V2:429-431` **[v]** |
| **L-02** | `eps < (2 kappa - m_k)/w_k` | **FAIL** | 0.05 > 0.0472135955 | `LP:431-433` **[v]** |
| C-12 | `(MARGIN-GEN)` `c_0 - eta = Q/2 > 0` | PASS | structural for `delta > 0`, `L_eps > 0` | `V2:277` **[v]**, `V2:1716` |
| C-22 | `(GATE-LOWER)` non-strict chain `m_k + 2 lambda >= m_k + 2 kappa >= S_k + 4 c_H` | PASS | `S_k + 4 c_H = m_k + 2 kappa` EXACTLY (diff 0.000e+00) | `V2:1279, V2:3299` |
| B-13 | `beta >= 4/delta` DOMINATED by `beta_*`'s `16/delta` | PASS | `16/delta >= 4/delta`, all `delta > 0` | `V2:3389-3391` |
| C-14 | `(RAMP-ADM)` `3 beta c_H > 5G + 2` | PASS | structural: `beta_*` carries the leg `1 + (5G+2)/(3 c_H)` and `1 + x > x` | `V2:215-216, 220-223`, `V2:3292` |
| C-15 | `(DOOR-CASE1)` `c_plate/(2G) >= 4/beta` | PASS | structural via `beta_door := 8G/c_plate` | `V2:3251, V2:3335-3339` |
| C-19 | `theta_2` window `[S_k + c_H - 1/beta, S_k + c_H]` NONEMPTY | PASS | endpoint `2.9341803190` landed; length `1/beta > 0` | `V2:3298, 605-606, 2674` |
| L-06 | M2-PIN `lambda > kappa` | PASS | holds for every `lambda > 1`; the flagship NAME `(10, 1+)` is the BOUNDARY, so all lambda-bearing printings are LIMIT values | `V2:347-348, 345-346` |

C-14 and C-15 are **structural discharges**: the implication is arithmetic, so no numeral is
required -- but C-15 presupposes `c_plate > 0` (C-08), which is CONDITIONAL. C-19 is verified for
the NONEMPTINESS only; the Sard-regular SELECTION of `theta_2` is typed (see 3.3).

### 3.2 CONDITIONAL -- closed form printed, awaiting supplied Stage-1 inputs (47)

Every row below prints its closed form with the missing symbols named. Representative rows; the
runlog carries all 47 with their full closed forms.

| Row | Closed form (as printed by the pass) | Missing | Anchor |
|---|---|---|---|
| C-08 | `c_plate = 0.9288587599 - 2Q > 0` | `L_eps` | `V2:3248` **[v]** |
| C-03 | `delta^2 < 2(S_k + c_H - m_k - eps w_k)/(N L_eps)` i.e. `Q < 0.4644293800` | `L_eps` | `V2:3246` |
| C-09 | `Q < 0.9288587599` | `L_eps` | `PX:7411 physical` **[v]** |
| C-11 | `Q < 0.9756497373` | `L_eps` | `V2:3290` |
| C-05 | `eps w_k + O(N L_eps delta^2) + s + s' < RHS`; `eps w_k = 0.0954915028`, flagship RHS `= (MRG) = 0.8617419732`, slack `0.7662504704` | the `O(.)` constant, `L_eps`, `delta`, `s`, `s'` | `V2:425-427` **[v]**, `V2:3247` |
| C-13 | `(NEARS-ERR)` `c_0 - eta - err_S > 0` i.e. `Q/2 > err_S` | `err_S`, `L_eps`, `delta` | `V2:3264` |
| C-01 | `delta/2 + 4/beta < inj(T^{2N})`; reduced `delta/2 + 1/beta < inj` | `inj_M`, `delta`, `beta`, **declared normalization [G9]** | `V2:3245` |
| C-02 | `8/beta < inj(M)`, `rho := 1/beta` | `inj_M`, `beta`, **normalization [G9]** | `V2:508, 519-520` |
| C-10 | `(C0)` `<=> beta >= 1/c_plate = 1/(0.9288587599 - 2Q)` (reduction EXACT) | `L_eps`, `delta` | `V2:271-273` **[v]** |
| C-20 | `delta < pi = 3.1415926536` (cap LANDED) | `delta` | `PX:7399 physical` **[v]** |
| C-21 | `delta/2 <= r0` | `r0`, `delta` | `PX:7405-7406 physical` **[v]** |
| S4-`err_A` | `err_A = 0.0954915028 + 2Q` **[G7 reading (ii)]** | `L_eps`, `delta` | `V2:3248` **[v]** |
| S4-`A_tube` | `A_tube = 2.0053215591 + Q` (TUBE-LEVEL') **[G4]** | `L_eps`, `delta` | `PX:9785 pre-banner = 9789 physical` **[v]** |
| S4-`C_3` / `C_3^main` | `C_H'' * e * G^2 V_M / c(N,delta)` vs `C_H'' e^2 G^2 V_M / c(N,delta)` **[G2]** | `C(n,.)`, `G`, `V_M`, `c(N,delta)` | `V2:1685-1686` / `V2:1697, 3303` |
| B-01..B-14 | the S7.2 ledger, reduced as far as landed numerals allow (see 2.3) | `G`, `L_eps`, `delta` | `V2:3313-3394` **[v]** |
| B-05a | `C_3^main e^{6G} beta^{2N+1} exp(-beta(3 c_H - 2 eta)) <= 1/2`, `2N+1 = 21`, `3 c_H = 0.9756497373` | `C(n,.)`, `G`, `V_M`, `c(N,delta)`, `L_eps`, `delta` | `V2:173-180, 3325-3333` **[v]** |
| B-05b | `beta_1^hist` -- **CONDITIONAL ON THE FORM**: the defining expression (the last line of the HISTORICAL (ENTRY), S3.2) is not displayed, so no root-finder can run | the relation itself, `C_H'`, `eta` | `V2:170-172` **[v]** |
| B-07 | `beta_2` -- the `(ENTRY-W)`-last-line leg's relation is NOT displayed; the `(C0)` leg IS reduced here to `beta >= 1/c_plate`; plus the disclosed `beta_2 >= beta_env` | the (ENTRY-W) relation, `L_eps`, `delta`, `G` | `V2:3344-3348` **[v]** |
| L-07 | `beta >= 16/h^2`; under reading E1 (`h = delta/2`) this is `beta >= 64/delta^2` | `h`, `beta`, **F-2 adjudication** | `MM:511, 533, 446` **[v]** |
| S8-`Gamma` | `Gamma(h) = 84.2977767725 * C_1 * h`; under E1, `= 42.1488883862 * C_1 * delta` **[G6: product `D_G`]** | `C_1` (derivable from `L`), `h`, F-2 | `MM:312, 135, 131` **[v]**; `MM:1370` **[v]** |
| S8-`err` | `err(delta) = 18 C_Z(tau) delta^2` | `C_Z(tau)`, `delta`, `tau` | `MM:549-550` **[v]** |
| L-03 / L-04 / L-05 | the LP `eps_2` / `eps'_0` / `r_0'` ledgers, printed entry-by-entry; landed legs: `S_k - 2 kappa = 0.6089637399`, `4 c_H = 1.3008663163` | 16 / 3 / 7 named LP constants | `LP:185-212, 183-184, 170-182` |
| L-11 / L-14 | `r0 <= inj(M)/4`; `J - m_k >= (c_perp/2) dist^2`, `|grad J| <= L dist` | `r0`, `inj_M`; `c_perp`, `L` | `MM:106, 421, 530`; `MM:109` |

**Stage-1 inputs the pass had to be supplied and was NOT (51).** `G`, `L`, `L_eps`, `inj_M`,
`V_M`, `omega_{n-1}`, `c(N,delta)`, `C(n,.)`, `c_perp`, `r0`, `C_1`, `C_Z(tau)`, `gamma_2`, `C_w`,
`C_B`, `C_ch`, `err_B`, `err_S`, `T_sig`, `T_row`, `T_1`, `T_b`, `T_init`, `T_relax`, `T_sub`,
`C_s`, `K_abs`, `c_Z`, `C_Z`, `C'_Z`, `lambda_u`, `Lambda_s`, `Lambda_min`, `C_N`, `c_1`, `C_fr`,
`L_fr`, `W_sup`, `c_shell`, `L_E`, `r_0'`, `eps'_0`, `epsilon_0`, `epsilon_1`, `eps_2`, `s`, `s'`,
`delta`, `h`, `theta_2`, `tau`. **`G` and `L` (hence `L_eps`) gate the most rows and neither has a
landed numeral anywhere in V2 / MM / LP / PX for the flagship cell** `[PROV] V2:160, V2:3317;
V2:161, MM:132, MM:657`.

The Stage-6 root-finder is live: a labelled SOLVER SELF-TEST on SYNTHETIC inputs (explicitly not
corpus values, and not a verification of any row) solves the `beta_1^weak` relation to residual
`|log f| < 4e-11` at three test points. Supplying `C(n,.)`, `G`, `V_M`, `c(N,delta)`, `L_eps`,
`delta` converts B-05a from CONDITIONAL to VERIFIED with no code change.

### 3.3 TYPED-UNVERIFIABLE -- no numerical content a pass can evaluate (9)

| Row | Why | Anchor |
|---|---|---|
| C-04 | `(H-SEP)` strength flag: `dist(z, Door') > 0` vs `>= 2rho` -- a mismatch between two displayed rows; no numeral resolves it | `V2:3246` |
| C-16 | `(SANDWICHw)` `1 - 2h >= 0` **q.e.** on the solid `A_z`; `h <= 1/2`. **[G1]** this `h` is the potential, not `h_hop`. "q.e." is not numerically checkable | `V2:3251 (T-9)` |
| C-17 | TRAP nonemptiness / properness -- set-theoretic side condition of the realization | `V2:3259 (T-12)` |
| C-18 | `cap(A_z, closure(S)) > 0`, `cap(TRAP, closure(S)) > 0` -- potential-theoretic positivity | `V2:3296` |
| C-23 | `(SIGMA0-EXC)` tiers -- TYPED, NOT DISCHARGED. Only landed numeral inside either tier is `c_H/2 = 0.1626082895` | `V2:3244 (T-2), V2:3210` |
| C-24 | GAP-LP-RECUR @ A6 -- REOPENED. Landed cell part: `S_k - m_k = 0.6991336837`, `eps(S_k/kappa - w_k) = 0.0349566842` | `V2:3243 (T-1)` |
| L-10 | one-metric discipline -- interacts with [G6]/[G9] but carries no scalar | `MM:101-102, 588, 1359` |
| L-12 | no-common-small-set composition discipline -- no scalar | `MM:1965` |
| L-13 | non-identification fence: `w_k` and `S_k/kappa` NEVER identified; `g_k := m_k/kappa = W*(G_k)` DELETED | `MM:760, 766, 940` |

L-13 is **enforced in code**: `w_k` is computed from `N(1 - cos(2 pi k/N))` and `S_k` from its own
closed form; no code path divides `m_k` by `kappa` to obtain `w_k`. At the flagship they coincide
numerically (`kappa = 1`) -- which is exactly why the fence exists.
C-19's Sard-regular SELECTION of `theta_2` inside its window is typed in the same sense (the
window's nonemptiness is verified in 3.1; the selection is not).

---

## 4. THE TWO TENSIONS -- NAMED FINDINGS

### FINDING F-1 -- the L-02 `eps` cap is VIOLATED at the design `eps = 0.05`

**Statement.** `eps = 0.0500000000` against the cap `(2 kappa - m_k)/w_k = 0.0472135955`.
**FAIL by 0.0027864045.**

**Substance.** M2P's third entry supports the inequality `2 kappa > m_k + eps w_k`
`[PROV] LP:431-433` **[v]**. At the flagship that reads

```
2 kappa       = 2.0000000000
m_k + eps w_k = 2.0053215591        ->  the inequality is FALSE by 0.0053215591
```

`N = 10` is the WORST cell for this cap; `g(N)` decreases in `N`, so the cap loosens:

| `N` | cap `(2 kappa - m_k)/w_k` | `eps = 0.05` |
|---|---|---|
| 10 | 0.0472135955 | **FAIL** |
| 18 | 0.8424131932 | PASS |
| 46 | 3.6680275892 | PASS |
| 200 | 19.2659034774 | PASS |

`(SML')`'s own operative anchors (C-06, C-07) are LOOSER and do not subsume it, and `eps_2` is a
`min` that INCLUDES `epsilon_0`, so it cannot loosen it either.

**CANDIDATE DISPOSITIONS -- the choice is the lead's. This pass did NOT substitute a compliant
`eps`; every downstream row is evaluated at 0.05 as specified.**

- **D1 -- retune `eps` below 0.0472135955** and re-run every eps-bearing row (`err = eps w_k`,
  `err_A`, `c_plate`, `(THR)` RHS, `A_tube`, `(SML')`). Cheap arithmetic, but `eps = 0.05` is a
  NAMED numeral in landed displays `[V2:369, V2:430-432 **[v]**, PX:7412 physical **[v]**]`, so
  this is a corpus-wide renumbering, not a local edit.
- **D2 -- move the flagship cell off `N = 10`.** The cap loosens with `N`, but `(MRG)` is
  "LAMBDA-FREE AND INCREASING IN `N`, so `N = 10` is the worst TRAP_2 cell" `[V2:381-384]` **[v]** --
  moving `N` trades one worst-cell for another and requires re-reading which cell is worst for
  which leg.
- **D3 -- consumer walk.** Establish whether M2P's third entry is actually instantiated at the
  flagship by the LP.5(c) / A6 consumer. If no consumer instantiates M2P at `N = 10` the cap may
  be out of scope here -- but that is a walk to be performed, not an assertion to be made.
- **D4 -- carry it as a TYPED row in the register**, which is the corpus's own existing device for
  exactly this situation (cf. T-3 / T-6's "NOT VERIFIED against the lane's standing delta"
  `[V2:3245, V2:3248]`).

### FINDING F-2 -- the h-discipline conflict, L-08 vs L-09

Two h-vs-delta disciplines are printed in the same file:

- **L-08** `[PROV] MM:3025-3039` **[v]**: "1. FIX (eps, delta, h = delta/2) ... 2. beta ->
  infinity FIRST ... 3. THEN delta -> 0 and h -> 0 (h = delta/2) ... 4. THEN the eps-window"
- **L-09** `[PROV] MM:344-345` **[v]**: "3. THEN delta -> 0 - err(delta) -> 0 (taken at fixed h,
  so `delta <= h` stays in force);" then "4. THEN h -> 0"

**Arithmetic.** `h = delta/2` gives `h <= delta`, and `delta <= h` reads `delta <= delta/2`, which
is FALSE for every `delta > 0` and true only at `delta = 0` -- which rule R2 forbids the pass from
evaluating at. **The two clauses are jointly satisfiable at no admissible point of the schedule.**
Tabulated in the runlog at `delta = 0.4 / 0.2 / 0.1 / 0.05`: `h <= delta` TRUE, `delta <= h` FALSE
at every one.

**CANDIDATE DISPOSITIONS -- the choice is the lead's. This pass did NOT adjudicate; `h` is left
unpinned and L-07 / `Gamma(h)` are reported under both readings where they differ.**

- **E1 -- L-08 governs.** `MM:3025`'s "FIX (eps, delta, h = delta/2)" is the TOP of the mandated
  order and L-09's "delta <= h" is read as an inverted transcription of "h <= delta". Under E1 the
  diffusive floor becomes `beta_0 = 16/h^2 = 64/delta^2` -- the same `delta^{-2}` shape as
  `beta_env = 8 max(2G,1)/(L_eps N delta^2)`.
- **E2 -- two schedules, one file.** `MM:3025` ties `h = delta/2` and sends them together;
  `MM:344-345` sends `delta -> 0` at FIXED `h` and only afterwards `h -> 0`. Under E2 the pass must
  record, per consumer of `Gamma(h)` / `err(delta)`, WHICH schedule it reads.
- **E3 -- L-09 is a statement about the ORDER, not a standing constraint.** Under `MM:344-345`'s
  schedule `delta` drops below the fixed `h`, so "delta <= h" becomes true en route. E3 is the most
  economical reconciliation and is consistent with both printings read verbatim -- but adopting it
  is a lead adjudication and is not performed here.

**Downstream consequence.** L-07's floor `beta h^2 >= 16` (LOAD-BEARING, `MM:533` **[v]**) reduces
to a `delta` condition only under E1. `Gamma(h) = 6 C_1 D_G h = 84.2977767725 * C_1 * h` is
independent of the adjudication; its reduction to `42.1488883862 * C_1 * delta` is not.

---

## 5. SUBORDINATE OBSERVATIONS (computed by this pass; NOT among the two named tensions)

- **O-1** C-03 (`H-SEP`) and C-08 (`c_plate > 0`) reduce to the SAME cap `Q < 0.4644293800` and
  TIE for binding. The inventory's tension (b) compares C-08 / C-09 / C-11 only; adding C-03 makes
  it a tie, not a change of binder. Both legs are carried.
- **O-2** `(SML')`'s printed constant `0.0894771449` is the `(ADJ-2)` value at the WORST SAMPLED
  cell `(200, 1.0001)` `[V2:394-404]` **[v]**, not the flagship RHS. The flagship reading is
  against `(MRG) = 0.8617419732` and is stated verbatim at `V2:426-427` **[v]** ("at the flagship
  cell the same condition clears against 0.861742 with room"); it PASSES with slack
  `0.7662504704` before the err terms. Reading the flagship `eps w_k = 0.0954915028` against the
  printed `0.0894771449` would FAIL by `0.0060143580`, but that mixes the flagship's `eps w_k`
  with another cell's RHS -- a category error, not a corpus defect: at `(200, 1.0001)` the same row
  reads `eps g(200) = 0.0049343963`. The pass evaluates `(SML')` at the FLAGSHIP RHS and flags the
  vintage.
- **O-3** C-22's second inequality holds with EXACT equality: `S_k + 4 c_H = m_k + 2 kappa`
  identically, because the active `c_H` branch is `(m_k + 2 kappa - S_k)/4`. This is why the corpus
  records the STRICT middle clause as NOT CONSUMED.
- **O-4** `beta_2`'s `(C0)` leg reduces exactly to `beta >= 1/c_plate = beta_plate/2`. Recorded as
  an observation; the leg is still carried in the max per R4.
- **O-5 (anchor hygiene)** `A_tube`'s two PX numbers cited at `V2:162` are PRE-BANNER. Re-read
  this pass: the OPERATIVE `(TUBE-LEVEL')` line is at PX physical **9789** and the SUPERSEDED
  `(25/128)` scale choice at PX physical **8369** -- i.e. `pre-banner + 4` in both cases, confirming
  the convention stated in section 0.

---

## 6. SCOPE FENCE

This pass evaluated the rows **named** `C-01..C-24`, `B-01..B-14`, `L-01..L-14`, together with the
derived-scalar rows `S4-c_0`, `S4-eta`, `S4-err_A`, `S4-c_plate`, `S4-A_tube`, `S4-gap_DR`,
`S4-C_H''`, `S4-C_3`, `S4-C_3main`, `S4-C_4`, `S4-C_5`, `S4-T_row`, `S8-Gamma`, `S8-err`, at the
flagship cell `(N, kappa, lambda) = (10, 1, 1+)` with the design `eps = 0.05` and `delta` left as a
free positive scale. **Its authority is that enumeration.** It asserts nothing about rows not named
here, and it makes no quantified claim of exhaustiveness over `lane-prodexc-v2.md`,
`lane-minmig-proofs-v1.md`, `lane-lp-product-saddle-v1.md` or `lane-prodexc-proofs-v1.md`. The
inventory's own fence is carried unchanged: rows `T-19..T-22` (bind LP.5(c) only, RECORD not
landed), `T-23..T-25` (adjudicated NOT CONSUMED) and `T-26..T-29` ("condition no display";
`T-29`'s only ordinary condition is `(RAMP-ADM)`, included above as C-14 / B-10's third leg) are
outside scope and were not evaluated. `T-9` is a RECORD row and "conditions nothing"
`[PROV] V2:3251`, so it appears here only as the home of C-15's and C-16's statements, not as a
condition of its own. The same discipline is the corpus's own, verbatim at V2 S7.1's header: "its
authority is that enumeration, and it makes no quantified claim of exhaustiveness over the
consolidated chain."

Anything in this artifact not reproduced from a landed closed form is an E6 **typed** row, not a
verified one.

## 7. LEAD ADJUDICATION (2026-08-02) -- the layer ABOVE the design-point record

The design-point run (Sections 0-6, `eps = 0.05`) is the RECORD and is not
rewritten. The lead adjudicated both named tensions the same day; the
adjudication layer is computed by `e6_adjudication.py` (companion runlog
`e6_adjudication_runlog.txt`, exit 0, its own Stage-0 regression PASS).

### 7.1 F-1 adjudicated -- the E6 instantiation point is `eps = 0.045`

Disposition **D4 + D1-deferred**: the L-02 row is carried TYPED against the
design NAME (`eps = 0.05` stays as the printed vintage at `[V2:369]`,
`[V2:430-432]`, `[PX:7412 physical]`; no corpus renumbering by this pass --
that decision rides to the external gate), and every sub-cap consumer --
including E5's start domain `D_k(eps)`, whose supporting inequality
`2 kappa > m_k + eps w_k` is FALSE at the name -- is instantiated at the
adjudicated point:

| Check | Value at 0.045 | Verdict |
|---|---|---|
| L-02 `eps < 0.0472135955` | margin `0.0022135955` | PASS |
| C-07 `eps < 1/8` | margin `0.0800000000` | PASS |
| C-06 `eps < 0.1309016994` | margin `0.0859016994` | PASS |
| M2P support `2 kappa > m_k + eps w_k` | `2.0000000000 > 1.9957724088`, margin `0.0042275912` | TRUE |

Adjudicated eps-bearing rows (design-vintage value in brackets):
`err = eps g(10) = 0.0859423525` [was `0.0954915028`];
`(THR) RHS = 0.9384079102` [was `0.9288587599`];
`m_k + eps w_k = 1.9957724088` [was `2.0053215591`];
`eps (S_k/kappa - w_k) = 0.0314610158` [was `0.0349566842`].
Derived delta caps: C-08 becomes `Q < 0.4692039551`
(`delta < 0.4332223240 / sqrt(L_eps)`) [was `Q < 0.4644293800`]; C-09 becomes
`Q < 0.9384079102`; C-11 unchanged (eps-free). E5's two minted rows:
`(E5-MARGIN)`'s numeral `0.9341803190` is eps-free (unchanged);
`(E5-TRAPMARGIN)`'s strict form evaluates to `0.7995374410 > 0`
[was `0.7899882907`] -- both PASS, the margin improves. NUMERAL CONVENTION (adjudicated): derived
numerals are double-precision evaluations of the landed closed forms rounded
to 10 dp (the Stage-0 method); decimal arithmetic on the printed 10-dp
scalars differs by one final ulp on the (E5-TRAPMARGIN) rows and is NOT the
convention (recorded).

### 7.2 F-2 adjudicated -- L-08 GOVERNS (disposition E1-operative)

`MM:3025-3039` is the corpus's mandated order-of-limits block (FIX
`(eps, delta, h = delta/2)`; `beta -> infinity` FIRST; THEN `delta -> 0` and
`h -> 0` together), so the diffusive floor L-07 reads
`beta_0 = 16/h^2 = 64/delta^2` -- the same `delta^{-2}` shape as `beta_env`,
consistent with the order. The L-09 line (`MM:344-345`, "delta <= h stays in
force") is jointly unsatisfiable with `h = delta/2` at every `delta > 0` and
is RECORDED AS A VARIANCE to be cured at the next MM-touching pass (one
line); it is not read by this pass. As a belt, disposition E2's per-consumer
schedule recording is adopted: every `Gamma(h)`/`err(delta)` consumer in this
artifact reads schedule L-08.

### 7.3 (E5-GTUBE-NUM) -- the XE-12-cure row (added 2026-08-02)

The XE-12 external verdict found E5's LEG (ii) confinement warrant cited the
SADDLE tube's ledger for a segment in the GROUND tube (object substitution;
BLOCKING). The cure minted `(E5-GTUBE-NUM)`, the G_k-tube corollary of the
landed COLLAR GEOMETRY LEMMA (PX:8150-8162 physical):
`delta/2 < pi - 2 pi k/N` -- at the flagship `(k, N) = (1, 10)`:
`delta < 8 pi/5 = 5.0265482457`. CLASS: VERIFIED AS AN IMPLICATION -- it is
implied with slack `12.5663706144` x (exactly `4 pi`) by T-3's own
reduced cap `delta <= 2/5`, and UNCONDITIONALLY by C-20 (`delta < pi =
3.1415926536`, `PX:7399 physical`), which is `L_eps`-free. The
`L_eps`-bearing delta caps of Section 2.2 do NOT imply it at small
`L_eps` (each exceeds `5.0265482457` once `L_eps < 0.0073524`) and are
not cited for it; `delta` itself remains the free positive scale. The row
is MINTED at E5 Section 2.3 and COLLECTED in the T-6-fence list at E5
Section 7.1.

### 7.4 (E5-LEVEL-Q) positivity -- the second XE-12-cure row (added 2026-08-02)

The lead's R-2 enumeration found the START LEVEL row embedded in
(TRAPOCC-2-ROUND)'s printed exponent (E5 Section 4.5 row (d)); the
re-substituted branch-(A) exponent is `S_k + c_H - 2 kappa - err =
0.9341803190 - err`. The positivity row, T-6-fence class:
`err < 0.9341803190`. At the adjudicated `eps = 0.045`:
`err = eps g(10) = 0.0859423525` plus `delta^2`-class terms, margin
`0.8482379665` before the `delta^2` terms -- slack over 9x. CLASS:
VERIFIED at the adjudicated point modulo the `delta^2`-class terms
(delta remains the free positive scale; the terms are bounded by the
binding Q-caps of Section 2.2 once `L_eps` is supplied).


### 7.5 Post-XE-14 movement of C-23 / C-24 (recorded 2026-08-02; the run record above is NOT rewritten)

XE-14 (verdicts/XE-14-2026-08-02.md, SOUND) moved two of the nine
TYPED-UNVERIFIABLE rows at the signed narrow boundary: C-23 (SIGMA0-EXC)
is DISCHARGED AT (TIER-A6-RATE) BY THAT NAME, and C-24 (GAP-LP-RECUR) is
DISCHARGED-AT-THE-MIN-OBJECT AT RATE STRENGTH - the full E_q[D(0)]
expectation stays typed-unconsumed and the package/full LP.5(c) upper
keeps its A6 fence verbatim (the fence now guards exactly that
full-expectation reading). The standing parameter debt after XE-14 is
therefore the 47-row CONDITIONAL class plus the remaining seven typed
rows. The Stage-9 counts above stand as the design-run record.
