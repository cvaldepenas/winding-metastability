# LS-MIN-MIG / LP-MIN-MIG — the assembled migration proofs (fleet record, lead-amended)

Status:

```text
status = ASSEMBLED 2026-07-20 from a two-round draft + demanding-check
  fleet (operator go same day; every piece checked by an independent
  fresh checker against the 8 named defect classes). Drafts preserved
  as produced; lead amendments A1-A2 marked below their pieces with
  sources.
grades = M1 SOUND (round 2) / M2 SOUND (round 1) / M3 REPAIRABLE ->
  cured by amendment A1 / M4 REPAIRABLE -> cured by amendment A2 /
  M5: the round-2 SOUND is VOIDED (cold pass 2026-07-20: the draft
  returned a PLACEHOLDER proof body, so its check evaluated a stub
  - the grade was contaminated); M5 re-run LANDED same day:
  full 27k-char body, length-asserted, fresh checker SOUND (1 MINOR
  + 2 NOTEs recorded in the piece). The artifact is COMPLETE; the
  void-grade history above is preserved as the record of what the
  cold pass caught.
XM OUTCOME (2026-07-20): NOT DISCHARGE-SOUND (2B+3M+2m); rounds
  3-4 landed R1/R2/R3 + A5. XM-R OUTCOME (same day): NOT
  DISCHARGE-SOUND - 3 BLOCKING + 1 MAJOR + 1 MINOR
  (verdicts/XM-R-2026-07-20.md, lead-verified). THE HONEST STATE:
  R1's SP_1 leg is substantially right but its exact-interface
  claim has a constant mismatch (start -3delta / target +2delta
  gives |x-y| = 5delta > the LS.5a 3delta contract) and R1's OWN
  TEXT types the four Z_high obligations OPEN (GAP-M2-HIGH) - the
  earlier header line calling the rows discharged was the F4
  defect, cured here. R2's skeleton blocks are NOT the continuous
  terminating rounds R3 consumes (path-marked lift asserted, not
  constructed; coin-timing field defect; no LP.5-attempt
  containment in T*). R3 carries start-domain, zero-index,
  phase-A-duration, sigma_0 and contract-strengthening defects.
  M1/M2/M5 stand; winding-j
  non-consumption stands; F5/F6 CURED per XM-R. ROUND 5 LANDED
  2026-07-21 (R5a/R5b/R5c + A6/A7); XM-R2 then found 3 BLOCKING
  (the collar-containment, the collar-exit charge, the propagation
  batch) - ROUNDS 6-8 LANDED same day: R6a the collar-killed
  crossing event; Lemma KD (R7a mechanism + R8a geometry: killed
  on the max-norm cube, SR-KD imported on the inscribed smooth
  ball, transferred by domain monotonicity - the route the R8a
  drafter CORRECTED against the lead's own prescription, since a
  Euclidean-killed semigroup would kill corner starts of the
  max-norm S); R6b/R7b the collar-exit charge (flat modes priced,
  never beta-free) + the delayed-return floor; R8b deletes B_gate
  (the ascent launches from B_ref via KD). Lead amendments A6-A9.
  ALL INTERNAL ROWS DISCHARGED-IN-ARTIFACT [THIS STATUS SURFACE IS GOVERNED BY THE A6 FENCE - XE-9 item 5: GAP-LP-RECUR at A6 strength is OPEN for the package/full LP.5(c) UPPER (Section-11 governing note; register restored to OPEN-A6); the narrow ordinary i >= 1 E2 display is separate and unaffected; any future PROD flip must preserve this condition] (flagship scope);
  external rows = PROD-EXCURSION + PROD-EXCURSION-COND. FLIPS
  EXECUTED 2026-07-26: XM-R16 signed DISCHARGE-SOUND (seventeenth
  external review; LEDGER row at the terminal LEAD-VERIFIED state
  the apply gate itself enforces) and the lead ran --apply (60
  anchors, six consumers) + the occurrence sweep + --manifest in
  ONE commit. LS-MIN-MIG and LP-MIN-MIG are DISCHARGED at every
  operative surface; the label tower is TWO-SIDED top-to-bottom;
  the coupled upper keeps exactly the excursion pair.
[SUPERSEDED PARAGRAPH (XM-R3 F4): the block below this line down to
the provenance row predates rounds 5-8 and named the old XM/XH-R3
gates; the LIVE gate is the wiring-plan line (round-6-8 cures +
XM-R4). Preserved as record; not operative.]
grade of the WHOLE = ASSEMBLED, FLEET-CHECKED (XM: see above); the LS/LP-MIN-MIG
  rows in lane-ls / lane-lp / lane-lt / master-theorem stay TYPED
  until (i) a cold pass over THIS document returns SOUND (first
  pass 2026-07-20: REPAIRABLE - M5 splice + A3/A4 + wiring
  additions, all applied) and (ii) the external review of THIS
  artifact (XM, queued) signs - then the consumer flips run with
  the exhaustive-propagation checklist. [The earlier (ii) named
  XH-R3, which had ALREADY signed - a stale gate, cured by the
  cold pass's honesty lens.]
provenance = fleet runs wf_564f55dd (round 1: 4 drafts + 4 checks) +
  wf_d1fc5626 (round 2: 3 repairs + M5 + 4 fresh checks); Stage-A
  probes lz_kick_probe / l2_product_probe (consistency inputs only).
typed gaps carried (register at the end): GAP-M1-NORM, L1-Z-TUBE
  (non-flagship residue), GAP-M5-* (per piece), GAP-M2-HIGH-NONFLAG,
  and the TWO external excursion rows: PROD-EXCURSION (parent) +
  PROD-EXCURSION-COND (conditional-uniform companion, R5b).
anti-quantization firewall = BINDING / NO PHYSICS CLAIMS
```



---

# M1 — single-loop ground re-basing (LS-MIN-MIG)

(fleet grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

## M1 — SINGLE-LOOP GROUND RE-BASING (LS-MIN-MIG, ATTEMPT-side ground legs) — ROUND 2

Replacement for the ATTEMPT phase's ground-side lemmas in Theorem LS.5. The former
text invoked "the [MACH-UP] SH.3 sandwich (SH.1 + SH.2 + SH.2', verbatim — the
ground-side lemmas in their original scope)"; the SH.2' consumption there is the
LS-MIN-MIG migration site (the global SH.2'(b) minorization was REFUTED by X3). The
reversal identity (SH.1) and the max-norm tracking (SH.2) are UNAFFECTED and are quoted
as before; only the two GROUND legs that consumed the refuted global lemma are re-based
on the local toolkit — the tube-return along the ground circle onto L2, and the
reversible average-to-infimum onto L1' (A4+A5). This mirrors, one dimension down, the
in-lane migration already landed in lane-sh (SH.3 Step 4 -> L1'; the along-G chain -> L2).

### 0. Metric declaration and toolkit applicability (one declared metric for the local legs)

Work in the geodesic metric of `M = T^N` (Euclidean on the lift below `inj(M)`), and use
this ONE metric for the two LOCAL ground legs (COORDINATION [23] §C/§D caution: one
declared metric per consumer). The single-loop ground `C_k` is the diagonal winding-`k`
circle `t -> theta* + t(1,...,1)`, a translation-subgroup orbit of critical points with
`J = J_kappa`, `J|_{C_k} = m_k`; the certified loop facts give the transverse
nondegeneracy in a tube `T_{r0}(C_k)` (`r0 <= inj(M)/4`),

```text
J - m_k >= (c_perp/2) dist(., C_k)^2 ,      |grad J| <= L dist(., C_k) .
```

Hence L1, L1', L2 apply VERBATIM with `(G, e_0) := (C_k, m_k)`. The intrinsic diameter of
`C_k` in the declared Euclidean metric is

```text
D_G = pi sqrt(N)     (single-loop Euclidean diameter; COORDINATION [23]).
```

CITATION PRECISION: the value `pi sqrt(N)` is the COORDINATION [23] orbit-geometry fact
(the circle `t -> theta* + t(1,...,1)` has Euclidean speed `|(1,...,1)|_2 = sqrt(N)`,
half-circumference `pi sqrt(N)`). It is NOT L3's number: L3 as recorded in the toolkit
(SH.2'-LOCAL v2, L2 import) states the MAX-NORM diameter `D_G = pi`. Both values are
individually correct in their own metric; this piece consumes the Euclidean one, so it is
attributed to COORDINATION [23] (equivalently: "L3 orbit geometry recomputed in the
declared Euclidean metric"), and the max-norm reading `D_G = pi` is NOT used here. L2's
main display and corollary are stated in terms of `D_G` and `C_1` only, so they
re-instantiate by symbol substitution at `D_G = pi sqrt(N)`.

C_1-INDEPENDENCE OF THE RATE (replaces the earlier "C_1 is metric-intrinsic" claim). The
action `(beta/4) int |phi' + grad J(phi)|^2 dt` is EUCLIDEAN-intrinsic (isotropic BM), not
norm-agnostic: the numerical value `C_1 = 1/2 + L/4 + L^2/24` depends on the metric through
`L = sup ||Hess J||_op`, which differs between the max-norm and the Euclidean readings, so
`C_1` is NOT literally invariant under a max->Euclidean re-reading. This is immaterial
because the RATE `S_k - m_k` is entirely C_1-INDEPENDENT: `C_1` enters ONLY through
`Gamma(h) = 6 C_1 D_G h = O(h)`, which vanishes after `beta -> infinity`, then `h -> 0`
(order of limits in (c)). Only the `O(h)` FORM of `Gamma(h)` matters, not the value of
`C_1`. The residual norm-equivalence bookkeeping (a Euclidean `rho`-ball contains the
max-norm `(rho/sqrt N)`-ball, so the L1 small-ball floor reads `beta rho^2 >= N`) is a
FIXED, `beta`-free, `dim M`-dependent factor absorbed into the prefactors `c_0, c_0'` and
the floor `beta_0(h)`; it is `h`-tracked bookkeeping, not a gap in the RATE (typed:
GAP-M1-NORM).

Throughout fix a hop scale `h` with `0 < h <= r0/8`, and let `g*` be the anchor of the
ATTEMPT's uphill target — the base point on the LS.1 slice through which `z_sad` and the
target ball `B''` are placed (LS.5, unchanged). The BASE BALL is `B_{h/2}(g*)`.

STANDING NOTATION (symbol hygiene, fixing the round-1 `n` collision). Reserve `N := dim M`
for the manifold dimension (`M = T^N`); it is the exponent appearing in the L1/L1'
constants `c_0 = (2/pi)^N`, the small-ball floor `beta rho^2 >= N`, and the diffusive-cell
prefactor `beta^{N/2}`. The tangential HOP COUNT of leg (a) is written `n_hop` throughout,
NEVER `n`.

### (a) Tube-return to the base ball via the L2 orbit chain on C_k

INTERFACE HYPOTHESIS (RELOCATE landing radius vs hop scale — stated explicitly, not a
silent restatement). The RELOCATE phase (LS.5, unchanged) deposits the process — with the
stated probability and in uniform `beta`-free time — either having ALREADY changed the
label, or in the ball `B_{delta/2}(C_k)`: transverse `dist(., C_k) <= delta/2` at some
tangential anchor `g** in C_k`, where `delta` is the RELOCATE radius fixed in
order-of-limits step 1, INDEPENDENTLY of `h` (this is the verbatim LS.5 UPPER-BOUND
RELOCATE display, "lands in `B_{delta/2}(C_k)`"). The L2 orbit chain, by contrast, is
parametrized by the hop scale `h`. The two radii must be reconciled.

Impose the standing interface constraint

```text
delta <= h.                                                                          (a.0)
```

DERIVED BRIDGE — why (a.0) is FREE and what it delivers. Under the declared limit order
(§(c)), `delta -> 0` is taken at FIXED `h` (step 3 STRICTLY BEFORE step 4). Hence
restricting the RELOCATE radius to the range `delta in (0, h]` loses nothing: for every
fixed `h` the entire `delta -> 0` passage lives inside `delta <= h`. Granting (a.0), the
RELOCATE landing has transverse extent

```text
dist(., C_k) <= delta/2 <= h/2 <= r0/16 <= r0/8,
```

so the deposited point sits INSIDE the transverse-`<= h/2` tube and satisfies L1's restart
hypothesis (transverse `<= r0/8`) at the first hop with room to spare. It is therefore an
admissible start for the L2 chain's first L1 hop, whose tangential reach is `<= h`
(L1 Fermi-coordinate input `|a_1 - a_0| <= h`) and whose transverse input is `<= h`
(`|b_0| = d <= delta <= h`). ROBUSTNESS MARGIN: even absent (a.0), L1/L2 accept ANY start
with transverse `<= h` and tangential offset `<= h`, so the METHOD survives up to
`delta <= 2h` (the landing transverse `delta/2 <= h`); (a.0) is the clean sufficient form
that makes the WRITTEN start ball `B_{h/2}(g**)` — with `g** := ` the tangential anchor of
the deposit — exact. We proceed under (a.0), starting the chain from a point of transverse
`<= h/2` at anchor `g**`.

To bring it onto the base ball `B_{h/2}(g*)` we invoke L2 with

```text
hop scale        h  (<= r0/8),
matched spacing  sigma = h/2       (XF amendment A1),
hop count        n_hop = ceil( 2 D_G / h ) = ceil( 2 pi sqrt(N) / h )   (Step 1 net on C_k).
```

The MATCHED-RADII closure is airtight (L2 Steps 3–4 + A1): consecutive ground centers
`y_j` sit at intrinsic spacing `d_G(y_j, y_{j+1}) <= h/2`, so a point of the landed ball
`B_{h/2}(y_j)` has `d_G(pi(.), y_{j+1}) <= h/2 + h/2 = h` — L1's tangential reach is met
with equality at worst, and the transverse radius does not grow across hops (land in
`B_{h/2}`, restart at transverse `<= h/2 <= r0/8`; L1 landing display (c), restart
hypothesis and exponent coincide). Consuming L1's display (c)
`P_x(X_1 in B_{h/2}(y)) >= c_0 exp(-beta C_1(delta^2 + h^2))` at each hop, L2's main
display gives, for `beta >= beta_0(h)`,

```text
P_{g**}( X_{n_hop} in B_{h/2}(g*) )  >=  c_0^{n_hop} exp( -2 beta C_1 n_hop h^2 ),     (a.1)
```

with the whole chain staying inside `T_{r0}(C_k)`. Since `h <= r0/8 < D_G` gives
`h^2 <= D_G h`, the L2 corollary shape bounds the exponent CLEANLY (no residual remainder):

```text
n_hop <= 2 D_G/h + 1,
n_hop h^2 <= (2 D_G/h + 1) h^2 = 2 D_G h + h^2 <= 3 D_G h,
2 C_1 n_hop h^2 <= 6 C_1 D_G h  =:  Gamma(h) = 6 C_1 pi sqrt(N) h = O(h).             (a.2)
```

(The `+h^2` is absorbed into `3 D_G h` via `h^2 <= D_G h`; there is NO residual `O(h^2)` in
the exponent bound — `Gamma(h)` is the clean linear form `6 C_1 D_G h`.) So `(a.1)` reads
`P_{g**}(X_{n_hop} in B_{h/2}(g*)) >= c_L(h) exp(-beta Gamma(h))` with
`c_L(h) := c_0^{n_hop}` `beta`-free and `Gamma(h) -> 0` as `h -> 0`. THRESHOLD:
`beta >= beta_0(h) = O(h^{-2})` (the diffusive floor `beta h^2 >= B`, XF amendment A3 —
NECESSARY; no `h`-free threshold exists). Honest reading: `n_hop h^2 = O(D_G h) -> 0` is
NOT order one, but is err-absorbable — tangential motion along the flat ground is
sub-exponential in `beta` at `O(1)` time (the L2 corollary `P >= c(eta) exp(-beta eta)`,
`n_hop(eta) = O(1/eta)`), and its ENTIRE cost is the `exp(-beta Gamma(h))` factor killed in
the limit order of (c). This leg REPLACES the former SH.2'(a)-iteration (X3 defect 4, the
unclosed hop iteration), exactly as the along-G chain was retired in lane-sh. Stage-A
`l2_product` / `lz_kick` probes are CONSISTENT with this shape (cited as consistency, never
as proof).

### (b) Reversible average-to-infimum via L1' (A4+A5 form) on the base ball

The process now sits in `B_{h/2}(g*)`. The SH.1 reversal identity plus SH.2 tracking (both
in their ORIGINAL scope, unaffected by X3) reduce the uphill hitting probability to the
`rho`-AVERAGED form over the base ball, exactly as in the migrated SH.3 Step 3:

```text
int_{ B_{h/2}(g*) } P_y( X_T in B'', collar ) dy
   >=  c_2(delta) exp( -beta ( S_k - m_k + err(delta) ) ),                             (b.1)
```

where `B''` is the saddle-slice target around `z_sad = x(pi - a_k - delta')`,
`J(z_sad) = S_k - Theta(delta'^2)` (a fortiori in `(S_k - c delta', S_k)`), the reversal
supplies the `exp(-beta(S_k - m_k))` barrier, and the downhill reference flow from `B''`
to `B_{h/4}(g*)` is order-one (LS.5, unchanged). To convert this AVERAGE over the base ball
into a bound UNIFORM over the whole entering set — the average-to-infimum step, the site
that formerly consumed the global SH.2' — we invoke L1' (A4+A5) as a LOCAL hop at the base
point `g*`. For arbitrary `x in B_{h/2}(g*)` (transverse `delta_x := dist(x, C_k) <= h/2`;
tangential offset `d_G(pi(x), g*) <= h/2`, so the L1' tangential parameter is `<= h/2`),
L1' delivers the time-1 small-set minorization on `B_{h/2}(g*) = B_rho(g*)`, `rho = h/2`:

```text
p_1(x, .)  >=  c_0' beta^{N/2} exp( -beta C_2' ( delta_x^2 + (h/2)^2 ) ) Leb|_{B_{h/2}(g*)}
           >=  m(beta, h) Leb|_{B_{h/2}(g*)},                                          (b.2)
m(beta, h) := c_0' beta^{N/2} exp( -beta C_2' ( h^2/2 ) ),      C_2' ( h^2/2 ) = O(h^2),
```

with `N = dim M` (the diffusive-cell prefactor exponent; NOT the hop count `n_hop`).
Two amendments make `(b.2)` HONEST and self-contained:

- **A4 (half-time input re-based):** L1' Step 5 consumes L1's PROVEN display (b) (horizon
  `1/2`, landing `B_rho(g*)`, constant `C_1(1/2) = 1 + L/4 + L^2/48`) in place of the
  undelivered `B_{rho/2}` form; the beta-free constant worsens to
  `C_2' = C_1(1/2) + a_1'`, `a_1' = a_1 + 7/8`, `a_1 = 9/8 + C_+/4 + L^2/4` — same
  `(delta^2 + h^2)` shape, NO new input consumed.
- **A5 (free-density form):** the minorization is the FREE-density form
  `p_1(x, .) >= c beta^{N/2} exp(...) Leb|_{B_rho(g*)}` — which is ALL this average-to-inf
  step consumes: it uses only `X_1`'s law; the `[1, T+1]` collar is carried INDEPENDENTLY
  by the SH.3 event `(b.1)`, exactly as in the migrated SH.3 Step 4. The corridor-qualified
  landing `{X_{1/2} in B_rho} ∩ {path stayed in T_{r0}(C_k)}` is available at the same cost
  if a downstream row demands the killed form; none does here.

DENSITY DISCIPLINE (COORDINATION [23] caution): L1' obtains `p_1` through the EXACT
Girsanov/Doob-bridge factor `E^{br}[D_t]` (its (BRIDGE) step), never by identifying the
Gaussian increment density with the SDE endpoint density (the X3 defect-2 error); the
`beta^{N/2}` prefactor is the diffusive-cell scaling with `beta`-free constant `a_0`.

Markov at time 1 composes `(b.2)` with `(b.1)` — the migrated SH.3 Step 4 arithmetic,
verbatim — and we SURFACE the polynomial `beta`-prefactor explicitly:

```text
P_x( the SH.3 event on [1, T+1] )
   >=  m(beta, h) int_{ B_{h/2}(g*) } P_y( X_T in B'', collar ) dy
   >=  c'(delta, h) beta^{N/2} exp( -beta ( S_k - m_k + err(delta) + O(h^2) ) ),       (b.3)
```

UNIFORMLY over `x in B_{h/2}(g*)`, where `c'(delta, h) := c_0' c_2(delta)` is `beta`-free
and the `beta^{N/2}` (`= beta^{dim M/2}`) factor is the L1' diffusive-cell prefactor,
carried EXPLICITLY. It is rate-harmless: `beta^{-1} log beta^{N/2} = (N/2) beta^{-1} log
beta -> 0` as `beta -> infinity`, so it never reaches the exponential rate and does NOT
implicate defect class 8 (the display needs the prefactor only sub-exponential, which
holds). The `O(h^2) = C_2'(h^2/2)` L1' exponent is err-class, smaller than `Gamma(h) =
O(h)`; both are absorbed in (c). The CROSSING that follows `B''` (the LS.5a displacement
across `W^s_loc(SP_k)` + the LS.2b far-branch crossing + SH.2 tracking) is unchanged; its
LS.5a local kick is a DISTINCT migration site (the L1-Z shape), typed as GAP-M1-LS5a below.

### (c) The fixed-round renewal carrying Gamma(h) = O(h); order of limits

A round is RELOCATE (unchanged) then, if the process is at the ground, the ATTEMPT: leg (a)
[tube-return along `C_k`, cost `exp(-beta Gamma(h))`], then leg (b) [the reversible sandwich
re-based via L1', barrier `exp(-beta(S_k - m_k + err(delta) + O(h^2)))`], then THE CROSSING.
Multiplying the two ground-leg factors into the crossing floor, each round ends with a
label change with probability, from ANY winding-`k` state and in uniform `beta`-free
duration `T_round(delta, h)`,

```text
p  >=  c(delta, h) beta^{N/2} exp( -beta ( S_k - m_k + err(delta) + Gamma(h) ) ),
Gamma(h) := 6 C_1 D_G h = O(h),                                                        (c.1)
```

where `c(delta, h)` is `beta`-free and the surfaced `beta^{N/2}` is the composed
diffusive-cell prefactor (polynomial in `beta`; it vanishes under `beta^{-1} log`, so it is
inert for the rate). `Gamma(h)` is the CLEAN linear form of (a.2) — no phantom `O(h^2)`
remainder.

EXPLICIT REGENERATION (COORDINATION [23] caution: strong Markov does NOT create a common
regeneration law by itself). The L1' minorization `(b.2)` makes `B_{h/2}(g*)` a SMALL SET
with the COMMON minorizing law `m(beta, h) Leb|_{B_{h/2}(g*)}`; the round renewal is a
Nummelin-type split against this FIXED base-ball law, and it is THIS common law — not
strong Markov alone — that licenses the round-filtration renewal. Markov at round ends then
gives

```text
P_q( tau_change > n T_round ) <= (1 - p)^n ,   hence   E_q[ tau_change ] <= T_round(delta,h)/p,
limsup_beta beta^{-1} log E_q[ tau_change ]  <=  S_k - m_k + err(delta) + Gamma(h).    (c.2)
```

(In (c.2) the `beta^{N/2}` prefactor of `p` contributes `-(N/2) beta^{-1} log beta -> 0` to
`beta^{-1} log E_q`, so the `limsup_beta` is exactly the exponential rate of `p`; the
polynomial factor is inert, as noted under (b.3)/(c.1).)

ORDER OF LIMITS (declared explicitly; the ONLY admissible order):

```text
1. FIX eta/h  — fix the RELOCATE radius delta and the hop scale h (hence Gamma(h) and the
                diffusive floor beta_0(h) = O(h^{-2})); impose the interface constraint
                delta <= h (a.0), free at fixed h since step 3 precedes step 4;
2. beta -> infinity  FIRST  — read the exponential rate at fixed geometry (the floor
                beta h^2 >= B holds throughout, XF A3), yielding (c.2);
3. THEN delta -> 0   — err(delta) -> 0  (taken at fixed h, so delta <= h stays in force) [RECORD CORRECTION 2026-08-02, the E6 F-2 adjudication (e6-instantiation-table-v1.md Section 7.2): the mandated order block fixes h = delta/2 and sends them together, so this parenthetical's 'delta <= h' transcription is superseded - h <= delta is what holds; the line is not read by the E6 pass. Declared, record-only; no schedule or display moves];
4. THEN h -> 0       — Gamma(h) = 6 C_1 D_G h -> 0  and  O(h^2) -> 0.
```

This yields `limsup_beta beta^{-1} log E_q[tau_change] <= S_k - m_k`. Combined with the
UNCONDITIONAL ridge-route lower bound (LS.2–LS.4, unaffected by LS-MIN-MIG), the two-sided
limit

```text
lim_beta beta^{-1} log E_q[ tau_change ]  =  S_k - m_k                                  (c.3)
```

now rides the LOCAL toolkit alone on the ATTEMPT-side ground legs. NEVER send `h -> 0`
before `beta -> infinity`: that inverts the diffusive floor `beta >= B/h^2` and the L1/L2
small-ball bounds evaporate — the X3 lesson at the limit level (time buys tangential
flatness; one step never does). Nor may `delta -> 0` cross below `h`: the interface
constraint (a.0) is respected precisely BECAUSE step 3 acts at fixed `h`. This discharges
the ATTEMPT-side ground legs of LS-MIN-MIG for the passive single loop.

TYPED GAPS:

GAP-M1-LS5a (sibling migration site, out of scope of this piece): the RELOCATE phase's
local-kick legs and the CROSSING's displacement across `W^s_loc(SP_k)` consume LS.5a, whose
base was the refuted GLOBAL SH.2' (see the LS.5a header note). LS.5a must be re-founded on
the L1-Z shape (grad E = 0 on the critical set Z + bounded Hessian in a fixed tube =>
`exp(-beta O(delta^2))` local kick), validated at Stage A by lz_kick_probe. That is a
DISTINCT sibling piece; M1 re-bases only the two ATTEMPT-side GROUND legs the SH.3 sandwich
consumed (tube-return -> L2; average-to-inf -> L1'). Consequence: the ATTEMPT phase as a
whole is fully local ONLY once GAP-M1-LS5a is also discharged; the ground legs themselves
are discharged here.

GAP-M1-NORM (bookkeeping, not a gap in the rate): the L1/L2 draft computes small-ball
probabilities in the max norm (`c_0 = (2/pi)^N`, floor `beta rho^2 >= 1`), whereas §0
declares the geodesic/Euclidean metric to keep ONE metric across both LOCAL legs. The rate
`S_k - m_k` is C_1-INDEPENDENT (C_1 enters only `Gamma(h) = 6 C_1 D_G h = O(h)`, killed
after `beta -> infinity` then `h -> 0`), so the metric-dependence of the VALUES of `C_1`,
`C_2'`, `Gamma(h)` is immaterial to the rate; the norm-equivalence factor (a Euclidean
`rho`-ball contains the max-norm `(rho/sqrt N)`-ball, so the floor reads `beta rho^2 >= N`)
is a fixed, `beta`-free, `dim M`-dependent constant folded into `c_0, c_0', beta_0(h)`.
SCOPE EXTENSION: this gap also covers the SH.1/SH.2 quotations in leg (b) and the CROSSING,
which are imported in their ORIGINAL max-norm form — so strictly more than one norm appears
across the whole ATTEMPT phase (the Euclidean-declared L1/L2/L1' legs alongside max-norm
SH.2 tracking). This is harmless: SH.1 reversal is metric-free, and SH.2 tracking delivers
ORDER-ONE (non-rate-bearing, sub-exponential) shadowing probabilities whose output is
norm-robust — exactly the prefactor-level norm-equivalence this gap already covers. Flagged
for the delta-check; it does not alter the RATE `S_k - m_k` or the `Gamma(h) = O(h)` error,
only the `beta`-free prefactor and the `h`-tracked threshold.

### M1-ls-ground — consumed

L1 display (b) [horizon 1/2, landing B_rho(g*), C_1(1/2) = 1 + L/4 + L^2/48] and display (c) [P_x(X_1 in B_{h/2}(y)) >= c_0 exp(-beta C_1(delta^2 + h^2))], lane-sh2local-proofs-v1.md. L2 main display [P_{g**}(X_{n_hop} in B_{h/2}(g*)) >= c_0^{n_hop} exp(-2 beta C_1 n_hop h^2)] + corollary [eq (6.1): 2 C_1 n_hop h^2 <= 6 C_1 D_G h] + Steps 3-4 matched-radii closure (transverse restart delta_j <= h; tangential restart d_G(pi(X_j), y_{j+1}) <= h), lane-sh2local-proofs-v1.md. L1' (A4 half-time re-basing: C_2' = C_1(1/2) + a_1', a_1' = a_1 + 7/8, a_1 = 9/8 + C_+/4 + L^2/4; A5 free-density form via exact Girsanov/Doob-bridge factor E^{br}[D_t], prefactor c_0' beta^{N/2}), lane-sh2local-proofs-v1.md. XF amendments A1 (matched spacing sigma = h/2), A3 (diffusive floor beta h^2 >= B, threshold beta_0(h) = O(h^{-2})), lane-lp-product-saddle-v1.md XH CORRECTION block. LS.5 RELOCATE UPPER-BOUND display ["lands in B_{delta/2}(C_k)", uniform time T_R(delta,eps), prob >= c_R(delta) exp(-beta err(delta))], z_sad = x(pi - a_k - delta'), J(z_sad) = S_k - Theta(delta'^2), downhill reference flow B'' -> B_{h/4}(g*) order-one, lane-ls-label-sharpness-v1.md (LS.5, unchanged). SH.1 reversal identity + SH.2 max-norm tracking, in original scope (lane-sh-sharpness-v1.md, unaffected by X3). COORDINATION [23] §C/§D [one declared metric per consumer; explicit-regeneration caution (strong Markov alone does not create a common regeneration law); density-discipline caution] and the single-loop Euclidean orbit-diameter fact D_G = pi sqrt(N). M2P ground facts (product persistence schema, lane-m2-persistence-schema-v1.md) as the transverse-nondegeneracy backdrop for C_k. Unconditional ridge-route lower bound LS.2-LS.4 (for the two-sided (c.3), unaffected by LS-MIN-MIG).

### M1-ls-ground — typed gaps

GAP-M1-LS5a: the RELOCATE local-kick legs and the CROSSING displacement across W^s_loc(SP_k) still consume LS.5a, whose base was the refuted GLOBAL SH.2'. LS5a must be re-founded on the L1-Z shape (grad E = 0 on critical set Z + bounded Hessian in a fixed tube => exp(-beta O(delta^2)) local kick), Stage-A validated by lz_kick_probe. DISTINCT sibling piece, out of M1's scope; M1 re-bases only the two ATTEMPT-side GROUND legs (tube-return -> L2; average-to-inf -> L1'). Consequence: the ATTEMPT phase is fully local only once GAP-M1-LS5a is also discharged; the ground legs themselves are discharged here.

GAP-M1-NORM: bookkeeping, not a rate gap. L1/L2/L1' small-ball probabilities are computed in the max norm (c_0 = (2/pi)^N, floor beta rho^2 >= 1) while §0 declares the Euclidean metric. The rate S_k - m_k is C_1-independent (C_1 enters only Gamma(h) = 6 C_1 D_G h = O(h), killed after beta->inf then h->0), so the metric-dependence of the VALUES C_1, C_2', Gamma(h) is immaterial to the rate; the norm-equivalence factor (Euclidean rho-ball contains max-norm (rho/sqrt N)-ball, floor reads beta rho^2 >= N) is a fixed, beta-free, dim-M-dependent constant folded into c_0, c_0', beta_0(h). Scope now also covers the SH.1/SH.2 max-norm quotations in leg (b) and the CROSSING: SH.1 is metric-free and SH.2 delivers order-one (sub-exponential, norm-robust) shadowing, so the multiple-norm coexistence across the full ATTEMPT phase is prefactor-level only. Affects prefactor and h-tracked threshold, never the rate or the O(h) error.


---

# M2 — the L1-Z local kick lemma (replaces LS.5a's base)

(fleet grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

## Lemma L1-Z (LOCAL KILLED KICK at a compact critical orbit — replaces LS.5a)

*Executes the LS-MIN-MIG migration for the displacement leg of the LS.5 relocate-or-change DAG walk. It re-runs the certified L1 (HOP) route — Girsanov control path, corridor bootstrap, symmetry–Jensen, max-norm small-ball, master bound — with the coercivity hypothesis DROPPED and the control RETARGETED off the orbit. It never revives a global minorization over far-apart subsets of a ground tube: every instance lives in ONE tube around ONE named critical orbit, with its own constants.*

### Setting and hypotheses (self-contained)

`dX = -grad J(X) dt + sqrt(2/beta) dW` on the compact flat torus `M = T^N` (`n := dim M = N`), `W` a standard `n`-dim Brownian motion, `|.|` the max-norm on the lift (corpus convention). Let `Z subset M` be one of the critical orbits named by the LS.5 DAG walk. Assume:

```text
(H1)  Z is a smooth compact critical submanifold: grad J = 0 on Z
      (a rotation-orbit circle, e.g. SP_k, or a rotation-orbit torus, e.g. an
       ON-Delta high critical orbit Z_high; NO index or minimality assumption).
(H2)  r < normal injectivity radius of Z, so the tube T_r(Z) := {dist(.,Z) < r}
      carries a single-valued nearest-point projection pi and Fermi coordinates
      z = (a, b) (a along Z, b normal), with dist(z,Z) = |b| exactly.
(H3)  L := sup_{T_r(Z)} ||Hess J||_op  <  infinity   (automatic: J smooth, M compact).
```

From (H1)+(H3), for `z in T_r(Z)` with nearest point `pi(z) in Z`,
`|grad J(z)| = |grad J(z) - grad J(pi z)| <= L dist(z,Z)`, and `grad J` is `L`-Lipschitz on the tube. **This is the ONLY structural input the proof consumes; it is sign-blind — a transverse Hessian eigenvalue may be positive OR negative, so the index-1 (one unstable direction) case is covered on the same footing.** Coercivity `J - J|_Z >= (c_perp/2) dist^2` is NOT assumed and NOT used (it entered L1 only as a tube-admissibility guarantor and never appeared in L1's `C_1`; here (H2) supplies admissibility directly).

### Statement

Fix a horizon `tau > 0` (the LS.5 consumer uses `tau` fixed). Put

```text
C_Z(tau) := (2 + L tau)^2 / (2 tau),
c_Z(tau) := (2/pi)^n exp( - n pi^2 tau e^{2 L tau} / 4 ),
B_Z := 16.
```

Then for every reach `0 < h <= r/3`, every start `x` with `d := dist(x,Z) <= h`, every target `y in T_r(Z)` with `dist(y,Z) <= h` and `d_Z(pi(x), pi(y)) <= h`, and for every `beta` meeting the diffusive floor `beta h^2 >= B_Z`,

```text
P_x( X_tau in B_{h/4}(y),  X_[0,tau] subset T_r(Z) )  >=  c_Z(tau) exp( -beta C_Z(tau) (d^2 + h^2) ).   (L1-Z)
```

The event is KILLED (tube-constrained): the second conjunct forces the whole path to stay in `T_r(Z)`, so no boundary of the sector (no `Delta`) is reached and the winding/label is preserved. The floor `beta h^2 >= B_Z` is load-bearing: `beta_0(h) = B_Z/h^2 = O(h^{-2})`; there is **no** threshold uniform over arbitrarily small `h`. The mandated order of limits is `beta -> infinity` FIRST at fixed `h`, then `h -> 0`.

### Proof

The proof is L1's, run with (H1)–(H3) in place of L1's coercive tube hypotheses and with the control path retargeted to a point OFF `Z`. Steps that are word-for-word L1 are imported by name; only the two departures (retargeted control; sign-blind bootstrap) are re-derived.

**Step 0 — Fermi frame (H2).** On the tube, flatness makes the lift a local isometry below `inj(M)`; write `x <-> (a_0, b_0)`, `|b_0| = d <= h`, and the target `y <-> (a_1, b_1)`, `|b_1| <= h`, `|a_1 - a_0| = d_Z(pi x, pi y) <= h`. Set the total displacement scale `ell := d + h`; then `|x - y| <= ell` inside the tube.

**Step 1 — exact Girsanov (imported from L1 §1).** For a deterministic measurable `u:[0,tau] -> R^n` with `int|u|^2 < infinity`, the change of measure `Z_tau = exp(sigma^{-1} int <u,dW> - (1/2)sigma^{-2} int|u|^2)`, `sigma := sqrt(2/beta)`, is a true `P`-martingale (Novikov trivial: `u` deterministic bounded). With `S(tau) := (1/4) int_0^tau |u_t|^2 dt` and `u_t := phi'(t) + grad J(phi(t))` for a control path `phi` (so `phi` is the `Q`-mean path of cost `S(tau)`), L1's identity holds verbatim:

```text
P_x(A) = e^{-beta S(tau)} E^Q[ 1_A exp( -sigma^{-1} int_0^tau <u_t, d tilde W_t> ) ].   (dagger)
```

**Step 2 — the retargeted two-leg control (the first departure from L1).** L1's leg (ii) ended ON the ground orbit where `grad J = 0`; here the target `y` sits at transverse offset `b_1` off `Z`, so both legs run at a small nonzero drift — harmless, because we are paying `O(ell^2)` and never separate `d^2` from `h^2` more finely. Take each leg of duration `tau/2`:

```text
leg (i)  transverse steer  b_0 -> b_1  at fixed a_0:  phi(t)=(a_0, b_0 + (2t/tau)(b_1-b_0));
leg (ii) tangential slide  a_0 -> a_1  at fixed b_1:  phi(t)=(a_1 offset, b_1).
```

By convexity of the max-norm, `dist(phi(t),Z) = |b(t)| <= max(|b_0|,|b_1|) <= h <= ell` throughout, so `|grad J(phi)| <= L ell` on both legs; and `|phi'| <= 2|Delta b|/tau <= 2 ell/tau` on leg (i), `|phi'| <= 2|Delta a|/tau <= 2 ell/tau` on leg (ii). Hence `|u_t| <= 2 ell/tau + L ell` pointwise.

**Step 3 — the action bound (derived once).**

```text
S(tau) = (1/4) int_0^tau |u_t|^2 dt
       <= (1/4) tau ( 2 ell/tau + L ell )^2
       = (tau/4)(2/tau + L)^2 ell^2
       <= (tau/2)(2/tau + L)^2 (d^2 + h^2)          [ ell^2=(d+h)^2 <= 2(d^2+h^2) ]
       = C_Z(tau) (d^2 + h^2),   C_Z(tau) = (2 + L tau)^2/(2 tau).   (ACT)
```

`C_Z(tau)` is explicit, `beta`-free, and depends only on `(tau, L)`. (At `tau = 1`, `C_Z(1) = (2+L)^2/2`.)

**Step 4 — corridor bootstrap, symmetry–Jensen, small-ball (the SIGN-BLIND core; second departure made explicit).** Let `R_t := X_t - phi(t)` on the lift. Under `Q`, using `u_t - phi'(t) = grad J(phi(t))`,

```text
dR_t = -[ grad J(phi_t + R_t) - grad J(phi_t) ] dt + sigma d tilde W_t,   R_0 = 0.
```

Let `theta := inf{t : dist(X_t,Z) > r} wedge tau`. On `[0,theta]` both `phi_t` and `X_t` lie in `T_r(Z)`, so the `L`-Lipschitz bound of (H1)+(H3) applies to the bracket **regardless of the sign of the transverse Hessian**, and

```text
|R_t| <= L int_0^t |R_s| ds + sigma sup_{s<=t}|tilde W_s|   =>   sup_{[0,theta]}|R_t| <= sigma e^{L tau} sup_{[0,theta]}|tilde W_t|
```

by Gronwall. Gronwall delivers an UPPER bound on `|R_t|` whether the linearized drift is contracting or expanding; an unstable eigenvalue `+lambda` with `|lambda| <= L` is dominated by the SAME factor `e^{L tau}`. This is exactly why the index-1 direction adds no `beta`-exponent: `e^{2 L tau}` enters only the `beta`-free prefactor `c_Z(tau)` below (see Step 5).

Fix `rho := h/4`, `epsilon := rho sigma^{-1} e^{-L tau}`, and `G_epsilon := {sup_{[0,tau]}|tilde W_t| <= epsilon}`. On `G_epsilon`: `sup|R_t| <= sigma e^{L tau} epsilon = rho = h/4`, so `dist(X_t,Z) <= dist(phi_t,Z) + |R_t| <= h + h/4 <= 3h <= r`; the tube boundary is never reached, `theta = tau`, and `X_tau in B_{h/4}(y)` with the whole path in the corridor `T_{3h}(Z) subset T_r(Z)`. Thus `1_{G_epsilon} <= 1_A` pathwise, `A := {X_tau in B_{h/4}(y), X_[0,tau] subset T_r(Z)}`.

Now L1's symmetry–Jensen step applies verbatim: the Wiener integral in `(dagger)` is an odd functional of the `Q`-Brownian motion `tilde W`, `G_epsilon` is invariant under `tilde W -> -tilde W`, so averaging the two signs gives `E^Q[1_{G_epsilon} e^{-sigma^{-1} int <u,d tilde W>}] = E^Q[1_{G_epsilon} cosh(...)] >= Q(G_epsilon)`, and the max-norm small-ball bound gives `Q(G_epsilon) >= (2/pi)^n exp(-n pi^2 tau /(8 epsilon^2))` with `n pi^2 tau/(8 epsilon^2) = n pi^2 tau e^{2 L tau}/(4 beta rho^2)`. Combining with `(dagger)` and `(ACT)`:

```text
P_x(A) >= (2/pi)^n exp( -beta C_Z(tau)(d^2+h^2) - n pi^2 tau e^{2 L tau}/(4 beta rho^2) ),   (star)
```

valid for ALL `beta > 0`.

**Step 5 — absorbing the small-ball term under the floor.** With `rho = h/4`, `beta rho^2 = beta h^2/16`; the floor `beta h^2 >= B_Z = 16` gives `beta rho^2 >= 1`, so the second exponent is `<= n pi^2 tau e^{2 L tau}/4`, a `beta`-free constant folded into the prefactor `c_Z(tau) = (2/pi)^n exp(-n pi^2 tau e^{2 L tau}/4)`. This yields exactly `(L1-Z)`:

```text
P_x( X_tau in B_{h/4}(y), X_[0,tau] subset T_r(Z) ) >= c_Z(tau) exp( -beta C_Z(tau)(d^2 + h^2) ).
```

The floor `beta h^2 >= 16` is `beta_0(h) = 16/h^2 = O(h^{-2})`; the order `beta -> infinity` before `h -> 0` is mandatory (the diffusive small-ball cell is `O(beta^{-1/2})` and must be small relative to `h` before `h` shrinks). QED.

### The index-1 case, explicitly: the zero-action `u = 0` tube-stay

The pure tube-stay (no displacement) is the special case `y = x_0 in Z`, `phi(t) = x_0` constant. Then `u_t = phi'(t) + grad J(phi(t)) = 0 + grad J(x_0) = 0` (x_0 critical): the control is IDENTICALLY ZERO, `S(tau) = 0`, and `Q = P` (no Girsanov tilt). The bootstrap of Step 4 with `rho = r/8` gives, for the untilted diffusion started on `Z`,

```text
P_{x_0}( X_[0,tau] subset T_r(Z) ) >= Q(G_epsilon) = P( sup_{[0,tau]}|W| <= (r/8) sigma^{-1} e^{-L tau} )  -->  1
```

as `beta -> infinity`, since `epsilon = (r/8) sqrt(beta/2) e^{-L tau} = O(beta^{1/2}) -> infinity`: the tube-stay probability is SUB-EXPONENTIAL in `beta` (no `exp(-beta c)` loss). The index-1 unstable direction enters only through the bounded factor `e^{-L tau}` shrinking `epsilon` — it does NOT flip the sub-exponential tube-stay into an exponential escape, because over FIXED `tau` the linear instability `e^{lambda tau}` is bounded while the fluctuation scale `sigma = O(beta^{-1/2})` still vanishes. (Escape along the unstable branch is a MANY-step, i.e. large-time, event — "one step never buys flatness; time does". The DAG walk downstream, via SR-LS1, uses precisely that later ejection; L1-Z asserts only the single-`tau` confinement.)

**Stage-A consistency (cited as consistency, not proof; `numerics/results/lz_kick_probe_results.json`, `N=10`, `Z = SP_1`).** Z1: tube-stay `0.093/0.544/0.871` rising with `beta = 10/20/40` — the `u = 0` sub-exponential prediction. Z2: the conditioned kick rates agree to <= 0.0024 exact (7 of 12; six cells <= 0.0023, the seventh 0.0023509 - XM-R3 F6 precision) in well-populated cells, tail cells differing by up to 0.022 with one null - no cell contradicts (XM F6 corrected wording) (`0.099/0.169/0.269/0.384` vs `0.100/0.170/0.258/0.362` at `beta=10`), i.e. the unstable mode adds NO kick exponent — the sign-blind bootstrap of Step 4. Z3: unstable-direction offsets `delta <= 0.2` cost `O(delta^2)` with `C ~ 0.4`, no order-one ejection. The L1-Z shape survives its falsification probe (scope: `N=10, k=1, SP_1`, moderate-deviation window — a probe, not a proof).

### Constants (summary)

```text
n        = dim M = N
L        = sup_{T_r(Z)} ||Hess J||_op        (|grad J| <= L dist(.,Z); grad J L-Lipschitz; SIGN-BLIND)
r        < normal injectivity radius of Z    (tube T_r(Z), single-valued pi)
C_Z(tau) = (2 + L tau)^2 / (2 tau)           DERIVED, explicit, beta-free
c_Z(tau) = (2/pi)^n exp(-n pi^2 tau e^{2L tau}/4)   DERIVED, explicit, >0, beta-free
B_Z      = 16 ;  floor beta h^2 >= B_Z ;  beta_0(h) = 16/h^2 = O(h^{-2})   LOAD-BEARING
corridor = T_{3h}(Z) subset T_r(Z)           (path confinement; winding preserved)
```

### Splice — the LS.5 DAG walk consumes L1-Z verbatim in place of LS.5a

*Replace Lemma LS.5a in lane-ls by the following, and read each "one LS.5a displacement ... at cost exp(-beta err(delta))" in Theorem LS.5 as an L1-Z kick.*

[SUPERSEDED 2026-07-20 by section R1 below (XM finding F1: the
universal per-orbit claim in this block was the BLOCKING defect -
including the false tube-implies-no-Delta reading for on-Delta
orbits). Preserved as the round-2 record; NOT consumed.]
Every critical orbit `Z` named by the LS.5 relocate-or-change DAG walk — the rotation-circle saddle `SP_k` (transversally hyperbolic of index 1, LS.4/SADDLE-HYP) and each ON-`Delta` high critical orbit `Z_high` at level `>= 4 kappa` (and any winding-`j` critical orbit) enumerated by the FINITE classification LS.6 — is a smooth compact critical submanifold, hence satisfies (H1)–(H3) with its own tube `T_{r_Z}(Z)`, Hessian bound `L_Z`, and `n = N`. For a displacement of size `3 delta` near such a `Z` (start `x` with `dist(x,Z) <= 3 delta`, target `y` a point `K delta` off the local stable set `W^s_loc(Z)` with `dist(y,Z) <= 3 delta`, `d_Z(pi x, pi y) <= 3 delta`), apply `(L1-Z)` at reach `h = 3 delta` (so `d, h <= 3 delta`, `d^2 + h^2 <= 18 delta^2`): for `beta >= 16/(9 delta^2) = O(delta^{-2})`,

```text
P_x( X_tau in B_{(3 delta)/4}(y),  X_[0,tau] subset T_{r_Z}(Z) )
   >=  c_Z(tau) exp( -beta C_Z(tau) (d^2 + h^2) )  >=  c_Z(tau) exp( -beta err(delta) ),
   err(delta) := 18 C_Z(tau) delta^2 = O(delta^2).
```

This is exactly the LS.5a interface: displacement `|x - y| <= 3 delta`, corridor `T_{3 h}(Z) = T_{9 delta}(Z)` (the `(C* + 6) 3 delta` form with `C*` fixed by the constants), cost `exp(-beta C_G')`, `C_G' = O(delta^2)`. The KILLED conjunct `X_[0,tau] subset T_{r_Z}(Z)` keeps the path inside the sector (it never touches `Delta`), so the process lands `K delta` off `W^s_loc(Z)` STILL WINDING `k` — the honest statement LS.5 already makes; SR-LS1's separation then routes the kicked point onto an unstable branch, and LS.2b sends the far branch across `Delta`. Because the critical-orbit DAG is FINITE (LS.6), the RELOCATE and ATTEMPT phases invoke L1-Z at most once per critical level; each instance is a SINGLE-tube local kick with `beta`-free `(c_Z, C_Z)`, so the `at most one further displacement per level` composition costs `exp(-beta sum_j err_j(delta)) = exp(-beta err(delta))`, `err(delta) = O(delta^2)`. No global minorization over far-apart subsets is ever formed: distinct orbits use distinct tubes, and composition is by the strong Markov property at tube entrance/exit times, not by a common small-set law. The order of limits is `beta -> infinity` at fixed `delta` (each L1-Z valid for `beta >= O(delta^{-2})`), then `delta -> 0` — as LS.5's renewal already requires. With this replacement the LS.5 upper-bound's displacement legs are LOCAL, discharging the displacement half of LS-MIN-MIG; the LS.5 attempt-sandwich (SH.2'/SH.3) leg is the remaining LS-MIN-MIG site, migrated separately.

### M2-lz-kicks — consumed

L1 (HOP), lane-sh2local-proofs-v1.md — imported verbatim: the exact Girsanov identity display (dagger) [§1]; the two-leg action calculus [§2-§3]; the corridor bootstrap (Gronwall, |R_t| <= sigma e^{Ltau} sup|W|), the symmetry-Jensen/cosh inequality, the max-norm small-ball bound, and the master bound (star) [§4]; the small-ball absorption under the diffusive floor [§4, (star star)]. L1-Z re-runs these with coercivity DROPPED (L1 §6 already shows c_perp does not enter C_1) and the control retargeted off Z (Step 2). | L1' (DENSITY UPGRADE), same file — cited for the localized-bridge/Girsanov methodology the task names; L1-Z delivers the EVENT form (all LS.5a needs), not a density, so it uses L1's symmetry-Jensen event route; the killed-density form L1'-Z is a one-line bridge upgrade if a future consumer demands it (none does). | LS.4 (SADDLE-HYP), lane-ls — SP_k transverse Hessian nondegenerate index 1: names the tube/projection (H2) for SP_k; NOT consumed by the kick exponent. | LS.6 (flagship classification), lane-ls — finiteness of the critical-orbit DAG (finitely many named Z), used in the splice composition. | SR-LS1, lane-ls — consumes L1-Z's OUTPUT downstream (where the kicked point lands on an unstable branch); not used inside L1-Z. | COORDINATION.md entry [23] Section C — the theorem-ready L1-Z target shape P_x(X_tau in B_{h/4}(y), path in U) >= c exp(-beta C (dist(x,Z)^2 + h^2)), floor beta h^2 >= B, beta_0 = O(h^{-2}); Section D — the local-not-global discipline (per-orbit tube; no revived far-apart minorization; strong Markov does not by itself create a common regeneration law). | numerics/results/lz_kick_probe_results.json — Stage-A consistency ONLY (Z1 tube-stay 0.093/0.544/0.871; Z2 saddle/ground conditioned kick agreeing to <= 0.0023 in 7/12 small-s cells, tail <= 0.022, one null (XM F6 wording); Z3 unstable-offset O(delta^2), C~0.4); cited as consistency, never as proof.

### M2-lz-kicks — typed gaps

L1-Z-TUBE (per-orbit tubular-neighbourhood existence): (H2) requires each named critical orbit Z to have a positive normal injectivity radius so T_r(Z) carries a single-valued C^1 projection and clean Fermi coordinates. Discharged directly for SP_k by LS.4 (index-1 transverse nondegeneracy => normally hyperbolic => Morse-Bott clean orbit). For the ON-Delta high critical orbits Z_high at level >= 4 kappa named by the LS.6 DAG, each is a rotation orbit (a smooth compact circle/torus of critical configurations), so a positive normal injectivity radius exists by smoothness+compactness — BUT if any DAG-named critical set is degenerate or stratified (non-manifold, e.g. an orbit where several critical branches meet), the Fermi step needs the clean-intersection refinement (blow up the tube per stratum, carry the equivalence constants). This is a per-orbit geometric check, not a probabilistic gap; it is inherited from LS.6's own classification and stated here as the sole open hypothesis of L1-Z. TYPE: discharge per named Z at LS.6, one line each; only the degenerate case is nontrivial and is not exercised by the flagship k=1, N>=10 (LS.6 there yields exactly C_1, SP_1 off-Delta plus the smooth high ON-Delta orbits).

FLOOR/ORDER (recorded, not a gap): the load-bearing floor beta h^2 >= 16 forces beta_0(delta) = O(delta^{-2}) and the strict order beta->infinity BEFORE delta->0. Any consumer that silently sends delta->0 at fixed beta is outside L1-Z's scope.


---

# M3 — product ground sandwich + regeneration (LP-MIN-MIG, call sites 1-2)

(fleet grade: draft PROVED; checker REPAIRABLE)

=====================================================================
M3 — LP-MIN-MIG, CALL SITES 1 AND 2 (replacement passages for LP.5)
ROUND-2 REVISION
=====================================================================

Standing instantiation (used by both passages).  Both call sites run
the local toolkit of SH.2'-LOCAL v2 on the PRODUCT GROUND ORBIT
`G_k = C_k^theta x C_0^phi`, a T^2 translation-subgroup orbit in
`M = T^{2N} = T^N_theta x T^N_phi` — exactly the "M = T^N x T^N,
G a translation-subgroup orbit" case named in L1' Setting.  The
generator is `L_beta^eps := (1/beta) Delta - grad E_eps . grad` with
its OWN eps-flow; the toolkit is instantiated on `E_eps` directly (NOT
on E_0 with a perturbation), which is licensed because G_k is EXACTLY
E_eps-critical for every eps (M2P.1) — the ground analog of L1's
"G critical" hypothesis.

METRIC DECLARATION (one metric per consumer, [23] S C).  Read
`G_k`, `dist(., G_k)`, `d_{G_k}` and all balls in the EUCLIDEAN frame
metric (the LP transversal/orbit convention); `L_fr` (ledger) converts
to ambient max-norm positions where a consumer needs it.  L1/L1'/L2 are
proved in the corpus max norm; the switch to the declared Euclidean
metric is sanctioned by [23] S C, and the toolkit's internal constants
(`c_0, C_1, C_2`, the small-ball product bound) are read UP TO the
fixed Euclidean<->max-norm equivalence factors — the exponential shape
survives norm-equivalence.  In the Euclidean metric the product-ground
diameter is

    D_G := diam(G_k) = pi sqrt(2N)     (campaign #23 Lean geometry
                                        seal — the DIAMETER only;
                                        NOT the killed density, the
                                        tubular projection, or the
                                        renewal, per [23] S C),

the two orbit directions theta and phi each contributing pi sqrt(N)
(Pythagoras).  This is NOT the passive single-loop diameter
(pi sqrt(N) Euclidean, pi max-norm): a circle L2 does NOT silently
cover the product torus ([23] S C), and every chain below runs at
D_G = pi sqrt(2N).  `G_k` is a flat, totally geodesic T^2 (product of
two totally geodesic diagonal circles), so minimizing geodesics are
straight segments in the R^2 cover and the nearest-point projection
`pi` onto `G_k` is orthogonal, hence 1-non-expansive on the tube.

GROUND-TUBE HYPOTHESES (from M2P; NO saddle data).  Fix
`r0 <= min(r_0', r_1)` (r_1 = M2P.5's tube radius) and set the ground
tube `U := {dist(., G_k) <= r0}`.  The toolkit inputs hold for E_eps
with ground level `e_0 := M_k(eps) = m_k + eps w_k`, `w_k := W*(G_k)`
the ground eps-coefficient (M2P.1: `E_eps(G_k) = m_k + eps w_k`):

 - COERCIVITY / ADMISSIBILITY (L1's energy ingredient — the
   nondegenerate transverse MINIMUM, index 0).  G_k is a Morse-Bott
   critical 2-torus whose transverse Hessian is POSITIVE-DEFINITE
   modulo the T^2 rotation kernel in BOTH factor blocks: the theta-block
   `kappa gamma_k |B dtheta|^2` is positive-definite-mod-rotation (the
   theta-ground C_k nondegeneracy, gamma_k = cos(2 pi k/N) > 0 under
   C1-SUB(k)) and the phi-block `lambda |B dphi|^2` is
   positive-definite-mod-rotation at C_0 (M2P.2); the T^2 orbit
   directions span the kernel.  M2P.2 gives the UNIFORM transverse floor
   `Q_eps >= Q_0 >= c_1 |(.)_perp|^2`, `c_1 := min(kappa gamma_k,
   lambda) mu_1`, and M2P.5 Step 2 degrades it to the slice floor over
   the r_1-tube.  Hence, with grad E_eps = 0 on G_k (M2P.1) and Taylor
   along the transverse slice,

       E_eps(x) - (m_k + eps w_k) >= (c_perp/2) dist(x, G_k)^2 on U,
       c_perp := c_1/2   (the tube-degraded floor, M2P.2 + M2P.5,
                          UNIFORM in eps < eps_2).

   This is exactly L1's coercivity `E - e_0 >= (c_perp/2) dist^2` with
   `e_0 = m_k + eps w_k`.  (Per L1 section 0, `c_perp` enters only
   projection admissibility + the nondegenerate transverse minimum; it
   is NOT consumed by L1/L1'/L2 as a gradient floor — the refuted
   gradient-floor line of the round-1 draft is DELETED.)

 - DRIFT UPPER BOUND (the ONLY gradient input L1/L1'/L2 consume).  Split
   grad E_eps = grad E_0 + eps grad W*.  With `L := sup_U ||Hess E_0||_op`
   (L1's own tube constant — finite by smoothness + compactness, and
   grad E_0 = 0 on G_k gives the linear-in-dist bound; NOT LP.1(iii),
   which is the Z-tube ceiling) and `sup |grad W*| <= 2 sqrt(2N)`
   (M2P.4),

       |grad E_eps| <= L dist(., G_k) + 2 sqrt(2N) eps
                     = O(h) + O(eps)  in the tube.

   Because G_k is EXACTLY E_eps-critical (M2P.1), the additive term is
   in fact removable: grad E_eps(pi x) = 0, so
   `|grad E_eps(x)| = |grad E_eps(x) - grad E_eps(pi x)| <=
   L_eps dist(x, G_k)` with `L_eps := sup_U ||Hess E_eps||_op <=
   L + 8 eps` (M2P.4: ||Hess W|| <= 8).  Thus E_eps satisfies L1's drift
   hypothesis `|grad E| <= L_eps dist` PURELY LINEARLY, with e_0 =
   m_k + eps w_k — NO separate eps-drift absorption is needed (the
   round-1 Cauchy-Schwarz absorption block is retired; the ground
   criticality of G_k, absent at a saddle, is what makes the drift
   clean).  `L_eps` is a fixed-eps constant, bounded uniformly on
   `[0, eps_2)`.  Consistency: `c_perp = c_1/2 <= c_1 <= L_eps`, matching
   L1's derived `c_perp <= L`.

CORRIDOR AMPLIFICATION (fixed-eps).  L1's Gronwall/corridor step (L1
section 4) amplifies by `e^{L_eps tau}`; since `Hess W*` is bounded
(M2P.4, ||Hess W|| <= 8, so grad E_eps is `L_eps`-Lipschitz on U), this
amplification is a FIXED-eps constant folded into `c_0`, and the
beta -> infinity-first limit is unaffected.  Write `C_1^eps, C_2^eps`
for the toolkit constants read at slope `L_eps` (fixed-eps, eps-uniform
on `[0, eps_2)`); L1''s local-drift term (A2: extra `O(beta h^2)`)
is carried into `C_2^eps` under the floor `beta h^2 >= B`.

---------------------------------------------------------------------
PASSAGE 1 — LP.5(a), the PRODUCT GROUND SANDWICH floor.
(Drop-in replacement for the clause "SH.2 tracks the actual eps-flow
(err(delta)); SH.2' minorizes at the ground (G_k IS E_eps-critical:
M2P.1)." in LP.5(a).)
---------------------------------------------------------------------

The sandwich's downhill leg lands at the product ground ball, and its
average-to-infimum step is the FIRST LP-MIN-MIG call site.  It is
discharged not by the refuted global minorization but by L2 then L1'
on `G_k`, over the CHAIN-HYPOTHESIS subtube.

Let g* be the reference ground point under the slice (the z_sl-fiber
base), `B_0 := B_{delta/4}(g*)`, and `h := delta/2`.  Define the
chain-hypothesis subtube `U_{1/2} := {dist(., G_k) <= delta/2}` — the
EXACT reach of the L2 start hypothesis below.  For any start `x` in
U_{1/2} (i.e. within delta/2 of SOME ground point g** of G_k):

(L2 leg — orbit chain at the PRODUCT diameter, FIRST).  Run the L2
chain on `G_k` with hop scale `h = delta/2` (matched radii: land
`B_{delta/4}`, restart at transverse distance <= delta/2; centers on a
minimizing G_k-geodesic at intrinsic spacing h/2, per XF amendment A1),
`n := ceil(2 D_G / h) = ceil(4 pi sqrt(2N)/delta)` hops (beta-free).
L2 Step 1 re-instantiates on the flat T^2 (the minimizing geodesic is a
straight segment of length `ell <= D_G = pi sqrt(2N)` in the R^2 cover,
nodes `y_j = gamma(j ell/n)` at spacing `<= sigma = h/2`).  The
projection non-expansion is a RE-DERIVATION, not a verbatim
re-instantiation of L2 Step 4: L2 Step 4's tangential-slack bound is the
CIRCLE-specific Chebyshev-center computation `w* = (max v_i + min v_i)/2`
on the diagonal; on the 2-D orbit the substitute is "orthogonal
projection onto a totally geodesic flat T^2 is 1-non-expansive" (locally
projection onto a linear subspace below the injectivity radius, so
`|pi(x) - y_j| <= |x - y_j|`, with intrinsic = ambient distance on the
flat orbit; C_geo = 1) — it closes the next-hop hypothesis
`d_{G_k}(pi(X_j), y_{j+1}) <= h`, and the transverse restart (L2 Step 3,
matched radii) closes `dist(X_j, G_k) <= h`.  L2's base display then
gives, with the toolkit constants read at slope L_eps in the Euclidean
metric,

    P_x( X_n in B_{delta/2}(g*), path in U )
        >= c_0^n exp( -2 beta C_1^eps n h^2 ) =: p_chain,      (M3-GS.1)
    n h^2 = O(D_G h) = O(delta)  =>  beta-exponent = O(beta delta),

an err-class exponent (the L2 corollary shape, Gamma(h) = O(h) per
[23] S D.1, removed only after beta -> infinity at fixed h), with the
L2 diffusive floor `beta >= B/h^2 = O(delta^{-2})` carried (fixed once
delta is fixed, before beta -> infinity).  The T^2 minimizing geodesic
moves in both orbit directions simultaneously; the Stage-A l2_product
probe validated the corresponding flatness in theta_dir AND phi_dir at
every eps in {0, 0.1} (r_tube = 0.8, N = 10) — consistency, not proof.

(L1' leg — density upgrade, SECOND).  From any `z in B_{delta/2}(g*)`,
L1' (amendments A4/A5, corridor-qualified FREE-density form
`p_1(z, .) >= c_0' beta^{dim/2} exp(-beta C_2'(delta^2 + h^2))
Leb|_{B_rho(y)}`, C_2' the A4-inflated constant) at the same base point
(transverse and tangential offsets <= h = delta/2) gives, on
M = T^{2N} (dim = 2N, so beta^{dim/2} = beta^N),

    p_1^eps(z, .) >= m_1 Leb|_{B_0}(.),
    m_1 := c_0' beta^N exp( -beta C_2^eps . O(delta^2) ) > 0.  (M3-GS.2)

(COMPOSITION).  Composing the n L2 hops with the one L1' step by
Chapman-Kolmogorov (SR-SH1, integrand >= 0): for every x in U_{1/2},

    P_x( X_{n+1} in A )
        >= E_x[ 1_{X_n in B_{delta/2}(g*)} P_{X_n}(X_1 in A) ]
        >= p_chain . m_1 Leb(A)   for all Borel A subset B_0.  (M3-GS)

This is the average-to-infimum conversion the SH.3 sandwich needs, now
uniform over the CHAIN-HYPOTHESIS subtube U_{1/2} (arbitrary g** within
delta/2 of G_k), delivered by L2 (arbitrary-in-U_{1/2} relocation to the
reference ball) composed with L1' (base-ball free density).  [The reach
is U_{1/2}, NOT the full r0-tube: the L2 start hypothesis is
`dist(x, G_k) <= h = delta/2`.  Ground states with dist in
(delta/2, r0] are first routed into U_{1/2} by the RELAX step of Passage
2 before the chain applies.]  The SH.3 downhill reference-flow
arithmetic then delivers the target hit B'' from a ground start, and
the sandwich cost is unchanged:

    P_x( hit B'' )
      >= c(delta) exp( -beta( S_k - m_k + eps(S_k/kappa - w_k)
                               + C_B eps^2 + err(delta) ) ),
    w_k := W*(G_k) the ground eps-coefficient (M2P.1);
    S_k/kappa = W*(z_sl) the slice eps-coefficient;
    the two coefficients are NEVER identified ([23] S B.3 — a
    nonzero window).

(This reproduces LP.5(a)'s exact level display verbatim — the sandwich
LEVEL arithmetic is inherited-unchanged from LP.5(a) and is OUT of M3's
scope; M3 supplies only the average-to-infimum floor.  The round-1
definitional line "g_k := m_k/kappa = W*(G_k)" is DELETED: [23] S B.3
guarantees only S_k/kappa != w_k, not w_k = m_k/kappa; the display
carries LP.5's form eps(S_k/kappa - w_k) with w_k = W*(G_k).)

M2P.1 supplies G_k E_eps-criticality (the ground tube's admissibility)
for every eps.  ORDER OF LIMITS: beta -> infinity FIRST at fixed
(eps, delta, h = delta/2); THEN delta -> 0 (h -> 0), which sends the
O(delta) chain increment Gamma(h) and err(delta) to 0; THEN the
eps-window is read.

---------------------------------------------------------------------
PASSAGE 2 — LP.5(c), the REGENERATION (round Markov structure).
(Drop-in replacement for "Rounds are successive returns to the ground
ball (Markov via the SH.2' minorization at G_k)." and for the clause
"rounds are Markov at ground-ball returns (the SH.2' minorization)"
in composition step (1).)
---------------------------------------------------------------------

Strong Markov makes ground-ball return times Markov but does NOT by
itself furnish a common regeneration law ([23] S D.2); the round
structure is built explicitly from (M3-GS), whose reach is U_{1/2}.

THE PRE-CHAIN RELAX STEP (beta-free descent into the delta/2-collar).
(M3-GS) applies only for starts in U_{1/2} = {dist(., G_k) <= delta/2},
whereas a renewal round may re-enter the FIXED r0-tube U at transverse
distance up to r0 >> delta/2.  A winding-k ground-tube state
`x in U`, `dist(x, G_k) in (delta/2, r0]`, is first relaxed into
U_{1/2} by the E_eps-descent flow: on U (subset the r_1-tube, since
r0 <= r_1) M2P.5 Step 2 gives the slice gradient floor
`<grad E_eps(x), x - pi(x)> >= (c_1/2) dist(x, G_k)^2`, uniform in
eps < epsilon_0, so `dist(., G_k)` decreases at a definite eps-uniform
rate; M2P.5 Step 3 (closure attraction to G_k, no boundary rest point;
= M2b.1(iii) at eps = 0) keeps the trajectory in the winding-k sector
D_k(eps) with both Delta faces missed.  Hence the flow enters
`{dist <= delta/4} subset U_{1/2}` in a beta-free time
`T_relax(delta, eps)`.  The DIFFUSION realizes this at order-one
probability as beta -> infinity: SH.2 max-norm tracking at radius delta/8
over the beta-free horizon [0, T_relax] places `X_{T_relax}` in U_{1/2}
(the LP.4(ii) PROCESS FORM; equivalently the LP.4(ii)(1) region-wide
chain descends a sub-cap sector state to the G_k-component in beta-free
time).  RELAX is a beta-FREE relocation at order-one probability — it is
NOT the small-set floor, and it does not touch the beta -> infinity-first
limit.

ENTRANCE / RETURN TIMES.  Let `Y_i := X_{i T*}`, `T* := n + 1` (beta-free;
n the (M3-GS) chain length), be the T*-skeleton — a time-homogeneous
Markov chain (the SDE is autonomous).  Define the base ball, its
entrance, and the successive returns of the skeleton,

    S := B_0 = B_{delta/4}(g*)   (note S subset U_{1/2}),
    rho^{(0)} := inf{ i >= 0 : Y_i in S },
    rho^{(l+1)} := inf{ i > rho^{(l)} : Y_i in S }.

The RELOCATE leg carrying a winding-k ground-tube state into S is
RELAX (into U_{1/2}) THEN the L2 chain (U_{1/2} -> S), at order-one
(beta-free) probability by the above — this makes the S-return times
a.s. finite from anywhere in U.  [Round-1 error corrected: the L2 chain
ALONE does NOT carry an arbitrary U-state into S — its start hypothesis
is dist <= delta/2; the RELAX prefix is what extends reachability from
U to U_{1/2}.]

THE SMALL-SET MINORIZATION (restricted to the proven reach).  Fix
eps < eps_2, delta small; set `nu := Leb|_S / Leb(S)` (the FIXED
normalized-volume law on the base ball) and

    m := p_chain . m_1 . Leb(S) > 0
        ( beta-exponent err-class O(beta delta); prefactor beta^N ).

By (M3-GS), for every x in U_{1/2} — in particular every x in
S subset U_{1/2} —

    P^{T*}(x, A) := P_x( X_{T*} in A ) >= m nu(A),
                                  all Borel A subset S.       (M3-MINOR)

So S is an (m, T*, nu)-small set for the skeleton, with the
minorization uniform over U_{1/2} (the chain-hypothesis subtube) — NOT
over the full r0-tube U.  This is exactly the reach (M3-GS) establishes,
and it is exactly what the Athreya-Ney-Nummelin split consumes: the
split draws its coin ONLY when Y_i in S, and S subset U_{1/2}, so the
split's requirement `P^{T*}(x, .) >= m nu` for x in S is met.

THE ATHREYA–NEY–NUMMELIN SPLIT.  Enlarge the skeleton state to
`M x {0,1}`.  Run Y_i; each time `Y_i in S`, draw an independent
Bernoulli(m) coin xi_i:
 - xi_i = 1 (prob m) — the REGENERATION event: `Y_{i+1} ~ nu`, drawn
   independently of (Y_0, ..., Y_i) and of the earlier coins;
 - xi_i = 0 (prob 1-m): `Y_{i+1} ~ R(Y_i, .)`, the residual kernel
   `R(x, .) := (P^{T*}(x, .) - m nu(.))/(1 - m)`, a genuine probability
   measure by (M3-MINOR) at x in S (nonnegative, total mass 1).
When `Y_i notin S`, no coin: `Y_{i+1} ~ P^{T*}(Y_i, .)`.  Mixing R and
nu with weights (1-m, m) rebuilds P^{T*} on S, so the split leaves the
marginal law of the T*-skeleton unchanged; it only exposes the
regenerations.

THE SPLIT FILTRATION.  Let

    G_i := sigma( Y_0, ..., Y_i, xi_0, ..., xi_{i-1} )

(the coin at step i revealed after observing `Y_i in S`), and let
`R_1 < R_2 < ...` be the epochs with xi = 1 (regeneration times).  Each
R_j is a G-stopping time, and by construction `Y_{R_j + 1} ~ nu`
independently of `G_{R_j}`: at every regeneration the process restarts
from the FIXED law nu on the base ball S, independent of the past.
Hence the inter-regeneration blocks

    Blk_j := ( Y_{R_j + 1}, ..., Y_{R_{j+1}} ),   j >= 1,

are i.i.d. (each a fresh nu-started excursion of the skeleton) — a
genuine common regeneration law, replacing "Markov via minorization".
(The S-return times are a.s. finite from any winding-k ground-tube state
by the RELAX + chain reachability above, so the R_j are a.s. finite.)

(EQUIVALENT uniform-conditional-floor reading, if splitting is to be
avoided per [23] S D.2: the floor `m nu` of (M3-MINOR) is uniform over
`sigma(X_s : s <= i T*)` restricted to `{Y_i in S}` — every base-ball
return re-exposes the same nu-floor.  RESTRICTED to {Y_i in S}, NOT
{Y_i in U}: the round-1 "uniform over {Y_i in U}" reading is WITHDRAWN
— (M3-GS) does not establish a floor for starts at dist in (delta/2, r0],
so a U-wide conditional floor is not proven.  The Nummelin split is the
constructive form of this S-restricted uniformity, and is the route this
passage uses.)

INTERFACE TO THE ROUND COUNTER (call site 3, HANDED OFF to M4).  The
renewal reads rounds as the i.i.d. blocks Blk_j.  Within a block, from
its nu-distributed ground start, the (a)+(b) sandwich+crossing floor of
LP.5 holds UNIFORMLY (nu is supported in S subset U_{1/2}, the domain of
the (M3-GS) floor), giving a per-round label-change probability

    p >= c(delta) exp( -beta( S_k - m_k + eps(S_k/kappa - w_k)
                               + C eps^2 + err(delta) ) ),

uniform over blocks and measurable at the block-start G-field.  The
round DURATION and the geometric/Wald arithmetic
`E_q[tau_change] = E[ sum_{j <= N} |Blk_j| ]`, `N :=` first crossing
block, `E[N] <= 1/p` — the THIRD LP-MIN-MIG call site — consume this
i.i.d.-block structure, with PROD-EXCURSION controlling the off-R_0
occupation per block; that step is discharged separately (M4), NOT here.

ORDER OF LIMITS (unchanged): beta -> infinity FIRST at fixed
(eps, delta, h = delta/2) — m > 0 and the blocks are i.i.d. at every
fixed beta; THEN delta -> 0 (h -> 0); THEN the eps-window.  The
exponential smallness of m in beta is err-class (it inflates only the
expected round duration, absorbed at fixed delta exactly as SH.4/LS.5
absorb err(delta)); it does not touch the i.i.d.-block construction,
which needs only m > 0.

=====================================================================
CONSTANTS INTRODUCED (all named/bounded; none left symbolic without a
bound).
=====================================================================
    D_G      = pi sqrt(2N)          product-torus Euclidean diameter
                                    (#23 seal — diameter only)
    e_0      = m_k + eps w_k        ground level (M2P.1); w_k = W*(G_k)
    c_perp   = c_1/2                tube-degraded transverse coercivity
                                    (M2P.2 c_1 = min(kappa gamma_k,
                                    lambda) mu_1; M2P.5 Step 2),
                                    UNIFORM in eps < eps_2
    L        = sup_U ||Hess E_0||_op   L1's own tube slope (NOT LP.1)
    L_eps    = sup_U ||Hess E_eps||_op <= L + 8 eps  (M2P.1 + M2P.4),
                                    fixed-eps; drift |grad E_eps| <=
                                    L_eps dist (linear, no additive eps)
    h        = delta/2              hop scale
    n        = ceil(2 D_G/h)
             = ceil(4 pi sqrt(2N)/delta)   L2 hop count (beta-free)
    T*       = n + 1                block length (beta-free)
    U        = {dist(., G_k) <= r0}, r0 <= min(r_0', r_1)   ground tube
    U_{1/2}  = {dist(., G_k) <= delta/2}   chain-hypothesis reach
    T_relax  = T_relax(delta, eps)  beta-free RELAX horizon (M2P.5)
    C_1^eps, C_2^eps  = C_1, C_2 (SH.2'-LOCAL v2) read at slope L_eps
    p_chain  = c_0^n exp(-2 beta C_1^eps n h^2)   [beta-exp O(beta delta)]
    m_1      = c_0' beta^N exp(-beta C_2^eps O(delta^2))   (L1' A4/A5)
    S        = B_0 = B_{delta/4}(g*)   the small set (S subset U_{1/2})
    nu       = Leb|_S / Leb(S)     fixed regeneration law
    m        = p_chain m_1 Leb(S) > 0   minorization constant
    w_k      = W*(G_k),  S_k/kappa = W*(z_sl)   ([23] B.3, never
                                    identified)

### M3-lp-sandwich-regen — consumed

L1 (HOP, SOUND; consumes only the drift upper bound L_eps = sup_U||Hess E_eps||, with c_perp admissibility-only, c_perp <= L_eps derived). L1' (DENSITY UPGRADE, A4/A5-amended free-density form, prefactor beta^{dim/2} = beta^N on M = T^{2N}). L2 (CHAIN, A1-amended: spacing sigma = h/2, n = ceil(2 D_G/h)). M2P.1 (G_k EXACTLY E_eps-critical for every eps; E_eps(G_k) = m_k + eps w_k, w_k = W*(G_k) = N(1-cos(2πk/N))). M2P.2 (uniform Morse-Bott transverse floor Q_eps >= Q_0 >= c_1|·_⊥|², c_1 = min(κγ_k,λ)μ_1; both θ- and φ-blocks positive-definite mod the T² rotation kernel — index-0 minimum). M2P.4 (sup|grad W| <= 2√(2N); ||Hess W|| <= 8). M2P.5 (ε-pinning THEOREM on [0,ε_0): tube-degraded Hessian >= (3/4)c_1, slice gradient floor <grad E_eps(x),x> >= (c_1/2)|x|², closure attraction to G_k, no boundary rest point). M2b.1(iii) (eps=0 confinement/attraction, cited for the RELAX sector-confinement at eps=0). LP.4(ii)(1) region-wide chain / LP.4(ii) PROCESS FORM (cited as the diffusion-tracking realization of the beta-free RELAX descent). SR-SH1 (jointly-continuous strictly-positive transition density + pointwise Chapman-Kolmogorov). The [MACH-UP] SH.1-SH.3 sandwich (LP.5(a) level arithmetic, inherited unchanged; C_B symbolic). COORDINATION [23] S C (one metric per consumer; per-consumer D_G = pi sqrt(2N) for the product ground; campaign-#23 seal is diameter-only), S D.1 (ground-sandwich migration, Gamma(h)=O(h) removed after beta->infinity at fixed h), S D.2 (regeneration migration: Nummelin split against fixed normalized-volume law; strong Markov alone insufficient), S B.3 (the two eps-coefficients W*(z_sl)=S_k/kappa and w_k=W*(G_k) never identified). eps_2 ledger (lane-lp constants ledger: sqrt(eps'_0/C_inv), the [phi-desc] and corridor entries, epsilon_0 — carries the fixed-eps smallness).

### M3-lp-sandwich-regen — typed gaps

NONE inside the two call sites in scope (LP.5(a) ground sandwich floor + LP.5(c) regeneration). Both are fully derived: the ground-side average-to-infimum floor (M3-GS), and the explicit regeneration (M3-MINOR restricted to S ⊂ U_{1/2} + Athreya-Ney-Nummelin split against the fixed law nu + G-filtration + i.i.d. blocks), with the RELAX prefix (M2P.5) supplying reachability of S from the full r0-tube at order-one beta-free probability. All ingredients (L1/L1'/L2 SOUND; M2P.1/.2/.4/.5 proven, M2P.5 a THEOREM on [0,ε_0) ⊇ [0,eps_2)) are in proven territory. Two items are scoped OUT by construction, not gaps in this piece: (1) CALL SITE 3 (round counter / Wald step): the geometric E[N] <= 1/p and E_q[tau] = E[sum_{j<=N}|Blk_j|] arithmetic on the i.i.d. blocks — handed to M4 ([23] S D.3); M3 delivers its interface (i.i.d. blocks with common law nu, uniform per-round crossing floor p, block-start G-field). (2) PROD-EXCURSION: the conditional off-R_0 occupation control per block (the G_{k,j} = C_k × C_j^phi traps at w_phi != 0) remains its own typed row (lane-lp), consumed by the counter, not by M3 — nothing local gives a theorem for w_phi != 0 starts ([23] S D).

### LEAD AMENDMENT A1 (2026-07-20; source: round-2 checker prescription, M3)

The parenthetical in Passage 1 that DELETED the ground-coefficient
identity misread COORDINATION [23] S B.3. Corrected reading, which
this artifact adopts: [23] S B.3 asserts BOTH `g_k := W*(G_k) =
m_k/kappa` (GROUND coefficient) AND `s_k := W*(SP_k, C_0) =
S_k/kappa` (SADDLE coefficient), and forbids ONLY the reuse of one
symbol for the two distinct numbers. The identity `w_k = W*(G_k) =
m_k/kappa` is standing canon (lane-lp; restored by the XH repair,
COORDINATION [22], adopted [24]). M3 itself consumes NEITHER
identity - its two in-scope derivations (average-to-infimum floor,
regeneration) never touch the level arithmetic; the display carries
LP.5's form `eps(S_k/kappa - w_k)` with both coefficients as canon
states them. The draft's deletion sentence is VOID.


---

# M4 — the stopped-round / Wald step (LP-MIN-MIG, call site 3)

(fleet grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE)

## LP.5(c) — ROUNDS (the stopped-round / Wald composition) [LP-MIN-MIG, THIRD CALL SITE; rebuilt on the local route] — ROUND-2

[This block REPLACES the former "(c) ROUNDS" prose. The former text
carried the round Markov structure through the refuted GLOBAL SH.2'
minorization at G_k (the third of the three LP.5 call sites XH flagged).
Here the round scaffold is re-based on the local route (M3 regeneration
interface: orbit chain FIRST at the PRODUCT diameter, then L1' on the
landed base ball), the local small-set cost is counted explicitly in the
exponent budget, and PROD-EXCURSION is consumed as the named EXTERNAL
off-stratum input. ROUND-2 fixes: (A) the product-torus orbit chain is
consumed from [M5, this campaign] — the T^2 EXTENSION of the L2 circle
lemma — NOT from the circle corollary of lane-sh2local L2 with the product
NUMBER pasted on; (B) the orbit-chain cost is stated in the AIRTIGHT
matched-radii form (spacing sigma = h/2, hop count n = ceil(2 D_G/h),
Gamma_orb(h) <= 6 C_1 D_G h), never the idealized sigma = h display.]

### The regeneration scaffold (consumes the M3 interface + the M5 orbit chain)

Fix a hop scale `0 < h <= r_0'/8` and a point `g_0` of the product ground
orbit `G_k = C_k x C_0` — a totally geodesic flat 2-torus (subgroup orbit
of the flat product torus; L3, campaign #23). Let `B_0 := B_h(g_0)` be the
common base ball. M3 supplies the round-start (regeneration) times and
durations

```text
sigma_0 := the first entrance to B_0 after the initial relocation from q;
sigma_i := the terminus of round i (i >= 1): the first of
           (r) the next entrance to B_0 after sigma_{i-1}   [regeneration], or
           (x) a theta-label change                          [crossing];
D_i    := sigma_i - sigma_{i-1}   (round-i duration, >= 0, a.s. finite);
```

and the round-start sigma-field (the augmented round filtration)

```text
G_i := F_{sigma_{i-1}}   (the stopped sigma-field at round-start i,
        augmented by the Nummelin split coins xi_1, ..., xi_{i-1}
        when the SPLIT route is used).
```

M3's interface is consumed in EITHER admissible form ([23] S D.2):
- (SPLIT) a Nummelin split against a fixed normalized base-ball law `nu`
  on `B_0`: on `{round i regenerates}`, conditional on `G_i` the
  post-`sigma_{i-1}` round law dominates `alpha(beta,h) . nu`, with
  `alpha(beta,h) = m(beta,h) Leb(B_0)` the L1' small-set mass; or
- (FLOORS) uniform conditional floors: the per-round bounds (P),(D),(E)
  below hold conditional on `G_i`, uniformly over `G_i`-measurable data.

The base ball is reached in two consumed steps, in this order:

1. The ORBIT CHAIN along `G_k` at the PRODUCT diameter carries the process
   from a start near an arbitrary point of the ground 2-torus into `B_0`.
   This is consumed from **[M5, this campaign]**: the extension of the L2
   chain construction to the flat 2-torus orbit `G_k = C_k x C_0`, at the
   product diameter `D_G = pi sqrt(2N)`, in the AIRTIGHT matched-radii form
   (spacing `sigma = h/2`, hop count `n = ceil(2 D_G/h)`, land each hop in
   `B_{h/2}(y_j)` and restart at transverse-and-tangential distance
   `<= h/2` from the next ground center, consecutive centers at intrinsic
   spacing `<= h/2` so the next-hop L1 reach `d_G(pi(X_j), y_{j+1}) <= h` is
   met exactly — amendment A1), with the SAME per-hop L1 event consumption
   as the circle chain. Its cost is carried below as `Gamma_orb(h)`.
   HONEST BOUNDARY (the trap LP-MIN-MIG names, respected): the L2 corollary
   of lane-sh2local is a ONE-DIMENSIONAL CIRCLE proof — Step 1 builds a
   single diagonal-circle geodesic arc, and Step 4's Chebyshev-center
   projection-slack bound (4.2) is derived for the diagonal direction
   `u = (1,...,1)` on a circle; that lemma is NOT consumed here with the
   product number `pi sqrt(2N)` pasted on. `G_k` is a 2-D `T^2` orbit; the
   flat-`T^2` geodesic existence, the 2-D subdivision, and the 2-D
   Chebyshev projection bookkeeping (projection non-expansion on the
   product) are exactly what M5 re-derives ([23] S C: "a circle proof at
   `D_G = pi` does not silently cover the product torus", and [23] S D's
   per-consumer geometry caution). M5, not the circle lemma, discharges the
   `T^2` chain.
2. On the landed base ball, **L1'** converts the reversible ground average
   into an infimum on `B_0` (density-upgrade / small-set leg), mass
   `m(beta,h) = c_0' beta^{n/2} exp(-beta Gamma_dens(h))` (L1' display,
   corridor-qualified A5 form + the A4 half-time input; carried below as
   `Gamma_dens(h)`).

This pair (M5 orbit chain, then L1' on the base ball) IS the LP-MIN-MIG
re-basing of the former global-SH.2' return. Recorded honestly: STRONG
MARKOV makes each `sigma_i` a Markov time but does NOT by itself furnish
the common law `nu` or the floor `alpha` — that is exactly what the M3
SPLIT/FLOORS interface delivers and what this step consumes ([23] S D.2
caution).

METRIC DECLARATION (defect-class-3 hygiene). `D_G = pi sqrt(2N)` is the
INTRINSIC (geodesic) diameter of the flat 2-torus orbit `G_k` in the flat
product metric — the SAME metric in which M5's hop reach `h`, the matched
radii `h/2`, and the per-hop L1 corridor are read, so the cost coefficient
`C_1 D_G h` reads `D_G` and `h` in one metric (the requirement L2/M5 are
derived under). This is NOT the max-norm (sup) diameter of the product,
which is `pi` (a different number for a different metric). The ambient tube
radii and `dist(., Z)` remain max-norm as everywhere in the corpus; the
`L_fr` ledger performs the one-way conversion (a Euclidean/intrinsic
`r`-ball is contained in the max-norm `r`-ball) at the base ball. Labeling
`pi sqrt(2N)` a "max-norm diameter" would be internally contradictory and
is avoided.

### The three per-round conditional inputs

**(P) CROSSING FLOOR** (from the ATTEMPT (a) + the crossing chain (b)).
For every round `i`, conditional on `G_i` and on `{N >= i}` (not yet
crossed), the theta-label changes during round `i` with probability

```text
P( crossing in round i | G_i )  >=  p,
p := c(delta) exp( -beta ( S_k - m_k + eps(S_k/kappa - w_k)
                            + C_w eps^2 + err(delta) ) ),
```

`C_w := C_B + the LP.4b (b)-chain constant` (symbolic; from LP.5(a)'s
sandwich cost and LP.5(b)'s crossing chain), uniformly over `G_i`
(M3 SPLIT/FLOORS).

**(D) DURATION BOUND.** The in-`R_0` machinery — relocate-or-change:
LP.2 / LP.4(ii)(1) on the sub-cap sector, LP.4(ii) on the band, in the
PROCESS FORM (order-one tracked probability as `beta -> infinity` at fixed
`eps`, over the beta-free horizons `T_B(eps)`, `T_cone(eps) = O(log 1/eps)`)
— returns the process to the ground ball in a uniform beta-free horizon
`T_1(eps,delta)`. Landing in the COMMON base ball `B_0` (not merely
somewhere in the ground ball) additionally pays, per pass, the M5
orbit-chain factor `exp(-beta Gamma_orb(h))`, the L1' base-ball small-set
factor `exp(-beta Gamma_dens(h))`, and the LP.4(ii)(2) relocate chain
`exp(-beta gamma_2 eps^2)`; the expected number of sub-cycles per
regeneration is therefore `<= exp( beta( Gamma(h) + gamma_2 eps^2
+ err(delta) ) )` with the FULL local small-set cost `Gamma(h) = Gamma_orb
+ Gamma_dens` (the inverse landing probability per pass is
`exp(+beta Gamma_orb) . exp(+beta Gamma_dens) = exp(+beta Gamma(h))` — both
the M5 chain and the L1' density are paid). Adding the off-`R_0` excursion
time (input (E)):

```text
E[ D_i | G_i ]  <=  T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2
                                              + err(delta) ) )
                    + T_row exp( -beta( c_H/2 - err(delta) ) )
                <=  2 T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2
                                                + err(delta) ) )  =:  D_bar,
```

for `beta` large — the excursion term is beta-SUPPRESSED
(`c_H/2 - err(delta) > 0` by the c_H ledger), so it is dominated by the
first for `beta` large. Here the LOCAL SMALL-SET COST is

```text
Gamma(h)      := Gamma_orb(h) + Gamma_dens(h),
Gamma_orb(h)  := 6 C_1 D_G h + O(h^2)    ([M5, this campaign]; the AIRTIGHT
                 matched-radii corollary at the product diameter
                 D_G = pi sqrt(2N), spacing sigma = h/2, n = ceil(2 D_G/h):
                 2 C_1 n h^2 <= 2 C_1 (2 D_G/h + 1) h^2
                             =  2 C_1 (2 D_G h + h^2)
                             <= 2 C_1 . 3 D_G h  =  6 C_1 D_G h
                 (M5's Step-6 analogue of lane-sh2local eq. (6.1) +
                 amendment A1). This is 3x the IDEALIZED sigma = h
                 coefficient 2 C_1 D_G h, which lane-sh2local L2 flags as
                 NOT airtight; the idealized display is NOT used.),
Gamma_dens(h) := C_2 ( h^2 + h^2 )       (L1' small-set constant on B_0:
                 the delta^2 + h^2 additive form at the same base point,
                 the O(beta h^2) local-drift term absorbed under
                 beta h^2 >= B, amendment A2),
Gamma(h)      =  6 C_1 D_G h + 2 C_2 h^2  =  O(h)
                 (the beta-LINEAR orbit term at the product diameter
                 dominates the O(h^2) base-ball density term).
```

`D_bar` is `G_i`-uniform (SPLIT: the split residual law is common on `B_0`;
FLOORS: stated uniform). All of `T_1, T_row, C_1, C_2, c(delta), gamma_2,
c_H` symbolic / named-and-bounded (constants policy).

ABSORBED BETA-FREE FACTOR (recorded, not hidden). The M5 orbit chain
carries a beta-FREE but h-dependent prefactor `c(h) = c_0^{n(h)}` with
`n(h) = ceil(2 D_G/h)`, so `1/c(h) = exp( (2 D_G/h) log(1/c_0) )` blows up
as `h -> 0`. It is absorbed into the beta-free prefactor
`T_1(eps,delta) / c(delta)` of `D_bar`/`E_q[tau]` below. This is legitimate
because it is beta-FREE: in the `beta -> infinity`-first limit it
contributes `beta^{-1} log (1/c(h)) -> 0` and NEVER enters the rate; being
a fixed function of `h` at fixed `h`, it is spent (gone) before `h -> 0` is
taken. It is named here rather than left implicit; it has no effect on the
final rate `C eps^2`.

**(E) EXCURSIONS — PROD-EXCURSION, EXTERNAL (consumed, NOT proved).**
Every exit from `R_0 := {w_theta = k, w_phi = 0, E_eps <= S_k + c_H}`
passes the doorway `{E_eps > S_k + c_H}` (Delta_phi is level-blocked
inside `R_0` by the c_H ledger; a Delta_theta hit IS the crossing). ROW
PROD-EXCURSION's contract bounds the conditional expected time per round
spent OUTSIDE `R_0`, before re-entry to `{E_eps <= S_k + c_H, w_phi = 0}`
or a theta-label change, by `T_row exp(-beta(c_H/2 - err(delta)))`,
`T_row` beta-free, uniformly over the round-start sigma-field. This is the
ONLY off-stratum ingredient and the ONLY input not internal to the local
route; the `w_phi != 0` pinning tori `G_{k,j}` are its burden, not this
step's (nothing local gives a theorem for `w_phi != 0` starts, [23] S D).

### The first-crossing round and its measurability

Define

```text
N := min{ i >= 1 : the theta-label changes during round i }.
```

`N` is a stopping time for the round filtration `(G_i)`: the event
`{N <= i-1} = {tau_change^theta <= sigma_{i-1}}` is determined by the path
on `[0, sigma_{i-1}]`, hence is `F_{sigma_{i-1}} = G_i`-measurable.
Therefore

```text
{ N >= i } = { N <= i-1 }^c  in  G_i     (MEASURABLE AT ROUND-START i).
```

This is the load-bearing measurability step. Since
`{N >= i+1} = {N >= i} ∩ {no crossing in round i}` and `{N >= i} in G_i`,
input (P) gives

```text
P( N >= i+1 | G_i )  =  1_{N>=i} . P( no crossing in round i | G_i )
                     <=  1_{N>=i} (1 - p),
```

so `P(N >= i+1) = E[ P(N>=i+1 | G_i) ] <= (1-p) P(N >= i)`, whence
`P(N >= i) <= (1-p)^{i-1}` (as `P(N >= 1) = 1`), i.e. `N` is stochastically
dominated by a Geometric(`p`) variable, and

```text
E[N] = sum_{i>=1} P(N >= i)  <=  sum_{i>=1} (1-p)^{i-1}  =  1/p  <  infinity.
```

### The Wald-form bound

The label change occurs DURING round `N`, at a time in
`(sigma_{N-1}, sigma_N]`, so

```text
tau_change^theta  <=  sigma_N  =  sum_{i=1}^N D_i .
```

Each `D_i >= 0`; `1_{N>=i} in G_i`; and by the strong Markov property at
`sigma_{i-1}`, `D_i` depends on the future only through `X_{sigma_{i-1}}`
(and the split coin), so `E[D_i | G_i]` is well-defined and, by (D),
bounded by `D_bar` uniformly in `i` and in `G_i`. Hence by Tonelli
(nonnegative summands) and pulling the `G_i`-measurable indicator out of
the conditional expectation at each fixed `i`,

```text
E_q[ tau_change^theta ]  <=  E_q[ sum_{i=1}^N D_i ]
   =  sum_{i>=1} E_q[ D_i 1_{N>=i} ]
   =  sum_{i>=1} E_q[ 1_{N>=i} . E[ D_i | G_i ] ]
   <=  ( sup_i ess-sup E[ D_i | G_i ] ) . sum_{i>=1} P( N >= i )
   =  D_bar . E[N]
   <=  D_bar / p .
```

This is the requested Wald form `E_q[tau] <= (sup_i E[D_i | F_start_i]) E[N]`:
the equality `{N >= i} in G_i` is exactly what licenses pulling the
indicator out at fixed `i`, and `sup_i E[D_i | G_i] <= D_bar < infinity`
is the uniform conditional duration bound. No common regeneration LAW is
needed beyond the uniform conditional floors — the SPLIT route supplies
it, the FLOORS route bypasses it; either discharges the step. This is
precisely the local small-set cost that [23] S D.3 required be COUNTED,
not hidden inside the word "Markov".

### The exponent budget (the local small-set cost counted explicitly)

Substituting `D_bar` and `p`:

```text
E_q[ tau_change^theta ]
   <=  ( 2 T_1(eps,delta) / c(delta) )
       exp( beta [ ( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2
                     + err(delta) )                            (from 1/p)
                   + ( Gamma(h) + gamma_2 eps^2 + err(delta) ) (from D_bar) ] ),
```

with the beta-free orbit-chain prefactor `1/c(h)` absorbed into the
leading `2 T_1(eps,delta)/c(delta)` factor (named above). Hence, at
FIXED `(eps, delta, h)`,

```text
limsup_{beta -> infinity} beta^{-1} log E_q[ tau_change^theta ]
   <=  S_k - m_k + eps(S_k/kappa - w_k)
        + (C_w + gamma_2) eps^2  +  Gamma(h)  +  2 err(delta).
```

The two O(eps^2) contributions join: `C_w eps^2` (the (a)+(b) crossing
window) and `gamma_2 eps^2` (the LP.4(ii)(2) relocate cost inside the
duration) sum to `C eps^2` with `C := C_w + gamma_2` (symbolic). The
local small-set cost `Gamma(h) = 6 C_1 D_G h + 2 C_2 h^2 = O(h)` (M5's
airtight product-torus chain plus the L1' constant on `B_0`) and
`err(delta)` are auxiliary and removed by the limits below.

### The order of limits (full, for the assembled LP.5 upper)

`beta -> infinity` FIRST at fixed `(eps, delta, h)` — every horizon
`T_1(eps,delta)`, `T_row`, `T_cone(eps) = O(log 1/eps)`, every
tracked-probability floor, AND the absorbed beta-free chain prefactor
`1/c(h)` are beta-free at fixed `eps, h`, and the diffusive floor
`beta h^2 >= B` of L1 / L1' / M5 is respected
(`beta_0(h) = O(h^{-2})`; `h` is NEVER sent to 0 before `beta`, and the
M5 corollary fixes the hop scale `h` — hence `n = ceil(2 D_G/h)` — before
`beta` per [23] S C). THEN `delta -> 0` and `h -> 0`, removing `err(delta)`,
the beta-free `1/c(h)` prefactor, and `Gamma(h) = O(h)`. ONLY AFTERWARDS
the small-`eps` reading. The result:

```text
limsup_{beta -> infinity} beta^{-1} log E_q[ tau_change^theta ]
   <=  S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 ,      C := C_w + gamma_2,
```

for fixed `0 < eps < eps_2` and `q in D_k(eps)` — the LP.5 upper window,
conditional on PROD-EXCURSION (input (E)) and on the M3 regeneration
interface + the local route (M5 orbit chain at the product diameter, then
L1' on `B_0` — the LP-MIN-MIG discharge of this, the third, call site).
With LP.3 the O(eps) window is two-sided modulo those two rows; LP.3's
lower side is unaffected. QED.

### M4-lp-wald — consumed

[M5, this campaign] — the T^2 EXTENSION of the L2 chain to the flat 2-torus orbit G_k = C_k x C_0, product diameter D_G = pi sqrt(2N), matched radii sigma = h/2, hop count n = ceil(2 D_G/h), same per-hop L1 consumption (this replaces the ROUND-1 direct consumption of the lane-sh2local L2 CIRCLE corollary — which is NOT consumed for T^2). | L1' (lane-sh2local-proofs, A4 half-time input + A5 corridor-qualified free-density form) — base-ball small-set density mass m(beta,h) = c_0' beta^{n/2} exp(-beta Gamma_dens(h)) on B_0. | The airtight matched-radii arithmetic of the lane-sh migrated passage / lane-sh2local L2 Step 6 eq. (6.1) + amendment A1 (spacing h/2, n = ceil(2 D_G/h), 2 C_1 n h^2 <= 6 C_1 D_G h) — cited for the coefficient, applied through M5 on the 2-torus. | M3 regeneration interface (SPLIT Nummelin split vs base-ball law nu, OR uniform conditional FLOORS + augmented round filtration G_i) — [23] S D.2 (typed, see gaps). | PROD-EXCURSION (lane-lp typed row) — off-R_0 excursion time contract T_row exp(-beta(c_H/2 - err(delta))) (external typed, see gaps). | LP.5(a) near-target sandwich (C_B) + LP.5(b) crossing chain — crossing floor p exponent. | M2P.1 — G_k E_eps-criticality (ground minorization base point). | LP.2 / LP.4(ii)(1)(2) / LP.4a — in-R_0 duration machinery, process form. | COORDINATION [23] SS C-D — per-consumer geometry caution (circle proof does not silently cover T^2), split/round-filtration composition caution, product diameter pi sqrt(2N). | L3 (campaign #23 sealed) — G_k totally geodesic flat 2-torus, intrinsic diameter D_G = pi sqrt(2N). | c_H ledger, gamma_2, C_w = C_B + LP.4b(b)-chain constant, T_1 — LP constants ledger.

### M4-lp-wald — typed gaps

GAP-M3-INTERFACE (consumed, not discharged here): the round-start times sigma_i, the common base-ball law nu / uniform conditional floors, and the augmented split filtration G_i are the M3 deliverable, ASSUMED per the task's stated interface. This step proves the stopped-round/Wald composition GIVEN that interface; it does not construct the Nummelin split or verify the FLOORS uniformity (that is M3's burden — [23] S D.2). If M3 delivers only FLOORS (not SPLIT), the proof still closes: it uses only sup_i ess-sup E[D_i|G_i] <= D_bar and the conditional crossing floor p, both stated as FLOORS. | GAP-PROD-EXCURSION (external typed row): input (E) is consumed as a contract. PROD-EXCURSION itself is TYPED, NOT discharged (the eps>0 critical structure above the band and the whole w_phi != 0 stratum are unclassified; the G_{k,j} pinning tori are real traps there). Consequently the assembled LP.5 upper — and the two-sided window — remain CONDITIONAL on PROD-EXCURSION AND on the LP-MIN-MIG discharge (of which this is the third call site). This step removes the third call site's global-SH.2' dependence; it does not remove the PROD-EXCURSION conditionality. | NON-GAP / CONSUMED-INPUT NOTE (recorded for honesty, ROUND-2): the product-torus orbit chain is consumed from [M5, this campaign] as a LANDED sibling piece — the extension of the circle lemma L2 (which lane-sh2local proves only for the 1-D diagonal circle: single geodesic arc, Chebyshev-center bound (4.2) for u=(1,...,1), circle-specific net closure) to the 2-D flat T^2 orbit G_k. M5's burden is exactly the flat-T^2 geodesic existence, the 2-D subdivision, and the 2-D Chebyshev projection bookkeeping (projection non-expansion on the product); those are NOT re-derived here and NOT claimed from the circle corollary. If M5's own status regresses, this call site inherits that conditionality. This resolves the ROUND-1 MAJOR (the circle lemma was consumed with the product number pasted on, with no typed cover). | NON-GAP (constants / auxiliary scales): the symbolic constants T_1, T_row, C_1, C_2, C_w, gamma_2, c(delta) and the O(h)/O(eps^2)/err(delta) shapes are constants-policy-compliant (named, bounded, no numerology), not gaps. The beta-free orbit-chain prefactor 1/c(h)=exp((2 D_G/h) log(1/c_0)) is named and absorbed into the beta-free leading factor: it contributes beta^{-1} log(1/c(h)) -> 0 in the beta-first limit, so it never enters the rate and is spent before h -> 0. Gamma(h) = 6 C_1 D_G h + 2 C_2 h^2 = O(h) and err(delta) are removed by the h -> 0, delta -> 0 limits AFTER beta -> infinity, so no auxiliary scale survives into the final rate beyond C eps^2 = (C_w + gamma_2) eps^2.

### LEAD AMENDMENT A2 (2026-07-20; source: round-2 checker prescription, M4)

The round-2 draft's consumption note called M5 a LANDED sibling; at
check time it was in flight, and the checker correctly demanded the
dependency be typed, not asserted. AT ASSEMBLY the situation is: M5
is checked SOUND (round 2) and lands IN THIS ARTIFACT, so the
dependency is INTERNAL and co-landed. The adopted framing: M4's
third call site consumes M5's display as an intra-artifact
dependency; if M5's grade is ever downgraded, the call site
inherits that downgrade automatically (single consistent framing;
the word LANDED-as-external is withdrawn). Until the WHOLE artifact
passes its cold pass, ALL pieces - M5 and its consumers alike -
share the ASSEMBLED, FLEET-CHECKED grade, no more.


### LEAD AMENDMENT A3 (2026-07-20; source: cold-pass mechanism lens)
### [VOIDED by XM finding F2 (2026-07-20): identifying B_h = B_{delta/2}
### with S = B_{delta/4} is inconsistent, and the skeleton-vs-continuous
### round mismatch is untouched by radius bookkeeping. Superseded by the
### round-3 R2 piece (one round object end-to-end). Preserved as record.]

The M3 -> M4 hand-off is UNIFIED: M4 consumes M3's interface AS
BUILT. Wherever M4 says 'fix a hop scale h' as a free scale, read
h := delta/2 (M3's locked binding), and M4's base ball B_0 is
IDENTICALLY M3's small set S = B_{delta/4}(g*). The auxiliary
limits collapse to the single passage delta -> 0 (carrying
h = delta/2 with it), preserving the global order (beta ->
infinity first). Rate-unaffected (the radius never enters the
exponent; only Gamma(h) and err(delta) do, both killed in order).

### LEAD AMENDMENT A4 (2026-07-20; source: cold-pass mechanism lens)

M3's Passage-1 inline T^2 chain reasoning is M5's content and is
ROUTED THROUGH M5: the inline derivation stands as a cross-check
(both yield Gamma_orb(h) = 6 C_1 D_G h at D_G = pi sqrt(2N)), but
the CITED source for the product chain in M3, as in M4, is M5 -
one provenance for one mechanism.


---

# M5 — L2 on the product T^2 orbit (the new extension; GUARDED RE-RUN)

(re-run grade: draft PROVED-WITH-TYPED-GAPS; fresh checker SOUND. The round-2 return was a 21-char placeholder and its check is VOID - see the header; this body is the guarded re-run, length-asserted before checking.)

## Lemma M5 (L2 ON THE PRODUCT T^2 ORBIT — the flat-two-torus chain)

*Extends L2 (the orbit chain, certified in SH.2'-LOCAL v2 for a CIRCLE ground orbit) to the flat 2-torus product orbit `G_k = C_k^theta x C_0^phi` of the coupled two-loop family, under the eps-flow generator `L_beta^eps := (1/beta) Delta - grad E_eps . grad` with eps below the pinning threshold. It re-runs L2's construction — geodesic net, matched-radius per-hop L1 consumption, time-1 Markov composition — with two genuine two-dimensional departures RE-DERIVED (never quoted from the circle proof): the flat-T^2 geodesic net at the product diameter `D_G = pi sqrt(2N)`, and the projection non-expansion via the SPLITTING of the flat product orbit's normal bundle (factor-wise, exact). It NEVER forms a global minorization over far-apart subsets of the ground tube: every hop lives in ONE tube around the ONE named ground orbit `G_k`, with its own eps-fixed constants. This is the piece [M5, this campaign] that M3 (LP.5(a), Passage 1 orbit-chain leg) and M4 (LP.5(c), call-site-1 orbit chain) consume; M3's inline "orthogonal projection onto a totally geodesic flat T^2 is 1-non-expansive" re-derivation is routed through THIS lemma.*

### Setting and hypotheses (self-contained)

`dX = -grad E_eps(X) dt + sqrt(2/beta) dW` on the compact flat torus `M = T^{2N} = T^N_theta x T^N_phi` (`dim M = 2N`), `W` a standard `2N`-dim Brownian motion, generator `L_beta^eps = (1/beta) Delta - grad E_eps . grad`. `E_eps` is smooth and `Lambda`-periodic on the lift `R^{2N} = R^N_theta ⊕ R^N_phi`. The ground orbit is

```text
G_k = C_k^theta x C_0^phi  ⊂  M,
```

with `C_k^theta = { theta* + t (1,...,1) : t }` the diagonal winding-`k` circle in `T^N_theta`
(configurations `d_i = 2 pi k/N`) and `C_0^phi = { the constants }` the winding-0 circle in
`T^N_phi` (configurations `e_i = 0`) — the smooth 2-torus of M2P's Ground-Orbits row. Fix an
admissible `k` (C1-SUB(`k`): `M_k(eps) < 2 kappa`, `gamma_k := cos(2 pi k/N) > 0`) and a coupling
`0 <= eps < eps_2 <= eps_0` STRICTLY below the pinning threshold, so M2-ATTR(`k`, eps) is a THEOREM
(M2-PIN `lambda > kappa` + C1-SUB(`k`); lane-m2-attractor-pinning-small-coupling-v1, gate-v8).

METRIC DECLARATION (one metric per consumer, COORDINATION [23] §C). Read `G_k`, `dist(., G_k)`,
`d_{G_k}` and every ball `B_r(.)` in the PRODUCT-EUCLIDEAN frame metric — the flat metric of the lift
`R^{2N}` below `inj(M)`, in which the two factor blocks are orthogonal and each carries its factor
Euclidean structure. This ONE metric is used for the whole chain. In it the product-ground diameter is

```text
D_G := diam(G_k) = pi sqrt(2N),   each factor circle contributing pi sqrt(N)  (Pythagoras),   (M5.0)
```

because `C_k^theta` has Euclidean speed `|(1,...,1)|_2 = sqrt(N)`, hence half-circumference (intrinsic
diameter) `pi sqrt(N)`, and likewise `C_0^phi`; the product torus's diameter is
`sqrt((pi sqrt N)^2 + (pi sqrt N)^2) = pi sqrt(2N)` (COORDINATION [23] §C campaign-#23 seal — the
DIAMETER only). This is NOT the passive single-loop value `pi sqrt(N)`, and NOT the max-norm circle
value `pi`: a circle L2 does NOT silently cover the product torus ([23] §C), and every chain below
runs at `D_G = pi sqrt(2N)`.

GROUND-TUBE HYPOTHESES (from the M2P ground rows; NO saddle data). Fix `r0 <= min(r_0', r_1)` with
`r_1` the M2P.5 tube radius, `r0 <= inj(M)/4`, and set the ground tube `U := T_{r0}(G_k) =
{ dist(., G_k) <= r0 }`. The toolkit inputs hold for `E_eps` with ground level
`e_0 := M_k(eps) = m_k + eps w_k`, `m_k := kappa N(1 - cos(2 pi k/N))`,
`w_k := W*(G_k) = N(1 - cos(2 pi k/N))` (M2P.1, the Ground-Orbits row
`E_eps(G_k) = (kappa + eps) N(1 - cos(2 pi k/N))`):

- CRITICALITY (the ground analog of L1's "`G` critical"). `grad E_eps = 0` on `G_k` for EVERY eps
  (M2P.1: `G_k` is EXACTLY `E_eps`-critical). The toolkit is instantiated on `E_eps` DIRECTLY, not on
  `E_0` with a perturbation — licensed precisely by this exact criticality (absent at a saddle).

- COERCIVITY / ADMISSIBILITY (L1's energy ingredient — the nondegenerate transverse MINIMUM, index 0).
  `G_k` is a Morse-Bott critical 2-torus whose transverse Hessian is POSITIVE-DEFINITE modulo the T^2
  rotation kernel in BOTH factor blocks: the theta-block floor is `kappa gamma_k` (nondegenerate under
  C1-SUB(`k`), `gamma_k > 0`) and the phi-block floor is `lambda` at `C_0` (M2P.2), the T^2 orbit
  directions spanning the 2-dimensional kernel. M2P.2 gives the uniform transverse floor
  `Q_eps >= Q_0 >= c_1 |(.)_perp|^2`, `c_1 := min(kappa gamma_k, lambda) mu_1`, and M2P.5 Step 2
  degrades it to the slice floor over the `r_1`-tube. Hence, with `grad E_eps = 0` on `G_k` and Taylor
  along the transverse slice,

  ```text
  E_eps(x) - (m_k + eps w_k)  >=  (c_perp/2) dist(x, G_k)^2   on U,
      c_perp := c_1/2   (tube-degraded floor; M2P.2 + M2P.5 Step 2; UNIFORM in eps < eps_2).   (M5-COERCE)
  ```

  Per L1 §0, `c_perp` enters only projection admissibility + the nondegenerate transverse minimum; it
  is NOT consumed by L1/L1'/L2 as a gradient floor. Its single load-bearing role here is to make the
  tube `U` carry a single-valued nearest-point projection `pi` and clean Fermi coordinates (the
  Morse-Bott/normally-attracting structure of M2-ATTR(`k`, eps) on `[0, eps_0)`), and to certify
  index 0 (no unstable transverse direction — see Step 5).

- DRIFT UPPER BOUND (the ONLY gradient input L1/L2 consume). Split `grad E_eps = grad E_0 + eps grad W*`.
  With `L := sup_U ||Hess E_0||_op` (finite by smoothness + compactness; `grad E_0 = 0` on `G_k`) and
  `sup |grad W*| <= 2 sqrt(2N)`, `||Hess W*|| <= 8` (M2P.4),

  ```text
  |grad E_eps(x)|  <=  L dist(x, G_k)  +  2 sqrt(2N) eps  =  O(h) + O(eps)   in U.   (M5-DRIFT-naive)
  ```

  The additive `O(eps)` term is in fact REMOVABLE, because `G_k` is exactly `E_eps`-critical (M2P.1):
  `grad E_eps(pi x) = 0`, so `|grad E_eps(x)| = |grad E_eps(x) - grad E_eps(pi x)| <= L_eps dist(x, G_k)`
  with `L_eps := sup_U ||Hess E_eps||_op <= L + 8 eps` (M2P.4). Thus `E_eps` satisfies L1's drift
  hypothesis PURELY LINEARLY,

  ```text
  |grad E_eps(x)|  <=  L_eps dist(x, G_k),   L_eps <= L + 8 eps,   grad E_eps  L_eps-Lipschitz on U,   (M5-DRIFT)
  ```

  with `e_0 = m_k + eps w_k`; NO separate eps-drift absorption is needed. `L_eps` is a fixed-eps
  constant, bounded uniformly on `[0, eps_2)`. Consistency with L1's derived `c_perp <= L`:
  `c_perp = c_1/2 <= c_1 <= L_eps`.

CORRIDOR AMPLIFICATION (fixed-eps). L1's Gronwall/corridor step (L1 §4) amplifies by `e^{L_eps tau}`;
since `grad E_eps` is `L_eps`-Lipschitz on `U` (M2P.4), this is a FIXED-eps constant folded into the
prefactor `c_0`, and the `beta -> infinity`-first limit is unaffected. Write `C_1 = C_1^eps` and
`c_0 = c_0^eps` for L1's constants read at slope `L_eps` in the declared Euclidean metric (fixed-eps,
eps-uniform on `[0, eps_2)`); explicitly `C_1 = 1/2 + L_eps/4 + L_eps^2/24` and
`c_0 = (2/pi)^{2N} exp(-2N pi^2 e^{2 L_eps}/4)` up to the fixed Euclidean/max-norm equivalence factor
(GAP-M5-EUC, Step 6).

### Statement

Fix a hop scale `0 < h <= r0/8`. Let `x` satisfy `dist(x, G_k) <= h`, put `y_0 := pi(x) in G_k`, and
let `y in G_k` be ANY target. With matched spacing `sigma := h/2` (XF amendment A1) and hop count

```text
n := ceil( 2 D_G / h ) = ceil( 2 pi sqrt(2N) / h )   (Step 1 net on G_k; beta-free),
```

there are `beta_0(h) = O(h^{-2})`, `c_0 > 0`, `C_1 < infinity` (the eps-fixed L1 constants above) such
that for every `beta >= beta_0(h)`,

```text
P_x( X_n in B_{h/2}(y),  X_[0,n] subset T_{r0}(G_k) )  >=  c_0^n exp( -2 beta C_1 n h^2 ).   (M5-MAIN)
```

**Corollary (the shape M3/M4 consume).** With `D_G = pi sqrt(2N)` and `h <= r0/8 < D_G`,

```text
Gamma_orb(h)  :=  2 C_1 n h^2  <=  6 C_1 D_G h  =  6 C_1 pi sqrt(2N) h  =  O(h)   (airtight, M5.6).
```

Consequently, for every `eta > 0`, setting

```text
h(eta) := min{ r0/8, eta / (6 C_1 D_G) },   n(eta) := ceil( 2 D_G / h(eta) ),   c(eta) := c_0^{ n(eta) },
```

`n(eta), c(eta)` are `beta`-free with `n(eta) = O(1/eta)`, and for `beta >= beta_0(eta) = O(eta^{-2})`,
every `x` with `dist(x, G_k) <= h(eta)`, and every `y in G_k`,

```text
P_x( X_{n(eta)} in B_{h(eta)}(y) )  >=  c(eta) exp( -beta eta ).   (M5-COR)
```

Tangential displacement to any point of the product 2-torus `G_k` is therefore sub-exponential in
`beta` at `O(1)` time. The X3 counterexample is respected: at ONE step the tangential cost is real;
flatness is bought with the hop count `n(eta)`, never with one step, and never with `h -> 0` before
`beta -> infinity`.

---

### Proof

#### Step 0 — metric coherence and the split Fermi frame (the flat product normal bundle)

Work on the universal cover `R^{2N} = R^N_theta ⊕ R^N_phi` restricted to `U`; flatness makes the lift a
local isometry and every displacement here has diameter `< inj(M)`, so the lift is injective and the
product torus geometry is Euclidean. `d_{G_k}`, `dist(., G_k)`, `D_G` and all balls are ONE Euclidean
metric system (METRIC DECLARATION): on the totally geodesic flat `G_k`, `d_{G_k}` agrees with the
ambient product-Euclidean distance for points within `inj(M)`, so `d_{G_k}(a,b) <= D_G = pi sqrt(2N)`
for all `a, b in G_k`.

The orbit lifts to the affine 2-plane `P = (theta* + R u_theta) x (0 + R u_phi)` in `R^{2N}`, with
`u_theta = (1,...,1) in R^N_theta` and `u_phi = (1,...,1) in R^N_phi` (`|u_theta|_2 = |u_phi|_2 =
sqrt(N)`). Because `P` is affine, `G_k` is TOTALLY GEODESIC (its lift is flat). The NORMAL BUNDLE
SPLITS along the product structure:

```text
N(G_k)  =  ( u_theta^perp ⊂ R^N_theta )  ⊕  ( u_phi^perp ⊂ R^N_phi ),   dim = (N-1) + (N-1) = 2N - 2,   (M5.0b)
```

matching a 2-torus embedded in `T^{2N}`. Write `x = (x_theta, x_phi)` (`x_theta in T^N_theta`,
`x_phi in T^N_phi`). The nearest-point projection onto `G_k` is the PRODUCT of the two factor circle
projections,

```text
pi(x) = ( pi_theta(x_theta),  pi_phi(x_phi) ),                                                   (M5.0c)
```

`pi_theta` orthogonal projection onto `C_k^theta ⊂ T^N_theta`, `pi_phi` onto `C_0^phi ⊂ T^N_phi`
(each single-valued and `C^1` on the respective factor tube, since below `inj` the projection onto an
affine line is orthogonal and unique; M2-ATTR(`k`, eps) supplies the single-valued tube for `E_eps`).
By the product-Euclidean split the transverse distance is Pythagorean,

```text
dist(x, G_k)^2 = dist_theta(x_theta, C_k^theta)^2 + dist_phi(x_phi, C_0^phi)^2 = |b_theta|^2 + |b_phi|^2,   (M5.0d)
```

with `b_theta := x_theta - pi_theta(x_theta) in u_theta^perp`, `b_phi := x_phi - pi_phi(x_phi) in
u_phi^perp` the two normal Fermi components. This is exactly L1's flat-Fermi setup (`dist = |b|`,
`pi(z) = (a, 0)`, straight tangent lines) carried out factor-wise; the two-torus tangent kernel is
`R u_theta ⊕ R u_phi`, the T^2 rotation directions.

#### Step 1 — the product geodesic net (the flat-T^2 subdivision; kills X3 defect 3 at D_G = pi sqrt(2N))

*(Required content (i): the product geodesic between any two points of G_k stays in G_k, has length
`<= D_G = pi sqrt(2N)`, carries centers at matched spacing `sigma = h/2`, and `n = ceil(2 D_G/h)`.)*

Fix the start anchor `y_0 = pi(x) in G_k` and any target `y in G_k`. On the flat 2-torus `G_k`, lift
`y_0` and `y` to the 2-plane `P`; a MINIMIZING GEODESIC between them is the straight segment of `P`
joining their lifts, projected to `G_k`. Call it `gamma : [0, ell] -> G_k`, parametrized by arc length,
`gamma(0) = y_0`, `gamma(ell) = y`, `ell = d_{G_k}(y_0, y)`. Two facts, both elementary for a flat
torus (no Hopf-Rinow, no abstract net-existence):

- `gamma` STAYS IN `G_k`: its lift is a straight segment inside the affine 2-plane `P`, so `gamma`
  never leaves the totally geodesic orbit. (This is the product geodesic; it moves in BOTH orbit
  directions `theta` and `phi` simultaneously, unlike a single-circle arc.)
- `ell <= D_G = pi sqrt(2N)`: `ell = d_{G_k}(y_0, y) <= diam(G_k) = D_G` by (M5.0)/(M5.0d).

Subdivide with matched spacing `sigma = h/2`:

```text
n := ceil( 2 D_G / h ) = ceil( D_G / sigma ),   y_j := gamma( j ell / n ),   j = 0, 1, ..., n,   (M5.1a)
```

so `y_n = gamma(ell) = y`, all `y_j in G_k`. Since `n >= ell/sigma`, consecutive nodes satisfy

```text
d_{G_k}(y_j, y_{j+1})  <=  ell / n  <=  sigma  =  h/2.                                            (M5.1b)
```

The count `n = ceil(2 D_G/h)` is controlled EXACTLY by the intrinsic diameter `D_G = pi sqrt(2N)` (the
product-torus metric quantity, (M5.0)), not by an abstract finite-`epsilon`-net — this is the linear
chain-complexity bound X3 found missing, now read at the PRODUCT diameter. The SAME `n` serves every
target `y` because `ell <= D_G` for all `y in G_k` (pad the arc with repeated nodes if `ell < D_G`;
the bound only improves). This is the two-dimensional re-derivation of L2 Step 1: the geodesic is a
2-plane segment, not a diagonal-circle arc, but the subdivision and spacing bound are identical in form.

#### Step 2 — projection non-expansion on the flat product orbit (exact; the genuine T^2 departure)

*(Required content (ii): the normal bundle splits (Step 0); the tube projection is the product of the
two circle projections; non-expansion holds factor-wise and is EXACT because G_k is a totally geodesic
flat orbit. This REPLACES L2 Step 4's circle-specific Chebyshev-center bound (4.2) for `u = (1,...,1)`,
which is derived only for a single diagonal circle and is NOT quoted here.)*

Each factor projection `pi_theta`, `pi_phi` is orthogonal projection onto an affine LINE in Euclidean
space (below `inj`, `C_k^theta` and `C_0^phi` lift to the lines `theta* + R u_theta`, `0 + R u_phi`),
hence a linear contraction of operator norm exactly 1: for all `a, a'` in the respective factor tube,

```text
| pi_theta(a) - pi_theta(a') |  <=  | a - a' |,       | pi_phi(a) - pi_phi(a') |  <=  | a - a' |.   (M5.2a)
```

By the product-Euclidean split (M5.0c)/(M5.0d), the joint projection `pi = pi_theta x pi_phi` obeys,
for `x = (x_theta, x_phi)`, `x' = (x'_theta, x'_phi)`,

```text
| pi(x) - pi(x') |^2  =  | pi_theta(x_theta) - pi_theta(x'_theta) |^2 + | pi_phi(x_phi) - pi_phi(x'_phi) |^2
                     <=  | x_theta - x'_theta |^2 + | x_phi - x'_phi |^2  =  | x - x' |^2,
```

so

```text
| pi(x) - pi(x') |  <=  | x - x' |,      C_geo = 1   (EXACT, factor-wise; totally geodesic flat orbit).   (M5.2b)
```

The equality of the two right-hand terms with the split (M5.0d) is what makes this EXACT rather than up
to a constant: it is orthogonal projection onto a totally geodesic flat submanifold, whose second
fundamental form vanishes, so the non-expansion carries no curvature defect. Intrinsic `= ambient` on
`G_k` below `inj(M)`, so `d_{G_k}(pi(x), pi(x')) = |pi(x) - pi(x')|` for projected points within the
injectivity radius.

TANGENTIAL SLACK (the next-hop L1 reach). For any `X_j in B_{h/2}(y_j)` with `y_j in G_k` (so
`pi(y_j) = y_j`), (M5.2b) gives

```text
d_{G_k}( pi(X_j), y_j )  =  | pi(X_j) - pi(y_j) |  <=  | X_j - y_j |  <=  h/2.                     (M5.2c)
```

Combining with the net gap (M5.1b) by the triangle inequality on `G_k`,

```text
d_{G_k}( pi(X_j), y_{j+1} )  <=  d_{G_k}( pi(X_j), y_j ) + d_{G_k}( y_j, y_{j+1} )  <=  h/2 + h/2  =  h.   (M5.2d)
```

Thus L1's tangential reach hypothesis `d_{G_k}(pi(X_j), y_{j+1}) <= h` holds at every hop, with
equality at worst — the airtight matched-radius closure, now via the exact product non-expansion rather
than the circle Chebyshev center.

#### Step 3 — per-hop L1 consumption: L1's hypotheses hold verbatim in T_{r0}(G_k)

*(Required content (iii): verify tube facts, tangential reach `<= h`, transverse restart `<= r0/8`,
and the drift bound `O(h) + O(eps)` via the M2P ground rows, at every hop.)*

Fix a hop from a landed point `X_j in B_{h/2}(y_j)`, target `y_{j+1}`. We check L1's HOP hypotheses in
its landing form (L1 display (c) / L1-LAND) with ground orbit `(G, e_0) := (G_k, m_k + eps w_k)` and
`dim M = 2N`, in the declared Euclidean metric:

1. TUBE ADMISSIBILITY. `U = T_{r0}(G_k)`, `r0 <= min(r_0', r_1) <= inj(M)/4`, carries a single-valued
   `C^1` nearest-point projection `pi` and split Fermi coordinates (Step 0; M2-ATTR(`k`, eps) THEOREM on
   `[0, eps_0)`, M2P.5). CRITICALITY: `grad E_eps = 0` on `G_k` (M2P.1) — L1's ground hypothesis.

2. TRANSVERSE RESTART `<= r0/8`. On the landing event `X_j in B_{h/2}(y_j)`, `y_j in G_k`,

   ```text
   dist(X_j, G_k)  <=  | X_j - y_j |  <=  h/2  <=  r0/16  <=  r0/8  <=  r0/4,
   ```

   so L1's start hypothesis `d := dist(X_j, G_k) <= delta_j := h/2` holds with room to spare (defect-4
   transverse component: land in `B_{h/2}`, restart at transverse `<= h/2`; the transverse radius does
   NOT grow across hops — matched-radius closure).

3. TANGENTIAL REACH `<= h`. `d_{G_k}(pi(X_j), y_{j+1}) <= h` by (M5.2d) (Step 2).

4. COERCIVITY (admissibility only) and DRIFT UPPER BOUND. `(M5-COERCE)`:
   `E_eps - (m_k + eps w_k) >= (c_perp/2) dist^2` on `U`, `c_perp = c_1/2` (M2P.2 + M2P.5 Step 2),
   uniform in eps < eps_2 — the exact row the task names. `(M5-DRIFT)`:
   `|grad E_eps| <= L_eps dist(., G_k)`, `L_eps <= L + 8 eps` (M2P.1 criticality + M2P.4
   `||Hess W*|| <= 8`); equivalently the naive `(M5-DRIFT-naive)` `|grad E_eps| <= L dist + 2 sqrt(2N)
   eps = O(h) + O(eps)` with the additive term removed by criticality. `grad E_eps` is `L_eps`-Lipschitz
   on `U` (M2P.4) — L1's §4 corridor-bootstrap ingredient.

All four are exactly L1's tube facts, so L1 applies VERBATIM at slope `L_eps`. Its landing display gives,
for `beta >= beta_0(h) = O(h^{-2})`,

```text
K( X_j, B_{h/2}(y_{j+1}) )  :=  P_{X_j}( X_1 in B_{h/2}(y_{j+1}),  X_[0,1] subset T_{3r0/8}(G_k) )
                            >=  c_0 exp( -beta C_1 ( delta_j^2 + h^2 ) )
                            >=  c_0 exp( -beta C_1 ( h^2 + h^2 ) )  =  c_0 exp( -2 beta C_1 h^2 )  =:  q,   (M5.3)
```

uniformly, since `delta_j^2 <= (h/2)^2 <= h^2` only RAISES the probability. The floor `beta_0(h) =
O(h^{-2})` is the L1 landing-form diffusive floor `beta h^2 >= B` (XF amendment A3 — NECESSARY; no
`h`-free threshold exists), with L1's A2 local-drift `O(beta h^2)` term absorbed into `C_1` under it.
The corridor conjunct `X_[0,1] subset T_{3r0/8}(G_k)` is L1's Gronwall/bootstrap output (L1 §4, master
bound `(star)`): on the small-ball event the path stays in `T_{3r0/8}(G_k) subset T_{r0}(G_k)`.

INDEX-0 / NO UNSTABLE MODE (defect 7, recorded). Unlike the index-1 saddle `SP_k` (handled by L1-Z in
this campaign's M2), `G_k` is a genuine TRANSVERSE MINIMUM: its transverse Hessian is positive-definite
modulo the T^2 rotation kernel in BOTH blocks (M2P.2, `min(kappa gamma_k, lambda) > 0`), so the coercive
L1 applies with no sign-blindness needed. The `e^{2 L_eps tau}` amplification of L1 §4 enters only the
`beta`-free prefactor `c_0`; there is no `beta`-exponent from any unstable direction because there is
none at the ground. The Stage-A `l2_product` probe's Q3 (tube-stay rising with `beta`, no unstable mode)
is consistent with this.

#### Step 4 — time-1 skeleton, Markov composition, and the main display

*(Required content (iv), first half.)* The SDE is autonomous, hence time-homogeneous Markov; by SR-SH1
its time-1 law has a jointly continuous strictly positive density `p_1(.,.)` w.r.t. `Leb` on the
compact `M = T^{2N}`. Define the time-1 skeleton `X_j := X(j)`, `j = 0, 1, ...`, a time-homogeneous
Markov chain with kernel `K(x, A) := P_1(x, A)`, and the conditioning events

```text
E_j := { X_j in B_{h/2}(y_j),  X_[j-1, j] subset T_{3r0/8}(G_k) },   j = 1, ..., n.   (M5.4a)
```

By the tower property and the Markov identity `P_x(X_{j+1} in A | F_j) = K(X_j, A)`, pulling out the last
factor,

```text
P_x( E_1 ∩ ... ∩ E_n )  =  E_x[ 1_{E_1 ∩ ... ∩ E_{n-1}} . K( X_{n-1}, event of E_n ) ].   (M5.4b)
```

On `E_1 ∩ ... ∩ E_{j}`, `X_j in B_{h/2}(y_j)` meets BOTH L1 hypotheses w.r.t. `y_{j+1}` (Step 3:
transverse `delta_j <= h/2`, tangential reach `<= h`), so `(M5.3)` gives `K(X_j, event of E_{j+1}) >= q`
pointwise on that event, INCLUDING the corridor conjunct. The start `X_0 = x` (with `dist(x, G_k) <= h`,
`pi(x) = y_0`, and `d_{G_k}(y_0, y_1) <= sigma = h/2 <= h` by (M5.1b)) likewise gives
`K(x, event of E_1) >= q`. Descending `(M5.4b)` to `j = 1`,

```text
P_x( E_1 ∩ ... ∩ E_n )  >=  q^n  =  c_0^n exp( -2 beta C_1 n h^2 ).   (M5.4c)
```

Since `E_n subset { X_n in B_{h/2}(y_n) = B_{h/2}(y) }` and each `E_j` carries the corridor conjunct, the
intersection forces `X_[0,n] subset T_{3r0/8}(G_k) subset T_{r0}(G_k)`. Hence

```text
P_x( X_n in B_{h/2}(y),  X_[0,n] subset T_{r0}(G_k) )  >=  P_x( ∩_{j=1}^n E_j )  >=  c_0^n exp( -2 beta C_1 n h^2 ),
```

which is `(M5-MAIN)`, valid for `beta >= beta_0(h) = O(h^{-2})`. NO global minorization over far-apart
subsets is formed (defect 1): every hop is a LOCAL L1 event in the single tube `T_{r0}(G_k)` around the
single orbit `G_k`, composed by the strong Markov property at integer times, not by a common small-set
law — that (regeneration) is M3's separate burden ([23] §D.2), not asserted here.

#### Step 5 — the corollary (airtight arithmetic at D_G = pi sqrt(2N))

*(Required content (iv), second half: airtight `n h^2 <= 3 D_G h` and `Gamma_orb(h) = 6 C_1 D_G h`.)*
From `n = ceil(2 D_G/h) <= 2 D_G/h + 1` and `h <= r0/8 < pi sqrt(2N) = D_G` (so `h^2 <= D_G h`),

```text
n h^2  <=  ( 2 D_G/h + 1 ) h^2  =  2 D_G h + h^2  <=  2 D_G h + D_G h  =  3 D_G h,   (M5.5a)
```

with NO residual `O(h^2)` (the `+h^2` is absorbed into `3 D_G h` via `h^2 <= D_G h`). Hence

```text
Gamma_orb(h)  :=  2 C_1 n h^2  <=  6 C_1 D_G h  =  6 C_1 pi sqrt(2N) h  =  O(h),   (M5.5b)
```

the clean linear form — the T^2 analog of lane-sh2local L2 eq. (6.1) + amendment A1, at the PRODUCT
diameter. Given `eta > 0`, choose `h(eta) := min{ r0/8, eta/(6 C_1 D_G) }`; then
`6 C_1 D_G h(eta) <= eta`, so `2 C_1 n(eta) h(eta)^2 <= eta` and
`exp(-2 beta C_1 n(eta) h(eta)^2) >= exp(-beta eta)`. With `n(eta) = ceil(2 D_G/h(eta))` and
`c(eta) = c_0^{n(eta)}`, `(M5-MAIN)` yields `(M5-COR)` for all `y in G_k`, every `x` with
`dist(x, G_k) <= h(eta)`, and `beta >= beta_0(eta) = O(eta^{-2})`. For small `eta`,
`h(eta) = eta/(6 C_1 D_G)`, so `n(eta) = ceil(2 D_G/h(eta)) = ceil(12 C_1 D_G^2 / eta) = O(1/eta)`; both
`n(eta), c(eta)` are `beta`-free.

ORDER OF LIMITS (defect 4; declared, the only admissible order). The diffusive floor `beta h^2 >= B`
(equivalently `beta >= beta_0(h) = O(h^{-2})`) is load-bearing and NECESSARY (XF A3). The mandated order
is `beta -> infinity` FIRST at fixed `(eps, h)` — reading the exponential rate at fixed geometry, the
floor holding throughout — and only THEN `h -> 0` (which sends `Gamma_orb(h) = 6 C_1 D_G h -> 0`).
NEVER send `h -> 0` before `beta -> infinity`: that inverts the floor `beta >= B/h^2` and the L1
small-ball bounds evaporate (the X3 lesson at the limit level — time buys tangential flatness; one step
never does). eps stays fixed in `[0, eps_2)` throughout the chain (the eps-window is read only after,
by the M3/M4 consumers).

#### Step 6 — the norm-equivalence bookkeeping (typed honestly: GAP-M5-EUC)

L1 as written in lane-sh2local computes its small-ball term `Q(G_eps) = prod_i Q(sup|W^i| <= eps)` in
the MAX norm on lifted coordinates, whereas M5 declares the product-Euclidean metric throughout
(mandated by COORDINATION [23] §C, and required to make `D_G = pi sqrt(2N)` and the Pythagoras/projection
non-expansion of Steps 0–2 exact). M5 therefore invokes L1 in its Euclidean-ball form; the ONLY change
is the small-ball prefactor `c_0`, which acquires a FIXED `2N`-dimensional norm-equivalence factor from
the one-way containments `B^2_r subset B^inf_r subset B^2_{sqrt(2N) r}` on `R^{2N}`. This factor is
`beta`-free AND `h`-free, so it changes NO exponent and NO threshold ORDER - the fixed dimensional factor rescales the constant in the O(h^-2) floor (XM-R F7); it is recorded as GAP-M5-EUC
rather than silently absorbed. A fully rigorous restatement of L1 with Euclidean balls (the standard
`2N`-dim BM small-ball estimate) closes it outright and is a mechanical L1-lane edit, not an M5
obstruction. Because the RATE consumed by M3/M4 is `C_1`-INDEPENDENT (`C_1` enters only
`Gamma_orb(h) = 6 C_1 D_G h = O(h)`, killed after `beta -> infinity` then `h -> 0`), the metric
dependence of the VALUE of `C_1` (and hence of the norm-equivalence factor) is immaterial to the rate;
GAP-M5-EUC affects only the `beta`-free prefactor and the `h`-tracked threshold. QED (modulo GAP-M5-EUC
and the inherited L1-LAND gap below).

---

### Consumption note for M3 / M4 (the interface these pieces read)

*(Required content (v).)* M3 and M4 consume EXACTLY the two boxed outputs and nothing more:

- The MAIN DISPLAY `(M5-MAIN)`:
  `P_x(X_n in B_{h/2}(y), path in T_{r0}(G_k)) >= c_0^n exp(-2 beta C_1 n h^2)` for `beta >= beta_0(h) =
  O(h^{-2})`, matched spacing `sigma = h/2`, `n = ceil(2 D_G/h)` — the arbitrary-in-`U_{1/2}` relocation
  of the process onto any reference ground ball `B_{h/2}(g*)`, staying in the tube.
- The COROLLARY `(M5-COR)`/`(M5.5b)`: `Gamma_orb(h) = 2 C_1 n h^2 <= 6 C_1 D_G h = O(h)` at
  `D_G = pi sqrt(2N)`, and `P_x(X_{n(eta)} in B_{h(eta)}(y)) >= c(eta) exp(-beta eta)`,
  `n(eta) = O(1/eta)`, `beta`-free `c(eta)`.

M3 (LP.5(a), Passage 1) consumes `(M5-MAIN)` as `(M3-GS.1)` — the "L2 leg at the product diameter,
FIRST", with `h = delta/2`, `n = ceil(4 pi sqrt(2N)/delta)`, cost `p_chain = c_0^n exp(-2 beta C_1^eps n
h^2)`, `beta`-exponent `O(beta delta)`; M3's inline re-derivation "orthogonal projection onto a totally
geodesic flat T^2 is 1-non-expansive" is EXACTLY Step 2 of THIS lemma and is henceforth READ THROUGH
`(M5.2b)` rather than re-argued inline. M4 (LP.5(c), call site 1) consumes `(M5-MAIN)` + `(M5.5b)` as
its `Gamma_orb(h) := 6 C_1 D_G h + O(h^2)` orbit-chain factor and its `beta`-free prefactor
`c(h) = c_0^{n(h)}`, `1/c(h) = exp((2 D_G/h) log(1/c_0))` (absorbed into the `beta`-free leading factor,
`beta`-inert). BOTH consume the AIRTIGHT matched-radii form (spacing `h/2`, `n = ceil(2 D_G/h)`), NEVER
the idealized `sigma = h` display, and BOTH read `D_G = pi sqrt(2N)` in the ONE declared Euclidean
metric — the circle L2 corollary (single diagonal-circle arc, Chebyshev-center bound (4.2) for
`u = (1,...,1)`, max-norm `D_G = pi`) is NOT consumed for the T^2 orbit ([23] §C: "a circle proof at
`D_G = pi` does not silently cover the product torus"). M5 supplies ONLY the orbit-chain floor; the
average-to-infimum density leg (L1'), the sandwich LEVEL arithmetic, and the regeneration (Nummelin
split, [23] §D.2) are the consumers' own and are NOT claimed here.

### Stage-A consistency (cited as consistency, NOT proof)

`numerics/results/l2_product_probe_results.json` (`N = 10`, `r_tube = 0.8`, eps in {0, 0.1}): Q1 —
flatness in `theta_dir` AND `phi_dir` at every eps (PASS), the product geodesic moving in both orbit
directions simultaneously (Step 1); Q2 — radial-2D cost `= s^2/4` (PASS), the per-hop tangential
exponent `C_1 -> 1/4` shape; Q3 — tube-stay probability rising with `beta`, no unstable mode (PASS),
the index-0 ground of Step 3/Step 5. The probe validates the T^2 flatness SHAPE at moderate deviation;
it is a probe, not a proof, and enters nowhere in the derivation.

### M5 — consumed

L1 (HOP, lane-sh2local-proofs-v1.md §L1) invoked at dim M = 2N in the declared product-Euclidean metric, at slope L_eps, with its landing form L1-LAND / display (c): P_x(X_1 in B_{h/2}(y), path in T_{3r0/8}(G_k)) >= c_0 exp(-beta C_1(delta^2 + h^2)) at reach h, corridor-qualified via the L1 §4 Gronwall bootstrap (master bound (star)), floor beta >= beta_0(h) = O(h^-2) (XF amendments A2 local-drift absorbed, A3 diffusive floor NECESSARY). C_1 = 1/2 + L_eps/4 + L_eps^2/24, c_0 = (2/pi)^{2N} exp(-2N pi^2 e^{2 L_eps}/4) up to the fixed 2N-dim Euclidean/max-norm equivalence factor (GAP-M5-EUC). — SR-SH1: jointly continuous strictly positive time-1 transition density on compact M = T^{2N}; time-homogeneous Markov property in kernel form + pointwise tower/Markov identity (Step 4). — M2P ground rows (lane-m2-persistence-schema-v1.md), cited exactly: M2P.1 (Ground-Orbits row) G_k = C_k^theta x C_0^phi is EXACTLY E_eps-critical for every eps >= 0, ground level e_0 = M_k(eps) = m_k + eps w_k = (kappa+eps) N(1 - cos(2 pi k/N)), w_k = W*(G_k) = N(1 - cos(2 pi k/N)); M2P.2 (uniform Morse-Bott transverse floor) Q_eps >= Q_0 >= c_1 |(.)_perp|^2, c_1 = min(kappa gamma_k, lambda) mu_1, gamma_k = cos(2 pi k/N) > 0 under C1-SUB(k), BOTH theta- and phi-blocks positive-definite mod the T^2 rotation kernel = index-0 minimum (defect-7 no-unstable-mode source); M2P.4 sup|grad W*| <= 2 sqrt(2N), ||Hess W*|| <= 8 (the gradient bound: |grad E_eps| <= L dist + 2 sqrt(2N) eps = O(h)+O(eps), and via criticality |grad E_eps| <= L_eps dist, L_eps <= L + 8 eps); M2P.5 (eps-pinning THEOREM on [0, eps_0)) tube-degraded Hessian, slice gradient floor, single-valued nearest-point projection on U, closure attraction — gives (M5-COERCE) E_eps - (m_k + eps w_k) >= (c_perp/2) dist^2, c_perp = c_1/2, uniform in eps < eps_2. — M2-ATTR(k, eps) as THEOREM on [0, eps_0) under M2-PIN (lambda > kappa) + C1-SUB(k) (gate-v8, lane-m2-attractor-pinning-small-coupling-v1.md): supplies the single-valued Fermi tube and transverse nondegeneracy c_perp(eps) > 0 for eps below the pinning threshold. — COORDINATION [23] §C (the L2 shape and one-metric-per-consumer; product-ground diameter D_G = pi sqrt(2N) via Pythagoras, campaign-#23 seal DIAMETER-ONLY — NOT the circle's pi, NOT the killed density/tube-projection/renewal) and §D (which consumer steps M5 does and does NOT discharge; §D.1 Gamma(h)=O(h) removed after beta->infinity at fixed h; §D.2 regeneration is NOT M5's — strong Markov alone insufficient). — Consistency-only: numerics/results/l2_product_probe_results.json (Q1 flat-at-every-eps PASS in theta_dir and phi_dir; Q2 radial-2D = s^2/4 PASS; Q3 tube-stay rising / no unstable mode PASS; N=10, r_tube=0.8, eps in {0,0.1}); numerics/l2_product_probe.py. — NOT consumed: the lane-sh2local L2 CIRCLE corollary (single diagonal-circle arc, Chebyshev-center bound (4.2) for u=(1,...,1), max-norm D_G = pi) is explicitly NOT applied to the T^2 orbit; Steps 1-2 re-derive the flat-T^2 geodesic net and the factor-wise projection non-expansion from scratch.

### M5 — typed gaps

GAP-M5-EUC (norm reconciliation, discharged in kind, typed for honesty): L1 as written in lane-sh2local computes its small-ball term Q(G_eps) = prod_i Q(sup|W^i| <= eps) in the MAX norm on lifted coordinates, whereas M5 declares the product-Euclidean metric throughout (mandated by COORDINATION [23] §C, and required to make D_G = pi sqrt(2N) and the Pythagoras/projection non-expansion of Steps 0-2 exact). M5 therefore invokes L1 in its Euclidean-ball form; the only change is the small-ball prefactor c_0, which acquires a FIXED 2N-dimensional norm-equivalence factor from the one-way containments B^2_r subset B^inf_r subset B^2_{sqrt(2N) r} on R^{2N}. This factor is beta-free AND h-free: no exponent and no threshold-ORDER change - the fixed dimensional factor rescales the constant in the O(h^-2) floor (XM-R F7); recorded as a named item rather than silently absorbed. A fully rigorous restatement of L1 with Euclidean balls (the standard 2N-dim BM small-ball estimate) closes it outright and is a mechanical L1-lane edit, not an M5 obstruction. Because the rate consumed by M3/M4 is C_1-independent (C_1 enters only Gamma_orb(h) = 6 C_1 D_G h = O(h), killed after beta->infinity then h->0), the metric-dependence of the VALUE of C_1 and of this factor is immaterial to the rate; it affects only the beta-free prefactor and the h-tracked threshold. — L1-LAND (INHERITED from L1, NOT re-opened by M5): the half-reach landing concentration P_x(X_1 in B_{h/2}(y)) >= c_0 exp(-beta C_1(delta^2 + h^2)) at reach h. It is a property of L1's two-leg Girsanov control path (endpoint fluctuation O(1/sqrt beta)), dimension-agnostic, so it holds verbatim for the 2-torus orbit; its status is exactly that of circle-L2's Honest Gap 1, requiring beta >= beta_0(h, eps) = O(h^-2), and M5 carries that threshold into beta_0(eta, eps) = O(eta^-2). NOT a gap in M5's argument, recorded because M5's main display rests on it. — Scoped OUT by construction (not M5 gaps): the average-to-infimum density leg (L1', A4/A5) that M3 composes after the chain; the SH.3 sandwich LEVEL arithmetic; the regeneration / Nummelin split ([23] §D.2); PROD-EXCURSION. M5 supplies ONLY the orbit-chain floor (M5-MAIN) + corollary (M5.5b).

### M5 — checker findings (1 MINOR + 2 NOTEs, recorded)

[
 {
  "severity": "MINOR",
  "where": "Step 6 (GAP-M5-EUC), sentence 'This factor is beta-free AND h-free, so it changes no exponent and no threshold'",
  "note": "Imprecise and internally inconsistent phrasing. The one-way containment B^inf_{rho/sqrt(2N)} subset B^2_rho used to invoke L1 in Euclidean-ball form shrinks the effective small-ball radius by 1/sqrt(2N), which multiplies the absorbed small-ball exponent by 2N and hence rescales the diffusive-floor CONSTANT beta_0(h) by a fixed 2N factor (the O(h^-2) ORDER is preserved). M5's own gap-register intro correctly says the factor 'affects only the beta-free prefactor and the h-tracked threshold', and the accepted SOUND sibling GAP-M1-NORM openly records the factor 'folded into c_0, c_0', beta_0(h)' with 'the floor reads beta rho^2 >= N'. So 'changes no threshold' contradicts both. Rate-immaterial (C_1-independent rate), so not a soundness defect. Prescription: replace 'no exponent and no threshold' with 'no exponent and no threshold ORDER — the O(h^-2) floor is preserved, its constant absorbing a fixed, beta-free, 2N-dependent factor', matching the GAP-M1-NORM wording exactly."
 },
 {
  "severity": "NOTE",
  "where": "Citations to M2P.1/.2/.4/.5 (setting section and CONSUMED block) vs lane-m2-persistence-schema-v1.md",
  "note": "The numbered rows M2P.1-.5 are a campaign labeling, not literal headers in lane-m2-persistence-schema-v1.md. That file supplies the Ground-Orbits energy row E_eps(G_k)=(kappa+eps)N(1-cos(2pi k/N)) and the eps=0 pinning theorem M2b.1 (criticality/classification proven ONLY at eps=0); the eps>0 criticality, the transverse floor c_1=min(kappa gamma_k, lambda) mu_1, the bounds sup|grad W*|<=2 sqrt(2N), ||Hess W*||<=8, and the slice gradient floor live in / follow from lane-m2-attractor-pinning-small-coupling-v1.md (the gate-v8 M2-ATTR THEOREM on [0,eps_0)), which M5 also cites. The load-bearing claim 'G_k EXACTLY E_eps-critical for every eps' (used to remove the additive O(eps) drift and give clean linear |grad E_eps|<=L_eps dist) is NOT a hole: E_eps is invariant under the diagonal T^2 translation so grad E_eps is perpendicular to G_k on G_k (tangential flow already zero), and the cited gate-v8 M2-ATTR theorem makes G_k the attractor hence invariant, forcing grad E_eps=0 on G_k. Substantively sound; only the citation granularity (which numbered fact lives in which file) is loose, and it is shared identically with the fleet-checked SOUND siblings M1/M3."
 },
 {
  "severity": "NOTE",
  "where": "M4 (lane-minmig L1073) 'M5's Step-6 analogue of lane-sh2local eq. (6.1)'",
  "note": "M4 refers to M5's corollary arithmetic as 'Step-6'; in M5 the arithmetic n h^2 <= 3 D_G h and Gamma_orb <= 6 C_1 D_G h sits in Step 5 (the circle-L2 does it in its Step 6). Purely cosmetic cross-reference drift; the bound consumed is identical (2 C_1 n h^2 <= 6 C_1 D_G h) and correct in both."
 }
]

---



---

# R1 — the honest per-orbit consumer splice (discharges XM F1)

(round grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

### Splice (R1) — the LS.5 DAG walk consumes L1-Z PER ORBIT (replaces the universal splice; fixes XM F1)

*This block replaces the former single-paragraph splice. XM finding 1 (`verdicts/XM-2026-07-20.md:67-73`) is that the old splice asserted, universally over "every high ON-`Delta` critical orbit," the clean-manifold structure, transverse inertia, stable-set separation, target-ball placement, and branch behaviour that LS.5 needs, while the only proved rows are LS.4 (index-1 transverse hyperbolicity of `SP_k`) and LS.6 (LEVEL classification). Two concrete over-claims were flagged: (i) "tube confinement near `Z` means no `Delta` contact and winding preservation" is FALSE when the consumed orbit lies ON `Delta` (`:405`, `:508`); (ii) the constants `K` (off-stable-set margin), `3 delta` (the L1-Z reach `h`), the landing radius, and the tube/sector margins were never shown compatible (`:500-505` vs `lane-ls:490-499,518-529`). We repair by enumerating each consumed orbit, discharging what the corpus proves and TYPING the rest per orbit, and by splitting the consumer event honestly into "label/`Delta` success has already occurred" versus "boundary-free endpoint with a known sector."*

Throughout fix the flagship row `k = 1`, `N >= 10` — the ONLY row LS.6 discharges (`lane-ls:544-577`); non-flagship rows are a scope boundary (§R1.5). Read all distances in the one declared metric of M1 §0 up to the fixed norm-equivalence factors folded into GAP-M1-NORM (COORDINATION [23] §C, `COORDINATION.md:455-458`).

#### R1.0 — The consumed set (enumeration)

By LS.6(b) (`lane-ls:560-576`) the winding-`1` critical configurations are exactly: `C_1` (level `m_1`, `p = 0`); `SP_1` (level `S_1`, `p = 1` positive branch); and, for `p >= 2`, the families at level `>= 4 kappa` which "degenerate ONTO `Delta`" (`p = 2` forces `alpha = 0`, bonds a permutation of `(pi, pi, 0, ..., 0)`; `p >= 3` pushes the high branch past `pi`). By LS.6(a) (`lane-ls:552-559`) every critical set of winding `j != 1` is excluded OUTRIGHT from `D_eps`. The LS.5 RELOCATE/ATTEMPT omega-limit split (branch (iii), `lane-ls:482-499`) therefore consumes an L1-Z kick at, and only at:

```text
(Z-A)  SP_1               : the one-bond saddle rotation circle, OFF Delta,
                            level S_1. Consumed by (1) the ATTEMPT CROSSING
                            (K delta displacement across W^s_loc(SP_1) from B'',
                            lane-ls:517-521) and (2) the RELOCATE "Near SP_1"
                            branch (lane-ls:490-493).
(Z-B)  Z_high            : the ON-Delta high critical orbits at level >= 4 kappa
                            (the p >= 2 winding-1 families, bonds ~ (pi,pi,0,...,0)),
                            consumed by the RELOCATE "Near an ON-Delta Z_high"
                            branch + finite-DAG descent (lane-ls:494-499).
(Z-C)  winding-j, j != 1 : NOT consumed (§R1.3).
```

We treat the three cases separately. `SP_1` is fully discharged (§R1.1); the on-`Delta` orbits are honestly split and the residue is TYPED (§R1.2); the winding-`j` orbits are shown non-consumed (§R1.3); the finite DAG and post-boundary transmission are cold-rechecked (§R1.4).

#### R1.1 — (Z-A) SP_1: full per-orbit discharge

**Clean compact structure and transverse inertia.** `SP_1` is a rotation orbit of `M = T^N` (a translation-subgroup circle through `(pi - a_1, a_1, ..., a_1)`, `a_1 = pi/(N-2)`), hence a smooth compact `1`-submanifold. LS.4 (`lane-ls:397-420`) proves its transverse Hessian, restricted to the realizable bond-increment hyperplane `{sum_i (Bx)_i = 0}`, has inertia `(n_+, n_-, n_0) = (N-2, 1, 0)`: nondegenerate of index exactly `1`, the single tangential null direction being the rotation kernel (Morse-Bott clean). Thus `SP_1` is NORMALLY HYPERBOLIC (one unstable, `N-2` stable, transverse eigenvalues all nonzero). This discharges (H1)-(H3) of L1-Z for `Z = SP_1` with a tube `T_{r_{SP}}(SP_1)`, `r_{SP} > 0` its normal injectivity radius (positive by Morse-Bott cleanness, LS.4), Hessian bound `L_{SP} := sup_{T_{r_{SP}}} ||Hess J||_op < infinity`, and `n = N`. It also discharges the L1-Z-TUBE hypothesis for `SP_1` (as the M2 typed-gap row already records: "Discharged directly for `SP_k` by LS.4").

**Stable/unstable-manifold theorem for THIS inertia.** The applicable theorem is SR-LS1 (`lane-ls:115-128`) — the classical local stable/unstable-manifold theorem for a normally hyperbolic critical CIRCLE of transverse index `1`. Its three hypothesis rows all hold: smooth gradient flow on `T^N` (yes); `Z = SP_1` a compact critical circle (yes, rotation orbit); transversal nondegeneracy of index `1` (LS.4). Its conclusion supplies a neighbourhood `U_{SP} subset T_{r_{SP}}(SP_1)` in which `W^s_loc(SP_1)` is a smooth codimension-`1` submanifold separating `U_{SP} \ W^s_loc` into two open half-neighbourhoods; the local unstable set is a smooth `2`-manifold (`circle x` the unstable direction) whose two branches leave `U_{SP}`; and every flow line from `U_{SP} \ W^s_loc` leaves along one unstable branch (lambda-lemma). Because `SP_1` is itself flow-invariant, `SP_1 subset W^s_loc(SP_1)`; in Fermi normal coordinates `(a, b_s, b_u)` on the tube (`a` along `SP_1`, `b_s` the `N-2` stable normal directions, `b_u` the one unstable normal direction) SR-LS1 gives `W^s_loc = { b_u = w(a, b_s) }` as a smooth graph with `w(a, 0) = 0` and `Dw = 0` on `SP_1` (tangency to the stable eigenspace `{b_u = 0}`). Hence the graph slope `Lip_s := sup_{T_{r_{SP}}} |D w|` satisfies `Lip_s -> 0` as `r_{SP} -> 0`; FIX `r_{SP}` small enough that

```text
Lip_s <= 1 ,   r_{SP} <= min( normal inj. radius of SP_1 ,  c_sec / 2 ) ,   (R1.1a)
```

where `c_sec := dist(SP_1, Delta) >= a_1 = pi/(N-2) > 0` (`SP_1` off `Delta`, "the saddle is `a_k`-far from `Delta`," `lane-ls:521`; its bonds `pi - a_1` and `a_1` are each at distance `>= a_1` from `+-pi`).

**Target and landing ball, with EXPLICIT compatible constants (the round-2 gap).** Set the L1-Z reach `h := 3 delta` and the off-stable-set margin constant `K := 2`. Given a start `x` with `dist(x, SP_1) <= 3 delta` (met at both call sites: the ATTEMPT start lies in `B''` around `z_sad = x(pi - a_1 - delta')` with `dist(z_sad, SP_1) = O(delta') <= 3 delta` once `delta' <= delta`, `lane-ls:505-509`; the RELOCATE start is delivered `<= 3 delta` from `SP_1` by the flow-limit tracking of branch (iii)), CONSTRUCT the target `y` in Fermi coordinates by

```text
pi(y) := pi(x) ,   b_s(y) := 0 ,   b_u(y) := + K delta = + 2 delta  (the FAR sign, i.e. the
         unstable branch whose flow crosses Delta, LS.2b lane-ls:310-317),   (R1.1b)
```

and take the L1-Z landing ball `B_{h/4}(y) = B_{(3 delta)/4}(y)`. The four inequalities XM demanded be shown compatible now hold simultaneously and with explicit slack:

```text
(i)  reach vs off-stable margin:   dist(y, SP_1) = |b(y)| = 2 delta <= 3 delta = h ;
     tangential offset d_{SP}(pi x, pi y) = 0 <= h ; start d <= 3 delta = h.   [L1-Z hyps met]
(ii) whole landing ball off the CLOSED stable manifold, far side: for every
     z in B_{(3 delta)/4}(y), the signed unstable coordinate obeys
       b_u(z) - w(a_z, b_s(z))  >=  (2 delta - 3 delta/4) - Lip_s (3 delta/4)
                                >=  2 delta - 3 delta/4 - 3 delta/4  =  delta/2  > 0 ,   (R1.1c)
     using (R1.1a) Lip_s <= 1 and |b_s(z)|, |b_u(z) - b_u(y)| <= 3 delta/4. So the closure
     K_c := cl(B_{(3 delta)/4}(y)) is compact and disjoint from the closed W^s_loc(SP_1)
     with margin >= delta/2 -- exactly LS.5's requirement (lane-ls:522-524). This pins LS.5's
     abstract landing radius: C* K delta = 3 delta/4, so with K = 2 the constant C* := 3/8.
(iii) corridor OFF Delta and inside the tube: the L1-Z killed corridor is
       T_{3h}(SP_1) = T_{9 delta}(SP_1) ; impose the delta-window
         0 < delta < min( r_{SP} , c_sec ) / 9 ,   (R1.1d)
     so T_{9 delta}(SP_1) subset T_{r_{SP}}(SP_1) subset {dist(., Delta) >= c_sec/2 > 0}:
     the corridor never meets Delta. Because delta -> 0 is taken AFTER beta -> infinity,
     (R1.1d) is eventually satisfied at every fixed geometry.
```

Applying (L1-Z) at reach `h = 3 delta` (so `d, h <= 3 delta`, `d^2 + h^2 <= 18 delta^2`), for `beta >= 16/(9 delta^2) = O(delta^{-2})`,

```text
P_x( X_tau in B_{(3 delta)/4}(y),  X_[0,tau] subset T_{r_{SP}}(SP_1) )
   >= c_{SP}(tau) exp( -beta C_{SP}(tau) (d^2 + h^2) )
   >= c_{SP}(tau) exp( -beta err(delta) ),   err(delta) := 18 C_{SP}(tau) delta^2 = O(delta^2),   (R1.1e)
```

with `c_{SP}(tau), C_{SP}(tau)` the L1-Z constants of §"Constants (summary)" for `Z = SP_1` (`L = L_{SP}`, `n = N`), both explicit and `beta`-free.

**Honest event split for SP_1 — the "boundary-free endpoint with a known sector" branch.** Since `SP_1` is off `Delta` and (R1.1d) keeps the killed corridor `T_{9 delta}(SP_1)` disjoint from `Delta`, the L1-Z conjunct `X_[0,tau] subset T_{r_{SP}}(SP_1)` DOES force "no `Delta` contact" here: the tube-confinement claim challenged by XM is TRUE for `SP_1` and only for orbits like it. The kick endpoint is therefore boundary-free: the process is STILL winding `1` (the interior separatrix `W^s_loc(SP_1)` it crossed is codimension-`1` but is NOT `Delta`, so crossing it does not change the label), and sits in the KNOWN sector-side of `W^s_loc` — the far side, `>= delta/2` off the closed stable manifold by (R1.1c). NO label/`Delta` success has occurred inside the kick; the success is DEFERRED to the subsequent deterministic step that LS.5 already supplies for `SP_1`: SR-LS1's lambda-lemma routes every point of `K_c` along the far unstable branch, LS.2b (`lane-ls:310-317`) carries that branch across `Delta` in uniform finite time `T_c(delta) = sup_{K_c} tau_cross < infinity` (by disjointness of `K_c` from the closed stable manifold + upper-semicontinuity, `lane-ls:522-529`), and SH.2 max-norm tracking shadows each flow line to a post-crossing point strictly inside the adjacent sector at order-one probability — `w != 1`, the label has changed (`lane-ls:529-532`). This deferred crossing is the SP_1 instance of the post-boundary transmission of COORDINATION [23]:408-415, rechecked SOUND in §R1.4.

Thus for `SP_1` the LS.5a interface is met exactly (`|x - y| <= 3 delta`, corridor `T_{9 delta}(SP_1)`, cost `exp(-beta err(delta))`, `err = O(delta^2)`), on a single tube with `beta`-free constants and no global minorization. The order of limits is `beta -> infinity` at fixed `delta` (each kick valid for `beta >= 16/(9 delta^2)`), then `delta -> 0`, as LS.5's renewal requires.

#### R1.2 — (Z-B) the ON-Delta high orbits Z_high: honest split and typed residue

Each `Z_high` lies ON `Delta` (two bonds AT `pi`; LS.6(b), `lane-ls:570-576`). This voids, for these orbits, the two supports the round-2 splice silently borrowed from the `SP_1` case:

- **The killed corridor no longer clears `Delta`.** For `Z_high subset Delta`, any tube `T_r(Z_high)` meets `Delta` (indeed `Z_high subset Delta cap cl(T_r(Z_high))`), so the L1-Z conjunct `X_[0,tau] subset T_r(Z_high)` does NOT imply "no `Delta` contact / winding preserved." The universal sentence at `lane-minmig:405,508` is false precisely here. A path in `T_r(Z_high)` may touch `Delta`.
- **The winding label is multivalued at the orbit.** With two bonds at `pi`, `Z_high` sits at a codimension-`>= 2` stratum of `Delta` (the intersection of `>= 2` sheets `{|d_i| = pi}`), a "corner" where `>= 2` open sectors meet. "A target `K delta` off `W^s_loc(Z_high)` on the far side, still winding `k`" and "a known sector" are not well-posed at such a corner without a stratified-`Delta` local model; and LS.2b (`lane-ls:310-317`) is a SINGLE-sheet transversal crossing of one `Delta` face, so it does not transport a corner-hit.

**The honest split (using XM's own reduction: a `Delta`-touch with a label change is a SUCCESS branch of LS.5, not a failure).** From a start whose forward flow limits to `Z_high`, the stochastic process near `Z_high` falls into exactly two disjoint events:

```text
(alpha)  SUCCESS: the path within a small neighbourhood of Z_high TOUCHES Delta. Since near
         Z_high some bond representative is within O(delta) of +-pi, a Delta-touch is realized;
         by LS.2(ii) (lane-ls:213-218) the touching bond's |representative| -> pi and the
         label can change -- this is LS.5 RELOCATE branch (ii) (a Delta approach / valley =
         label-change candidate, lane-ls:478-482), i.e. an ALREADY-occurred Delta/label
         success. It is NOT a failure. Its completion needs the post-gate transmission lemma
         of COORDINATION [23]:408-415 (after the Delta-hit, entry into a DIFFERENT sector
         before return has probability exp(-o(beta))).
(beta)   INTERIOR: the path stays winding 1 and the descent carries it to a STRICTLY LOWER
         critical level on the finite DAG (LS.6 finiteness) -- eventually to C_1 (branch (i))
         or to a Delta approach (branch (ii)). Each descent step is a local kick near the
         next lower critical orbit.
```

The reduction (alpha) REMOVES the obligation to perform a winding-preserving killed kick at `Z_high`: we never need to land `K delta` off `W^s_loc(Z_high)` while still winding `1`. What genuinely remains to make branch (beta) a bona fide sequence of L1-Z kicks, and branch (alpha) a bona fide LS.5 success, is NOT supplied by the current corpus and is TYPED precisely, per orbit, as `GAP-M2-HIGH` below.

**Why it cannot be discharged from LS.6 alone (the residue).** LS.6 classifies LEVELS, not manifold structure (XM F1, `verdicts/XM-2026-07-20.md:69`). Concretely, at a configuration `(pi, pi, 0, ..., 0)` the bond-coordinate Hessian `kappa diag(cos d_i) = kappa diag(-1, -1, +1, ..., +1)` SUGGESTS transverse index `2`, but (i) whether the rotation-orbit kernel plus the angle-to-bond map `B` leaves the transverse form NONDEGENERATE (Morse-Bott clean) is not established; (ii) whether the full `p >= 2` critical set is a disjoint union of clean rotation orbits or a stratified / self-intersecting set (several branches meeting) is not established — precisely the "degenerate or stratified" case the M2 L1-Z-TUBE row flagged as "nontrivial"; and (iii) the applicable stable-manifold theorem for a normally hyperbolic orbit of transverse index `2` (and possibly a torus, not a circle) is the Hirsch-Pugh-Shub normally-hyperbolic invariant-manifold theorem, NOT SR-LS1 (which is index-`1`-circle only), and its hypothesis — normal hyperbolicity of `Z_high` — is exactly (i), unproven. Finally the on-`Delta` corner location (multivalued label) makes even the STATEMENT of a winding-labelled landing ball ill-posed without a stratified-`Delta` transmission analysis. Hence:

```text
GAP-M2-HIGH (per ON-Delta high critical orbit Z_high; the residue of the honest split):
  TYPE 1  (clean/stratified structure + inertia): prove each Z_high is a smooth compact
          critical orbit (or resolve its stratification), and compute its transverse inertia.
          NOT supplied by LS.6 (levels only). Until then Z_high is not known to be normally
          hyperbolic.
  TYPE 2  (applicable stable-manifold theorem): once TYPE 1 gives a nondegenerate transverse
          inertia, invoke the matching invariant-manifold theorem (Hirsch-Pugh-Shub for the
          general normally-hyperbolic orbit; SR-LS1 is inapplicable, index != 1 and possibly
          a torus). State it with its hypothesis rows discharged from TYPE 1.
  TYPE 3  (finite-DAG descent cost): show branch (beta) descends the finite critical-level DAG
          (LS.6 finiteness is available) at total cost exp(-beta O(delta^2)) with beta-free
          per-orbit constants, one killed L1-Z kick per level, no common small-set law.
  TYPE 4  (corner post-boundary transmission): for branch (alpha), prove the post-gate
          transmission of COORDINATION [23]:408-415 at a codim->=2 Delta CORNER (>= 2 sheets),
          where LS.2b's single-sheet crossing does not apply.
  SCOPE:  Until TYPE 1-4 are discharged for every consumed Z_high, the on-Delta high orbits
          are NOT discharged, so LS-MIN-MIG cannot flip. This SUPERSEDES the optimistic
          parenthetical of the M2 L1-Z-TUBE row ("smooth high ON-Delta orbits ... one line
          each"): the smoothness/cleanness of the high ON-Delta orbits is itself the open
          content of TYPE 1, not a corollary of LS.6.
```

#### R1.3 — (Z-C) winding-j orbits, j != 1: non-consumption (not a gap)

LS.6(a) (`lane-ls:552-559`) excludes every winding-`j` critical set (`j != 1`) — including `C_{-1}` at level `m_1` and every `C_j` with `m_j < S_1` — OUTRIGHT from `D_eps`, since `D_eps` carries `w = 1` and misses `Delta`. The RELOCATE deterministic gradient flow preserves the winding label off `Delta`; to reach a winding-`j` critical set from a winding-`1` start the flow must FIRST cross `Delta`, which is LS.5 branch (ii) — a label-change SUCCESS. Hence no winding-`j` orbit is reached by a winding-PRESERVING (killed) L1-Z kick; no winding-`j` orbit is consumed by the interior DAG walk. This is a NON-CONSUMPTION, recorded so the enumeration is exhaustive, not a typed gap.

#### R1.4 — Finite critical DAG + post-boundary transmission (cold recheck, COORDINATION [23]:408-415)

- **Finiteness of the DAG:** LS.6(b) (`lane-ls:560-576`) yields finitely many winding-`1` critical LEVELS (`m_1`, `S_1`, and the `p >= 2` levels `>= 4 kappa`; bonds take finitely many branch-values `{alpha, pi - alpha}`, so finitely many levels). This finiteness IS established. It bounds the number of descent steps in branch (beta), but does not by itself supply the per-level kicks (that is `GAP-M2-HIGH` TYPE 3).
- **No global minorization / composition discipline:** distinct orbits use distinct tubes; composition is by the strong Markov property at tube entrance/exit times, never a common small-set law (COORDINATION [23] §D, `COORDINATION.md:536-538`). Preserved for `SP_1` (§R1.1); for `Z_high` the composition is only as sound as the per-orbit kick (typed).
- **Post-boundary transmission ([23]:408-415):** required at EVERY branch that changes the label via a `Delta`-hit.
  - At the `SP_1` ATTEMPT crossing (the far unstable branch): LS.5 supplies it — LS.2b sends the far branch across ONE `Delta` sheet transversally, and SH.2 tracking shadows each flow line to a post-crossing point strictly inside the adjacent sector at order-one (`= exp(-o(beta))`) probability (`lane-ls:525-532`). COLD-RECHECK RESULT: SOUND as written for `SP_1` (single-sheet, transversal, order-one).
  - At a `Z_high` `Delta`-touch (branch (alpha)): the hit is at a codimension-`>= 2` CORNER (`>= 2` sheets), where LS.2b's single-sheet geometry does not transport the flow into a definite adjacent sector. TYPED as `GAP-M2-HIGH` TYPE 4.

#### R1.5 — What this splice discharges, what stays typed, scope

With this replacement: the ATTEMPT-phase CROSSING and the RELOCATE "Near `SP_1`" branch are LOCAL, killed, winding-preserving L1-Z kicks with the explicit compatible constants (R1.1a)-(R1.1e) and an honest boundary-free-endpoint split — DISCHARGED (§R1.1). The winding-`j` orbits are non-consumed (§R1.3). The ON-`Delta` high orbits are honestly split, their success branch identified as a genuine LS.5 branch-(ii) success, and their residue TYPED as `GAP-M2-HIGH` TYPE 1-4 (§R1.2, §R1.4). Consequently the DISPLACEMENT half of LS-MIN-MIG is discharged FOR `SP_1` but NOT for the on-`Delta` high orbits; LS-MIN-MIG does not flip while `GAP-M2-HIGH` is open, matching the artifact's `TYPED` status and XM's BLOCKING verdict.

SCOPE BOUNDARY: everything above is for the flagship `k = 1`, `N >= 10`. Any non-flagship row (`k >= 2`, general `N`, composed/symmetric families) that enlarges the off-`Delta` critical set must re-enter this enumeration: each newly consumed orbit re-derives (H1)-(H3), its transverse inertia, its applicable stable-manifold theorem, and its target/landing-ball constants, exactly as in §R1.1 — none of it is inherited from the flagship.

### M2-lz-kicks (R1 splice) — consumed

L1-Z (this file, M2) — the killed local-kick lemma, applied at reach `h = 3 delta` for `Z = SP_1`; its constants `c_Z, C_Z, B_Z = 16`, floor `beta h^2 >= 16` (`beta_0 = O(delta^{-2})`), corridor `T_{3h}(Z)`, order `beta -> infinity` then `delta -> 0`. | LS.4 (`lane-ls-label-sharpness-v1.md:397-420`) — `SP_1` transverse inertia `(N-2, 1, 0)`, index-1 normal hyperbolicity, Morse-Bott cleanness (discharges (H1)-(H3) and L1-Z-TUBE for `SP_1`). | SR-LS1 (`lane-ls:115-128`) — the index-1 normally-hyperbolic-circle stable/unstable-manifold theorem; hypothesis rows discharged by LS.4; supplies `W^s_loc(SP_1) = {b_u = w(a,b_s)}`, `w(a,0)=0`, `Dw|_{SP_1}=0`, the two unstable branches, and the lambda-lemma routing of `K_c`. | LS.5 (`lane-ls:438-542`) — the RELOCATE/ATTEMPT phases, `B''` around `z_sad = x(pi - a_1 - delta')`, the far-side displacement (its abstract `C*` pinned here to `3/8`), and the deferred CROSSING (LS.2b + SH.2 tracking) used as the `SP_1` post-boundary transmission. | LS.2b (`lane-ls:310-317`) — far-branch single-sheet transversal `Delta`-crossing (SP_1 only). | LS.2(ii) (`lane-ls:213-218`) — the sweep `M_abs -> pi` at a `Delta`-touch, used for the `Z_high` branch-(alpha) success. | LS.6 (`lane-ls:544-577`) — flagship LEVEL classification: `C_1`, `SP_1` off `Delta`, `p >= 2` families on `Delta` at level `>= 4 kappa`, winding-`j` excluded; DAG finiteness (levels only — NOT structure). | COORDINATION [23] §C (`COORDINATION.md:453-520`, local-not-global L1-Z discipline; one declared metric), §D (`:522-563`, composition by strong Markov, no common small-set law), and lines 408-415 (post-gate transmission requirement). | GAP-M1-NORM (M1) — the fixed `beta`-free norm-equivalence bookkeeping under which all distances above are read.

### M2-lz-kicks (R1 splice) — typed gaps

GAP-M2-HIGH (per ON-`Delta` high critical orbit `Z_high`, level `>= 4 kappa`, `p >= 2`): the residue of the honest split of §R1.2. TYPE 1 — prove each `Z_high` is a smooth compact critical orbit (or resolve its stratification) and compute its transverse inertia; NOT supplied by LS.6 (levels only). TYPE 2 — invoke the matching normally-hyperbolic invariant-manifold theorem (Hirsch-Pugh-Shub for the general orbit; SR-LS1 is inapplicable, index `!= 1`, possibly a torus), hypotheses discharged from TYPE 1. TYPE 3 — prove branch (beta) descends the finite critical-level DAG at total cost `exp(-beta O(delta^2))`, one killed L1-Z kick per level, `beta`-free per-orbit constants, no common small-set law. TYPE 4 — prove the codim-`>= 2` corner post-boundary transmission of COORDINATION [23]:408-415 for branch (alpha), where LS.2b's single-sheet crossing does not apply. Until TYPE 1-4 are discharged for every consumed `Z_high`, the on-`Delta` high orbits are NOT discharged and LS-MIN-MIG cannot flip. SUPERSEDES the M2 L1-Z-TUBE parenthetical asserting "smooth high ON-`Delta` orbits ... one line each": that smoothness/cleanness is the open content of TYPE 1.

L1-Z-TUBE (unchanged for `SP_1`; refined for `Z_high`): discharged for `SP_1` by LS.4 (normally hyperbolic index-1 circle => positive normal injectivity radius, clean Fermi coordinates). For `Z_high` it is subsumed by `GAP-M2-HIGH` TYPE 1 (the on-`Delta` orbits' tubular structure is exactly what is unproven).

FLOOR/ORDER (recorded, not a gap): the load-bearing floor `beta h^2 >= 16` forces `beta_0(delta) = O(delta^{-2})` and the strict order `beta -> infinity` BEFORE `delta -> 0`; any consumer sending `delta -> 0` at fixed `beta` is outside scope (unchanged from M2).

NON-CONSUMPTION (recorded, not a gap): winding-`j` orbits (`j != 1`) are not consumed by the interior DAG walk (§R1.3); reaching one requires a prior `Delta`-crossing, itself a branch-(ii) success.

### consumed

L1-Z (M2, this file); LS.4 lane-ls:397-420 (SP_1 inertia (N-2,1,0), index-1, Morse-Bott clean); SR-LS1 lane-ls:115-128 (index-1 circle stable-manifold thm); LS.5 lane-ls:438-542 (RELOCATE/ATTEMPT, B'' around z_sad, CROSSING); LS.2b lane-ls:310-317 (single-sheet far-branch crossing); LS.2(ii) lane-ls:213-218 (M_abs->pi at Delta-touch); LS.6 lane-ls:544-577 (flagship LEVEL classification + DAG finiteness); COORDINATION [23] COORDINATION.md:453-520 (§C local-not-global L1-Z), :522-563 (§D strong-Markov composition), :408-415 (post-gate transmission); L1 constants lane-sh2local:92-205; GAP-M1-NORM (M1, norm-equivalence bookkeeping).

### typed gaps

GAP-M2-HIGH (per ON-Delta high critical orbit Z_high, p>=2, level>=4kappa): TYPE 1 = clean/stratified structure + transverse inertia (NOT supplied by LS.6, which gives levels only); TYPE 2 = the applicable normally-hyperbolic invariant-manifold theorem for that inertia (Hirsch-Pugh-Shub; SR-LS1 inapplicable since index!=1 and possibly a torus); TYPE 3 = finite-DAG descent at total cost exp(-beta O(delta^2)), one killed kick per level, no common small-set law; TYPE 4 = codim->=2 CORNER post-boundary transmission per COORDINATION [23]:408-415 (LS.2b single-sheet crossing does not apply). Until all four are discharged per Z_high, on-Delta high orbits are NOT discharged and LS-MIN-MIG cannot flip; this SUPERSEDES the optimistic M2 L1-Z-TUBE parenthetical ("smooth high ON-Delta orbits ... one line each"). L1-Z-TUBE: discharged for SP_1 by LS.4; for Z_high subsumed into GAP-M2-HIGH TYPE 1. Recorded non-gaps: FLOOR/ORDER (beta->inf before delta->0); NON-CONSUMPTION of winding-j (j!=1) orbits.


---

# R2 — ONE regenerative round object M3-M4 (discharges XM F2; supersedes A3)

(round grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

# M3M4 — ONE regenerative round object joining M3 to M4 (LP-MIN-MIG, third call site; R2)

(round-4 R2; discharges XM finding F2. VOIDS lead amendment A3 — the
B_h = B_{delta/2} / S = B_{delta/4} identification is inconsistent and is
not built on. Consumes GAP-LP-RECUR (the a.s.-return / stopped-retry
scaffold, XM F3, round-3 R3 target) and PROD-EXCURSION (external) as
TYPED interfaces; those are not proved here. This piece supplies exactly
the missing round OBJECT and the composition on it.

ROUND-4 SURGICAL CHANGE (checker Finding 1, MAJOR): the block-start field
is G_j := F_{Theta_{j-1}}^xi, the STOPPED continuous augmented sigma-field
at the stopping time Theta_{j-1} = (R_{j-1}+1) T*. It CONTAINS the fresh
regeneration draw X_{Theta_{j-1}} = Y_{R_{j-1}+1} ~ nu. A non-constant
nu-distributed variable measurable w.r.t. G_j cannot be independent of
G_j; the round-3 claims "block j independent of G_j",
"P(C_j|G_j) = P_nu(C_1)", "E[D_j|G_j] = E_nu[D_1]" were therefore false as
written. M3's Athreya-Ney-Nummelin property (lane-minmig :828-831) gives
independence only of the strictly SMALLER pre-draw DISCRETE field
G_{R_{j-1}} = sigma(Y_0,...,Y_{R_{j-1}}, xi_0,...,xi_{R_{j-1}-1}), which
does NOT contain the fresh draw. The load-bearing conditional statements
are now rerouted through the STRONG MARKOV property at Theta_{j-1} plus
the uniform-over-S floor/bound: since X_{Theta_{j-1}} in S subset U_{1/2}
and the M3-GS floor is POINTWISE over U_{1/2},
P(C_j|G_j) = P_{X_{Theta_{j-1}}}(C_1) >= p and
E[D_j|G_j] = E_{X_{Theta_{j-1}}}[D_1] <= D_bar. Sections 9-11 consume ONLY
these inequalities plus {N>=j} in G_j, so (geom) and (Wald) hold verbatim.
The defect was a false conditional-independence justification on a
conditioning field that contains the very draw it claimed independence
from; the round object and the bound are unchanged.)

## 0. Scope and the defect this fixes

XM F2 recorded that M3 and M4 do not name the same regenerative round.
M3 builds a discrete `T*`-skeleton Athreya-Ney-Nummelin split whose
regeneration epochs `R_j` are SKELETON INDICES and whose blocks
`Blk_j = (Y_{R_j+1}, ..., Y_{R_{j+1}})` are i.i.d. skeleton excursions
(lane-minmig M3 `:810-839`). M4 instead consumed CONTINUOUS times whose
terminus is "the next entrance to `B_0 := B_h(g_0)` or a crossing"
(`:946-974`), never constructed those times, never attached the
inter-skeleton continuous path segments or the crossing marks to M3's
skeleton blocks, and asserted (falsely) that "the split residual law is
common on `B_0`" (`:1093`). A3's radius identification was inconsistent
(`B_h = B_{delta/2}` vs `S = B_{delta/4}`), and the old Wald sum omitted
the initial delay `sigma_0` for arbitrary `q` (F2(e)).

This piece constructs ONE object — path-marked continuous regeneration
blocks obtained by lifting M3's SUCCESS split epochs to the continuous
clock, carrying every inter-skeleton segment and every crossing mark —
and derives on it the success floor (P), the duration bound (D), the
excursion consumption (E), the geometric count, and the Wald bound with
the initial-delay term, every measurability step explicit. It builds
"per the note": only the SUCCESS restart law `nu` is common; the residual
kernel `R(x, .)` is state-dependent and is never treated as common.

The per-block conditional statements are justified by the STRONG MARKOV
property at the regeneration epoch plus the pointwise-over-`S` floor of
M3, NOT by a conditional independence of the block-start field `G_j` —
which would be false, since `G_j` contains the fresh draw
`X_{Theta_{j-1}}`. This is the one substantive correction of round 4.

Construction chosen (F2, first option): M3's successful split epochs
become path-marked continuous blocks. No separate uniform-floor system is
introduced; the SPLIT interface of M3 is the one carried.

## 1. Standing data recalled from M3 — the ONE base-ball radius

All symbols are M3's (lane-minmig `:531-913`), instantiated on the
product ground orbit `G_k = C_k^theta x C_0^phi ⊂ M = T^{2N}` under the
eps-flow generator `L_beta^eps`, `0 <= eps < eps_2`, `q in D_k(eps)`.
Fix `delta` small and

```text
h        := delta/2                          (M3's locked hop scale),
g*       := the reference ground point (the z_sl-fiber base, M3 :651),
r_S      := h/2 = delta/4                     (the ONE base-ball radius),
S        := B_0 := B_{r_S}(g*) = B_{delta/4}(g*)   (the ONE base ball),
nu       := Leb|_S / Leb(S)                   (the FIXED restart law),
D_G      := pi sqrt(2N)                       (product diameter, [23] S C),
n        := ceil(2 D_G / h) = ceil(4 pi sqrt(2N)/delta)   (M5 hop count),
T*       := n + 1                             (skeleton spacing; beta-free),
Y_i      := X_{i T*}                          (the T*-skeleton).
```

ONE BASE-BALL RADIUS (F2(d) fixed). `r_S = delta/4 = h/2` is used
identically in: (i) L1's landing ball `B_{h/2}(g*) = S`; (ii) the L1'
small-set target that M3-GS.2 minorizes on (`m_1 Leb|_{B_0}` with
`B_0 = B_{delta/4}(g*) = S`, lane-minmig `:697-705`); (iii) the split
law `nu = Leb|_S/Leb(S)`; (iv) every duration formula below. The larger
radius `h = delta/2` appears ONLY as the L2 chain's terminal/landing and
tangential-reach scale (the chain lands in `B_h(g*) ⊃ S`, then L1' lands
the density INSIDE `S`); it is never a base ball. This is precisely where
A3 erred — it identified two balls of different radii and then kept using
`h` as the ball radius in the L1'/duration formulas. R2 carries exactly
one base ball, `S`, of one radius, `r_S = delta/4`; the density step
(M3-GS.2) legitimately restricts the L1' minorizing measure from the
chain-landing ball `B_h(g*)` to the sub-ball `S ⊂ B_h(g*)`, a measure
restriction that only lowers the constant, never a radius identity.

M3'S SPLIT (recalled, lane-minmig `:790-839`). `S` is an `(m, T*, nu)`
small set for the skeleton, uniform over the chain-hypothesis subtube
`U_{1/2} = {dist(., G_k) <= delta/2} ⊇ S` (M3-MINOR):
`P^{T*}(x, A) >= m nu(A)` for all Borel `A ⊂ S`, all `x in U_{1/2}`,
with `m := p_chain m_1 Leb(S) > 0` (beta-exponent err-class `O(beta delta)`,
prefactor `beta^N`). At each skeleton visit `{Y_i in S}` an independent
`Bernoulli(m)` coin `xi_i` is drawn:
`xi_i = 1` (prob `m`) ⇒ `Y_{i+1} ~ nu`, independent of the past (the
COMMON restart law); `xi_i = 0` ⇒ `Y_{i+1} ~ R(Y_i, .)`, the residual
kernel `R(x, .) = (P^{T*}(x, .) - m nu)/(1-m)` — STATE-DEPENDENT, and it
is the generic Harris residual: the per-block floor/bound below does NOT
use, and never asserts, that `R(x, .)` is common (the note; correcting
M4 `:1093`). Off `S` there is no coin: `Y_{i+1} ~ P^{T*}(Y_i, .)`.

`R_0 < R_1 < R_2 < ...` are the successive SUCCESS indices
(`xi = 1`): `R_j := inf{ i > R_{j-1} : Y_i in S, xi_i = 1 }` (and
`R_0 := inf{ i >= 0 : Y_i in S, xi_i = 1 }`).

M3'S REGENERATION INDEPENDENCE, STATED EXACTLY (lane-minmig `:823-831`).
The split discrete filtration is
`G_i^disc := sigma( Y_0, ..., Y_i, xi_0, ..., xi_{i-1} )` (the coin at
step `i` revealed after observing `{Y_i in S}`). At each `R_j`,
`Y_{R_j+1} ~ nu` INDEPENDENT of the PRE-DRAW discrete field `G_{R_j}^disc`
— the field generated up to and including `Y_{R_j}` and the coins
`xi_0, ..., xi_{R_j-1}`, together with the success indicator `xi_{R_j}=1`.
`G_{R_j}^disc` does NOT contain the fresh draw `Y_{R_j+1}`. This is the
ONLY independence M3 supplies, and R2 uses it only where the draw is
strictly in the future (Section 4, item (M3'), for the marginal `nu`-law);
it is NEVER applied to a field that already contains the draw.

## 2. First-exit / delayed-return convention

A continuous-time entrance functional is only well posed with a first
exit interposed: for a set `B` and a start already in `B`,
`inf{ t > s : X_t in B } = s` (the written infimum can equal the round
start — F2(b)). The convention is:

```text
sigma_ent^{(0)}  := inf{ t >= 0 : X_t in S };
sigma_exit^{(l)} := inf{ t > sigma_ent^{(l)} : X_t notin S };
sigma_ent^{(l+1)}:= inf{ t > sigma_exit^{(l)} : X_t in S }   (DELAYED RETURN).
```

The round object below does NOT read round boundaries off these
continuous entrance times; it reads them off the DISCRETE skeleton, whose
visits to `S` are the delayed-return convention automatically: successive
skeleton `S`-visits sit at DISTINCT integer indices,
`rho^{(l+1)} := inf{ i > rho^{(l)} : Y_i in S }` with the STRICT `i >
rho^{(l)}`, so consecutive returns are `>= 1` skeleton step `= >= T*`
continuous time apart. Hence the round clock never advances by a
zero-length continuous infimum, and no continuous start "in `S`" produces
a trivial next round. The convention above is stated for the record (a
consumer that insists on continuous entrance times must use it); the
construction sidesteps the pathology by advancing on the `T*`-separated
skeleton.

## 3. Continuous regeneration epochs, blocks, marks, initial delay

Lift M3's SUCCESS epochs to the continuous clock:

```text
Theta_j := (R_j + 1) T*        (j >= 0)   — continuous regeneration epochs;
sigma_0 := Theta_0             — the INITIAL DELAY (first regeneration);
D_j     := Theta_j - Theta_{j-1} = (R_j - R_{j-1}) T*   (j >= 1) — round durations;
```

Since `R_j > R_{j-1}` strictly, `D_j >= T* > 0`: no zero-length rounds.
At `Theta_j` the process sits at `X_{Theta_j} = Y_{R_j+1}`, whose MARGINAL
law is `nu` (Section 1, M3's regeneration independence of the pre-draw
field). The `j`-th BLOCK is the path segment

```text
Blk_j := ( X_t : t in (Theta_{j-1}, Theta_j] ),   j >= 1,
```

a PATH-MARKED continuous object: it carries every continuous sub-path
between skeleton points (the inter-skeleton segments) and the theta-label
process `t -> w_theta(X_t)` on that interval. Attach the CROSSING MARK

```text
C_j := { exists t in (Theta_{j-1}, Theta_j] : w_theta(X_t) != k },   j >= 1,
C_0 := { exists t in [0, Theta_0] : w_theta(X_t) != k }   (crossing in the initial segment).
```

`w_theta(.)` is the theta-winding number, a functional of the continuous
path that is locally constant and changes only at `Delta_theta` hits;
`C_j` is therefore a measurable functional of `Blk_j`, and `C_0` of the
initial segment. The continuous first crossing time is
`tau_change^theta := inf{ t >= 0 : w_theta(X_t) != k }`.

SEAM NOTE (F-2, MINOR). The blocks are written END-INCLUSIVE on
`(Theta_{j-1}, Theta_j]`, so consecutive blocks `Blk_j`, `Blk_{j+1}` share
the regeneration endpoint `X_{Theta_j} = Y_{R_j+1}`, and the continuous
bridge across `Theta_j` is fixed by that shared point. R2 therefore does
NOT claim full mutual independence of the continuous marks `(C_j)` across
blocks: a crossing localized in the seam bridge around `Theta_j` could
correlate `C_j` and `C_{j+1}` through the shared draw. What R2 uses — and
all it needs — is the PER-BLOCK CONDITIONAL floor/bound of Sections 6-7,
which holds pointwise over `S` by strong Markov and does not require
inter-block independence. The "i.i.d. blocks" language of round 3 is
accordingly withdrawn (Section 5).

## 4. The one augmented filtration; measurability

Let `(F_t)_{t>=0}` be the (right-continuous, complete) natural filtration
of `X`. The ONE augmented filtration adds the split coins:

```text
F_t^xi := F_t ∨ sigma( xi_l : the coin at skeleton step l is drawn and l T* <= t ).
```

`(F_t^xi)` is right-continuous and complete (each coin is an independent
`Bernoulli(m)` adjoined at the deterministic-in-`t`, `F`-observable event
`{Y_l in S}` at time `l T*`). The round-start fields are the STOPPED
augmented sigma-fields

```text
G_j := F_{Theta_{j-1}}^xi   (j >= 1),        G := (G_j)_{j>=1}.
```

MEASURABILITY (each step explicit).

(M1) `R_j` is a stopping time of the discrete augmented skeleton filtration
`H_i := F_{i T*}^xi`: `{R_j = i}` is determined by `(Y_0,...,Y_i)` and
`(xi_l : l <= i, Y_l in S)`, hence `H_i`-measurable. Therefore
`Theta_j = (R_j+1) T*` is an `(F_t^xi)`-stopping time:
`{Theta_j <= t} = {R_j <= t/T* - 1} = union_{i <= t/T* - 1} {R_j = i} in
H_{floor(t/T*-1)} ⊂ F_t^xi`.

(M2) `G_j = F_{Theta_{j-1}}^xi` is the stopped augmented sigma-field of an
`(F_t^xi)`-stopping time, well defined by (M1). CRUCIAL FACT (round 4):
because `Theta_{j-1}` is a stopping time and `X` is right-continuous,
`X_{Theta_{j-1}} = Y_{R_{j-1}+1}` IS `G_j`-measurable. Hence `G_j`
CONTAINS the fresh regeneration draw of block `j`. The block-start field
is therefore NOT independent of that draw, and no such independence is
used below; the conditional statements go through strong Markov at
`Theta_{j-1}` (M4') and the pointwise floor over `S` (M3-GS).

(M3') MARGINAL LAW OF THE DRAW. `X_{Theta_{j-1}} = Y_{R_{j-1}+1}` has
marginal law `nu` and, by the Athreya-Ney-Nummelin regeneration property
(M3 `:823-831`), is independent of the PRE-DRAW DISCRETE field
`G_{R_{j-1}}^disc` (Section 1) — the field that stops one step BEFORE the
draw and does NOT contain it. This is the only place M3's regeneration
independence is invoked, and it is invoked correctly: the draw is strictly
in the future of `G_{R_{j-1}}^disc`. In particular `X_{Theta_{j-1}}`
takes values in `S` almost surely (support of `nu`). It is emphatically
NOT claimed independent of `G_j`, which contains it (M2).

(M4') STRONG MARKOV REROUTE (the load-bearing step). By the strong Markov
property of `X` at the `(F_t^xi)`-stopping time `Theta_{j-1}`, conditional
on `G_j = F_{Theta_{j-1}}^xi` the post-`Theta_{j-1}` evolution
`(X_{Theta_{j-1}+t})_{t>=0}` together with the fresh post-`Theta_{j-1}`
coins is distributed as the split process STARTED FROM the point
`X_{Theta_{j-1}}` (a skeleton-aligned start, since `Theta_{j-1}` is an
integer multiple of `T*`). Consequently, for any measurable functional
`Phi` of a block,
`E[ Phi(Blk_j) | G_j ] = (E_x[ Phi(Blk_1) ])|_{x = X_{Theta_{j-1}}}`,
a `G_j`-measurable random variable that depends on `G_j` ONLY through the
point `X_{Theta_{j-1}} in S`. This is the correct substitute for the false
round-3 "independence of `G_j`": the conditional law of the block is the
POINT-STARTED law at `X_{Theta_{j-1}}`, not the fixed `nu`-law. The two
agree in MARGINAL only after integrating `X_{Theta_{j-1}} ~ nu`; they do
NOT agree conditionally, and R2 never uses conditional agreement with
`nu`. Both `D_j` and `C_j` are such functionals `Phi(Blk_j)` (Section 3),
so (M4') applies to each.

(M5) `{N >= j} in G_j`, where `N := min{ j >= 1 : C_j }` (first crossing
block): `{N >= j} = intersection_{l=1}^{j-1} C_l^c`, and each `C_l`
(`l <= j-1`) is `Blk_l`-measurable, hence `F_{Theta_l}^xi`-measurable
`⊂ F_{Theta_{j-1}}^xi = G_j`. In particular `N` is a `G`-stopping time:
`{N = j} = {N >= j} ∩ C_j`, and `{N >= j} in G_j`, `C_j` block-`j`
measurable. (This measurability step is exact and independent of the
Finding-1 reroute: it uses only that `Blk_l`-functionals for `l <= j-1`
are measurable at the later stopped field `G_j`.)

## 5. Path-marked blocks (attaching the continuous segments and marks)

By (M4') the continuous blocks `(Blk_j)_{j>=1}` are, CONDITIONALLY ON
`G_j`, distributed as fresh point-started continuous excursions of `X`
from `X_{Theta_{j-1}} in S`, run until the next regeneration epoch. This
is the object M4 needed and M3 did not deliver: the regeneration is at the
SUCCESS epochs `Theta_j`, and the inter-skeleton continuous path segments
and the crossing marks `C_j` are carried inside `Blk_j`.

WHAT IS AND IS NOT CLAIMED (round-4 downgrade, checker Finding 2). The
round-3 assertion "`(D_j, C_j)_{j>=1}` are i.i.d." is WITHDRAWN. Two
reasons. First, i.i.d. would require independence of the block from `G_j`,
which is FALSE because `G_j` contains the block-start draw
`X_{Theta_{j-1}}` (M2); the honest conditional statement is the
point-started law (M4'). Second, the end-inclusive blocks
`(Theta_{j-1}, Theta_j]` share the regeneration endpoint and the seam
bridge is fixed by that shared draw (Section 3 seam note), so the
continuous marks are not shown mutually independent across blocks. The
MARGINAL law of each block is a `nu`-mixture of the point-started laws
(integrate `X_{Theta_{j-1}} ~ nu`, M3'), but this marginal identity is not
promoted to conditional independence anywhere. The one property carried
forward is the PER-BLOCK CONDITIONAL floor/bound of Sections 6-7, uniform
over the point-start `x in S`:

```text
P( C_j | G_j ) = P_{X_{Theta_{j-1}}}( C_1 ) >= p,
E[ D_j | G_j ] = E_{X_{Theta_{j-1}}}[ D_1 ] <= D_bar,
```

each holding pointwise for every `x in S` by M3-GS's pointwise-over-`U_{1/2}`
structure (`S subset U_{1/2}`). The only common law is `nu` at the
regeneration MARGIN; the intra-block dynamics run by `P^{T*}` off `S` and
by the state-dependent residual `R(Y_i, .)` at failed coins in `S`, and
neither is assumed common. This is exactly enough for the geometric and
Wald arithmetic (Sections 9-10), which consume only the two conditional
inequalities and `{N>=j} in G_j` — never inter-block independence.

The pre-`Theta_0` segment `[0, Theta_0]` is the INITIAL SEGMENT; it is
NOT a regeneration block (it starts at the arbitrary `q in D_k(eps)`, not
at a `nu`-margin regeneration), and its length `sigma_0` is the initial
delay, handled in Sections 10-11.

## 6. (P) — the per-block success floor

Conditional on `G_j`, block `j` starts at the `G_j`-measurable point
`X_{Theta_{j-1}} in S subset U_{1/2}`, and by strong Markov (M4') the
block is the point-started excursion from that point. `S subset U_{1/2}`
is the domain of the M3 ground-sandwich floor (M3-GS) and the LP.5 (a)+(b)
sandwich+crossing floor, which is stated POINTWISE over `U_{1/2}`: from
ANY start `x in U_{1/2}` one attempt gives a theta-label change with
probability `>= p`. The block contains at least one such attempt (its
length is `>= T*`), so, uniformly over `x in S`,

```text
P( C_j | G_j )  =  P_{X_{Theta_{j-1}}}( C_1 )  >=  inf_{x in S} P_x( C_1 )  >=  p,
p := c(delta) exp( -beta ( S_k - m_k + eps (S_k/kappa - w_k)
                           + C_w eps^2 + err(delta) ) ),           (P)
```

with `w_k := W*(G_k) = m_k/kappa` and `S_k/kappa` the two coefficients of
[23] S B.3 (never identified; lead amendment A1), `C_w := C_B + the LP.4b
(b)-chain constant` (symbolic), `c(delta)` beta-free. The FIRST equality is
strong Markov at `Theta_{j-1}` (M4'): conditional on `G_j`, `C_j` is the
event `C_1` for the point-started block from `X_{Theta_{j-1}}`; the
INEQUALITY is M3's per-round crossing floor, POINTWISE over `U_{1/2}` and
hence uniform over the base ball `S`. This is the round-4 correction of the
round-3 line `P(C_j|G_j) = P_nu(C_1)`: that equated the conditional law
with the fixed `nu`-law, which is false since the conditional start is the
`G_j`-measurable point `X_{Theta_{j-1}}`, not `nu`. The floor `p` is
recovered without the false step because it is UNIFORM over `S` and
`X_{Theta_{j-1}} in S` a.s.

## 7. (D) — the per-block duration bound

Conditional on `G_j`, by strong Markov (M4') `D_j` is the duration of the
point-started block from `X_{Theta_{j-1}} in S`, so
`E[ D_j | G_j ] = E_{X_{Theta_{j-1}}}[ D_1 ]`, a `G_j`-measurable random
variable depending on `G_j` only through the point `X_{Theta_{j-1}} in S`.
A block is a sequence of in-`R_0` relocate-or-change SUBCYCLES (LP.2 /
LP.4(ii)(1) on the sub-cap sector, LP.4(ii) on the band, PROCESS FORM:
order-one tracked probability as `beta -> infinity` at fixed `eps`, over
the beta-free horizons `T_1(eps, delta)`), interspersed with off-`R_0`
excursions, terminating at the next regeneration. The subcycle/excursion
bounds below are POINTWISE over starts `x in S subset U_{1/2}` (M3-GS
domain), so the conditional expectation is bounded UNIFORMLY over the
point-start:

```text
E[ D_j | G_j ]  =  E_{X_{Theta_{j-1}}}[ D_1 ]
                <=  sup_{x in S} E_x[ D_1 ]
                <=  T_1(eps, delta) . sup_{x in S} E_x[ #subcycles per block ]
                    + sup_{x in S} E_x[ off-R_0 time per block ]  =:  D_bar,   (D)
D_bar  =  T_1(eps, delta) exp( beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) )
          + T_row exp( -beta ( c_H/2 - err(delta) ) )
       <=  2 T_1(eps, delta) exp( beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) ),
Gamma(h)  :=  Gamma_orb(h) + Gamma_dens(h)  =  6 C_1 D_G h + 2 C_2 h^2  =  O(h),
```

for `beta` large (the excursion term is beta-SUPPRESSED,
`c_H/2 - err(delta) > 0` by the `c_H` ledger, hence dominated). Here
`Gamma_orb(h) = 6 C_1 D_G h` is the M5 airtight orbit-chain cost at the
product diameter `D_G = pi sqrt(2N)` (matched radii `sigma = h/2`,
`n = ceil(2 D_G/h)`; lane-minmig M5 `(M5.5b)`), `Gamma_dens(h) = 2 C_2 h^2`
the L1' small-set constant on `S` (A2 absorbed under `beta h^2 >= B`), and
`gamma_2 eps^2` the LP.4(ii)(2) relocate-chain cost per pass. `D_bar` is
`G_j`-uniform because `E[D_j|G_j] = E_{X_{Theta_{j-1}}}[D_1]` depends on
`G_j` only through `X_{Theta_{j-1}} in S` and the subcycle/excursion
bounds are UNIFORM over `x in S` (M4' + M3-GS pointwise) — NOT because any
residual law is common (correcting M4 `:1101`), and NOT because the block
is independent of `G_j` (correcting the round-3 `E[D_j|G_j] = E_nu[D_1]`).

TYPED INPUT (the finiteness of `D_bar`). The factor
`sup_{x in S} E_x[ #subcycles per block ] <= exp( beta ( Gamma(h) +
gamma_2 eps^2 + err(delta) ) )` — a.s.-finite blocks and the uniform
conditional expected subcycle count at the inverse-landing exponent,
UNIFORM over the point-start `x in S` — is the deliverable of the
stopped-retry / a.s.-return scaffold GAP-LP-RECUR (XM F3, round-3 R3),
CONSUMED here as a typed interface, not proved. This piece proves that the
round object supports the bound GIVEN that scaffold; F3 supplies the
scaffold. The off-`R_0` term is input (E). No other input enters `D_bar`.

## 8. (E) — the excursion consumption (PROD-EXCURSION, conditional on G_j)

Every exit from `R_0 := { w_theta = k, w_phi = 0, E_eps <= S_k + c_H }`
passes the doorway `{ E_eps > S_k + c_H }` (`Delta_phi` is level-blocked
inside `R_0` by the `c_H` ledger; a `Delta_theta` hit is the crossing).
ROW PROD-EXCURSION (lane-lp `:214-237`) bounds the expected time per round
spent OUTSIDE `R_0`, before re-entry to
`{ E_eps <= S_k + c_H, w_phi = 0 }` or a theta-label change, by
`T_row exp(-beta(c_H/2 - err(delta)))`, `T_row` beta-free, UNIFORMLY over
the round-start sigma-field. On the object of Sections 3-4 the round-start
sigma-field IS `G_j`, and the round is `Blk_j`; the contract is consumed
exactly as "conditional on `G_j`", supplying the off-`R_0` term of (D).
Because PROD-EXCURSION is stated uniformly over the round-start field, its
consumption is compatible with the strong-Markov reroute: the bound holds
for the point-started block from any `X_{Theta_{j-1}} in S`. This is the
only off-stratum ingredient (the `w_phi != 0` pinning tori `G_{k,j}` are
its burden, [23] S D) and is EXTERNAL — consumed as a contract, not proved
here.

## 9. (geometric) — E[N] <= 1/p

`N` is a `G`-stopping time (M5). Since
`{N >= j+1} = {N >= j} ∩ C_j^c`, `{N >= j} in G_j` (M5), and
`P(C_j^c | G_j) <= 1 - p` (P) — this last inequality is exactly the
per-block conditional floor, which survives the Finding-1 reroute because
it is proved through strong Markov (M4') and the pointwise-over-`S` floor,
NOT through any independence of `G_j`,

```text
P( N >= j+1 )  =  E[ 1_{N >= j} P( C_j^c | G_j ) ]  <=  (1 - p) P( N >= j ),
```

whence, with `P(N >= 1) = 1`, `P(N >= j) <= (1-p)^{j-1}`, i.e. `N` is
stochastically dominated by `Geometric(p)`, and

```text
E[ N ]  =  sum_{j >= 1} P( N >= j )  <=  sum_{j >= 1} (1-p)^{j-1}  =  1/p.   (geom)
```

The pull-out `E[ 1_{N >= j} P(C_j^c | G_j) ]` is licensed by
`{N >= j} in G_j` (M5); no inter-block independence is used, only the
conditional floor at each fixed `j`.

## 10. The Wald bound with the initial-delay term (every measurability step)

THE PATHWISE INEQUALITY (F2(e): the initial delay is included). The first
crossing is either in the initial segment `[0, Theta_0]` (event `C_0`,
where `tau_change^theta <= Theta_0 = sigma_0`) or in some regeneration
block; on `C_0^c` the first crossing block is `N` (`>= 1`, a.s. finite by
Section 11 modulo GAP-LP-RECUR) and the crossing time is
`<= Theta_N = sigma_0 + sum_{j=1}^N D_j`. Since all `D_j >= 0` and
`sigma_0 >= 0`, in every case

```text
tau_change^theta  <=  sigma_0 + sum_{j=1}^N D_j .                    (Wald-path)
```

(The old M4 sum was `sum_{i=1}^N D_i = sigma_N - sigma_0` and omitted the
positive `sigma_0` for arbitrary `q`; (Wald-path) restores it.)

THE EXPECTATION. Take `E_q` of (Wald-path). For the random sum, `N` is a
`G`-stopping time, `D_j >= 0`, `{N >= j} in G_j` (M5), and
`E[ D_j | G_j ] <= D_bar` (D — via strong Markov (M4') + uniform bound
over `S`, not via independence of `G_j`). By Tonelli (nonnegative
summands) and pulling the `G_j`-measurable indicator out of the
conditional expectation at each fixed `j`,

```text
E_q[ sum_{j=1}^N D_j ]
   =  sum_{j >= 1} E_q[ D_j 1_{N >= j} ]
   =  sum_{j >= 1} E_q[ 1_{N >= j} . E[ D_j | G_j ] ]          ( {N>=j} in G_j )
   <=  D_bar . sum_{j >= 1} P_q( N >= j )
   =  D_bar . E_q[ N ]
   <=  D_bar / p .                                              ( (geom) )
```

The equality `{N >= j} in G_j` is exactly what licenses pulling the
indicator out at fixed `j` — the load-bearing measurability step, and it
is exact (M5), independent of the Finding-1 reroute. The bound
`E[D_j|G_j] <= D_bar` is the rerouted (D). Hence

```text
E_q[ tau_change^theta ]  <=  E_q[ sigma_0 ]  +  D_bar / p .          (Wald)
```

[E5 MIN-OBJECT RESTATEMENT - RECORD ONLY, 2026-08-02. EXTERNALLY SIGNED
(XE-14 SOUND, 2026-08-02) at the min-object/rate boundary. No constant, exponent, threshold or display moves; the (Wald)
display above is NOT withdrawn and nothing in it moves. THE A6 FENCES ARE
UNTOUCHED BY THIS NOTE: this file's status-surface fence clause (the bracketed
clause beginning "THIS STATUS SURFACE IS GOVERNED BY THE A6 FENCE"), this
file's GAP-LP-RECUR register entry (status label "OPEN AT A6 STRENGTH") with
its SUPERSESSION NOTE, and lane-lp-product-saddle-v1.md's Theorem LP.5 header
with its XE-8 RELEASE FENCE.
ANCHOR CONVENTION OF THIS NOTE: every reference below is BY NAME - row name,
label name, or verbatim quoted text - and NOT by line number, so that landing
this note cannot make its own citations stale.
E5 (P1 draft, lane-e5-gaplprecur-v1.md) supplies the initial-delay summand at
the MIN OBJECT rather than at sigma_0, as the INEQUALITY

   E_q[ tau_change^theta ]  <=  E_q[ D(0) ^ L_0 ]  +  D_bar' / p .  (WALD-MIN)

THE BRANCH CONVENTION, PINNED AND DISPLAYED ONCE. Write N_x for the
FIRST-CROSSING ROUND INDEX - the index this file's round-sum decomposition
writes N, in the sentence beginning "Wald / duration sum. Write tau :=
tau_change^theta = sigma_0 + sum_{i=1}^{N} D_i" - so that it is never read for
the dimension parameter N of dim M = 2N. On {L_0 < D(0)},
tau_change^theta = L_0 = D(0) ^ L_0 and NO round starts: the convention is
N_x := 0 (empty sum). On {D(0) <= L_0}, sigma_0 = D(0) = D(0) ^ L_0 and that
round-sum identity holds unchanged.
THE RESTATEMENT IS AN INEQUALITY, NOT AN IDENTITY: the round-sum decomposition
as printed is an identity FALSE on the first branch. This is LEAD AMENDMENT
A7's own direction, with the initial-delay summand tightened from sigma_0 to
sigma_0 ^ L_0, and the duration object is D_bar' - the object R6b.4's
within-round duration display mints on the line ending "=:  D_bar'", and the
one R6b.4's own closing sentence already runs the Wald arithmetic with,
verbatim: "closes verbatim with D_bar' in place of D_bar".
REGISTER HONESTY, BOTH HALVES. The EXPECTATION of the full D(0) goes
TYPED-UNCONSUMED. Its A.S. FINITENESS stays CONSUMED and is landed in R5a's
round-object section, verbatim: "Each S-return time is therefore a.s. finite
from anywhere in U" - it is what makes X_{sigma_0} in S and the rounds
i >= 1 well-posed.
STATUS: EXTERNALLY SIGNED (XE-14 SOUND, 2026-08-02) at the narrow
min-object/rate boundary. This note RECORDS the restatement; it lifts no
fence - every A6 fence stands verbatim.]

No common regeneration LAW beyond the uniform conditional floor `p` and
bound `D_bar` is used; both come from the strong Markov property at the
regeneration epoch (M4') and the pointwise-over-`S` floor/bound of M3,
the SUCCESS law `nu` being the only common one (and only in the MARGIN,
M3'). In particular the advertised "every measurability step explicit" now
holds: the only steps used are (M1) `Theta_j` stopping, (M2) `G_j`
stopped-field (containing the draw, hence handled by strong Markov not
independence), (M5) `{N>=j} in G_j`, and the two pointwise-over-`S`
conditional inequalities — no false conditional independence appears.

## 11. The initial delay does not change the rate

[XE-8 RELEASE FENCE - GAP-LP-RECUR @ A6, SECTION-GOVERNING NOTE. 2026-08-01.
Executes AM-R5-27(c4) item 1 (and item 7) / XE-6 RECORD (c4) item (2), carried
as TYPED row T-19 at lane-prodexc-v2.md:3101 with status "UNLANDED in MM's
bytes". No constant, exponent, threshold or display moves. Section 11's
construction stands as printed.

WHAT THIS NOTE GOVERNS. The whole of Section 11, MM:2494-2539, and in
particular its two displays: MM:2520-2524 (the A6-interface limsup for
E_q[sigma_0]) and MM:2531-2535 (the assembled limsup for
E_q[tau_change^theta], i.e. LP.5's upper at this printing). The span also
contains MM:2527's positivity clause, which is governed here.

THE CONDITION, verbatim from the landed instrument PIECE SIGMA0-DECLAIM v2 /
CURE-XE5-4 v3 (PX:22482-22486): "Both displays are CONDITIONAL ON
GAP-LP-RECUR at the strength typed at MM:3163 as amended by LEAD AMENDMENT A6
(MM:3169-3177), i.e. at A6's adopted ROUND-SUM-rate interface form. Neither
display is withdrawn. No constant, exponent, threshold or display moves.
Section 11's construction stands as printed."

WHY, BY THIS SECTION'S OWN BYTES. MM:2516-2517 verbatim: "Its finiteness is
the same GAP-LP-RECUR interface as (D) (a.s. first return to `S` between
failed coins, plus the LP.4 initial descent)." The (init) display at
MM:2507-2509 therefore routes its finiteness through a TYPED, UNDISCHARGED
external row; MM:2531-2532 then consumes MM:2520-2524 inside its max. A
display whose exponent is supplied by a typed row is conditional on that row,
and so is a display that consumes it.

WHY THE CONDITION IS LIVE. GAP-LP-RECUR's landed statement at MM:3163 ends,
verbatim: "Until R5b furnishes it, the LP.5(c) upper limsup is conditional on
GAP-LP-RECUR at exactly this strength." MM:3163 also names the row "the
GAP-LP-RECUR row the register honestly lists REOPENED". The claims to have
furnished it, named: R6b Section 5's display and its A6-satisfaction sentence
(MM:4242-4253), WITHDRAWN by CURE-XE5-4 v2 (PX:22498-22502); R5b Section 6's
closure claim (MM:3328), WITHDRAWN by the same instrument, whose beta-free
T_exit input at MM:3320 is moreover STILL PRESENT in the bytes (see the
reconciliation note landed there). A6 is not amended, its named site is not
re-pointed, and its obligation is LIVE.

THE PARTIAL, NAMED. ROW SIGMA0-EXC (PX:17087-17117) at (TIER-A6) covers the
OFF-R_0 occupation of the window [0, min(D(0), L_0)] only, and is itself
TYPED, not proved. It does not cover the IN-R_0 occupation of that window,
and it does not cover D(0) beyond it. The remainder is GAP-LP-RECUR's.

THE SITES THIS FENCE TIES TOGETHER, BY NAME (this names the sites landed
under the fence; it is not a closed inventory of Section 11's consumers).
(1) The two Section-11 printings above, each carrying the conditionality
marker at its own anchor, plus the discharge withdrawal at MM:2538-2539.
(2) MM:3320, whose beta-free T_exit assertion is still in the bytes although
MM:4258 says it "is removed" - reconciliation note landed at that site.
(3) The R6b register trio MM:4260 / MM:4264 / MM:4268, each disposed at its
own anchor with its CURE-XE4-4 pointer. (4) The typed-gap register entry for
GAP-LP-RECUR, whose "DISCHARGED-IN-ARTIFACT" label is superseded and restored
to MM:3163's landed state. (5) This note.

WHY THE FENCE IS SEPARATE FROM THE NARROW E2 QUESTION. XE-8, verbatim: "The
Section-7 c4 record is correct that `GAP-LP-RECUR` does not bind the narrow
ordinary `i>=1` E2 display, but it remains unresolved for the package/full
`LP.5(c)` upper." And: "Meanwhile `lane-lp-product-saddle-v1.md:758-773`
conditions LP.5 only on the two PROD rows. Flipping those rows now would
therefore make the full upper read unconditional without curing or preserving
the A6 fence." And the fence sentence itself: "A future narrow discharge can
remain separable only if the full-upper `GAP-LP-RECUR @ A6` condition is
explicitly preserved." This note is that explicit preservation, landed in MM's
own bytes as the instrument's own rule requires (PX:20903-20906, quoted at
PX:22464-22466): "A supersession asserted in one lane file and unmarked in the
other is not a supersession."

WHAT IS NOT ASSERTED HERE. Nothing about what A6 requires beyond quoting its
adopted form; nothing about which site should furnish GAP-LP-RECUR; nothing
about the size of any margin between the initial-delay exponent and the
round-sum rate. NO SUPERSESSION IS ASSERTED: Section 11 keeps its landed
status.]

`sigma_0 = Theta_0 = (R_0 + 1) T*`, with `R_0` the first skeleton success
index from `q in D_k(eps)`. From `q`, the process first descends into the
ground tube and relaxes into `U_{1/2}` (RELAX, beta-free horizon
`T_init(eps, delta)`, order-one probability as `beta -> infinity`; LP.4
process form, M3 `:751-771`), then reaches `S` and draws coins until the
first success (`Bernoulli(m)` per `S`-visit). Hence `R_0` is
stochastically dominated by `K_init + Geo(m)` skeleton steps, where
`K_init` is the beta-free initial relocation count (its per-pass landing
in `S` costing the same inverse-landing factor as a subcycle), and

```text
E_q[ sigma_0 ]  <=  T* ( E[ K_init ] + 1/m + 1 )
             <=  T_init(eps, delta) exp( beta ( Gamma(h) + gamma_2 eps^2
                                                + err(delta) ) ),        (init)
```

using `1/m = (p_chain m_1 Leb(S))^{-1} = beta^{-N} c_0'^{-1} Leb(S)^{-1}
exp( beta ( 2 C_1^eps n h^2 + C_2^eps O(delta^2) ) )`, whose exponential
order is `Gamma(h) = O(h)`. Crucially, reaching `S` from `q` is a
GROUND-TUBE event; it does NOT pay the saddle barrier `S_k - m_k`. Its
finiteness is the same GAP-LP-RECUR interface as (D) (a.s. first return to
`S` between failed coins, plus the LP.4 initial descent). Therefore

```text
limsup_{beta -> infinity} beta^{-1} log E_q[ sigma_0 ]
   <=  Gamma(h) + gamma_2 eps^2 + err(delta)
   <   S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + Gamma(h)
        + gamma_2 eps^2 + 2 err(delta)
   =   limsup_{beta -> infinity} beta^{-1} log ( D_bar / p )
```

[CONDITIONAL on GAP-LP-RECUR at A6 strength per MM:3163; the sigma_0 summand
rides the typed row - XE-8 release fence. This is the A6-interface printing,
MM:2520-2524. Its right-hand side "Gamma(h) + gamma_2 eps^2 + err(delta)" is
read off the (init) display at MM:2508-2509, whose finiteness MM:2516-2517
routes through GAP-LP-RECUR verbatim: "Its finiteness is the same
GAP-LP-RECUR interface as (D)". The display is NOT withdrawn and nothing in
it moves; it is conditional. Governed by the Section-11 header note at
MM:2494.]

(the strict `<` because `S_k - m_k > 0`). So in (Wald), taking
`beta -> infinity` at fixed `(eps, delta, h)`,

```text
limsup_{beta -> infinity} beta^{-1} log E_q[ tau_change^theta ]
   <=  max( limsup beta^{-1} log E_q[sigma_0], limsup beta^{-1} log (D_bar/p) )
   =   S_k - m_k + eps(S_k/kappa - w_k) + (C_w + gamma_2) eps^2
        + Gamma(h) + 2 err(delta),
```

using `log(a+b) <= log 2 + max(log a, log b)` and `beta^{-1} log 2 -> 0`.

[CONDITIONAL on GAP-LP-RECUR at A6 strength per MM:3163; the sigma_0 summand
rides the typed row - XE-8 release fence. This is the assembled limsup,
MM:2531-2535, i.e. LP.5's upper at this printing. Its max reads
"limsup beta^{-1} log E_q[sigma_0]" as an argument, so it inherits
MM:2520-2524's conditionality; PX:22450-22454 records the two displays as
standing "in premise/conclusion relation", which is why neither is superseded
and both are conditioned. The display is NOT withdrawn and nothing in it
moves. Governed by the Section-11 header note at MM:2494.]
The initial delay is included in the object ADDITIVELY. The further claims
- that it is 'shown not to raise the rate' and that 'F2(e) [is] discharged
rigorously, not by omission' - are WITHDRAWN (CURE-XE5-4 v3, 2026-07-27;
LANDED 2026-08-01 under the XE-8 release fence). The non-domination reading
is conditional on GAP-LP-RECUR at A6's adopted form (MM:3163, MM:3169-3177),
which is undischarged; F2(e) stands OPEN at that conditionality.

[SUPERSEDED TEXT AT THIS SITE, VERBATIM: "The initial delay is thus genuinely
included in the object and shown not to raise the rate — F2(e) discharged
rigorously, not by omission." THE INSTRUMENT'S OWN REASON, verbatim
(PX:22468-22469): "One further edit is NOT optional and is not a
conditionality marker: MM:2538-2539 prints a DISCHARGE claim, and no marker
rescues a discharge." The replacement wording above is the instrument's,
verbatim from PX:22520-22525. No constant, exponent, threshold or display
moves.]

## 12. Order of limits and the assembled window

`beta -> infinity` FIRST at fixed `(eps, delta, h)` — every horizon
`T_1, T_init, T_row, T_cone(eps) = O(log 1/eps)`, every tracked-probability
floor, and the beta-free orbit-chain prefactor `1/c(h) = exp((2 D_G/h)
log(1/c_0))` are beta-free at fixed `(eps, h)`, and the diffusive floor
`beta h^2 >= B` of L1 / L1' / M5 (`beta_0(h) = O(h^{-2})`) is respected;
`h` is NEVER sent to 0 before `beta`, and the M5 corollary fixes `h`
(hence `n = ceil(2 D_G/h)`, hence `T*`) before `beta` ([23] S C). THEN
`delta -> 0` and `h -> 0` (removing `err(delta)`, `Gamma(h) = O(h)`, and
the beta-free `1/c(h)`). ONLY AFTERWARDS the small-`eps` reading:

```text
limsup_{beta -> infinity} beta^{-1} log E_q[ tau_change^theta ]
   <=  S_k - m_k + eps (S_k/kappa - w_k) + C eps^2 ,   C := C_w + gamma_2,
```

for fixed `0 < eps < eps_2` and `q in D_k(eps)` — the LP.5 upper window,
now carried on ONE regenerative round object (path-marked continuous
blocks, common restart law `nu` in the MARGIN, state-dependent residual
`R`, single base ball `S = B_{delta/4}(g*)`, one augmented filtration
`(F_t^xi)`, explicit initial delay `sigma_0`), with the per-block floor and
bound justified by STRONG MARKOV at the regeneration epoch and the
pointwise-over-`S` M3 floor — never by an independence of the block-start
field `G_j` (which contains the draw). CONDITIONAL on GAP-LP-RECUR (the
a.s.-return / stopped-retry scaffold, F3) and on PROD-EXCURSION (external,
input E). With LP.3 the `O(eps)` window is two-sided modulo those rows;
LP.3's lower side is unaffected. QED (modulo the two typed rows).

## M3M4-round-object — consumed

M3 SPLIT interface (lane-minmig M3 `:790-865`): the `(m, T*, nu)` small
set `S = B_{delta/4}(g*)` uniform over `U_{1/2}` (M3-MINOR), the
Athreya-Ney-Nummelin split with fixed common restart law `nu` and
state-dependent residual `R(x, .)`, the SUCCESS indices `R_j` with
`Y_{R_j+1} ~ nu` independent of the PRE-DRAW DISCRETE field `G_{R_j}^disc`
(lane-minmig `:823-831` — this is the exact and only independence M3
supplies; consumed in (M3') for the MARGINAL `nu`-law, never applied to a
field containing the draw), the per-round crossing floor `p` POINTWISE
over `U_{1/2}` (hence measurable and uniform at the block-start field via
strong Markov), and the RELAX reachability of `S` from `D_k(eps)` at
order-one beta-free probability. | STRONG MARKOV of `X` at the augmented
stopping time `Theta_{j-1}` (textbook, hypotheses checked: `(F_t^xi)`
right-continuous complete, `Theta_{j-1}` an `(F_t^xi)`-stopping time by
(M1)): the conditional-law reroute (M4') replacing the false round-3
independence of `G_j`. | M5 orbit chain `(M5-MAIN)` + `(M5.5b)`
(lane-minmig M5): `Gamma_orb(h) = 6 C_1 D_G h` at `D_G = pi sqrt(2N)`,
matched radii `sigma = h/2`, `n = ceil(2 D_G/h)`, base-ball radius
`r_S = h/2`. | L1' (lane-sh2local, A4 half-time input + A5
corridor-qualified free-density form): the base-ball small-set mass `m_1`
on `S` and `Gamma_dens(h) = 2 C_2 h^2`. | LP.2 / LP.4(ii)(1)(2) / LP.4a
(lane-lp): the in-`R_0` relocate-or-change duration machinery, PROCESS
FORM, beta-free horizon `T_1(eps, delta)`, relocate cost `gamma_2 eps^2`.
| LP.5(a) sandwich (`C_B`) + LP.5(b) crossing chain (lane-lp): the
crossing-floor exponent `p`. | PROD-EXCURSION (lane-lp `:214-237`): the
off-`R_0` excursion-time contract `T_row exp(-beta(c_H/2 - err(delta)))`,
uniform over the round-start field — EXTERNAL typed row. | GAP-LP-RECUR
(lane-minmig tail; XM F3): the a.s.-return / stopped-retry scaffold giving
a.s.-finite blocks/`sigma_0` and the uniform conditional expected subcycle
count, UNIFORM over the point-start `x in S` — typed, consumed. | [23] S
B.3 (`w_k = W*(G_k) = m_k/kappa` and `S_k/kappa` never identified; A1), S
C (one metric per consumer, product diameter `pi sqrt(2N)`), S D.2
(regeneration migration: Nummelin split against a fixed base-ball law;
strong Markov alone insufficient for the OBJECT, but strong Markov IS the
correct tool for the per-block CONDITIONAL floor/bound once the object
exists), S D.3 (the local small-set cost counted explicitly, not hidden in
"Markov"). | `c_H` ledger, `gamma_2`, `C_w = C_B + LP.4b(b)-chain`, `T_1`,
`T_row`, `T_init` (LP constants ledger; named-and-bounded).

## M3M4-round-object — typed gaps

GAP-LP-RECUR (consumed, NOT discharged here; XM F3, round-3 R3 target):
almost-sure return to `S` between failed coins, a.s.-finiteness of the
blocks `Blk_j` and of the initial delay `sigma_0`, and the uniform
conditional expected subcycle count
`sup_{x in S} E_x[#subcycles per block] <= exp(beta(Gamma(h) +
gamma_2 eps^2 + err(delta)))` via a stopped-retry scaffold with controlled
post-failure state. This piece PROVES the round object and the composition
(P, D, E, geometric `E[N] <= 1/p`, Wald with initial delay, every
measurability step) GIVEN this scaffold; it does not construct the
scaffold. If GAP-LP-RECUR is not discharged, `D_bar`, `E_q[sigma_0]`, and
hence (Wald) are conditional. | PROD-EXCURSION (external typed row,
lane-lp): input (E), consumed as a contract, not proved (the `eps > 0`
critical structure above the band and the whole `w_phi != 0` stratum, with
the `G_{k,j}` pinning tori, are unclassified). The assembled LP.5 upper —
and the two-sided window — remain conditional on PROD-EXCURSION and on the
completion of LP-MIN-MIG (of which this is the third call site; the
ground-sandwich M3 and the orbit-chain M5 are its siblings). | NON-GAP
(recorded design invariants): (i) the split residual kernel `R(x, .)` is
state-dependent; the per-block floor/bound uses ONLY the SUCCESS law `nu`
at the regeneration MARGIN and the pointwise-over-`S` M3 floor via strong
Markov, never a common residual (correcting M4 `:1093`, `:1101`). (ii) the
block-start field `G_j = F_{Theta_{j-1}}^xi` CONTAINS the fresh draw
`X_{Theta_{j-1}} = Y_{R_{j-1}+1}`, so the block is NOT independent of `G_j`
and no such independence is claimed; M3's regeneration independence is of
the strictly smaller PRE-DRAW discrete field `G_{R_{j-1}}^disc` and is used
only for the MARGINAL `nu`-law; the conditional floor/bound go through
strong Markov (correcting round-3's false `P(C_j|G_j)=P_nu(C_1)`,
`E[D_j|G_j]=E_nu[D_1]`, and the "i.i.d. blocks" over-claim). (iii) the
single base ball is `S = B_{delta/4}(g*)`, radius `r_S = delta/4 = h/2`,
used identically in L1's landing ball, the L1' small set, `nu`, and every
duration formula; the radius `h = delta/2` is the L2 chain scale only,
never a base ball (correcting A3). These are design invariants, not gaps.

### consumed

M3 SPLIT interface (lane-minmig M3 :790-865): (m,T*,nu) small set S=B_{delta/4}(g*) uniform over U_{1/2} (M3-MINOR); Athreya-Ney-Nummelin split, fixed common restart law nu, state-dependent residual R(x,.); SUCCESS indices R_j with Y_{R_j+1}~nu independent of the PRE-DRAW DISCRETE field G_{R_j}^disc (lane-minmig :823-831 — the exact and only independence M3 supplies; used in (M3') for the marginal nu-law only, never on a field containing the draw); per-round crossing floor p POINTWISE over U_{1/2}; RELAX reachability of S from D_k(eps) at order-one beta-free probability. | STRONG MARKOV of X at the augmented stopping time Theta_{j-1} (hypotheses checked: (F_t^xi) right-continuous complete, Theta_{j-1} an (F_t^xi)-stopping time by (M1)): the conditional-law reroute (M4') that replaces the false round-3 independence of G_j — the round-4 load-bearing correction. | M5 orbit chain (M5-MAIN)+(M5.5b): Gamma_orb(h)=6 C_1 D_G h at D_G=pi sqrt(2N), matched radii sigma=h/2, n=ceil(2 D_G/h), r_S=h/2. | L1' (lane-sh2local, A4+A5): small-set mass m_1 on S, Gamma_dens(h)=2 C_2 h^2. | LP.2/LP.4(ii)(1)(2)/LP.4a (lane-lp): in-R_0 relocate-or-change duration machinery, PROCESS FORM, beta-free T_1(eps,delta), relocate cost gamma_2 eps^2. | LP.5(a) sandwich (C_B) + LP.5(b) crossing chain: crossing-floor exponent p. | PROD-EXCURSION (lane-lp :214-237): off-R_0 excursion-time contract T_row exp(-beta(c_H/2-err(delta))), uniform over the round-start field — EXTERNAL typed. | GAP-LP-RECUR (lane-minmig tail; XM F3): a.s.-return/stopped-retry scaffold giving a.s.-finite blocks/sigma_0 and the uniform-over-x-in-S conditional expected subcycle count — typed, consumed. | [23] S B.3 (w_k=W*(G_k)=m_k/kappa and S_k/kappa never identified; A1), S C (one metric, product diameter pi sqrt(2N)), S D.2 (Nummelin split against fixed base-ball law), S D.3 (local small-set cost explicit). | c_H ledger, gamma_2, C_w=C_B+LP.4b(b)-chain, T_1, T_row, T_init (LP constants ledger).

### typed gaps

GAP-LP-RECUR (consumed, NOT discharged; XM F3, round-3 R3 target): almost-sure return to S between failed coins, a.s.-finiteness of blocks Blk_j and initial delay sigma_0, and the uniform conditional expected subcycle count sup_{x in S} E_x[#subcycles per block] <= exp(beta(Gamma(h)+gamma_2 eps^2+err(delta))) — now stated UNIFORM over the point-start x in S, matching the strong-Markov reroute — via a stopped-retry scaffold with controlled post-failure state. This piece proves the round object and the composition (P, D, E, geometric E[N]<=1/p, Wald with initial delay, every measurability step) GIVEN this scaffold; it does not construct it. If undischarged, D_bar, E_q[sigma_0], and hence (Wald) are conditional. | PROD-EXCURSION (external typed row, lane-lp :214-237): input (E), consumed as a contract, not proved (the eps>0 critical structure above the band and the whole w_phi!=0 stratum, with the G_{k,j} pinning tori, are unclassified). The assembled LP.5 upper — and the two-sided window — remain conditional on PROD-EXCURSION and on completion of LP-MIN-MIG (this being the third call site; M3 ground-sandwich and M5 orbit-chain are siblings). | NON-GAP (design invariants, recorded): (i) split residual R(x,.) is state-dependent; the per-block floor/bound uses ONLY the SUCCESS law nu at the regeneration MARGIN plus the pointwise-over-S M3 floor via strong Markov, never a common residual (correcting M4 :1093,:1101). (ii) the block-start field G_j=F_{Theta_{j-1}}^xi CONTAINS the fresh draw X_{Theta_{j-1}}=Y_{R_{j-1}+1}, so the block is NOT independent of G_j and no such independence is claimed; M3's regeneration independence is of the strictly smaller PRE-DRAW discrete field G_{R_{j-1}}^disc and is used only for the marginal nu-law; the conditional floor P(C_j|G_j)=P_{X_{Theta_{j-1}}}(C_1)>=p and bound E[D_j|G_j]=E_{X_{Theta_{j-1}}}[D_1]<=D_bar go through strong Markov at Theta_{j-1} (correcting round-3's false P(C_j|G_j)=P_nu(C_1), E[D_j|G_j]=E_nu[D_1], and the withdrawn "i.i.d. blocks" over-claim; the marks are not shown inter-block independent because end-inclusive blocks share the seam-bridge draw). (iii) single base ball S=B_{delta/4}(g*), radius r_S=delta/4=h/2, used identically in L1's landing ball, L1' small set, nu, and every duration formula; radius h=delta/2 is the L2 chain scale only, never a base ball (correcting A3).


---

# R3 — the stopped retry scaffold + a.s. return (discharges XM F3)

(round grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE)

# R3 — THE STOPPED RETRY SCAFFOLD AND ALMOST-SURE RETURN (LP-MIN-MIG)

*Repairs XM finding F3 (MAJOR): "M3 recurrence and M4 expected-duration bounds are asserted, not proved." It supplies the object M4's inputs (D) [duration] and, via a.s. termination, the well-posedness of (P) [per-round crossing floor] rest on: the stopped subcycle sequence, the explicit recovery step after every non-success, almost-sure S-return with a quantitative geometric budget, and the uniform conditional expected round-duration at the claimed exponent. It counts the local small-set cost explicitly (COORDINATION [23] §D.3), never hiding it inside the word "Markov" and never substituting a qualitative-ellipticity return for the rate-accounted budget. It builds NO regeneration law and NO global minorization: the common law `nu` and the one round object are R2's burden (F2), consumed here as a stated contract; the off-`R_0` recovery is PROD-EXCURSION's burden, consumed here as the external expectation-shaped row.*

---

## 0. THE CONSUMED CONTRACT (R2's round object; stated as the interface, not re-derived)

The round-3 sibling R2 (XM finding F2 repair) constructs ONE common, path-marked regenerative round object joining the M3 skeleton splits to the M4 continuous return/Wald construction. R3 consumes exactly the following interface and nothing more. Where R2's grade regresses, this piece inherits that downgrade automatically (single consistent framing, as in lead amendment A2).

Fix `eps in [0, eps_2)`, an admissible winding `k` (C1-SUB(`k`)), a start `q in D_k(eps)`, and a hop scale `h` with `0 < h <= r0/8`, bound to the RELOCATE radius by `h := delta/2` (M3's lock). Read all balls and `dist(., G_k)` in the ONE product-Euclidean metric of the flat orbit `G_k = C_k^theta x C_0^phi` (COORDINATION [23] §C; the metric M5 is derived under). R2 supplies:

```text
(R2-BALL)   ONE base ball  B_0 := B_{h/2}(g_0),  g_0 in G_k, with the M5
            landing radius h/2 (M5-MAIN lands in B_{h/2}); its exit collar
            B_0^+ := B_h(g_0) ⊃ B_0. ONE radius family — the A3 double
            radius (B_{delta/2} vs B_{delta/4}) that XM F2 voided is gone.
(R2-REACH)  the chain-hypothesis subtube  U_ch := { dist(., G_k) <= h }
            = M3's U_{1/2} at h = delta/2 (M5's start hypothesis
            dist(x, G_k) <= h); B_0 ⊂ U_ch ⊂ U := T_{r0}(G_k).
(R2-RET)    a first-exit/return convention: a REGENERATION of round i is
            the first entrance to B_0 that follows an intervening exit
            from the collar B_0^+ after the round start — so the round
            terminus is a strict, nontrivial hitting time and cannot equal
            the start time (the XM F2 "next entrance = start time" defect
            is closed at the object level, not here).
(R2-TIME)   round-start times  sigma_0 < sigma_1 < ... , with
              sigma_0 := the first regeneration after the initial
                         relocation of q into B_0 (the INITIAL-DELAY term,
                         carried; sigma_0 - 0 > 0 for arbitrary q, so the
                         omitted-initial-relocation defect of XM F2 is
                         held by R2, not swept),
              sigma_i := the terminus of round i (>= 1): the first of
                         (r) a regeneration into B_0 (per R2-RET), or
                         (x) a theta-label change (crossing),
                         whichever occurs first after sigma_{i-1}.
(R2-FILT)   ONE augmented round filtration  G_i := F_{sigma_{i-1}}
            (augmented by the Nummelin split coins when the SPLIT route is
            used); the SDE is autonomous, so strong Markov holds at each
            sigma_i.
(R2-FLOOR)  the round-start law on B_0 is the fixed normalized-volume law
            nu := Leb|_{B_0} / Leb(B_0); on a regeneration the post-
            sigma_{i-1} round law dominates alpha(beta,h) . nu with
            alpha(beta,h) = m(beta,h) Leb(B_0) the L1' small-set mass
            (SPLIT), OR the per-round bounds hold conditional on G_i
            uniformly over G_i-measurable data (FLOORS). R3 closes on the
            FLOORS reading alone; the SPLIT law nu is used by M4's (P),
            not by (D).
(R2-CROSS)  the per-round CROSSING FLOOR interface (input (P) to M4): from
            a nu-distributed (or B_0-uniform) round start, the (a)+(b)
            sandwich+crossing floor of LP.5 gives a per-round crossing
            probability >= p, uniform over blocks and measurable at G_i.
            (This is M4's (P); R3 does not re-prove it — it uses only that
            p > 0 is a per-round conditional floor.)
```

R3's deliverable is input **(D)** to M4 — the uniform conditional expected round duration `E[D_i | G_i] <= D_bar` — together with the a.s. finiteness of every `sigma_i` (hence of the regeneration epochs and of `N`, the first-crossing round). The off-`R_0` occupation is consumed as the external row **(E)**:

```text
(E = PROD-EXCURSION, EXTERNAL, consumed not proved).  With
  R_0 := { w_theta = k, w_phi = 0, E_eps <= S_k + c_H },
the expected time per round spent OUTSIDE R_0, before the excursion
re-enters { E_eps <= S_k + c_H, w_phi = 0 } OR changes the theta-label,
is <= T_row(eps, delta) exp(-beta (c_H/2 - err(delta))), T_row beta-free,
uniformly over G_i (lane-lp ROW PROD-EXCURSION, lane-lp:214-221;
COORDINATION [23] §D).
```

The excursion SHAPE (an additive expected-time budget), not a probability floor, is exactly what composes here (lane-lp wave-2: a probability-floor row does NOT compose, because on its complement the process pins on a `G_{k,j}` trap with no return floor). The `w_phi != 0` pinning tori `G_{k,j}` are real traps in `R_0^c` and are PROD-EXCURSION's burden, never claimed to carry a local floor (COORDINATION [23] §D: "Nothing local gives a theorem for starts with `w_phi != 0`"). Note that PROD-EXCURSION itself lists the theta-label change as one of the two ways an off-`R_0` excursion ends (lane-lp:220-221); the scaffold below registers that crossing as a round terminus wherever in the pass it occurs.

---

## 1. THE STOPPED SUBCYCLE SEQUENCE (definitions; conditioning fields explicit; any-time crossing terminates)

Work inside a single round `i`, on the event `{N >= i}` (round `i` reached, not yet crossed). We build, as a nondecreasing sequence of `(F_t)`-stopping times, the retry scaffold that the round runs until it terminates. **The scaffold matches the consumed R2-TIME exactly: a theta-crossing terminates the round at ANY time — during a phase-A recovery excursion no less than during a phase-B window — never being dropped.**

A **subcycle** is one recovery-then-attempt pass: bring the state (from wherever a previous non-success left it) back into the floor domain `R_0` — OR register a crossing that has occurred meanwhile — then run one RELAX descent + relocate + orbit chain + base-ball landing attempt over a beta-free horizon `T_sub`. Set `kappa_0 := sigma_{i-1}` (the round start, with `X_{kappa_0} in B_0 subset R_0` by R2-TIME/R2-FLOOR). Write

```text
   rho_i := inf{ t > sigma_{i-1} : the theta-label has changed }
```

for the first-crossing time of round `i` (an `(F_t)`-stopping time; it may fall in any phase). Given `kappa_m` with the round not yet terminated at `kappa_m`, define:

```text
PHASE A (recovery to the floor domain, OR a crossing has intervened):
   alpha_m := inf{ t >= kappa_m : X_t in R_0  OR  the theta-label
                   has changed since sigma_{i-1} }
              (= kappa_m if X_{kappa_m} in R_0; a hitting time of the
               closed set R_0 UNION the (already-triggered) crossing
               event, hence an (F_t)-stopping time; note
               alpha_m <= rho_i always, so a crossing is never outrun
               by an unbounded recovery wait).
PHASE B (one landing attempt, beta-free window):
   kappa_{m+1} := alpha_m + T_sub,   T_sub := T_relax(eps,delta) + T*(h),
   T*(h) := n + 1,  n := ceil(2 D_G / h) = ceil(4 pi sqrt(2N)/delta)
            (the M5 chain length; beta-free), all beta-free.
SUBCYCLE SUCCESS (of subcycle m):  the event
   Succ_m := { regeneration into B_0 during (alpha_m, alpha_m + T_sub] }
             ∪ { the theta-label has changed by time alpha_m + T_sub }.
             (the second disjunct fires for ANY crossing at or before the
              end of this subcycle — phase A or phase B — so no crossing is
              silently dropped; cf. R2-TIME route (x).)
```

The **round terminus** is defined to coincide with the consumed R2-TIME. Writing

```text
   rho_reg := inf{ alpha_m + T_sub-marked regeneration epoch :
                   a regeneration into B_0 occurs during
                   (alpha_m, alpha_m + T_sub] }
```

for the first phase-B regeneration success (route (r)), set

```text
   sigma_i := min( rho_reg, rho_i ),
```

the first of a phase-B regeneration (S-return, route (r)) OR an any-time theta-crossing (route (x)), whichever occurs first after `sigma_{i-1}` — identical to R2-TIME. In particular a crossing during a phase-A recovery excursion terminates round `i` at that crossing time `rho_i`; it is registered, not lost (this closes the divergence XM's checker flagged between the as-written scaffold and the consumed R2-TIME). The **subcycle count** is

```text
M_i := min{ m >= 1 : Succ_m occurs }   (the number of subcycles to
                                         terminate round i).
```

Because `Succ_m` fires on either a phase-B regeneration or a crossing by the end of subcycle `m`, and `sigma_i = min(rho_reg, rho_i)`, we have `sigma_i` occurring within subcycle `M_i`: on route (r) it is that subcycle's regeneration epoch, on route (x) it is `rho_i <= alpha_{M_i} + T_sub`.

**Conditioning fields (explicit).** The subcycle filtration is `H_m := F_{alpha_m}` (the state at the phase-B start of subcycle `m`, or the crossing time if a crossing has intervened); the round-start field is `G_i = F_{sigma_{i-1}}` (R2-FILT). Each `alpha_m` and `kappa_m` is an `(F_t)`-stopping time; `rho_i` is an `(F_t)`-stopping time; `Succ_m in F_{kappa_{m+1}} = F_{alpha_m + T_sub}` (both the regeneration event and the event `{rho_i <= alpha_m + T_sub}` are `F_{alpha_m+T_sub}`-measurable); and `{M_i > m} = ∩_{j<=m} Succ_j^c in F_{alpha_{m+1}}` — the events driving the geometric budget are measurable at the correct phase-B start. This is the augmented/split filtration and the round-duration object COORDINATION [23] §D.3 requires be defined before any geometric/Wald estimate.

---

## 2. THE RECOVERY STEP (after EVERY non-success the state is again floor-covered — or the round has crossed)

XM F3: "no proof shows that every failed subcycle restarts inside the domain on which the same conditional floor applies." We bound the recovery explicitly and show the covering is **exhaustive** — there is no third fate for a failed attempt.

**The floor domain is `R_0`.** The state space splits as `M = R_0 ∪ R_0^c`, and we treat the two exhaustively. Throughout, the alternative to re-covering is that the theta-label has already changed, i.e. `rho_i <= alpha_{m+1}`, in which case the round has terminated by route (x) and no further phase-B start is needed.

**(2a) A non-success endpoint in `R_0` is directly floor-covered.** Suppose subcycle `m` fails, no crossing has occurred, and `X_{kappa_{m+1}} in R_0`. Then `alpha_{m+1} = kappa_{m+1}` (phase A empty) and the phase-B floor of §3 applies at once. It remains to see that every `R_0`-state is a legitimate phase-B start, i.e. the RELAX descent from it reaches `U_ch` deterministically in beta-free time:

- SUB-CAP part of `R_0` (`E_eps < 2 kappa`, so the state lies in the basin `D_k(eps)`). By M2-ATTR(`k`, eps) — a THEOREM on `[0, eps_0) ⊇ [0, eps_2)` (lane-m2-attractor-pinning-small-coupling-v1, gate-v8) — `Crit(E_eps) ∩ closure(D_k(eps)) = G_k`: the ONLY critical set in the basin closure is the ground orbit, so no foreign attractor or transverse rest point can capture a failed attempt. `D_k(eps)` is positively invariant, has NO boundary rest point, and carries the strict descent `dE_eps/dt = -|grad E_eps|^2 < 0` off `G_k`, with every trajectory from `closure(D_k(eps))` converging to `G_k`. The slice gradient floor `<grad E_eps(x), x - pi(x)> >= (c_1/2) dist(x, G_k)^2` (M2P.5 Step 2, uniform in `eps < eps_0`) makes `dist(., G_k)` decrease at a definite eps-uniform rate, so the flow enters `{dist <= delta/4} ⊂ U_ch` in a beta-free time `T_relax(delta, eps)`, staying in the winding-`k` sector with both `Delta` faces missed (M2P.5 Step 3 = M2b.1(iii) at eps = 0). Equivalently the LP.4(ii)(1) region-wide chain descends a sub-cap sector state to the `G_k`-component in beta-free time.
- BAND part of `R_0` (`2 kappa <= E_eps <= S_k + c_H`, `w_phi = 0`). LP.4(ii) returns the band state to the sub-cap sector in a uniform beta-free horizon (the PROCESS FORM, order-one tracked probability), after which the sub-cap descent above applies.

Thus every `R_0`-state descends deterministically into `U_ch` in beta-free time `T_relax`, the first constituent of `T_sub`. This is the recovery domain's coverage — bounded, not asserted, and read off the basin structure (M2-ATTR) plus the region chains (LP.4(ii)(1), LP.4(ii)).

**(2b) A non-success endpoint in `R_0^c` is recovered by the external excursion row, unless the excursion crosses first.** Suppose subcycle `m` fails and `X_{kappa_{m+1}} in R_0^c` (the attempt excursed through the doorway `{E_eps > S_k + c_H}` — the only way out of `R_0`, the `c_H`-ledger stratum closure). Then phase A of subcycle `m+1` runs until the first re-entry to `R_0` OR the theta-label changes. By PROD-EXCURSION (row (E), lane-lp:220-221, whose own terminating alternatives are "re-enters `{E_eps <= S_k + c_H, w_phi = 0}` or changes the theta-label") the off-`R_0` sojourn has finite conditional expectation `<= T_row exp(-beta(c_H/2 - err(delta)))`; a finite expected sojourn is a.s. finite, so `alpha_{m+1} < infinity` a.s. Two exhaustive outcomes: either `X_{alpha_{m+1}} in R_0` (recovered — §3 applies), or the theta-label changed during the excursion, i.e. `rho_i <= alpha_{m+1}`, and the round has already terminated by route (x) at `sigma_i = rho_i` (registered per §1). The genuine off-stratum traps `G_{k,j}` live entirely in `R_0^c` and are absorbed into this external expected-time budget — never given a local floor (COORDINATION [23] §D). Crucially, this is where the previously-flagged event lives: a crossing during a phase-A excursion is now a round terminus, not a state from which `alpha_m = infinity`.

**Exhaustiveness (the load-bearing closure).** `R_0` and `R_0^c` partition `M`; (2a) covers `R_0` with the beta-free descent, (2b) covers `R_0^c` with PROD-EXCURSION — and in the `R_0^c` case the alternative to re-entry is an any-time crossing that terminates the round (route (x)). There is no state from which neither the floor, nor the excursion-return, nor a registered crossing applies: M2-ATTR forbids a trap other than `G_k` inside the basin, and every genuine trap outside `R_0` is PROD-EXCURSION's. Hence **after every non-success the process is, in a.s.-finite time, either again at an `R_0`-start where the same uniform conditional floor applies, or the round has already terminated by a crossing** — the exact obligation XM named, with the any-time-crossing branch registered.

---

## 3. THE UNIFORM PER-SUBCYCLE FLOOR (rate-tracked; no qualitative-ellipticity shortcut)

We prove a floor for subcycle success that is uniform over `H_m`-measurable phase-B starts in `R_0`, with the beta-cost accounted term by term.

Fix a subcycle with `X_{alpha_m} in R_0` (the case not yet terminated by a crossing). Over `[alpha_m, alpha_m + T_sub]` the diffusion realizes the composed pass:

```text
(i)   RELAX descent  R_0 -> U_ch  (beta-free path of §2a), realized by
      the diffusion via SH.2 max-norm tracking over the beta-free horizon
      T_relax, at ORDER-ONE probability as beta -> infinity: for
      beta >= beta_1(eps,delta),  P(shadow) >= c_relax(eps,delta) > 0,
      a beta-FREE order-one factor (LP.4(ii)/LP.4(ii)(1) PROCESS FORM) —
      NOT an ellipticity slogan, but the tracked shadowing floor. Its
      tracking penalty is the exp(-beta err(delta)) factor below, which
      originates from the SH.2 / SH.4 shadowing err(delta) clause (the
      max-norm tube penalty of lane-sh2local, cited where err(delta)
      enters D_bar, lane-minmig:1069): the LEADING factor of the leg is
      beta-free (c_relax, "no rate", matching M3's RELAX characterization
      at lane-minmig:769-771), and the exp(-beta err(delta)) is the
      separately-cited shadowing cost, not a re-rating of RELAX;
(ii)  RELOCATE chain  LP.4(ii)(2)  across the eps-scale relocate segment
      inside the sub-cap: cost exp(-beta gamma_2 eps^2);
(iii) ORBIT CHAIN  U_ch -> B_{h/2}(g_0)=B_0  on the flat 2-torus G_k
      [M5, this campaign]: cost c_0^n exp(-beta Gamma_orb(h)),
      Gamma_orb(h) := 2 C_1 n h^2 <= 6 C_1 D_G h = O(h), D_G = pi sqrt(2N)
      (M5-MAIN + M5.5b, airtight matched radii sigma=h/2, n=ceil(2 D_G/h));
(iv)  LANDING / regeneration draw on B_0 via L1' (A4 half-time + A5
      corridor-qualified free-density form): base-ball small-set mass
      m(beta,h) = c_0' beta^{N} exp(-beta Gamma_dens(h)),
      Gamma_dens(h) := 2 C_2 h^2 = O(h^2) (dim M = 2N, prefactor
      beta^{dim/2} = beta^N).
```

Steps (i)-(iv) are consumed each in its own tube around the single orbit `G_k`, composed by the strong Markov property at the intermediate stopping times (chain entrance/exit), never by a common small-set law — no global minorization is formed (COORDINATION [23] §D.1/§D.2; M5 Step 4). By strong Markov at `alpha_m`, conditional on `H_m` on `{X_{alpha_m} in R_0}`,

```text
P( Succ_m | H_m )  >=  P( regeneration into B_0 during the pass | H_m )
                   >=  c_relax . [ c_0^n exp(-beta Gamma_orb(h)) ]
                       . exp(-beta gamma_2 eps^2)
                       . [ m(beta,h) Leb(B_0) ] . exp(-beta err(delta))
                   =:  p_sub,
p_sub = c(delta,h) exp( -beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) ) > 0,   (R3.1)
Gamma(h) := Gamma_orb(h) + Gamma_dens(h) = 6 C_1 D_G h + 2 C_2 h^2 = O(h),
c(delta,h) := c_relax . c_0^n . c_0' beta^N Leb(B_0)   [the beta^N is a
              polynomial prefactor, sub-exponential: beta^{-1} log beta^N
              -> 0; the beta-FREE part c_relax c_0^n c_0' Leb(B_0) is the
              constant folded into T_1 below],
```

for `beta >= beta_0(h) = O(h^{-2})` (the L1/L1'/M5 diffusive floor `beta h^2 >= B`, load-bearing; XF A3). The floor is **uniform over every `H_m`-measurable start in `R_0`** because each leg's floor is uniform over `R_0`-starts (RELAX: uniform basin descent, §2a; chain/landing: M5-MAIN/L1' uniform over `U_ch`). Success by regeneration alone suffices for the floor; a crossing (route (x), at any time within the subcycle) is a bonus that only enlarges `Succ_m`, so `(R3.1)` a fortiori lower-bounds `P(Succ_m | H_m)`.

Every beta-exponent in `p_sub` is named — `Gamma_orb`, `Gamma_dens`, `gamma_2 eps^2`, `err(delta)` — and the RELAX descent contributes only the beta-FREE order-one factor `c_relax`, i.e. no rate; the `err(delta)` penalty is the separately-cited SH.2/SH.4 shadowing cost. This is the local small-set cost counted explicitly (COORDINATION [23] §D.3), and it is precisely the inverse of M4's per-pass landing probability `exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta)))` — derived here, not asserted.

---

## 4. ALMOST-SURE S-RETURN AND TERMINATION (the quantitative geometric budget)

**Repeatable conditional reachability.** For each `m >= 1`, on `{M_i > m-1}` (round not yet terminated after `m-1` subcycles — hence, in particular, no crossing yet, so `rho_i > kappa_m`) the state `X_{alpha_m} in R_0` by §2 (recovery is a.s. finite; had a crossing intervened the round would already be terminated). Thus `(R3.1)` gives `P(Succ_m | H_m) >= p_sub` with `p_sub` the SAME uniform floor at every `m` — this is the geometric argument run on `{no crossing before subcycle m}`, exactly as the prescription requires. Since `{M_i > m-1} in F_{alpha_m} = H_m`, the tower property yields, exactly as M4 dominates `N`,

```text
P( M_i > m | G_i )  =  E[ 1_{M_i > m-1} P( Succ_m^c | H_m ) | G_i ]
                    <=  (1 - p_sub) P( M_i > m-1 | G_i )
                    <=  (1 - p_sub)^m         (induction; P(M_i > 0|G_i) = 1).   (R3.2)
```

Hence `M_i < infinity` a.s. (geometric termination) and

```text
E[ M_i | G_i ]  =  sum_{m >= 0} P( M_i > m | G_i )  <=  1 / p_sub  <  infinity.   (R3.3)
```

Because each terminating subcycle ends the round either by a phase-B regeneration (S-return, route (r)) OR by an any-time theta-crossing (route (x), registered per §1 wherever it falls), and the recovery of §2 makes each non-terminated subcycle a.s. reach its phase-B start, the round terminus `sigma_i = min(rho_reg, rho_i)` is **a.s. finite**: it is dominated by `M_i . T_sub < infinity` a.s. on route (r), and equals `rho_i <= M_i . T_sub` on route (x). Since a crossing only ACCELERATES termination, dropping it from the floor (as in (R3.1)) is the conservative direction and `(R3.3)` still bounds `M_i`. In particular: within a run of non-crossing rounds the S-returns occur a.s. (each with the geometric budget `(R3.3)`), so the regeneration epochs `R_j` of M3 are a.s. finite — the exact claim M3 asserted at `lane-minmig:774-780, 830-831` and XM flagged, now proved with a repeatable conditional floor rather than a single positive-probability route. The first-crossing round `N` is a.s. finite by the same domination applied to the crossing floor `p` (R2-CROSS), unchanged from M4.

This is the repeatable conditional reachability the obligation demands: a uniform per-subcycle floor `p_sub > 0` conditional on the past field `H_m`, giving geometric termination `(R3.2)`; the conditioning field is explicit at every step, and no crossing — phase A or phase B — is dropped.

---

## 5. THE UNIFORM CONDITIONAL EXPECTED DURATION (input (D), at the claimed exponent)

Decompose the round duration by the subcycle-phase split — the exact partition of `[sigma_{i-1}, sigma_i)` into its phase-A recovery segments and its phase-B attempt windows. Writing `D_i := sigma_i - sigma_{i-1}`,

```text
D_i  =  (phase-B / attempt-window time of round i)
        +  (phase-A / recovery time of round i).
```

- **Phase-B (attempt-window) time.** Each subcycle's phase-B window has beta-free length `T_sub`; the total attempt-window time of round `i` is at most `M_i . T_sub` (it counts the windows by their fixed length `T_sub`, irrespective of whether the diffusion momentarily leaves `R_0` inside a window). By `(R3.3)`,
  `E[ phase-B time | G_i ] <= T_sub . E[M_i | G_i] <= T_sub / p_sub.`
- **Phase-A (recovery) time.** The phase-A recovery segments run entirely off `R_0` (each starts at a non-success endpoint in `R_0^c` or ends the moment `R_0` is re-entered / a crossing registers); hence the total phase-A time of round `i` is a SUBSET of the round's off-`R_0` occupation, so `phase-A time <= total off-R_0 occupation of round i`, whose conditional expectation is `<= T_row exp(-beta(c_H/2 - err(delta)))` by PROD-EXCURSION (row (E)) — a single per-round aggregate, uniform over `G_i`, and finite precisely because the row is excursion-shaped (an additive time budget, not a probability floor; lane-lp wave-2). The bound is valid a fortiori (phase-A ⊆ off-`R_0`), and there is no dependence on `M_i`: the aggregate already counts all excursions of the round, so the two summands are NOT double-counted (phase-B windows are bounded by their fixed lengths, phase-A segments by the disjoint off-`R_0` occupation).

By additivity of conditional expectation,

```text
E[ D_i | G_i ]  <=  T_sub / p_sub  +  T_row exp(-beta(c_H/2 - err(delta)))
   =  ( T_sub / c(delta,h) ) exp( beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) )
        +  T_row exp( -beta ( c_H/2 - err(delta) ) )
   <=  2 T_1(eps,delta) exp( beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) )  =:  D_bar,   (R3.4)
```

for `beta` large, where `T_1(eps,delta) := T_sub / (beta-free part of c(delta,h))` is beta-free (the polynomial `beta^N` prefactor of `p_sub` is sub-exponential and absorbed, contributing `-(N) beta^{-1} log beta -> 0`), and the excursion term is beta-SUPPRESSED (`c_H/2 - err(delta) > 0` by the `c_H` ledger), hence dominated by the first for `beta` large. This is **exactly M4's `D_bar`** at `lane-minmig:1069-1074`, now derived: `sup_i ess-sup E[D_i | G_i] <= D_bar < infinity`, uniform in `i` and over `G_i` (the FLOORS reading; the SPLIT residual law is not needed for (D)). The uniformity in `i` holds because `p_sub` and the PROD-EXCURSION bound are both uniform over the round-start field, not merely over one distinguished start.

M4's Wald arithmetic then closes verbatim on this object: `E_q[tau_change^theta] <= E_q[sum_{i=1}^N D_i] <= (sup_i ess-sup E[D_i|G_i]) . E[N] <= D_bar / p` (`lane-minmig:1179-1185`), the pull-out licensed by `{N >= i} in G_i` (R2-FILT); and `tau_change^theta <= sigma_N` holds because a crossing at any time terminates the round it falls in (route (x)), so the first-crossing time is a round terminus. No common regeneration LAW is needed beyond the uniform conditional floors: the FLOORS route supplies `(D)` and `(P)`; the SPLIT route (R2-FLOOR) supplies the same, plus `nu` for the block-law reading of `(P)`. Either discharges the composition.

---

## 6. ORDER OF LIMITS AND WHAT M4's (P)/(D)/(E) CONSUME

The rate accounting is inert under the mandated order, matching M3/M4/M5:

```text
1. FIX (eps, delta, h = delta/2) — fix Gamma(h), gamma_2 eps^2, err(delta),
   the beta-free horizons T_relax, T_sub, T_1, T_row, and the beta-free
   subcycle prefactor c(delta,h); impose the diffusive floor
   beta h^2 >= B (beta_0(h) = O(h^{-2}), load-bearing).
2. beta -> infinity FIRST — p_sub > 0 and (R3.1)-(R3.4) hold at fixed
   geometry; M_i is geometric, sigma_i a.s. finite, E[D_i|G_i] <= D_bar;
   the off-R_0 term is beta-suppressed and inert.
3. THEN delta -> 0 and h -> 0 (h = delta/2) — removes Gamma(h) = O(h),
   err(delta), and the beta-free prefactor 1/c(h); the surviving duration
   exponent is gamma_2 eps^2.
4. THEN the eps-window — gamma_2 eps^2 joins the (P)-crossing window
   C_w eps^2 into C eps^2, C := C_w + gamma_2 (M4).
```

`beta -> infinity` before `h -> 0` is mandatory: sending `h -> 0` first inverts the floor `beta >= B/h^2` and the L1/L1'/M5 small-ball bounds evaporate (the X3 lesson at the limit level — time buys tangential flatness; one step never does).

**Consumption by M4 (matched to R2's round object).** M4's three per-round conditional inputs are supplied as follows: **(P)** the crossing floor `p` is R2-CROSS (R3 uses only `p > 0`, a per-round floor measurable at `G_i`); **(D)** the duration bound `E[D_i | G_i] <= D_bar` is `(R3.4)` of this piece, together with the a.s. finiteness of `sigma_i`/`N` from `(R3.2)-(R3.3)` that makes the per-round conditioning of `(P)` well-posed; **(E)** the off-`R_0` occupation is PROD-EXCURSION, consumed as the external expectation-shaped row and never given a local floor. Feeding `(P)/(D)/(E)` into M4's `E_q[tau] <= D_bar/p` and the exponent budget yields, at fixed `(eps, delta, h)`,

```text
limsup_{beta->inf} beta^{-1} log E_q[ tau_change^theta ]
   <=  S_k - m_k + eps(S_k/kappa - w_k) + (C_w + gamma_2) eps^2
        + Gamma(h) + 2 err(delta),
```

and after the limits of §6, `<= S_k - m_k + eps(S_k/kappa - w_k) + C eps^2`, `C = C_w + gamma_2`, `0 < eps < eps_2`, `q in D_k(eps)` — the LP.5 upper window, conditional only on the two typed rows below. This discharges the recurrence/duration content of the third LP-MIN-MIG call site (register row GAP-LP-RECUR), leaving no qualitative-ellipticity, unproved-a.s.-return, or dropped-crossing step behind it.

---

## R3 — consumed

R2 round object (this campaign, XM F2 target): the base ball B_0 = B_{h/2}(g_0) with exit collar B_0^+ = B_h(g_0) (ONE radius); the first-exit/return convention (R2-RET); round-start times sigma_i defined as the first of a regeneration into B_0 (route (r)) or an any-time theta-crossing (route (x)), whichever occurs first after sigma_{i-1}, with the initial-delay sigma_0 (R2-TIME); the augmented round filtration G_i (R2-FILT); the fixed base-ball law nu / small-set mass alpha(beta,h) (R2-FLOOR, SPLIT or FLOORS); the per-round crossing floor p (R2-CROSS). CONSUMED AS INTERFACE, not re-derived; inherits R2's grade. R3's §1 scaffold now matches R2-TIME's terminus exactly (any-time crossing registered). | M2-ATTR(k, eps) THEOREM on [0, eps_0) ⊇ [0, eps_2) (lane-m2-attractor-pinning-small-coupling-v1, gate-v8): Crit(E_eps) ∩ closure(D_k(eps)) = G_k; G_k the unique internal attractor; closure attraction; no boundary rest point; positive invariance; strict descent dE_eps/dt = -|grad E_eps|^2 < 0 off G_k — the no-trap-in-basin fact underpinning the recovery exhaustiveness (§2a). | M2P.5 (eps-pinning THEOREM): slice gradient floor <grad E_eps(x), x - pi(x)> >= (c_1/2) dist^2 on the r_1-tube, uniform in eps < eps_0; closure attraction to G_k, no boundary rest point (Step 3 = M2b.1(iii) at eps=0) — the beta-free RELAX descent rate. | LP.4(ii)(1) region-wide chain (lane-lp): descends a sub-cap sector state to the G_k-component in beta-free time; LP.4(ii) PROCESS FORM: band -> sub-cap, order-one tracked probability over beta-free horizon; LP.4(ii)(2) relocate chain: cost exp(-beta gamma_2 eps^2) (§3(ii)). | SH.2 / SH.4 max-norm tracking (lane-sh2local, original scope): realizes the beta-free descent path at order-one probability as beta -> infinity, with shadowing tracking cost exp(-beta err(delta)) — the err(delta) leg penalty cited where err(delta) enters D_bar (§3(i); lane-minmig:1069). | [M5, this campaign]: M5-MAIN P_x(X_n in B_{h/2}(y), path in T_{r0}(G_k)) >= c_0^n exp(-2 beta C_1 n h^2) + corollary M5.5b Gamma_orb(h) = 2 C_1 n h^2 <= 6 C_1 D_G h = O(h), D_G = pi sqrt(2N), matched radii sigma = h/2, n = ceil(2 D_G/h); floor beta_0(h) = O(h^{-2}) (§3(iii)). | L1' (lane-sh2local, A4 half-time + A5 corridor-qualified free-density form): base-ball small-set mass m(beta,h) = c_0' beta^{N} exp(-beta Gamma_dens(h)), Gamma_dens(h) = 2 C_2 h^2, dim M = 2N (§3(iv)). | ROW PROD-EXCURSION (lane-lp:214-221, EXTERNAL typed): per-round off-R_0 expected occupation <= T_row exp(-beta(c_H/2 - err(delta))), uniform over G_i, excursion-shaped (composes as an additive time budget), whose own terminating alternatives are re-entry to {E_eps <= S_k + c_H, w_phi = 0} OR a theta-label change; the G_{k,j} pinning-tori traps in R_0^c are its burden (§2b, §5). | Strong Markov property of the autonomous SDE at the stopping times alpha_m, rho_i, sigma_{i-1} (tower-property domination, §4; the M4-verbatim conditional pull-out). | COORDINATION [23] §C (one metric per consumer; product diameter D_G = pi sqrt(2N)), §D (local-not-global discipline; w_phi != 0 burden stays in PROD-EXCURSION), §D.1 (Gamma(h) = O(h) removed after beta -> infinity at fixed h), §D.2 (regeneration/filtration composition — strong Markov alone insufficient; SPLIT or FLOORS), §D.3 (stopped-round/Wald step: define the filtration, first-crossing round, duration, uniform conditional success and duration bounds, geometric/Wald estimate; local small-set cost counted explicitly). | c_H ledger, gamma_2, C_1, C_2, C_w, T_1, T_row, T_relax, T* (LP / toolkit constants ledger; symbolic, named-and-bounded).

## R3 — typed gaps

GAP-M3-INTERFACE (consumed via R2, not discharged here): the single round object — one base ball B_0 with the first-exit/return convention (R2-RET), the round-start times with the initial delay sigma_0 and the terminus sigma_i = first of route (r) regeneration or route (x) any-time crossing (R2-TIME), the one augmented filtration G_i (R2-FILT), and the SPLIT/FLOORS regeneration interface (R2-FLOOR) — is R2's deliverable (XM finding F2, round-3 R2 target). R3 proves the stopped retry scaffold, the a.s. S-return with the geometric budget, and the uniform conditional expected duration GIVEN that object; it does not construct the round object, the Nummelin split, or the first-exit/return convention, and does not by itself cure the XM F2 skeleton-vs-continuous mismatch or the initial-delay omission (those are R2's). R3's §1 scaffold is now defined to coincide with R2-TIME's terminus, so no crossing (phase A or phase B) is dropped. If R2 delivers only FLOORS (not SPLIT), R3 still closes: §4-§5 use only the uniform conditional floor p_sub, E[M_i|G_i] <= 1/p_sub, and the per-round crossing floor p — all FLOORS-form. If R2's grade regresses, this piece inherits that downgrade (single consistent framing, per A2). TYPE: consumed interface; kept separate from the external row below and from PROD-EXCURSION, per XM finding F4.

GAP-PROD-EXCURSION (EXTERNAL typed row, consumed not proved): input (E), the per-round off-R_0 expected occupation <= T_row exp(-beta(c_H/2 - err(delta))) uniform over G_i, is consumed as a contract (lane-lp ROW PROD-EXCURSION, lane-lp:214-221; COORDINATION [23] §D). It is TYPED, NOT discharged: the eps > 0 critical structure above the band and the whole w_phi != 0 stratum are unclassified, and the G_{k,j} = C_k x C_j^phi pinning tori are real traps there — no bare probability-floor version holds, which is why R3 consumes the EXCURSION shape (an additive expected-time budget) and routes the R_0^c recovery to it (§2b), with an any-time crossing during that excursion registered as a round terminus (route (x)), never lost. Consequently the assembled LP.5 upper — and the two-sided window — remain conditional on PROD-EXCURSION. R3 removes the recurrence/duration gap (GAP-LP-RECUR) of the third call site; it does NOT remove the PROD-EXCURSION conditionality. TYPE: external typed theorem (stage-4 target), distinct from the internal consumed interface above.

FLOOR/ORDER (recorded, not a gap): the load-bearing diffusive floor beta h^2 >= B forces beta_0(h) = O(h^{-2}) and the strict order beta -> infinity BEFORE delta -> 0 (h = delta/2). The RELAX realization (§3(i)) is a beta-FIRST order-one statement (P(shadow) >= c_relax for beta >= beta_1(eps,delta)), with the exp(-beta err(delta)) shadowing penalty cited to SH.2/SH.4; any consumer sending h -> 0 or delta -> 0 at fixed beta is outside R3's scope.

## R3 — register reconciliation (for the honest tail)

This piece discharges register row GAP-LP-RECUR [READS with the XE-8 fence: the internal construction stands MODULO the typed rows it names; GAP-LP-RECUR at A6 strength remains OPEN per MM:3163 - no unconditional discharge is asserted] (almost-sure S-return + uniform conditional expected duration via a stopped retry scaffold — XM finding F3, round-3 R3 target) MODULO the two typed rows above: GAP-M3-INTERFACE (the R2 round object, XM F2) and PROD-EXCURSION (external). No flip of LP-MIN-MIG follows from R3 alone: the flip remains blocked until R1 (GAP-LS-SPLICE) and R2 (GAP-M3-INTERFACE) land and a whole-artifact external re-review (XM-R) signs DISCHARGE-SOUND. R3 introduces no new internal load-bearing row: the retry scaffold (now terminus-matched to R2-TIME, registering any-time crossings), a.s. return, and duration budget are fully derived from the consumed contract and the cited proven legs (M2-ATTR, M2P.5, LP.4(ii)(1)/(ii)/(ii)(2), SH.2/SH.4, M5, L1'), with only the two typed interfaces above outstanding.

TYPED GAPS: GAP-M3-INTERFACE (consumed via R2, not discharged here): the one round object — base ball with first-exit/return convention, round-start times with the initial delay sigma_0 and terminus sigma_i = first of route (r) regeneration or route (x) any-time crossing, one augmented filtration, and the SPLIT/FLOORS regeneration interface — is R2's deliverable (XM F2, round-3 R2 target). R3 proves the retry scaffold, a.s. S-return, and expected duration GIVEN that object; it does not build the round object, the Nummelin split, the first-exit/return convention, and does not cure the F2 skeleton-vs-continuous mismatch or the initial-delay omission. R3's §1 scaffold coincides with R2-TIME's terminus (no crossing dropped). Closes on FLOORS alone if SPLIT is not delivered. Inherits R2's grade. Kept separate from PROD-EXCURSION (XM F4). | GAP-PROD-EXCURSION (EXTERNAL typed row, consumed not proved): input (E), per-round off-R_0 expected occupation <= T_row exp(-beta(c_H/2-err(delta))) uniform over G_i, consumed as the excursion-shaped contract; the eps>0 above-band structure and the whole w_phi!=0 stratum (G_{k,j} pinning-tori traps) are unclassified — no probability-floor version holds. R3 removes GAP-LP-RECUR's internal-construction half but NOT (the A6-strength row remains OPEN per MM:3163 [XE-8 fence]) - the PROD-EXCURSION conditionality. | FLOOR/ORDER (recorded, not a gap): diffusive floor beta h^2>=B, beta_0(h)=O(h^{-2}), strict order beta->infinity before delta->0 (h=delta/2); RELAX realization is a beta-FIRST order-one statement, err(delta) cited to SH.2/SH.4 shadowing. | Register: discharges GAP-LP-RECUR modulo the two rows above; no LP-MIN-MIG flip from R3 alone (blocked until R1+R2 land and XM-R signs).

### consumed

R2 round object (interface, inherits R2 grade): B_0=B_{h/2}(g_0), collar B_0^+=B_h(g_0) (R2-BALL); U_ch (R2-REACH); first-exit/return (R2-RET); round-start times + initial delay sigma_0 + terminus sigma_i=first of route (r) regen / route (x) any-time crossing (R2-TIME); augmented filtration G_i (R2-FILT); nu / small-set mass, SPLIT or FLOORS (R2-FLOOR); per-round crossing floor p (R2-CROSS). | M2-ATTR(k,eps) THEOREM on [0,eps_0)⊇[0,eps_2) (lane-m2-attractor..., gate-v8): Crit(E_eps)∩closure(D_k(eps))=G_k; no-trap-in-basin, closure attraction, positive invariance, strict descent — recovery exhaustiveness §2a. | M2P.5 slice gradient floor >=(c_1/2)dist^2, uniform eps<eps_0 — beta-free RELAX rate. | LP.4(ii)(1) region chain; LP.4(ii) PROCESS FORM band->sub-cap; LP.4(ii)(2) relocate chain cost exp(-beta gamma_2 eps^2). | SH.2/SH.4 max-norm shadowing: order-one descent realization + exp(-beta err(delta)) tracking penalty (cited at lane-minmig:1069). | M5-MAIN + M5.5b: Gamma_orb=2C_1 n h^2<=6C_1 D_G h=O(h), D_G=pi sqrt(2N), matched radii sigma=h/2, n=ceil(2D_G/h), floor beta_0(h)=O(h^{-2}). | L1' small-set mass m(beta,h)=c_0' beta^N exp(-beta Gamma_dens(h)), Gamma_dens=2C_2 h^2, dim=2N. | ROW PROD-EXCURSION (lane-lp:214-221, EXTERNAL): off-R_0 occupation <=T_row exp(-beta(c_H/2-err(delta))), excursion-shaped, terminating alternatives = re-entry OR theta-label change; G_{k,j} traps its burden. | Strong Markov at alpha_m, rho_i, sigma_{i-1}. | COORDINATION [23] §C/§D/§D.1/§D.2/§D.3. | Constants ledger c_H, gamma_2, C_1, C_2, C_w, T_1, T_row, T_relax, T* (symbolic).

### typed gaps

GAP-M3-INTERFACE (consumed via R2, not discharged): the one round object — base ball + first-exit/return, round-start times + initial delay sigma_0 + terminus sigma_i (route (r) regen / route (x) any-time crossing), one augmented filtration, SPLIT/FLOORS interface — is R2's deliverable (XM F2). R3 proves the retry scaffold, a.s. S-return, expected duration GIVEN that object; does not build the round object, Nummelin split, first-exit/return; does not cure F2 skeleton-vs-continuous mismatch or initial-delay omission. R3's §1 scaffold now coincides with R2-TIME terminus (any-time crossing registered, none dropped). Closes on FLOORS alone if SPLIT absent. Inherits R2 grade. Kept separate from PROD-EXCURSION (XM F4). | GAP-PROD-EXCURSION (EXTERNAL, consumed not proved): input (E), off-R_0 occupation <=T_row exp(-beta(c_H/2-err(delta))) uniform over G_i, consumed as excursion-shaped contract; eps>0 above-band structure and whole w_phi!=0 stratum (G_{k,j} pinning-tori traps) unclassified — no probability-floor version holds. R3 removes GAP-LP-RECUR but NOT the PROD-EXCURSION conditionality. Stage-4 target. | FLOOR/ORDER (recorded, not a gap): diffusive floor beta h^2>=B, beta_0(h)=O(h^{-2}), strict order beta->inf before delta->0 (h=delta/2); RELAX realization beta-FIRST order-one, err(delta) cited to SH.2/SH.4 shadowing. | Register: discharges GAP-LP-RECUR modulo the two rows above; no LP-MIN-MIG flip from R3 alone (blocked until R1+R2 land and XM-R signs DISCHARGE-SOUND).


### LEAD AMENDMENT A5 (2026-07-20; source: round-4 checker on R3 - citation relabel only)

R3's RELAX-leg citations misattributed the source lane: Lemma SH.2
(flow tracking) and Lemma SH.4 live in lane-sh-sharpness-v1.md (:149,
:19/:389), NOT in lane-sh2local (which is the L1/L1'/L2 density leg,
correctly cited for L1' only); and the exp(-beta err(delta)) shadowing
cost attributes to Lemma SH.2' (err(delta) = O(delta^2)), not to the
beta-free SH.2 tracking. Read every R3 citation 'lane-sh2local,
SH.2/SH.4' as 'lane-sh-sharpness, SH.2/SH.4' with the err(delta) cost
attributed to SH.2''s displacement leg. The checker adjudicated the
underlying mathematics SOUND; this amendment is the exact-citation
repair it prescribed.




---

# R5a — the continuous FLOORS round object (discharges XM-R F2; supersedes R2's split as the operative round)

(round-5 grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE)

R5a — THE CONTINUOUS FLOORS ROUND OBJECT FOR LP.5(c)

Design decision (recorded). The Nummelin/Athreya–Ney split was chosen by the round-2 R2 (lane-minmig:824-863) and has now failed adjudication twice on coin-timing field defects: the split filtration G_i := sigma(Y_0,...,Y_i, xi_0,...,xi_{i-1}) reveals the block-start coin before the endpoint it selects, so the point-started conditional equality P(C_j | G_j) = P_x(C_1) does not hold on the revealed-coin field (XM-R F2, verdict lines 87-88; XM F2). This reconstruction takes option (b) of the F2 repair obligation (verdict line 92; lead ratification COORDINATION [34], lines 828-833): a SINGLE continuous-time FLOORS round system with one terminus and one filtration, built without any coin, any residual kernel R(x,.), any i.i.d.-block regeneration law, or any endpoint minorization. The only probabilistic tools are the strong Markov property of the autonomous diffusion at pathwise stopping times and POINTWISE floors over the base ball. No independence claim is made anywhere (stated explicitly in §5). This is exactly the second admissible route of COORDINATION [23] §D.2: "avoid splitting and prove uniform conditional floors" (line 536).

Standing setting. dX_t = -grad E_eps(X_t) dt + sqrt(2/beta) dW_t on M = T^{2N}, flagship k=1, N>=10, M2-PIN (lambda>kappa), eps in [0, eps_2) fixed. G_k = C_k^theta x C_0^phi is the flat totally-geodesic product-ground 2-torus, E_eps-critical for every eps with E_eps(G_k) = m_k + eps w_k, w_k = W*(G_k) (M2P.1, lane-minmig:922). Fix a base point g* in G_k and the hop scale h := delta/2 (M3's lock, lane-minmig:904). Ambient tube radii and dist(.,G_k) are read in the max norm as everywhere in the corpus; the orbit chain and the base-ball landing are read in the ONE declared product-Euclidean/intrinsic metric of G_k with diameter D_G = pi sqrt(2N), the L_fr ledger performing the one-way Euclidean->max-norm containment at the base ball (COORDINATION [23] §C; lane-minmig METRIC DECLARATION :1036-1047; the norm-equivalence residue is the inherited GAP-M5-EUC, lane-minmig:1712-1727). The theta-label of a ground-tube configuration is its theta-winding number w_theta = k; a theta-label change is the first hit of a different open theta-sector across Delta_theta, i.e. tau_change^theta.

-------------------------------------------------------------------
(1) THE BASE BALL AND THE FIRST-EXIT / DELAYED-RETURN CONVENTION
-------------------------------------------------------------------
Define the base ball and its exit collar (max norm, centred at the fixed g*):

   S    := B_{delta/4}(g*)     (= B_{h/2}(g*) at h = delta/2 — the M5 landing radius, M5-MAIN lands in B_{h/2}, lane-minmig:1425,1736),
   S^+  := B_{delta/2}(g*)     (= B_h(g*) — the exit collar),   S subset S^+ subset U_ch := {dist(.,G_k) <= delta/2} = U_{1/2}.

(At h = delta/2 the two radii delta/4 and delta/2 are the single M5 landing radius and its collar; the "double-radius" object XM F2 voided is not reintroduced — S and S^+ are the one radius family of R2-BALL, lane-minmig:2650-2653.)

The DELAYED-RETURN operator. For a continuous path and any time t, put

   theta^+(t) := inf{ s >= t : X_s not in S^+ }        (first collar-exit at or after t; = t if X_t not in S^+),
   D(t)       := inf{ s >= theta^+(t) : X_s in S }      (first S-entrance strictly after that collar-exit).

D(t) is the delayed S-return from t. A path with X_t in S lies inside the collar S^+, so theta^+(t) requires the radial coordinate dist(.,g*) to reach delta/2 before D(t) can fire: every delayed return carries a genuine excursion of radial extent >= delta/4, and D(t) > t strictly. There are NO trivial zero-time returns (this closes the XM F2 "next entrance = start time" defect at the object level, verdict line 84; lane-minmig R2-RET :2657-2662). Because S^+ subset U_ch subset the winding-k ground tube, which misses Delta_theta by level ([theta] ledger, lane-lp:176-178; M2P.5 sector confinement, lane-minmig:774-776), the theta-label is constantly k on [t, theta^+(t)]: any theta-label change is strictly later than theta^+(t). Hence both events entering the terminus (§4) occur strictly after the collar-exit; the terminus is a strict, nontrivial hitting time.

-------------------------------------------------------------------
(2) ROUND EPOCHS FROM ARBITRARY q; sigma_0 IS THE INITIAL DELAY
-------------------------------------------------------------------
Let q be an arbitrary start in the winding-k ground tube U := T_{r0}(G_k) (r0 <= min(r_0', r_1), lane-minmig:908). Define pathwise, from q,

   sigma_0 := D(0)                                     (the FIRST delayed S-entrance from q — the INITIAL-DELAY object, defined HERE, not delegated),
   sigma_i := D(sigma_{i-1})  on the event that round i does not cross   (i >= 1),

with the round-i crossing terminus defined in §4. Since q may lie anywhere in U — in particular inside S^+ — sigma_0 uses the same delayed-return operator D(0): if q not in S^+ then theta^+(0)=0 and sigma_0 is the plain first S-entrance; if q in S^+ (in particular q in S) the path must first leave S^+ and re-enter S, so sigma_0 > 0 strictly. This is ONE convention covering every start (the omitted-initial-relocation defect of XM F2 is held here, not swept; verdict line 102; lane-minmig R2-TIME :2663-2668).

Almost-sure finiteness of sigma_0 and of every sigma_i. From any winding-k ground-tube state, S is reached at order-one (beta-free) probability by RELAX-then-chain: the E_eps-descent flow relaxes dist(.,G_k) from up to r0 into U_ch = {dist <= delta/2} at a definite eps-uniform rate on [0, eps_2) (M2P.5 Step 2 slice-gradient floor <grad E_eps(x), x-pi(x)> >= (c_1/2) dist^2, lane-minmig:771-773; Step 3 closure attraction with both Delta faces missed, :774-776), realized by the diffusion via SH.2 max-norm tracking over the beta-free horizon T_relax (LP.4(ii) PROCESS FORM, lane-lp:720-730; lane-minmig:777-785); then the M5 product-torus orbit chain (M5-MAIN, lane-minmig:1425,1735-1738) plus the L1' base-ball landing (§5) carries U_ch into S. Each S-return time is therefore a.s. finite from anywhere in U (lane-minmig:797-802). Consequently the sigma_i are a.s. finite (given the process has not yet crossed), and the first-crossing index N (§7) is a.s. finite. The EXPECTATION E_q[sigma_0] is a strictly stronger, quantitative recurrence statement and is TYPED, not proved here — see the typed-gap on GAP-LP-RECUR / R5b below.

-------------------------------------------------------------------
(3) ONE AUGMENTED FILTRATION = THE PATH FILTRATION (NO COINS)
-------------------------------------------------------------------
Let (F_t)_{t>=0} be the augmented natural filtration of the diffusion X, F_t := sigma(X_{s} : s <= t) completed and made right-continuous. There is NO product space M x {0,1}, NO Bernoulli coin, and NO split state: the whole construction lives on the path space of X. theta^+(.), D(.), the sigma_i, and the crossing time (§4) are all hitting times of Borel sets by the continuous process X, hence (F_t)-stopping times; F_{sigma_{i-1}} is the corresponding stopped sigma-field. Because the SDE is autonomous, the strong Markov property holds at each sigma_{i-1}. This is the single augmented round filtration used identically by every consumer — the coin-timing field defect of the split (F2, verdict lines 87-88) cannot arise because there is no coin to reveal.

Round-start law. There is no fixed regeneration law nu here: X_{sigma_{i-1}} is an arbitrary (F_{sigma_{i-1}}-measurable) point of S. The FLOORS route needs only that X_{sigma_{i-1}} in S POINTWISE, which the delayed-return convention guarantees (sigma_{i-1} is by construction an S-entrance).

-------------------------------------------------------------------
(4) THE TERMINUS (ONE TERMINUS, USED IDENTICALLY BY EVERY CONSUMER)
-------------------------------------------------------------------
Round i (i >= 1) starts at sigma_{i-1} with X_{sigma_{i-1}} in S. Let

   L_i := inf{ s > sigma_{i-1} : w_theta(X_s) != k }   (the first theta-label change after the round start).

The round-i terminus is

   T_i := min( D(sigma_{i-1}) , L_i ).

Exactly one of two disjoint outcomes:
 (r) D(sigma_{i-1}) <= L_i : the round FAILS (delayed S-return first). Set sigma_i := D(sigma_{i-1}) and continue to round i+1.
 (x) L_i < D(sigma_{i-1}) : the round CROSSES (theta-label change first). The whole process stops; the first-crossing round is N := i and tau_change^theta = L_N.

By §1, both D(sigma_{i-1}) and L_i are strictly greater than theta^+(sigma_{i-1}), so T_i is a strict hitting time > sigma_{i-1}. This single terminus feeds both the crossing floor (P) and the duration bound (D) below; no consumer uses a different stopping object (this is the object-mismatch cure for XM-R F2, verdict lines 84,92,96 — R3's alpha_m and R2's Theta_j skeleton epochs are both replaced by this one continuous terminus).

-------------------------------------------------------------------
(5) THE UNIFORM CONDITIONAL FLOORS (STRONG MARKOV + POINTWISE, NO INDEPENDENCE)
-------------------------------------------------------------------
Define, for x in S, on the shifted path started at x (D(0), L, T := min(D(0),L) read from the shifted origin):

   Phi(x) := P_x( L < D(0) )        (the round crosses before its delayed S-return),
   Psi(x) := E_x[ T ]               (the round duration).

Phi, Psi are Borel functions of the START POINT alone (functionals of the post-start path law P_x). By the strong Markov property at sigma_{i-1} (§3), the regular conditional law of the post-sigma_{i-1} path given F_{sigma_{i-1}} is P_{X_{sigma_{i-1}}}, evaluated at the F_{sigma_{i-1}}-measurable random variable X_{sigma_{i-1}}. Hence, with D_i := T_i - sigma_{i-1} the round-i duration,

   P( round i crosses | F_{sigma_{i-1}} ) = Phi( X_{sigma_{i-1}} )      a.s.,
   E( D_i | F_{sigma_{i-1}} )             = Psi( X_{sigma_{i-1}} )      a.s.

EXPLICIT NO-INDEPENDENCE STATEMENT. The conditioning field F_{sigma_{i-1}} is the pre-sigma_{i-1} path sigma-field; the round-i outcome (cross/fail and duration) is a functional of the POST-sigma_{i-1} path only. F_{sigma_{i-1}} therefore never contains the increments it is used to bound. No independence of the past and the future is asserted anywhere; the ONLY facts used are (a) the strong Markov equality above (the conditional law is the kernel P_{X_{sigma_{i-1}}}), and (b) the pointwise floors below, taken uniformly over the range S of X_{sigma_{i-1}}. This is the precise sense of "uniform conditional floors" of [23] §D.2 (line 536) — a uniform bound on a deterministic function, not a regeneration law.

(P) CROSSING FLOOR. Claim: inf_{x in S} Phi(x) >= p, with

   p := c(delta) exp( -beta ( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ) ),   C_w := C_B + the LP.4b (b)-chain constant (symbolic),

the per-attempt crossing floor of LP.5(a)+(b) (lane-lp:825; lane-minmig (P) :1057-1058). Proof of the pointwise bound. Fix x in S subset U_ch. LP.5(a) (the near-target sandwich) reaches the near-saddle target B'' from any x in U_ch: the local route supplies the average-to-infimum ground floor uniformly over U_{1/2} = U_ch via (M3-GS) — the product-torus orbit chain p_chain = c_0^n exp(-2 beta C_1^eps n h^2) (M3-GS.1, lane-minmig:692-693, = (M5-MAIN)) composed by Chapman–Kolmogorov (SR-SH1) with the L1' base-ball free density m_1 = c_0' beta^N exp(-beta C_2^eps O(delta^2)) (M3-GS.2, lane-minmig:711-712; L1' A4/A5 corridor-qualified form, lane-sh2local:276,61-90,499), giving P_x(X_{n+1} in A) >= p_chain . m_1 Leb(A) for all Borel A subset S, uniformly over x in U_ch (M3-GS, lane-minmig:717-724). The SH.3 downhill reference flow then delivers B'' and the sandwich cost exp(-beta(S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta))) (LP.5(a), lane-lp:806-808; lane-minmig:732-738; the two eps-coefficients S_k/kappa = W*(z_sl) and w_k = W*(G_k) are NEVER identified, [23] §B.3). From B'', LP.5(b) runs one LP.4b crossing chain (cost exp(-beta O(eps^2))) into the far-side cone, then LP.4a to the valley-side frame exit, then LP.4(i): the valley's only exit is across Delta_theta, realizing a theta-label change (lane-lp:810-824). Every leg of this sample-path event travels UPWARD from S toward the saddle and then out to Delta_theta and (§6) never re-enters S before the label change; on it, L < D(0). Hence Phi(x) = P_x(L < D(0)) >= P_x(this LP.5(a)+(b) crossing event) >= p, uniformly over x in S. No independence, no regeneration law: the floor is the LP.5 per-attempt probability, and it is a floor over the START POINT (uniform over S). QED (P).

(D) DURATION BOUND. Claim: sup_{x in S} Psi(x) <= D_bar, with the round duration D_i = T_i - sigma_{i-1} decomposed as time inside R_0 := {w_theta=k, w_phi=0, E_eps <= S_k + c_H} plus time outside R_0.
 - Within-R_0 part (PROVED here, pointwise). While the round stays in R_0, the relocate-or-change machinery returns the path to the common base ball S in a uniform beta-free horizon T_1(eps,delta): sub-cap sector -> LP.2/LP.4(ii)(1); band -> LP.4(ii); in PROCESS FORM over the beta-free horizons T_B(eps), T_cone(eps) = O(log 1/eps) (lane-lp:661-730). Landing in the COMMON ball S (not merely in the tube) pays, per pass, the M5 orbit-chain factor exp(-beta Gamma_orb(h)) (M5.5b, Gamma_orb(h) = 6 C_1 D_G h + O(h^2), lane-minmig:1096-1105,1691), the L1' base-ball small-set factor exp(-beta Gamma_dens(h)) (lane-minmig:1106-1109), and the LP.4(ii)(2) relocate chain exp(-beta gamma_2 eps^2). Hence the within-R_0 expected round duration is <= T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ), Gamma(h) := Gamma_orb + Gamma_dens = O(h) (lane-minmig:1083-1109). This bound is pointwise over x in S (strong Markov at sigma_{i-1} + the M3-GS return floor uniform over U_ch), so it holds conditional on F_{sigma_{i-1}} at the exact strength of §5.
 - Off-R_0 part (CONSUMED, at the typed PROD-EXCURSION strength; conditional strengthening TYPED, not proved). A within-round excursion may cross the doorway {E_eps > S_k + c_H} into the off-stratum, where the G_{k,j} = C_k x C_j^phi pinning tori are real traps. PROD-EXCURSION is consumed at EXACTLY its typed strength: the EXPECTED time per renewal round spent outside R_0, before the excursion re-enters {E_eps <= S_k + c_H, w_phi=0} or changes the theta-label, is <= T_row(eps,delta) exp(-beta(c_H/2 - err(delta))), T_row beta-free (lane-lp ROW PROD-EXCURSION :214-233). This is an UNCONDITIONAL per-round expectation. I do NOT append "uniformly over F_{sigma_{i-1}}" to it — that appended conditional uniformity is precisely the source-contract strengthening XM-R F3 flagged (verdict line 104) and is NOT in the cited bytes. Therefore the conditional-over-F_{sigma_{i-1}} off-R_0 bound that the Wald tower step (§7) requires is TYPED as the named interface GAP-PE-COND (see typed gaps), exactly the contract [23] §D demands ("conditional on every admissible round-start sigma field ... an unconditioned 'expected time per renewal round' sentence is not enough", lines 552-558).
Setting D_bar := 2 T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ) (the beta-suppressed off-R_0 term c_H/2 - err(delta) > 0 by the c_H ledger is dominated by the within-R_0 term for large beta, lane-minmig:1083-1091), the within-R_0 conditional bound sup_{x in S} Psi_{R_0}(x) <= D_bar holds; the full Psi <= D_bar holds conditionally MODULO GAP-PE-COND. D_bar is err-class: beta^{-1} log D_bar = Gamma(h) + gamma_2 eps^2 + err(delta) -> 0 after beta -> infinity then h,delta -> 0.

-------------------------------------------------------------------
(6) ATTEMPT CONTAINMENT (BY CONSTRUCTION, NOT BY BLOCK-LENGTH ACCIDENT)
-------------------------------------------------------------------
Define the attempt horizon as the explicit sum of the LP.5(a)+(b) leg horizons, each beta-free and cited:

   T_att := T* + T_sand + n_b + T_cone(eps) + T_V(eps),   where
     T*        := n + 1,  n = ceil(2 D_G/h) = ceil(4 pi sqrt(2N)/delta)  (the M3-GS / M5 orbit chain to the base region; lane-minmig:905-907,1737),
     T_sand    := the SH.1–SH.3 downhill reference-flow horizon to B''      (beta-free; LP.5(a), lane-lp:800-808),
     n_b       := O(C* L/delta) time-tau hops, tau = min(1, delta/(4 kappa_d))  (the LP.4b crossing chain B''->far cone; lane-lp:583-586,603-613),
     T_cone(eps):= O(log(1/eps))                                            (LP.4a frame exit on the valley side; lane-lp:494,815-816),
     T_V(eps)   := the LP.4(i) valley exit across Delta_theta               (beta-free; lane-lp:656,822-823).

T_att is finite and beta-free once (eps, delta) are fixed. The LP.5(a)+(b) crossing event of §5(P) is realized within [sigma_{i-1}, sigma_{i-1} + T_att]; the padded round admits a complete attempt BY CONSTRUCTION (the horizon is the sum of the named attempt legs), not because a block happens to be long enough (the exact XM-R F2 attempt-containment defect, verdict lines 90,138). Crucially, containment is spatial as well as temporal: along this tracked sample path the process first ascends OUT of S toward the saddle (reaching dist(.,G_k) of order 1 >= delta/2, i.e. it leaves the collar S^+ and stays outside S), then crosses Delta_theta, WITHOUT re-entering S. Therefore on this event the delayed S-return D(sigma_{i-1}) does not occur before L_i, i.e. L_i < D(sigma_{i-1}): the round terminates by crossing. The tracking is by SH.2 max-norm tracking over the beta-free horizon T_att at order-one probability as beta -> infinity at fixed (eps,delta) (LP.4(ii)/LP.5(b) PROCESS FORM, lane-lp:720-730,819-824), the single exp-small factor being the LP.5(a) sandwich ascent (the rare climb from the ground to the saddle), which is the exponent of p. Thus {tracked LP.5(a)+(b) crossing within T_att} subset {round i crosses}, which is what makes the §5(P) inequality Phi(x) >= p a statement about a genuine within-round crossing.

-------------------------------------------------------------------
(7) THE GEOMETRIC COUNT AND THE WALD BOUND (EVERY MEASURABILITY STEP EXPLICIT)
-------------------------------------------------------------------
N := first-crossing round (§4), a.s. finite (§2). Measurability of the count. {N >= i} = {rounds 1,...,i-1 all failed to cross} = {no theta-label change on [sigma_0, sigma_{i-1}]}. The outcome of round j (j <= i-1) is determined by the path up to its terminus T_j <= sigma_{i-1}; hence {N >= i} is F_{sigma_{i-1}}-measurable:

   {N >= i} in F_{sigma_{i-1}}.       (COUNT-MEAS)

Geometric domination. On {N >= i}, round i is actually run and X_{sigma_{i-1}} in S pointwise (§1), so by §5(P), P(round i fails | F_{sigma_{i-1}}) = 1 - Phi(X_{sigma_{i-1}}) <= 1 - p. Using (COUNT-MEAS) to pull the indicator out of the conditional expectation,

   P(N >= i+1) = E[ 1_{N>=i} . 1_{round i fails} ] = E[ 1_{N>=i} . E(1_{round i fails} | F_{sigma_{i-1}}) ] = E[ 1_{N>=i} (1 - Phi(X_{sigma_{i-1}})) ] <= (1-p) P(N >= i).

By induction P(N >= i) <= (1-p)^{i-1}, so N is stochastically dominated by Geometric(p) and

   E[N] <= 1/p.       (GEOM)

Wald / duration sum. Write tau := tau_change^theta = sigma_0 + sum_{i=1}^{N} D_i (initial delay plus the round durations up to and including the crossing round). Then, using 1_{N>=i} in F_{sigma_{i-1}} (COUNT-MEAS) at each i to apply the tower property with the §5(D) conditional bound,

   E_q[ sum_{i=1}^{N} D_i ] = sum_{i>=1} E[ 1_{N>=i} D_i ] = sum_{i>=1} E[ 1_{N>=i} . E(D_i | F_{sigma_{i-1}}) ] = sum_{i>=1} E[ 1_{N>=i} Psi(X_{sigma_{i-1}}) ] <= D_bar sum_{i>=1} P(N >= i) = D_bar . E[N].

Hence, with the initial-delay term INCLUDED,

   E_q[tau] <= E_q[sigma_0] + E[N] . D_bar <= E_q[sigma_0] + D_bar / p.       (WALD)

[E5 MIN-OBJECT RESTATEMENT AT THE ROUND-SUM SITE - RECORD ONLY, 2026-08-02.
EXTERNALLY SIGNED (XE-14 SOUND, 2026-08-02) at the min-object/rate boundary. No constant, exponent, threshold or display
moves; (WALD) above is NOT withdrawn. THE A6 FENCES ARE UNTOUCHED BY THIS
NOTE: this file's status-surface fence clause (the bracketed clause beginning
"THIS STATUS SURFACE IS GOVERNED BY THE A6 FENCE"), this file's GAP-LP-RECUR
register entry (status label "OPEN AT A6 STRENGTH") with its SUPERSESSION
NOTE, and lane-lp-product-saddle-v1.md's Theorem LP.5 header with its XE-8
RELEASE FENCE.
ANCHOR CONVENTION OF THIS NOTE: every reference below is BY NAME - row name,
label name, or verbatim quoted text - and NOT by line number.
THE DEFECT THIS NOTE NAMES. The decomposition printed just above,
tau := tau_change^theta = sigma_0 + sum_{i=1}^{N} D_i, is an IDENTITY that is
FALSE on {L_0 < D(0)}: there the crossing happens during the initial delay, so
tau_change^theta = L_0 while sigma_0 = D(0) > L_0 strictly. The delayed-return
operator confines nothing on [0, sigma_0) - the R5a delayed-return sentence
says so in its own words, "every delayed return carries a genuine excursion of
radial extent >= delta/4, and D(t) > t strictly", and LEAD AMENDMENT A7 says
so directly, "(strict when a theta-crossing occurs during the initial delay
[0, sigma_0) - the delayed-return operator confines nothing there)". A7
already reads the display as the INEQUALITY, and that is the direction LP.5(c)
consumes.
THE RESTATEMENT E5 CONSUMES, on the MIN OBJECT, with the convention pinned.
Write N_x for the FIRST-CROSSING ROUND INDEX - the index written N in the
display above - so that it is never read for the dimension parameter N of
dim M = 2N. Then

   E_q[tau] <= E_q[ D(0) ^ L_0 ] + E[N_x] . D_bar'
            <= E_q[ D(0) ^ L_0 ] + D_bar' / p ,
   convention:  N_x := 0  (empty sum)  on {L_0 < D(0)}.

On {L_0 < D(0)}: tau = L_0 = D(0) ^ L_0 and no round starts, so the sum is
empty and the inequality holds with equality. On {D(0) <= L_0}:
sigma_0 = D(0) = D(0) ^ L_0 and the identity above holds unchanged.
E5 (P1 draft, lane-e5-gaplprecur-v1.md) proves E_q[D(0) ^ L_0] at
(TIER-A6-RATE); it does NOT prove E_q[D(0)], whose expectation goes
TYPED-UNCONSUMED. The A.S. FINITENESS of the S-returns stays consumed and is
landed in R5a's round-object section, verbatim: "Each S-return time is
therefore a.s. finite from anywhere in U". STATUS: EXTERNALLY SIGNED (XE-14 SOUND,
2026-08-02) at the narrow boundary; this note lifts no fence - every A6
fence stands verbatim.]

No independence is used: only (COUNT-MEAS), the tower property, the strong-Markov conditional identities of §5, and the pointwise floors. The local small-set cost is counted explicitly inside p and D_bar, never hidden in the word "Markov" ([23] §D.3, lines 540-544).

Rate reading and ORDER OF LIMITS. The exponents combine as

   beta^{-1} log( D_bar / p ) = [ Gamma(h) + gamma_2 eps^2 + err(delta) ] + [ S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ].

The mandated order (identical to the M3/M4/M5 consumers, lane-minmig:748-751,881-887,1703-1710; [23] §B.3 line 444-447): beta -> infinity FIRST at fixed (eps, delta, h = delta/2) — the diffusive floor beta >= B/h^2 = O(delta^{-2}) held throughout (XF A3, lane-sh2local:33-35); THEN delta -> 0 (h -> 0), sending Gamma(h) = O(h) and err(delta) to 0; THEN the eps-window is read. With C := gamma_2 + C_w this gives, PROVIDED the initial-delay term does not dominate (see GAP-LP-RECUR below),

   limsup_{beta->infinity} beta^{-1} log E_q[tau] <= S_k - m_k + eps(S_k/kappa - w_k) + C eps^2,

which is exactly LP.5's upper display (lane-lp:749-751; [23] §B.3 line 436-438), on the w_phi = 0 stratum, for the named coupling W = W*, at fixed q in D_k(eps). LP.3's lower side is untouched.

-------------------------------------------------------------------
WHAT THIS OBJECT DISCHARGES AND WHAT REMAINS TYPED
-------------------------------------------------------------------
Discharged (relative to XM-R F2): the object mismatch (one continuous terminus §4, used identically by (P) and (D)), the missing path-marked lift (there is no endpoint split to lift — the whole construction is on the path space, §3), the coin-timing contradiction (no coin exists, §3), and attempt containment (the explicit horizon T_att with the spatial ascent-out-of-S argument, §6). The FLOORS route also removes the F3 start-domain, indexing, and initial-delay defects at the object level: every round starts pointwise in S (§1), the count N is zero-free and its measurability is explicit (COUNT-MEAS), and sigma_0 is defined and carried from arbitrary q (§2,§7). GAP-M3-INTERFACE is thereby discharged as a construction MODULO the two typed interfaces below; the migration flip (LP-MIN-MIG) stays BLOCKED until those are closed and an external verdict confirms discharge (release gate, lane-minmig:2989-2995; [23] §E; not authorized here).

### r5a — consumed

POINTWISE-OVER-S FLOOR INPUTS (all cited verbatim as consumed):
- (M3-GS.1) product-torus orbit-chain floor: "P_x( X_n in B_{delta/2}(g*), path in U ) >= c_0^n exp( -2 beta C_1^eps n h^2 ) =: p_chain" — lane-minmig-proofs-v1.md:692-693.
- (M3-GS.2) L1' base-ball free density: "p_1^eps(z, .) >= m_1 Leb|_{B_0}(.), m_1 := c_0' beta^N exp( -beta C_2^eps . O(delta^2) )" — lane-minmig-proofs-v1.md:711-712.
- (M3-GS) uniform-over-U_{1/2} composition: "P_x( X_{n+1} in A ) >= p_chain . m_1 Leb(A) for all Borel A subset B_0" — lane-minmig-proofs-v1.md:717-724.
- (M5-MAIN) chain, exact strength: "P_x( X_n in B_{h/2}(y), X_[0,n] subset T_{r0}(G_k) ) >= c_0^n exp( -2 beta C_1 n h^2 )", beta >= beta_0(h)=O(h^-2), spacing sigma=h/2, n=ceil(2 D_G/h), D_G = pi sqrt(2N) — lane-minmig-proofs-v1.md:1425,1735-1738.
- (M5.5b) orbit-chain cost: "Gamma_orb(h) := 2 C_1 n h^2 <= 6 C_1 D_G h = O(h)" — lane-minmig-proofs-v1.md:1691,1739.
- L1 landing form (c): "P_x( X_1 in B_{h/2}(y) ) >= c_0 exp( -beta C_1 (delta^2 + h^2) )", beta_0 = 256/r0^2 — lane-sh2local-proofs-v1.md:192-195.
- L1' small-set minorization (A4/A5 corridor-qualified FREE-density form): "p_1(x, .) >= c_0' beta^{n/2} exp( -beta C_2 (delta^2 + h^2) ) Leb|_{B_rho(y)}", C_2 = C_1 + 9/8 + C_+/4 + L^2/4 — lane-sh2local-proofs-v1.md:276,61-90,499.
- L2 corollary (tangential relocation): "P_x( X_{n(eta)} in B_{h(eta)}(y) ) >= c(eta) exp( -beta eta )" — lane-sh2local-proofs-v1.md:610-612.
LP.5(a)-(b) ATTEMPT HORIZONS (each beta-free; consumed for T_att, §6):
- LP.4b crossing chain: "n = O(C* L/delta)" time-tau hops, "tau := min(1, delta/(4 kappa_d))" — lane-lp-product-saddle-v1.md:583-586,603-613.
- LP.4a frame exit: "reaches THE FRAME EXIT |u| = r_0' in time <= T_cone(eps) = O(log(1/eps)) (beta-free)" — lane-lp-product-saddle-v1.md:494,815-816.
- LP.4(i) valley exit: "its only flow exit is across Delta_theta, in uniform time ... the uniform exit time T_V(eps) is beta-free" — lane-lp-product-saddle-v1.md:640-656,822-823.
- LP.4(ii) band horizon: "within T_B(eps) = (c_H + eps')/floor(eps)^2 (beta-free)" — lane-lp-product-saddle-v1.md:680-681.
- LP.5(a) sandwich cost + LP.5(b) per-attempt crossing floor p: lane-lp-product-saddle-v1.md:806-808,824-828; restated as (P) at lane-minmig-proofs-v1.md:1057-1058.
- Order/limits + w_k, S_k/kappa never identified: lane-minmig-proofs-v1.md:735-751; COORDINATION.md [23] §B.3 lines 422-448.
PROD-EXCURSION (consumed at EXACTLY its typed strength, unconditional per-round expectation, NOT strengthened): ROW PROD-EXCURSION "the expected time per renewal round spent OUTSIDE R_0 ... is <= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))), T_row beta-free" — lane-lp-product-saddle-v1.md:214-237.
ROUND-FILTRATION / RENEGERATION INTERFACE: COORDINATION.md [23] §D.2 "either perform an explicit Nummelin split ... or avoid splitting and prove uniform conditional floors. Strong Markov makes set-return times Markov; it does NOT by itself create a common regeneration law" (lines 533-538); §D.3 STOPPED ROUND/WALD (lines 540-544); §D conditional-strength requirement on PROD-EXCURSION (lines 546-558). Lead ratification of the FLOORS route: COORDINATION.md [34] lines 828-833.
RELAX reachability / a.s. return: M2P.5 Step 2/3 slice floor + closure attraction — lane-minmig-proofs-v1.md:771-785; RELAX+chain a.s.-finite S-return — lane-minmig-proofs-v1.md:797-802.
BASE-BALL / COLLAR / INITIAL-DELAY object shape (R2 interface, consumed): lane-minmig-proofs-v1.md:2650-2672 (R2-BALL/REACH/RET/TIME/FILT).
SPECIFICATION (the assigned finding, followed verbatim including ATTEMPTED REFUTATIONS): verdicts/XM-R-2026-07-20.md F2 (lines 82-92), F3 (94-108), refutation "I tried reading R3 on a pure FLOORS route. That could be a viable repair" (line 139).

### r5a — typed gaps

GAP-LP-RECUR (E[sigma_0] finiteness — the initial-delay term; interface to sibling piece R5b). The Wald bound (WALD) carries the initial-delay term E_q[sigma_0] additively. §2 proves sigma_0 is A.S. finite from arbitrary q in U (RELAX + M5 chain + L1' at order-one probability). It does NOT prove E_q[sigma_0] < infinity, which is a strictly stronger quantitative recurrence statement. Exact interface consumed from R5b / GAP-LP-RECUR: an arbitrary-q expected ground-ball hitting-time bound with beta^{-1} log E_q[sigma_0] <= S_k - m_k + o_delta(1) (or E_q[sigma_0] beta-free), so that the initial-delay term does not dominate the round-sum term D_bar/p in the limsup rate reading. Named exactly: the arbitrary-start expected hitting time of the base ball S from q, at the order-of-limits of §7. This is the GAP-LP-RECUR row the register honestly lists REOPENED (verdict line 102; [34]). Until R5b furnishes it, the LP.5(c) upper limsup is conditional on GAP-LP-RECUR at exactly this strength.

GAP-PE-COND (PROD-EXCURSION at CONDITIONAL strength — the off-R_0 duration term). §5(D) requires E(D_i | F_{sigma_{i-1}}) <= D_bar, whose off-R_0 component needs the expected off-R_0 occupation controlled CONDITIONAL on the round-start field F_{sigma_{i-1}}, uniformly over its S-valued data. The ROW PROD-EXCURSION as typed (lane-lp:214-237) supplies only the UNCONDITIONAL expected time per round. Consuming it "uniformly over F_{sigma_{i-1}}" would be the exact source-contract strengthening XM-R F3 flagged (verdict line 104); I refuse it and instead TYPE the strengthening as the named row GAP-PE-COND: "conditional on every admissible round-start sigma-field F_{sigma_{i-1}}, the expected round occupation outside R_0 is <= T_row(eps,delta) exp(-beta(c_H/2 - err(delta)))". This is precisely the conditional contract [23] §D demands (lines 552-558: "an ... unconditioned 'expected time per renewal round' sentence is not enough"). The within-R_0 part of D_bar is PROVED here (strong Markov + M3-GS return floor, pointwise); only the off-R_0 conditional part is typed. Until PROD-EXCURSION is re-typed at GAP-PE-COND strength, the §5(D) conditional duration bound — hence (WALD) — is conditional on GAP-PE-COND.

GAP-M5-EUC (inherited, not re-opened by this piece). The M5 orbit chain reads L1's small-ball term across a fixed 2N-dimensional Euclidean/max-norm equivalence factor (beta-free and h-free; rescales the constant in the O(h^-2) floor only, changing no exponent and no threshold order). Carried unchanged from lane-minmig:1712-1727; this piece introduces no new norm dependence.

### LEAD AMENDMENT A6 (2026-07-21; source: R5a checker MINOR 1)

Of R5a's two candidate GAP-LP-RECUR interface forms, THE SECOND is
adopted as THE interface: the sigma_0 expectation must carry the
ROUND-SUM rate (beta^-1 log E_q[sigma_0] bounded by the D_bar/p
rate, S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 + err), not the
bare S_k - m_k form - otherwise in the regime S_k/kappa < w_k the
initial-delay term would dominate the display. R5b's sigma_0
treatment (its section 6) is read against this adopted form.

### LEAD AMENDMENT A7 (2026-07-21; source: R5a checker MINOR 2)

R5a's telescoping display reads as the INEQUALITY
tau_change^theta <= sigma_0 + sum_{i=1}^{N} D_i (strict when a
theta-crossing occurs during the initial delay [0, sigma_0) - the
delayed-return operator confines nothing there). The upper-bound
direction is exactly what LP.5(c) consumes; the equality wording
is withdrawn.

### LEAD AMENDMENT A8 (2026-07-21; source: XM-R2 finding 7)

R5c TYPE 4's coordinate margin: the bond map d_i = theta_{i+1} -
theta_i has max-norm operator bound 2, so an ambient landing-ball
displacement of radius 3 delta/4 moves a bond by up to 3 delta/2;
the certified in-quadrant margin is delta/2 (= 2 delta - 3 delta/2),
NOT 5 delta/4. The direct kick survives with the corrected margin
(every landing point keeps the desired bond signs); the target
itself is realizable within the L1-Z reach (ambient displacement
<= delta). Sound in substance per XM-R2; the margin constant is
corrected wherever consumed.


---

# R5b — the retry scaffold on R5a (discharges XM-R F3; types PROD-EXCURSION-COND)

(round-5 grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

R5b — THE STOPPED RETRY SCAFFOLD ON R5a's CONTINUOUS FLOORS ROUNDS (discharges XM-R F3)

Round grade inherited from R5a: PROVED-WITH-TYPED-GAPS (R5a fleet-checked REPAIRABLE; this piece inherits that downgrade automatically, single consistent framing). This piece supplies the internal engine of two claims R5a states but does not itself construct — the a.s. finiteness of every sigma_i (R5a §2) and the within-R_0 conditional duration bound sup_{x in S} Psi_{R_0}(x) <= D_bar (R5a §5(D)) — together with the bound on the initial delay E_q[sigma_0] (R5a §2/§7 proviso) and the exact typing of the off-R_0 conditional occupation. It builds NOTHING new probabilistically: the only tools are the strong Markov property of the autonomous diffusion at F_t-stopping times and the pointwise floors R5a already established over S and U_ch. No coin, no split, no regeneration law, no independence claim appears anywhere (as in R5a §3, §5).

-------------------------------------------------------------------
(0) THE CONSUMED R5a INTERFACE (verbatim; consumed at exactly its stated strength)
-------------------------------------------------------------------
Fix the standing setting of R5a: dX_t = -grad E_eps(X_t) dt + sqrt(2/beta) dW_t on M = T^{2N}, flagship k=1, N>=10, M2-PIN (lambda>kappa), eps in [0, eps_2) fixed; the flat product-ground 2-torus G_k = C_k^theta x C_0^phi, base point g*, hop scale h := delta/2, base ball S := B_{delta/4}(g*), collar S^+ := B_{delta/2}(g*), chain subtube U_ch := {dist(.,G_k) <= delta/2}, winding-k ground tube U := T_{r0}(G_k). From R5a I consume, at exactly R5a's strength:

  (R5a-D)   the delayed-return operator D(t) = inf{ s >= theta^+(t) : X_s in S }, theta^+(t) = inf{ s >= t : X_s not in S^+ }, every delayed return carrying a genuine radial excursion of extent >= delta/4 (R5a §1);
  (R5a-EP)  the round epochs sigma_0 := D(0) from arbitrary q in U, sigma_i := D(sigma_{i-1}) on the non-crossing event (R5a §2);
  (R5a-F)   the single augmented natural path filtration (F_t)_{t>=0} of X, no coins, strong Markov at every F_t-stopping time (R5a §3);
  (R5a-T)   the round-i terminus T_i := min( D(sigma_{i-1}) , L_i ), L_i := inf{ s > sigma_{i-1} : w_theta(X_s) != k }, with route (r) FAIL if D(sigma_{i-1}) <= L_i and route (x) CROSS if L_i < D(sigma_{i-1}); T_i a strict hitting time > theta^+(sigma_{i-1}) > sigma_{i-1} (R5a §4);
  (R5a-P)   the uniform conditional crossing floor inf_{x in S} Phi(x) >= p, Phi(x) = P_x(L < D(0)), p = c(delta) exp(-beta(S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta))) (R5a §5(P));
  (R5a-N)   the geometric count / Wald frame: {N >= i} in F_{sigma_{i-1}}, E[N] <= 1/p, and E_q[tau] <= E_q[sigma_0] + E[N] . D_bar (R5a §7).

R5a §5(D) sets D_bar := 2 T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ), Gamma(h) := Gamma_orb(h) + Gamma_dens(h) = O(h). R5b's task is to DERIVE the two conditional inputs R5a leaves at the level of "the relocate-or-change machinery returns the path to the common base ball S in a uniform beta-free horizon T_1" — namely (D) sup_{x in S} Psi_{R_0}(x) <= D_bar and the a.s. finiteness underneath — by an explicit stopped subcycle sequence, and to bound E_q[sigma_0]. This is the second admissible route of COORDINATION [23] §D.2 ("avoid splitting and prove uniform conditional floors", line 536), and is the retry-scaffold obligation ratified in COORDINATION [34] lines 828-833 ("the retry system rebuilt on that object with the core kick BEFORE descent, zero-based count fixed, phase-A summed, sigma_0 built from arbitrary q, and PROD-EXCURSION consumed at its EXACT typed strength").

-------------------------------------------------------------------
(1) THE STOPPED SUBCYCLE SEQUENCE WITHIN ONE R5a ROUND (zero-based count)
-------------------------------------------------------------------
Work inside a single R5a round i, on {N >= i} (round i reached, not yet crossed). The round starts at sigma_{i-1} with X_{sigma_{i-1}} in S subset R_0, R_0 := {w_theta = k, w_phi = 0, E_eps <= S_k + c_H} (lane-lp:214-218). The round terminates at T_i = min(D(sigma_{i-1}), L_i): either the process, after leaving the collar S^+, re-enters S (route (r)), or the theta-label changes at any time (route (x)). To bound the expected time to that terminus we build, as a nondecreasing sequence of (F_t)-stopping times, a recovery-then-attempt scaffold that runs the round until it terminates.

Set the attempt horizon
   T_sub := T_relax(eps,delta) + T_reloc(eps) + T*(h),   T*(h) := n + 1,  n := ceil(2 D_G / h) = ceil(4 pi sqrt(2N)/delta),  D_G = pi sqrt(2N),
all three constituents beta-free (T_relax the RELAX/descent horizon; T_reloc = O(log 1/eps) the LP.4b relocate/kick horizon; T*(h) the M5 orbit-chain length). Put kappa_0 := sigma_{i-1} (X_{kappa_0} in S subset R_0). Write, for the first-crossing time of round i,
   rho_i := inf{ s > sigma_{i-1} : w_theta(X_s) != k }   ( = L_i, an F_t-stopping time; it may fall in any phase).
Given kappa_m with the round not yet terminated at kappa_m, define:

  PHASE A (recovery to the floor domain, OR a crossing has intervened):
     alpha_m := inf{ s >= kappa_m : X_s in R_0  OR  w_theta(X_s) != k }
                ( = kappa_m if X_{kappa_m} in R_0; a hitting time of the closed set R_0 union the crossing event, hence an F_t-stopping time; alpha_m <= rho_i always, so a crossing is never outrun by an unbounded recovery wait ).
  PHASE B (one composed attempt over the beta-free window):
     kappa_{m+1} := alpha_m + T_sub.
  SUBCYCLE SUCCESS (round terminates during subcycle m):
     Succ_m := { a delayed S-return D(sigma_{i-1}) into S occurs during (alpha_m, alpha_m + T_sub] }  union  { w_theta has changed by time alpha_m + T_sub }.
The second disjunct fires for ANY crossing at or before the end of subcycle m (phase A no less than phase B), so no crossing is silently dropped; the first disjunct is a genuine delayed S-return in R5a's sense (the pass has left the collar and re-entered S). Because Succ_m fires exactly when the round terminates by route (r) or route (x), and the R5a terminus T_i = min(D(sigma_{i-1}), rho_i), the round terminus occurs within the subcycle
   M_i := min{ m >= 0 : Succ_m occurs }.

ZERO-BASED (obligation (2)). The count starts at m = 0, not m = 1: subcycle 0 begins at the round start X_{sigma_{i-1}} in S, and the round can terminate on the very first pass (the process leaves S^+ and re-enters S, or crosses, within (alpha_0, alpha_0 + T_sub]), so Succ_0 can occur and M_i = 0 is admissible. The number of attempt windows the round runs is M_i + 1. Indexing the count from m = 1 (as an earlier draft did) misplaces the geometric exponent by one; the induction of §4 is stated with the correct base P(M_i >= 0) = 1.

Conditioning fields (explicit; no independence). The subcycle field is H_m := F_{alpha_m} (the augmented path field at the phase-B start of subcycle m, or at the crossing time if a crossing has intervened); the round-start field is G_i := F_{sigma_{i-1}}. Each alpha_m, kappa_m is an F_t-stopping time; rho_i is an F_t-stopping time; Succ_m in F_{alpha_m + T_sub} (both disjuncts are F_{alpha_m + T_sub}-measurable); and {M_i >= m} = intersection over j<m of Succ_j^c lies in F_{alpha_m} = H_m. The outcome of subcycle m (Succ_m and its duration) is a functional of the POST-alpha_m path; H_m never contains the increments it is used to bound. This is R5a's single path filtration (R5a-F): there is no coin to reveal, so the coin-timing field defect (XM-R F2, verdict lines 87-88) cannot arise here either.

-------------------------------------------------------------------
(2) THE COMPOSED PASS WITH THE CORE KICK BEFORE DESCENT; RECOVERY EXHAUSTIVENESS
-------------------------------------------------------------------
Obligation (1): the exact product saddle Z := SP_k x C_0 and its stable set lie IN R_0 and do NOT deterministically descend, so a naive "every R_0 state flows to G_k in beta-free time" is FALSE at the core. We handle the band trichotomy of LP.4(ii) (lane-lp:661-735) explicitly, putting the eps-scale kick BEFORE the cone/descent route.

The saddle Z is in R_0: X3 gives E_eps(Z) = S_k + eps S_k/kappa (lane-lp:62), and eps S_k/kappa <= c_H for eps < eps_2 (the [phi-desc] eps_2 entry, lane-lp:189-203), so E_eps(Z) <= S_k + c_H; Z is an index-1 (Morse-Bott) saddle at all eps >= 0 (X3, lane-lp:63-69). A start on the stable manifold of Z flows into Z, not down to G_k. The pass from a subcycle start x in R_0 (X_{alpha_m} in R_0, the case not already terminated by a crossing) is therefore case-split by the band trichotomy:

  (T-core) INNER CORE  x in T_core := {dist(., Z) <= rho(eps)} (lane-lp:661-668): the eps-perturbed criticals near Z all lie inside T_core, where deterministic descent does not hold. The pass runs ONE LP.4b eigenfiber chain FIRST — SEG the unstable eigenfiber out to u = K_M r(eps'), scale r(eps'), cost exp(-beta O(eps^2)) — landing in the cone with |u| >= A_cone eps (lane-lp:702-714, LP.4(ii)(2) CORE ENTRY); THEN LP.4a carries the descent flow to its frame exit with the FIXED drop E_eps <= S_k - 2 eps'_0 < S_k - eps' (lane-lp:713-718). This is the exp(-beta O(eps^2)) kick that precedes descent; without it the core start does not leave the stable set. The kick cost is charged as gamma_2 eps^2 in p_sub below.
  (T-band) BAND  x in R_0 with 2 kappa <= E_eps <= S_k + c_H, w_phi = 0, off T_core: LP.4(ii) PROCESS FORM returns the band state to the sub-cap sector in the beta-free horizon T_B(eps), at order-one tracked probability (lane-lp:680-701,720-730); the off-core gradient floor |grad E_eps| >= (1/2) c_Z dist > 0 (lane-lp:667-668) drives the descent.
  (T-subcap) SUB-CAP  x in R_0 with E_eps < 2 kappa (so x in the basin D_k(eps)): by M2-ATTR(k,eps), a THEOREM on [0, eps_0) superset [0, eps_2) (lane-m2-attractor-pinning-small-coupling-v1:157, gate-v8), Crit(E_eps) intersect closure(D_k(eps)) = G_k — the ONLY critical set in the basin closure is the ground orbit, so no foreign attractor or transverse rest point can capture the pass; D_k(eps) is positively invariant (ibid.:220) with strict descent off G_k, and the slice-gradient floor <grad E_eps(x), x - pi(x)> >= (c_1/2) dist(x, G_k)^2 (M2P.5 Step 2, uniform in eps < eps_0, lane-minmig:771-773) drives dist(.,G_k) into U_ch = {dist <= delta/4} in the beta-free RELAX horizon T_relax, both Delta faces missed (M2P.5 Step 3, lane-minmig:774-776). Equivalently the LP.4(ii)(1) region-wide chain descends a sub-cap sector state to the G_k-component in beta-free time (lane-lp:683-701).
In every case the pass, once in U_ch, runs the M5 product-torus orbit chain U_ch -> B_{h/2}(g*) = S (M5-MAIN, lane-minmig:1425; matched radii sigma = h/2, n = ceil(2 D_G/h), Gamma_orb(h) = 2 C_1 n h^2 <= 6 C_1 D_G h = O(h), lane-minmig:1691) followed by the L1' base-ball landing (A4/A5 corridor-qualified free-density form, lane-sh2local:74-90). The composed pass is (kick-or-relax) -> descent -> relocate -> orbit chain -> landing, its ordering covering core, band, and sub-cap starts uniformly.

Recovery exhaustiveness. R_0 and R_0^c partition M. If subcycle m ends with X_{kappa_{m+1}} in R_0, phase A of m+1 is empty (alpha_{m+1} = kappa_{m+1}) and the composed pass above applies at once — this is (T-core)/(T-band)/(T-subcap). If X_{kappa_{m+1}} in R_0^c, the attempt has excursed through the doorway {E_eps > S_k + c_H} (the only exit from R_0, Delta_phi being level-blocked inside R_0 by the c_H ledger, lane-lp:214-218); phase A then runs until R_0 re-entry OR a crossing. The off-R_0 sojourn has finite conditional expectation by the row typed in §7 (its own terminating alternatives are "re-enters {E_eps <= S_k + c_H, w_phi = 0} or changes the theta-label", lane-lp:220-224), so alpha_{m+1} < infinity a.s.; either X_{alpha_{m+1}} in R_0 (recovered — the composed pass applies) or the theta-label changed during the excursion (rho_i <= alpha_{m+1}, round terminated by route (x), registered per §1). The genuine off-stratum traps G_{k,j} = C_k x C_j^phi live entirely in R_0^c and are absorbed into that external time budget, never given a local floor (COORDINATION [23] §D, lines 552-558: "Nothing local gives a theorem for starts with w_phi != 0"). There is no third fate: after every non-success the process is, in a.s.-finite time, either again at an R_0-start where the same uniform floor applies, or the round has already crossed.

-------------------------------------------------------------------
(3) THE UNIFORM PER-SUBCYCLE FLOOR (rate-tracked; uniform over ALL R_0 starts, core included)
-------------------------------------------------------------------
Fix a subcycle with X_{alpha_m} in R_0. Over [alpha_m, alpha_m + T_sub] the diffusion realizes the composed pass of §2, each leg tracked by the diffusion via SH.2 max-norm shadowing over its beta-free horizon at order-one probability as beta -> infinity (lane-sh-sharpness SH.2/SH.4 per lead amendment A5, lane-minmig:2953-2964; the shadowing penalty exp(-beta err(delta)) attributed to SH.2''s displacement leg), the legs composed by the strong Markov property at the intermediate F_t-stopping times (chain entrance/exit) — never by a common small-set law, so no global minorization is formed (COORDINATION [23] §D.1). By strong Markov at alpha_m, conditional on H_m on {X_{alpha_m} in R_0}, the regular conditional law of the post-alpha_m path is P_{X_{alpha_m}}, and

   P( Succ_m | H_m )  >=  P( delayed S-return into S during the window | H_m )
                      >=  c_relax . exp(-beta gamma_2 eps^2) . [ c_0^n exp(-beta Gamma_orb(h)) ] . [ m(beta,h) Leb(S) ] . exp(-beta err(delta))
                      =:  p_sub,

with c_relax the beta-free order-one RELAX/kick shadowing floor (no rate — the beta-cost of the core kick is exactly the exp(-beta gamma_2 eps^2) factor, lane-lp:702-714), c_0^n exp(-beta Gamma_orb(h)) the M5 orbit-chain factor (lane-minmig:1425,1691), m(beta,h) = c_0' beta^N exp(-beta Gamma_dens(h)) the L1' base-ball small-set mass (Gamma_dens(h) = 2 C_2 h^2 = O(h^2), dim M = 2N, lane-sh2local:74-90). Collecting,

   p_sub = c(delta,h) exp( -beta ( Gamma(h) + gamma_2 eps^2 + err(delta) ) ) > 0,     Gamma(h) := Gamma_orb(h) + Gamma_dens(h) = 6 C_1 D_G h + 2 C_2 h^2 = O(h),

valid for beta >= beta_0(h) = O(h^{-2}) (the L1/L1'/M5 diffusive floor beta h^2 >= B, load-bearing; XF A3, lane-sh2local:33-35). The floor is UNIFORM over every H_m-measurable start in R_0 — core, band, and sub-cap alike — because each leg's floor is uniform over its domain: the core kick over T_core (lane-lp:702-714), the band-to-sub-cap process form over the band (lane-lp:680-701), the RELAX over the basin (M2-ATTR + M2P.5), and the chain/landing over U_ch (M5-MAIN/L1'). A crossing (route (x), at any time in the subcycle) only enlarges Succ_m, so p_sub a fortiori lower-bounds P(Succ_m | H_m). Every beta-exponent is named — Gamma_orb, Gamma_dens, gamma_2 eps^2, err(delta) — the local small-set cost counted explicitly, never hidden inside the word "Markov" (COORDINATION [23] §D.3, lines 540-544). It is precisely the inverse of R5a's per-pass landing factor exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta))).

-------------------------------------------------------------------
(4) A.S. WITHIN-ROUND RETURN AND THE GEOMETRIC BUDGET (zero-based induction)
-------------------------------------------------------------------
For each m >= 0, on {M_i >= m} (round not yet terminated after subcycles 0,...,m-1 — hence no crossing yet, rho_i > kappa_m) the recovery of §2 places X_{alpha_m} in R_0 in a.s.-finite time (had a crossing intervened the round would already be terminated). Thus §3 gives P(Succ_m | H_m) >= p_sub, the SAME uniform floor at every m, on {no crossing before subcycle m}. Since {M_i >= m} in F_{alpha_m} = H_m, the tower property yields

   P( M_i >= m+1 | G_i )  =  E[ 1_{M_i >= m} P( Succ_m^c | H_m ) | G_i ]  <=  (1 - p_sub) P( M_i >= m | G_i ),

so by induction from the correct base P(M_i >= 0 | G_i) = 1,

   P( M_i >= m | G_i )  <=  (1 - p_sub)^m,     m >= 0.

Hence M_i < infinity a.s. (geometric termination) and, counting the M_i + 1 windows actually run,

   E[ M_i + 1 | G_i ]  =  sum_{m >= 0} P( M_i >= m | G_i )  <=  sum_{m >= 0} (1 - p_sub)^m  =  1 / p_sub  <  infinity.

The zero-based indexing is what makes the exponent m (not m-1) correct: the m = 0 pass is a genuine termination opportunity and is counted. Because each terminating subcycle ends the round either by a delayed S-return (route (r)) or by an any-time theta-crossing (route (x), registered per §1 wherever it falls), and §2 makes each non-terminated subcycle a.s. reach its phase-B start, the R5a round terminus T_i = min(D(sigma_{i-1}), rho_i) is a.s. finite. This is exactly R5a §2's asserted "each sigma_i is a.s. finite (given the process has not yet crossed)", now proved with a repeatable conditional floor rather than a single positive-probability route; and R5a-N's first-crossing index N is a.s. finite by R5a §7's own domination applied to the crossing floor p (R5a-P), unchanged.

-------------------------------------------------------------------
(5) THE WITHIN-R_0 CONDITIONAL DURATION BY SUMMING PHASE-A AND PHASE-B (deriving R5a §5(D))
-------------------------------------------------------------------
Obligation (3): bound D_i := T_i - sigma_{i-1} by SUMMING the phase-A recovery segments and the phase-B attempt windows — no pathwise domination that omits phase A. The interval [sigma_{i-1}, T_i) partitions into alternating phase-B windows [alpha_m, alpha_m + T_sub) and phase-A recovery segments [kappa_{m+1}, alpha_{m+1}); subcycle 0's phase A is empty because X_{sigma_{i-1}} in S subset R_0. Hence

   D_i  =  ( total phase-B window time )  +  ( total phase-A recovery time ),   a genuine partition.

Phase-B (attempt-window) time. There are M_i + 1 windows, each of fixed beta-free length T_sub; the total phase-B time is <= (M_i + 1) T_sub, counting each window by its length irrespective of momentary excursions inside it. By §4,
   E[ phase-B time | G_i ]  <=  T_sub . E[ M_i + 1 | G_i ]  <=  T_sub / p_sub.
Phase-A (recovery) time. Each phase-A segment runs entirely off R_0 (it starts at a non-success endpoint in R_0^c and ends the moment R_0 is re-entered or a crossing registers); the phase-A segments are pairwise disjoint and disjoint from the phase-B windows, so their union is a subset of the round's total off-R_0 occupation. By the row PROD-EXCURSION-COND typed in §7, that occupation has conditional expectation <= T_row exp(-beta(c_H/2 - err(delta))) uniformly over G_i. Thus
   E[ phase-A time | G_i ]  <=  E[ off-R_0 occupation of round i | G_i ]  <=  T_row exp(-beta(c_H/2 - err(delta))),
with NO dependence on M_i (the aggregate already counts every off-R_0 excursion of the round), so the two summands are not double-counted. By additivity of conditional expectation,

   E[ D_i | G_i ]  <=  T_sub / p_sub  +  T_row exp(-beta(c_H/2 - err(delta)))
        =  ( T_sub / c(delta,h) ) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) )  +  T_row exp( -beta( c_H/2 - err(delta) ) )
        <=  2 T_1(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) )  =:  D_bar,

for beta large, where T_1(eps,delta) := T_sub / (beta-free part of c(delta,h)) is beta-free (the polynomial beta^N prefactor of p_sub is sub-exponential, contributing -N beta^{-1} log beta -> 0) and the off-R_0 term is beta-SUPPRESSED (c_H/2 - err(delta) > 0 by the c_H ledger, lane-lp:152-155), hence dominated by the first for beta large. This is EXACTLY R5a §5(D)'s D_bar. The bound is uniform over the range S of X_{sigma_{i-1}} (p_sub and the PROD-EXCURSION-COND bound are both uniform over R_0-starts), so sup_{x in S} Psi_{R_0}(x) <= D_bar as R5a §5(D) requires; with the off-R_0 term folded in, sup_{x in S} Psi(x) <= D_bar conditionally modulo PROD-EXCURSION-COND. No independence is used: only the strong-Markov conditional law of §3, the tower property with {M_i >= m} in H_m, and the pointwise floors.

-------------------------------------------------------------------
(6) THE INITIAL DELAY sigma_0 FROM ARBITRARY q (obligation (4))
-------------------------------------------------------------------
R5a §2 defines sigma_0 := D(0) from arbitrary q and delegates E_q[sigma_0] to this piece. Consume the object (R5a-EP) and bound its expectation. Take q in D_k(eps) (the theorem's start domain, R5a §7): then E_eps(q) < 2 kappa < S_k + c_H, w_phi = 0, w_theta = k, so q in R_0 (indeed in the sub-cap part). Run the subcycle scaffold of §1 from kappa_0 := 0, X_0 = q, with "success" the first delayed S-return D(0) (route (r)) or a crossing (route (x)); phase A of subcycle 0 is empty (q in R_0). Two facts make E_q[sigma_0] finite and err-class:

  (i) The composed pass of §2 from q in R_0 reaches S in one window with floor p_sub, uniformly (sub-cap RELAX by M2-ATTR + M2P.5, then the M5 chain from anywhere in U_ch to B_{h/2}(g*) = S, n = ceil(2 D_G/h) hops covering the full product diameter D_G = pi sqrt(2N), lane-minmig:1425,1691 — a start far from g* along G_k is handled by the chain length, not assumed close). If q in S^+ the delayed-return convention (R5a-D) requires an intervening collar-exit first; the collar-exit of B_{delta/2}(g*) from a low-energy ground state stays inside R_0 (it does not require E_eps > S_k + c_H), so it adds only a beta-free order-one horizon T_exit(eps,delta) and no off-R_0 excursion. [RECONCILED 2026-08-01 - XE-8 release fence; executes the sub-item of AM-R5-27(c4) item 5 that lane-prodexc-v2.md:3103 (T-21) carries as "UNLANDED; one sub-item UNRESOLVED, not merely unlanded". THE CONTRADICTION, BOTH SIDES VERBATIM. This site asserts: "so it adds only a beta-free order-one horizon T_exit(eps,delta) and no off-R_0 excursion." MM:4258 asserts: "The false beta-free collar-exit assertion (lane-minmig:3291) is removed; the honest replacement is a polynomial prefactor P(beta) that is rate-inert under the mandated order of limits." THE LANDED ADJUDICATION, verbatim from PIECE SIGMA0-DECLAIM v2 / CURE-XE5-4 v3 (PX:22643-22646): "[:3320, per CURE-XE5-4 v2 B4 — the beta-free T_exit assertion is at MM:3320 and is STILL PRESENT in the bytes; MM:4258's claim that it 'is removed' is UNRESOLVED and must be resolved before MM:3316-3328 is treated as neutralized.]" DISPOSITION. MM:4258's removal claim named MM:3291, which is a blank line; the assertion it describes is this one, and it is still printing. The claim is BYTE-FALSE as to execution and is NOT RATIFIED here. R6b's honest replacement stands at its own site, MM:4244, verbatim: "adds the polynomial term beta N delta^2/8, not the false beta-free T_exit"; R6b Section 5, not this leg, is the live sigma_0 route. Consequently: (i) this leg's beta-free T_exit reading is not consumed by that live route and confers nothing on GAP-LP-RECUR; (ii) R5b Section 6's closure claim at MM:3328, verbatim "This closes GAP-LP-RECUR's sigma_0 obligation [SUPERSEDED 2026-08-01 per the XE-8 release fence: the claim rode the WITHDRAWN R6b fix-in-passing (SIGMA0-DECLAIM); the honest state is GAP-LP-RECUR OPEN at A6 strength per MM:3163 - this sentence stands as record, not as a discharge] and validates the R5a §7 proviso", is WITHDRAWN (CURE-XE5-4 v2 B1) and is not restored by this note; (iii) MM:3316-3328 is NOT treated as neutralized. No constant, exponent, threshold or display moves; nothing is retyped and nothing is discharged.]
  (ii) Any off-R_0 recovery is governed by PROD-EXCURSION-COND exactly as in §5; from q in the sub-cap basin the first pass incurs no off-R_0 term, and subsequent recoveries are bounded by the same aggregate.

Hence, by the geometric budget of §4 applied to the sigma_0-scaffold,
   E_q[ sigma_0 ]  <=  ( T_exit(eps,delta) + T_sub ) / p_sub  +  T_row exp(-beta(c_H/2 - err(delta)))
        <=  T_0(eps,delta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ),   T_0 beta-free, for beta large.
Therefore sigma_0 is a.s. finite from arbitrary q in D_k(eps), and E_q[sigma_0] is err-class:
   beta^{-1} log E_q[sigma_0]  <=  Gamma(h) + gamma_2 eps^2 + err(delta)  ->  0  after beta -> infinity then h,delta -> 0.
This closes GAP-LP-RECUR's sigma_0 obligation and validates the R5a §7 proviso "provided the initial-delay term does not dominate": the initial delay carries the SAME err-class exponent as D_bar, strictly below the rate S_k - m_k + eps(S_k/kappa - w_k), so it is inert under the order of limits. (Residual honestly typed: the bound uses q in D_k(eps); for a start q in U outside the certified basin D_k(eps) the sub-cap RELAX leg is not licensed, and E_q[sigma_0] is not claimed — this matches R5a §7's "fixed q in D_k(eps)".)

-------------------------------------------------------------------
(7) THE OFF-R_0 CONDITIONAL OCCUPATION: A NEW NAMED ROW, CONSUMED AT ITS OWN STRENGTH (obligation (5))
-------------------------------------------------------------------
The source row is consumed at EXACTLY its typed strength:

  ROW PROD-EXCURSION (lane-lp:214-233, verbatim, UNCONDITIONAL): "the expected time per renewal round spent OUTSIDE R_0, before the excursion either re-enters {E_eps <= S_k + c_H, w_phi = 0} or changes the theta-label, is <= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))), T_row beta-free." This is an UNCONDITIONAL per-round expectation. I do NOT append "uniformly over G_i" to it.

The Wald tower of R5a §7 and the phase-A summation of §5 require the off-R_0 occupation CONDITIONAL on the round-start field G_i (and, within a round, uniform over the subcycle field), because E(D_i | F_{sigma_{i-1}}) is what the tower step consumes. That conditional-uniform strength is NOT in the cited source bytes (verdict line 104; COORDINATION [23] §D lines 552-558: "conditional on every admissible round-start sigma field ... an unconditioned 'expected time per renewal round' sentence is not enough"). I therefore TYPE it as a new named row and consume the new row — I do not silently strengthen the source:

  ROW PROD-EXCURSION-COND (N, k) [NEW; TYPED, NOT discharged here; = R5a's GAP-PE-COND]. In the LP.5(c) renewal on R5a's continuous FLOORS rounds (eps < eps_2, q in D_k(eps)), with R_0 := {w_theta = k, w_phi = 0, E_eps <= S_k + c_H}: for every admissible round-start field G_i = F_{sigma_{i-1}} and every H_m = F_{alpha_m} arising in the §1 scaffold, the expected time per round spent OUTSIDE R_0 before the excursion re-enters {E_eps <= S_k + c_H, w_phi = 0} or changes the theta-label satisfies
       E[ off-R_0 occupation of round i | G_i ]  <=  T_row(eps,delta) exp(-beta(c_H/2 - err(delta)))  a.s., T_row beta-free,
  uniformly over the G_i-measurable round start X_{sigma_{i-1}} in S. TYPE: external, expectation-shaped, STRENGTHENS PROD-EXCURSION from an unconditional per-round expectation to the conditional-uniform version (COORDINATION [23] §D). It is the honest contract the composition needs; its proof is the same stage-4 reversibility route recorded for PROD-EXCURSION (lane-lp:232-237, the doorway-at-S_k+c_H / Delta_phi-gate-at-S_k+4c_H exit-margin round-trip), now to be established conditionally. NOT proved here. The genuine off-stratum G_{k,j} pinning-tori traps live in R_0^c and are this row's burden; no bare probability-floor version holds (lane-lp:229-237, wave-2). Consumed ONLY by §5 and §6.

Because PROD-EXCURSION-COND is a conditional strengthening, the excursion SHAPE (an additive time budget, not a probability floor) is preserved, which is exactly what composes as an additive summand in §5 (lane-lp wave-2: a probability-floor row does not compose — on its complement the process pins on a G_{k,j} trap with no return floor).

-------------------------------------------------------------------
(8) ASSEMBLY INTO R5a §7's WALD BOUND; ORDER OF LIMITS; RATE
-------------------------------------------------------------------
Feed the two derived inputs into R5a §7. R5a-N supplies E[N] <= 1/p (R5a-P) and the pull-out {N >= i} in F_{sigma_{i-1}}; §5 of this piece supplies sup_i ess-sup E[D_i | F_{sigma_{i-1}}] <= D_bar (conditionally modulo PROD-EXCURSION-COND); §6 supplies E_q[sigma_0] err-class. R5a §7's Wald arithmetic then closes verbatim on R5a's ONE terminus:
   E_q[ tau_change^theta ]  <=  E_q[ sigma_0 + sum_{i=1}^N D_i ]   [A7: inequality, strict under early crossing]  <=  E_q[sigma_0] + ( sup_i ess-sup E[D_i | F_{sigma_{i-1}}] ) . E[N]  <=  E_q[sigma_0] + D_bar / p,
the tower step licensed by {N >= i} in F_{sigma_{i-1}} (R5a-N) at each i, and tau_change^theta <= sigma_N because a crossing at any time terminates the round it falls in (route (x)). No independence is used anywhere: only the strong-Markov conditional identities (§3), the tower property with the F_{alpha_m}- and F_{sigma_{i-1}}-measurable count events, and the pointwise floors.

Rate reading and ORDER OF LIMITS (identical to R5a §7 and the M3/M4/M5 consumers, lane-minmig:748-751,881-887,1703-1710; COORDINATION [23] §B.3 lines 444-447):
   beta^{-1} log( D_bar / p )  =  [ Gamma(h) + gamma_2 eps^2 + err(delta) ]  +  [ S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ].
Mandated order: beta -> infinity FIRST at fixed (eps, delta, h = delta/2), the diffusive floor beta >= B/h^2 = O(delta^{-2}) held throughout (XF A3, lane-sh2local:33-35) — at which p_sub > 0, the geometric budget, the a.s. finiteness, and E[D_i | G_i] <= D_bar all hold, and the off-R_0 term and E_q[sigma_0] are beta-suppressed/err-class and inert; THEN delta -> 0 (h -> 0), sending Gamma(h) = O(h), err(delta), and the beta-free prefactors to 0; THEN the eps-window is read. With C := gamma_2 + C_w, and E_q[sigma_0] err-class hence non-dominating (§6),
   limsup_{beta->infinity} beta^{-1} log E_q[ tau_change^theta ]  <=  S_k - m_k + eps(S_k/kappa - w_k) + C eps^2,
exactly LP.5's upper display (lane-lp:749-751; COORDINATION [23] §B.3 lines 436-438), on the w_phi = 0 stratum, for the named coupling W = W*, at fixed q in D_k(eps). LP.3's lower side is untouched. Sending h -> 0 or delta -> 0 at fixed beta is outside scope (it inverts beta >= B/h^2 and evaporates the L1/L1'/M5 small-ball bounds — the X3 lesson at the limit level).

-------------------------------------------------------------------
WHAT R5b DISCHARGES AND WHAT REMAINS TYPED
-------------------------------------------------------------------
Discharged (relative to XM-R F3, on R5a AS CONSTRUCTED): (1) the stopped subcycle sequence is built ON R5a's rounds with the CORE KICK BEFORE DESCENT (§2, T-core), event containment holding uniformly over ALL R_0 starts by the explicit band trichotomy (core/band/sub-cap, §2-§3); (2) the count is ZERO-BASED, M_i := min{m >= 0 : Succ_m}, and the geometric induction starts correctly at P(M_i >= 0) = 1 with exponent m (§1, §4); (3) a.s. duration is proved by SUMMING the phase-A recovery segments and phase-B attempt windows in a genuine interval partition (§5), no pathwise domination that omits phase A; (4) sigma_0 is consumed from R5a and its expectation bounded err-class from arbitrary q in D_k(eps), with the out-of-basin residual honestly typed (§6); (5) PROD-EXCURSION is consumed at EXACTLY its unconditional per-round strength (lane-lp:214-233), and the conditional-uniform version the composition needs is typed as the NEW NAMED ROW PROD-EXCURSION-COND and consumed as such, not silently substituted for the source (§7).

Remaining typed (the honest tail): PROD-EXCURSION-COND (new external expectation-shaped row = R5a's GAP-PE-COND; the conditional-uniform off-R_0 occupation; consumed in §5-§6, NOT proved — stage-4 target) and the source PROD-EXCURSION (external, unchanged). GAP-LP-RECUR's internal content (a.s. within-round S-return, uniform conditional expected duration, the geometric budget, and E_q[sigma_0]) is thereby discharged as a CONSTRUCTION on R5a's object, MODULO those two rows and MODULO R5a's own inherited grade. No flip of LP-MIN-MIG follows from R5b alone: the migration flip stays BLOCKED until R5a (XM-R F2 / GAP-M3-INTERFACE) and R1 (XM-R F1 / GAP-M2-HIGH, GAP-LS-SPLICE) land and an external XM-R2 verdict signs DISCHARGE-SOUND (release gate, lane-minmig:2989-2995; COORDINATION [23] §E; not authorized here). R5b introduces no new internal load-bearing probabilistic row: the retry scaffold, a.s. return, geometric budget, duration bound, and initial-delay bound are all derived from the R5a interface (§0) and the cited proven legs (M2-ATTR, M2P.5, LP.4(ii) trichotomy with its core kick, SH.2/SH.4 shadowing, M5-MAIN, L1'), with only the two typed rows above outstanding.

### r5b — consumed

R5a interface (verbatim, from the fleet-checked-REPAIRABLE object stated in the task; consumed at exactly its typed strength): the delayed-return operator D(t)/theta^+(t) with every return carrying radial extent >= delta/4 (R5a §1); round epochs sigma_0:=D(0) from arbitrary q, sigma_i:=D(sigma_{i-1}) (R5a §2); the single augmented natural path filtration (F_t), NO coins, strong Markov at every F_t-stopping time (R5a §3); terminus T_i:=min(D(sigma_{i-1}),L_i), L_i:=inf{s>sigma_{i-1}:w_theta!=k}, routes (r)/(x) (R5a §4); uniform conditional crossing floor inf_{x in S}Phi(x)>=p (R5a §5(P)); the D_bar target 2 T_1 exp(beta(Gamma(h)+gamma_2 eps^2+err(delta))) and the within-R_0/off-R_0 duration decomposition (R5a §5(D)); the count/Wald frame {N>=i} in F_{sigma_{i-1}}, E[N]<=1/p, E_q[tau]<=E_q[sigma_0]+E[N].D_bar with the explicit proviso that the initial-delay term not dominate (R5a §7). | ROW PROD-EXCURSION (lane-lp-product-saddle-v1.md:214-233, verbatim UNCONDITIONAL): "the expected time per renewal round spent OUTSIDE R_0, before the excursion either re-enters {E_eps<=S_k+c_H, w_phi=0} or changes the theta-label, is <= T_row(eps,delta) exp(-beta(c_H/2-err(delta))), T_row beta-free" — consumed at exactly this unconditional per-round strength; NOT strengthened. | LP.4(ii) band trichotomy (lane-lp:661-735): CORE ENTRY case (2) one LP.4b eigenfiber kick FIRST, cost exp(-beta O(eps^2)), then LP.4a frame exit with fixed drop (lane-lp:702-718); band->sub-cap PROCESS FORM, order-one tracked (lane-lp:680-701,720-730); off-core floor |grad E_eps|>=(1/2)c_Z dist (lane-lp:667-668). | X3: Z=SP_k x C_0 is index-1 saddle at all eps, E_eps(Z)=S_k+eps S_k/kappa (lane-lp:62-69); eps S_k/kappa<=c_H via [phi-desc] eps_2 entry (lane-lp:189-203). | M2-ATTR(k,eps) THEOREM on [0,eps_0) superset [0,eps_2) (lane-m2-attractor-pinning-small-coupling-v1.md:157,220, gate-v8): Crit(E_eps) intersect closure(D_k(eps))=G_k; D_k(eps) positively invariant; strict descent off G_k; no boundary rest point — the no-trap-in-basin fact underpinning §2 recovery exhaustiveness and §6 sub-cap RELAX. | M2P.5 Step 2 slice-gradient floor <grad E_eps(x),x-pi(x)>>=(c_1/2)dist(x,G_k)^2, uniform eps<eps_0 (lane-minmig-proofs-v1.md:771-773); Step 3 both Delta faces missed (:774-776) — beta-free RELAX rate. | M5-MAIN P_x(X_n in B_{h/2}(y), path in T_{r0}(G_k))>=c_0^n exp(-2 beta C_1 n h^2) (lane-minmig:1425); Gamma_orb(h)=2 C_1 n h^2<=6 C_1 D_G h=O(h), matched radii sigma=h/2, n=ceil(2 D_G/h), D_G=pi sqrt(2N) (lane-minmig:1691, M5.5b); floor beta_0(h)=O(h^{-2}). | L1' base-ball landing, A4/A5 corridor-qualified free-density form m(beta,h)=c_0' beta^N exp(-beta Gamma_dens(h)), Gamma_dens=2 C_2 h^2, dim M=2N (lane-sh2local-proofs-v1.md:74-90). | Diffusive floor beta h^2>=B, beta_0(h)=O(h^{-2}), necessary (XF A3, lane-sh2local:33-35). | SH.2/SH.4 max-norm shadowing: order-one descent realization + exp(-beta err(delta)) tracking penalty attributed to SH.2''s displacement leg, cited to lane-sh-sharpness per lead amendment A5 (lane-minmig:2953-2964). | Strong Markov property of the autonomous SDE at the F_t-stopping times alpha_m, kappa_m, rho_i, sigma_{i-1} (tower-property domination). | COORDINATION.md [23] §B.3 order of limits and rate shape (lines 436-447), §C one metric / D_G=pi sqrt(2N) product diameter, §D local-not-global discipline and the conditional-round-field requirement (lines 552-558), §D.1 Gamma(h)=O(h) removed after beta->infinity, §D.2 "avoid splitting and prove uniform conditional floors" (line 536), §D.3 stopped-round/Wald with local small-set cost counted explicitly (lines 540-544); [34] ratification of the retry-rebuild spec (lines 828-833). | Constants ledger c_H (lane-lp:152-155), gamma_2, C_1, C_2, C_w, T_1, T_row, T_relax, T*, err(delta) (symbolic, named-and-bounded).

### r5b — typed gaps

PROD-EXCURSION-COND (N,k) [NEW NAMED ROW; TYPED, NOT discharged; identical to R5a's GAP-PE-COND]: the conditional-uniform strengthening of ROW PROD-EXCURSION — for every admissible round-start field G_i=F_{sigma_{i-1}} and subcycle field H_m=F_{alpha_m} arising in the §1 scaffold, E[off-R_0 occupation of round i | G_i] <= T_row(eps,delta) exp(-beta(c_H/2-err(delta))) a.s., T_row beta-free, uniformly over the G_i-measurable round start X_{sigma_{i-1}} in S. External, expectation-shaped (additive time budget, not a probability floor); strengthens the source from unconditional per-round (lane-lp:214-233) to conditional-uniform, the honest contract COORDINATION [23] §D (lines 552-558) requires; proof is the stage-4 reversibility round-trip route recorded for PROD-EXCURSION (lane-lp:232-237), now conditional. Consumed in §5 (phase-A summation) and §6 (sigma_0). The G_{k,j}=C_k x C_j^phi pinning-tori traps in R_0^c are its burden; no bare probability-floor version holds. | PROD-EXCURSION (lane-lp:214-233, EXTERNAL, unchanged): the underlying unconditional per-round off-R_0 expectation; consumed at exactly its source strength, NOT proved here (stage-4 target). | GAP-LP-RECUR internal content: DISCHARGED AS A CONSTRUCTION [READS with the XE-8 fence: the internal construction stands MODULO the typed rows it names; GAP-LP-RECUR at A6 strength remains OPEN per MM:3163 - no unconditional discharge is asserted] on R5a's object modulo the two rows above — a.s. within-round S-return + geometric budget (§4), uniform conditional expected duration by summed phase-A/phase-B (§5), and E_q[sigma_0] err-class from arbitrary q in D_k(eps) (§6); the out-of-basin residual (q in U outside the certified basin D_k(eps)) is honestly typed as not-claimed, matching R5a §7's fixed q in D_k(eps). | Inherited: R5a grade REPAIRABLE (this piece inherits automatically); and the whole LP-MIN-MIG migration flip stays BLOCKED until R5a (XM-R F2 / GAP-M3-INTERFACE) and R1 (XM-R F1 / GAP-M2-HIGH + GAP-LS-SPLICE) land and an external XM-R2 verdict signs DISCHARGE-SOUND (release gate lane-minmig:2989-2995; COORDINATION [23] §E) — not authorized here.


---

# R5c — the Z_high obligations + the SP_1 constant repair (discharges XM-R F1, flagship)

(round-5 grade: draft PROVED-WITH-TYPED-GAPS; checker SOUND)

========================================================================
R5c — SP_1 CONSTANT REPAIR + THE FOUR Z_high OBLIGATIONS (discharges XM-R F1)
========================================================================

Scope: flagship k = 1, N >= 10 throughout, the ONLY row LS.6 discharges
(lane-ls-label-sharpness-v1.md:544-577). All distances are read in the one
declared metric of M1 §0 (lane-minmig-proofs-v1.md:76-104) up to the fixed,
beta-free norm-equivalence factor folded into GAP-M1-NORM (COORDINATION [23]
§C, COORDINATION.md:453-458). The energy is J = kappa sum_i (1 - cos d_i) on
M = T^N with cyclic bonds d_i = theta_{i+1} - theta_i in (-pi, pi], winding
w = (1/2pi) sum_i d_i^rep, and tau_change = inf{ t : X_t notin Sigma_1 } the
first exit of the OPEN winding-1 sector (lane-ls:140-141).


========================================================================
PART 1 — THE SP_1 EXACT-INTERFACE CONSTANT REPAIR
========================================================================

THE DEFECT (XM-R F1, verdict lines 72-80; header self-report lane-minmig:23-29).
R1.1 fixes the L1-Z reach h := 3 delta, the off-stable margin K := 2, and the
target y in Fermi coordinates by pi(y) := pi(x), b_s(y) := 0, b_u(y) := +2 delta
(lane-minmig:1842-1846). It then asserts at lane-minmig:1882 that "the LS.5a
interface is met exactly (|x - y| <= 3 delta, ...)". That assertion is FALSE.
The start ranges over the full RELOCATE deposit dist(x, SP_1) <= 3 delta
(lane-minmig:1842), so its unstable coordinate b_u(x) ranges over [-3 delta,
+3 delta]. In the declared max-norm, with pi(y) = pi(x) killing the tangential
component and b_s(y) = 0,

    |x - y|_inf = max( |b_s(x) - 0| , |b_u(x) - 2 delta| )
                = max( |b_s(x)| , |b_u(x) - 2 delta| ),

and at the worst-case start b_u(x) = -3 delta this is max(3 delta, 5 delta)
= 5 delta > 3 delta. The source LS.5a contract literally reads |x - y| <= 3 delta
(lane-ls:422-436, "displacement |x - y| <= 3 delta"). So the delivered kick
violates the consumed contract's displacement constant. The two SP_1 call sites
both realize the excess: the RELOCATE "Near SP_1" branch (lane-ls:490-493) at
b_u(x) up to -3 delta gives 5 delta; the ATTEMPT CROSSING (lane-ls:517-521), whose
start lies in B'' on the C_k side of W^s_loc at b_u(x) < 0, gives up to about
3.5 delta. Both exceed 3 delta.

THE REPAIR (route B of the verdict: enlarge/reparameterize the reach h, the
corridor, the landing radius, and the LS.5a constant TOGETHER, all inequalities
shown). The repair is possible WITHOUT enlarging h because L1-Z prices the start
offset d = dist(x, Z) and the reach h SEPARATELY — its exponent is
C_Z(tau)(d^2 + h^2), NOT a function of |x - y| (lane-minmig:417-421, statement;
the verdict itself notes "the L1-Z event ... prices the start and target offsets
separately", lines 78-79). The old "|x - y| <= 3 delta" framing is an inherited
artifact of the SUPERSEDED SH.2'' contract (lane-ls:422-436), whose corridor was
written as B_{(C*+6)|x-y|}(Z), tying corridor radius to the displacement. Under
the L1-Z migration the corridor is instead the killed conjunct T_{3h}(Z), tied to
the reach h, not to |x - y|. We therefore RETIRE the |x - y| framing for this site
and state the delivered object as a new named contract row in L1-Z's native terms.

  ROW LS.5a-Z-SP (the SP_1 displacement contract, superseding the |x - y| <= 3 delta
  reading of LS.5a at the SP_1 site; per house rule "strengthenings/altered
  contracts are typed as new named rows"). Native interface (the L1-Z hypotheses):

     reach                 h := 3 delta                                   (P1.1)
     start offset          d := dist(x, SP_1) <= 3 delta = h              (P1.2)
     target offset         dist(y, SP_1) = |b(y)|_inf = |(0, +2 delta)|_inf
                                          = 2 delta <= 3 delta = h        (P1.3)
     tangential offset     d_{SP}(pi(x), pi(y)) = 0 <= 3 delta = h        (P1.4)
     landing radius        h/4 = (3 delta)/4                              (P1.5)
     killed corridor       T_{3h}(SP_1) = T_{9 delta}(SP_1)               (P1.6)
     displacement (DERIVED, not a hypothesis): |x - y|_inf <= 5 delta     (P1.7)

  Inequalities (P1.2)-(P1.4) are exactly the three hypotheses of L1-Z
  (lane-minmig:417-419: dist(x,Z) <= h, dist(y,Z) <= h, d_Z(pi x, pi y) <= h),
  now met with strict slack. (P1.7) is the honest displacement, replacing the
  false 3 delta: it is a CONSEQUENCE of (P1.2)-(P1.4), not an input.

The four constants move consistently: h = 3 delta, corridor 3h = 9 delta,
landing radius h/4 = 3 delta/4, and the displacement constant 5 delta. Applying
L1-Z (lane-minmig:417-421) at reach h = 3 delta gives d^2 + h^2 <= 9 delta^2 +
9 delta^2 = 18 delta^2, so for beta >= B_Z/h^2 = 16/(9 delta^2) = O(delta^{-2}),

    P_x( X_tau in B_{(3 delta)/4}(y), X_[0,tau] subset T_{9 delta}(SP_1) )
        >= c_SP(tau) exp( -beta C_SP(tau)(d^2 + h^2) )
        >= c_SP(tau) exp( -beta err(delta) ),
        err(delta) := 18 C_SP(tau) delta^2 = O(delta^2),                 (P1.8)

with c_SP(tau), C_SP(tau) = C_Z(tau)|_{Z=SP_1} the explicit beta-free L1-Z
constants (lane-minmig:502-512). This is IDENTICAL to R1.1's display (R1.1e,
lane-minmig:1872-1876); only the interface accounting changes.

WHY THE WIDENING 3 delta -> 5 delta IS HARMLESS FOR LS.5. LS.5's downstream use
of the kick consumes exactly THREE quantities, and the displacement value is not
among them:

  (a) The killed corridor stays off Delta. L1-Z's corridor is T_{9 delta}(SP_1);
      under the window (R1.1d), 0 < delta < min(r_SP, c_sec)/9 (lane-minmig:1864),
      T_{9 delta}(SP_1) subset T_{r_SP}(SP_1) subset { dist(., Delta) >= c_sec/2 > 0 },
      c_sec = dist(SP_1, Delta) >= a_1 = pi/(N-2) > 0 (lane-ls:521,
      lane-minmig:1840). Depends on 9 delta = 3h, NOT on |x - y|.

  (b) The far-side margin. R1.1c (lane-minmig:1855-1861): every z in
      B_{(3 delta)/4}(y) has signed unstable coordinate b_u(z) - w(a_z, b_s(z))
      >= (2 delta - 3 delta/4) - Lip_s (3 delta/4) >= delta/2 > 0 under Lip_s <= 1
      (R1.1a). So K_c := cl(B_{(3 delta)/4}(y)) is compact, disjoint from the
      closed W^s_loc(SP_1) with margin >= delta/2. This pins LS.5's abstract
      landing radius C* K delta = 3 delta/4, hence C* = 3/8 (lane-minmig:1861).
      Depends on the landing radius 3 delta/4 and the target coordinate +2 delta,
      NOT on |x - y|.

  (c) The cost. exp(-beta err(delta)), err = 18 C_SP delta^2 = O(delta^2) (P1.8).
      Depends on d^2 + h^2 = 18 delta^2, NOT on |x - y|.

None of (a),(b),(c) reads the displacement |x - y|. Hence the honest value
|x - y| <= 5 delta (P1.7) is delivered OUTPUT that LS.5 never consumes, and the
retraction of the false "= 3 delta" changes no downstream inequality. The
subsequent deferred CROSSING (SR-LS1 lambda-lemma routing of K_c along the far
unstable branch; LS.2b single-sheet transversal Delta-crossing; SH.2 order-one
tracking; lane-ls:522-532, cold-rechecked SOUND at lane-minmig:1944) is unchanged,
since it consumes only the far-side margin (b), which is intact.

CONCLUSION OF PART 1. Replacing the false "|x - y| <= 3 delta" assertion at
lane-minmig:1882 by the native contract LS.5a-Z-SP (P1.1)-(P1.8) — with the four
constants h = 3 delta, corridor 9 delta, landing 3 delta/4, displacement 5 delta
moving consistently and every inequality (P1.2)-(P1.8) verified — discharges the
SP_1 constant-mismatch half of XM-R F1. The SP_1 leg of §R1.1 is now exact.
The winding-j non-consumption (§R1.3) and the beta-first floor (order of limits,
beta -> infinity at fixed delta, then delta -> 0; lane-minmig:1882) are untouched.


========================================================================
PART 2 — THE FOUR Z_high OBLIGATIONS (discharges GAP-M2-HIGH, flagship)
========================================================================

THE CONSUMED SET. By LS.6(b) (lane-ls:560-576) the winding-1 critical
configurations with p >= 2 upper-branch bonds force alpha = 0, i.e. bonds a
permutation of (pi, pi, 0, ..., 0): exactly p = 2 pi-bonds and N - 2 zero-bonds
(p >= 3 pushes the high branch past pi, infeasible). Write Z_high for such an
orbit. Level = kappa[N - (N - 2p) cos alpha] with p = 2, alpha = 0:
kappa[N - (N - 4)] = 4 kappa (lane-ls:571, lane-m2-persistence-schema-v1.md:53).
Two supporting facts from the persistence schema, the "T1 parity/floor" facts:
(P) the cyclic bond-sum identity p·pi = 0 mod 2 pi forces p EVEN, so the smallest
on-Delta winding-1 critical family is p = 2 (lane-m2:58-59, 63-64); (F) on-Delta
critical levels are 2 p kappa, floor 4 kappa, and 4 kappa > S_1 (LS.6:
S_1 <= 2.7 kappa < 4 kappa for N >= 10, lane-ls:572-574). Both are consumed below.


------------------------------------------------------------------------
OBLIGATION 1 (TYPE 1) — clean/stratified structure + transverse inertia. DISCHARGED.
------------------------------------------------------------------------

THE BOND HESSIAN (the "bond form" the obligation names). For J = kappa sum_i
(1 - cos d_i), theta_j-derivative is dJ/dtheta_j = kappa[sin d_{j-1} - sin d_j],
and the theta-Hessian is

    H_{jl} = kappa[ cos(d_{j-1})(delta_{j,l} - delta_{j-1,l})
                    - cos(d_j)(delta_{j+1,l} - delta_{j,l}) ],

i.e. the WEIGHTED CYCLE-GRAPH LAPLACIAN with edge weights w_i = kappa cos(d_i):

    H = B^T diag(kappa cos d_i) B,   H(x,x) = sum_i kappa cos(d_i) (Bx)_i^2 =: Q(Bx),

where B: R^N -> R^N is the bond (incidence/difference) map (Bx)_i = x_{i+1} - x_i,
ker B = the rotation line R·(1,...,1) (dim 1), image B = W := { v : sum_i v_i = 0 }
(dim N-1, telescoping). This is precisely the LS.4 SP_1 form
(lane-ls:400-420, Q_SP = kappa[cos(pi-a_1)|(Bx)_1|^2 + cos(a_1) sum_{i>=2}|(Bx)_i|^2])
with the count of negative weights raised from one to two.

AT Z_high (bonds (pi, pi, 0, ..., 0), say pi-bonds on the two distinct cyclic
edges i_1, i_2): cos(pi) = -1 on those two edges, cos(0) = +1 on the other N-2.
Hence on the realizable bond-increment hyperplane W = { sum_i v_i = 0 },

    Q(v) = kappa [ -v_{i_1}^2 - v_{i_2}^2 + sum_{i != i_1,i_2} v_i^2 ].     (P2.1)

Q is DIAGONAL in bond coordinates, so its restriction to W depends only on the
NUMBER of negative weights (two), not on which edges carry them: the inertia is
identical for all placements and independent of adjacency.

INERTIA OF Q ON W (dim N-1), by the LS.4 method extended to two negative weights.
(i) The positive subspace P := { v in W : v_{i_1} = v_{i_2} = 0 } has dimension
N - 3 (N-2 free coordinates minus the sum-zero constraint), and on P,
Q(v) = kappa sum_{i != i_1,i_2} v_i^2 > 0 (vanishes only at 0): positive definite,
so n_+ >= N - 3.
(ii) The negative subspace: take n1 with v_{i_1} = v_{i_2} = 1 and v_i = -2/(N-2)
elsewhere (sum = 0), n2 with v_{i_1} = 1, v_{i_2} = -1, else 0 (sum = 0). Then
Q(n1) = kappa[-1 - 1 + (N-2)(4/(N-2)^2)] = kappa[-2 + 4/(N-2)] < 0 (N > 4),
Q(n2) = kappa[-1 - 1] = -2 kappa < 0, and the Q-bilinear pairing
Q(n1, n2) = kappa[-(1)(1) - (1)(-1) + 0] = kappa[-1 + 1] = 0. So span(n1, n2) is
Q-negative-definite of dimension 2: n_- >= 2. Moreover P is Q-orthogonal to
span(n1, n2): for p in P, Q(n1, p) = kappa(-2/(N-2)) sum_{i != i_1,i_2} p_i =
kappa(-2/(N-2))·0 = 0, and Q(n2, p) = 0 (n2 supported on the zeroed coordinates
of p). 
(iii) dim P + dim span(n1,n2) = (N-3) + 2 = N-1 = dim W, and the two definite
pieces are Q-orthogonal, so they span W and Q|_W is nondegenerate:

    inertia( Q|_W ) = (n_+, n_-, n_0) = (N - 3, 2, 0).                     (P2.2)

FULL THETA-HESSIAN INERTIA. Since H(x,x) = Q(Bx) with B: R^N -> W of kernel the
rotation line (dim 1) and Q|_W nondegenerate,

    inertia(H at Z_high) = (N - 3, 2, 1),                                  (P2.3)

the single zero mode being the rotation-orbit tangent (1,...,1). Thus the
TRANSVERSE Hessian (mod the orbit) has inertia (N - 3, 2) — NONDEGENERATE of
index exactly 2, n_0 = 0. The two unstable directions are span(n1, n2): the
"release both pi-bonds together" mode (n1) and the "split one pi-bond against the
other" mode (n2). This settles the R1.2 residue's open point (i)
(lane-minmig:1910): "whether the rotation-orbit kernel plus the map B leaves the
transverse form NONDEGENERATE" — it does, with n_0 = 1 (rotation only), so
Z_high is MORSE-BOTT CLEAN.

STRUCTURE (not stratified, not self-intersecting), settling R1.2 point (ii). Each
Z_high is a single rotation orbit { theta* + t(1,...,1) : t } — a smooth compact
1-torus (circle). Distinct pi-bond placements {i_1, i_2} give distinct bond
patterns; since bonds are rotation-invariant, every point of one orbit carries
that orbit's pattern, so orbits with different placements are DISJOINT (no
intersection point can carry two patterns). Hence the p = 2 winding-1 critical set
at level 4 kappa is a DISJOINT UNION of exactly C(N, 2) = N(N-1)/2 clean rotation
circles, each with transverse inertia (N-3, 2, 0). No stratum, no self-crossing.

TYPE 1 DISCHARGED. Each Z_high is a smooth compact Morse-Bott-clean rotation
circle; (H1)-(H3) of L1-Z (lane-minmig:394-402) hold with tube T_{r_H}(Z_high),
r_H > 0 the normal injectivity radius (positive by cleanness), Hessian bound
L_H := sup_{T_{r_H}} ||Hess J||_op < infinity, n = N; transverse inertia
(N-3, 2, 0). This also discharges L1-Z-TUBE for Z_high (formerly subsumed into
GAP-M2-HIGH TYPE 1, lane-minmig:1961): the on-Delta orbits' tubular structure IS
established. The optimistic M2 parenthetical is thereby made rigorous, not merely
asserted.


------------------------------------------------------------------------
OBLIGATION 2 (TYPE 2) — the applicable invariant-manifold theorem. DISCHARGED.
------------------------------------------------------------------------

Z_high is a compact critical circle of the smooth gradient flow -grad J, with
transverse Hessian nondegenerate of index 2 (P2.3). Under the gradient flow the
linearization on the orbit is -Hess J: the N-3 positive Hessian eigenvalues give
N-3 CONTRACTING normal directions, the 2 negative give 2 EXPANDING normal
directions, and the tangential (orbit) exponent is 0. Because every normal
exponent is nonzero while the tangential is zero, Z_high is a NORMALLY HYPERBOLIC
invariant manifold (the normal rates strictly dominate the tangential rate 0).

The applicable theorem is the classical normally-hyperbolic invariant-manifold
(NHIM) stable/unstable manifold theorem — Hirsch-Pugh-Shub / Fenichel — the
index-2-circle sibling of the index-1 SR-LS1 (lane-ls:115-128) the corpus already
consumes as a named external input (SR discipline). Its hypothesis rows all hold:
smooth gradient flow on the compact T^N (yes); Z_high a compact invariant
(critical) circle (yes, TYPE 1); normal hyperbolicity with nondegenerate transverse
inertia (yes, TYPE 1, P2.3). Conclusion, stated for THIS structure:

  SR-LS1' (NHIM at a normally hyperbolic critical circle of transverse index 2).
  There is a neighbourhood U_H subset T_{r_H}(Z_high) in which
   - W^s_loc(Z_high) is a smooth submanifold of dimension 1 + (N-3) = N-2, i.e.
     CODIMENSION 2, tangent along Z_high to the orbit line plus the N-3 stable
     normal directions; in Fermi normal coordinates (a, b_s, u) — a along the
     circle, b_s the N-3 stable normals, u = (u_1, u_2) the 2 unstable normals —
     W^s_loc = { u = w(a, b_s) } with w(a, 0) = 0 and Dw = 0 on Z_high;
   - W^u_loc(Z_high) is smooth of dimension 1 + 2 = 3 (circle x the 2-plane of
     unstable normals);
   - both are fibered smoothly over the circle; every flow line from U_H \
     W^s_loc leaves U_H along W^u_loc (lambda-lemma tracking); and J is strictly
     decreasing off Z_high along every such flow line (gradient flow off Crit).

CRITICALLY, NO Lojasiewicz/retraction argument, NO center-manifold statement, and
NO stratified refinement is needed here: those are required only when the critical
set is DEGENERATE (a zero transverse eigenvalue) or non-manifold. TYPE 1 proved the
transverse form is nondegenerate (n_0 = 1, orbit only), so the SMOOTH NHIM
theorem applies directly and W^u/W^s are smooth graphs. This resolves R1.2 point
(iii) (lane-minmig:1910) precisely: the applicable theorem is the index-2 NHIM
statement above (SR-LS1 was inapplicable because it is index-1-circle only), and
Z_high is a circle (not the feared torus). The transverse local picture is the
standard saddle: an (N-3)-dim stable × 2-dim unstable normal splitting.

TYPE 2 DISCHARGED (with SR-LS1' consumed as a named classical external input, on
the same footing as SR-LS1; if the corpus later wants it internalized that is a
separate SR obligation, not a gap in this discharge).


------------------------------------------------------------------------
OBLIGATION 4 (TYPE 4) — codimension->=2 corner transmission. DISCHARGED (direct kick).
------------------------------------------------------------------------

[Treated before TYPE 3 because its construction supplies the RELOCATE "Near
Z_high" success outright and makes the DAG descent of TYPE 3 unnecessary for the
relocate-or-change bound.]

THE LOCAL SECTOR STRUCTURE at a (pi, pi, 0, ..., 0) corner. In the transverse
2-plane spanned by the two unstable normals, use u_1 := pi - d_{i_1},
u_2 := pi - d_{i_2} (the two "release" coordinates; the unstable 2-plane
span(n1, n2) projects ONTO the full (u_1, u_2)-plane, since n2 ~ (-,+) and
n1 ~ (-,-) are independent). All other bonds are near 0 (Fermi distance ~ pi from
their own pi-sheets), so LOCALLY exactly TWO Delta sheets pass through: {u_1 = 0}
= {d_{i_1} = pi} and {u_2 = 0} = {d_{i_2} = pi}. They divide a neighbourhood into
FOUR open quadrants. Their windings, from w = (1/2pi) sum d_i^rep (a bond crossing
+pi wraps its representative down by 2pi, dropping w by 1):

     Q_{++} (u_1>0, u_2>0):  both bonds < pi, reps (pi-u_1)+(pi-u_2)+0 = 2pi-      -> w = 1  (home, Sigma_1)
     Q_{-+} (u_1<0, u_2>0):  d_{i_1} wraps, reps (-pi+|u_1|)+(pi-u_2)+0 = small    -> w = 0
     Q_{+-} (u_1>0, u_2<0):  d_{i_2} wraps                                          -> w = 0
     Q_{--} (u_1<0, u_2<0):  both wrap, reps sum = -2pi + small                     -> w = -1

So THREE of the four adjacent open sectors are non-home (w != 1). The T1 parity
fact (P) is exactly what pins this: p even means the corner is a genuine 2-sheet
crossing point of the winding lattice {..., 1, 0, -1, ...}, with the home sector
adjacent (across ONE sheet each) to two w = 0 sectors.

THE KEY GEOMETRIC ASYMMETRY vs. SP_1. Z_high lies ON Delta (both pi-bonds are AT
pi), whereas SP_1 is a FIXED distance c_sec >= a_1 = pi/(N-2) = O(1) OFF Delta
(Part 1(a)). Consequently the non-home sectors are only O(delta) away from Z_high:
a point in Q_{-+} at u = (-2 delta, +2 delta) has dist to Z_high = |u|_inf =
2 delta. This is WITHIN the L1-Z reach h = 3 delta. Therefore the label change can
be reached DIRECTLY by one killed L1-Z kick at cost exp(-beta O(delta^2)) — no
deterministic far-branch flow (LS.2b) and no separate corner-transmission lemma
are required. (For SP_1 a direct cross would cost exp(-beta O(a_1^2)) =
exp(-beta O(1)), prohibitive; that is why SP_1 alone needs LS.2b. The prior rounds
carried the SP_1 template — kick-while-preserving-winding, then transmit — onto
Z_high and hit the corner wall; the correct move for an ON-Delta orbit is to kick
straight across.)

THE DIRECT SECTOR-TARGETING KICK. Let x be a winding-1 RELOCATE start whose forward
gradient flow limits to Z_high (so x is on/near W^s_loc(Z_high)), delivered within
dist(x, Z_high) <= 3 delta by SH.2 flow-tracking (the same uniform-time delivery
LS.5 RELOCATE uses at every branch, lane-ls:466-499; and the SAME assumption
Part 1 / R1.1 makes for SP_1). Choose the target in Fermi coordinates by

     pi(y) := pi(x),   b_s(y) := 0,   u(y) := (-2 delta, +2 delta)  in Q_{-+}.  (P2.4)

Then dist(y, Z_high) = |u(y)|_inf = 2 delta <= 3 delta = h, tangential offset 0,
start offset d = dist(x, Z_high) <= 3 delta = h — the L1-Z hypotheses
(lane-minmig:417-419) hold with reach h = 3 delta, exactly as in Part 1 (P1.2)-
(P1.4). The landing ball B_{h/4}(y) = B_{(3 delta)/4}(y) has, coordinate-wise,
u_1 in (-2 delta - 3 delta/4, -2 delta + 3 delta/4) = (-11 delta/4, -5 delta/4),
all < 0 with margin >= 5 delta/4; u_2 in (5 delta/4, 11 delta/4), all > 0 with
margin >= 5 delta/4; and |b_s| <= 3 delta/4 (the other bonds stay near 0). So

     B_{(3 delta)/4}(y) subset Q_{-+}  with margin >= 5 delta/4 from BOTH sheets,  (P2.5)

hence the entire landing ball sits in the OPEN winding-0 sector, committed with
margin. Apply L1-Z (lane-minmig:417-421), whose event A = {X_tau in B_{h/4}(y),
X_[0,tau] subset T_{r_H}(Z_high)} is Delta-BLIND and sign-BLIND (its proof, Step 4
at lane-minmig:472, only uses the Fermi frame (H2) and the Hessian bound (H3),
which hold throughout T_{r_H} regardless of Delta): for d^2 + h^2 <= 18 delta^2
and beta >= 16/(9 delta^2) = O(delta^{-2}),

     P_x(A) >= c_H(tau) exp( -beta C_H(tau)(d^2 + h^2) )
             >= c_H(tau) exp( -beta·18 C_H(tau) delta^2 )
             =  c_H(tau) exp( -beta O(delta^2) ),                          (P2.6)

with c_H, C_H the beta-free L1-Z constants for Z = Z_high (L = L_H, n = N,
lane-minmig:502-512).

THE ENDPOINT CERTIFIES A COMPLETED LABEL CHANGE. On the event A, X_tau in
B_{(3 delta)/4}(y) subset Q_{-+} (P2.5), i.e. the endpoint is in the OPEN
winding-0 sector with margin 5 delta/4. Since x lies in Sigma_1 (winding 1) and
Sigma_1 is separated from the winding-0 sector by Delta, ANY continuous path from
x to X_tau in Q_{-+} must cross Delta (topological separation of sectors);
therefore the first-exit time obeys tau_change <= tau on A. This is exactly the
"event that the process ENTERS A DIFFERENT OPEN SECTOR after the touch" the
obligation demands (verdict; COORDINATION [23]:408-415 post-gate transmission),
constructed as {X_tau in B_{h/4}(y)} with y in the different sector, and shown to
have probability >= c_H exp(-beta O(delta^2)) (P2.6). No graze-vs-genuine ambiguity
survives: the endpoint is interior to the different sector by margin 5 delta/4, and
the codim-2 corner {u_1 = u_2 = 0} is POLAR for the nondegenerate diffusion (N >= 2),
so the sheet crossing occurs a.s. at a regular codim-1 point (u_2 > 0 at the
crossing), i.e. a single-sheet crossing into Q_{-+}. LS.2b's single-sheet
limitation (which cannot transport a corner hit, lane-minmig:1889) is thereby
BYPASSED, not invoked.

ROBUSTNESS. Even the APPROACH is favorable: since Z_high is on Delta, if SH.2
tracking of the approach flow itself grazes Delta before reaching dist 3 delta,
that graze is already a label change (tau_change fired) — an accepted RELOCATE
success. So the relocate-or-change bound holds a fortiori.

TYPE 4 DISCHARGED: from any winding-1 start with omega-limit Z_high, one killed
L1-Z kick targeting a non-home quadrant completes the label change in uniform time
tau at cost exp(-beta O(delta^2)) — a single-tube, beta-free-constant kick, no
common small-set law, no LS.2b, no corner-transmission lemma required. The
composition discipline (COORDINATION [23] §D, COORDINATION.md:522-563; strong
Markov at tube entrance, no revived global minorization) is preserved.


------------------------------------------------------------------------
OBLIGATION 3 (TYPE 3) — finite-DAG descent, total cost exp(-beta O(delta^2)). DISCHARGED.
------------------------------------------------------------------------

TYPE 4 already discharges the RELOCATE "Near Z_high" branch outright (the direct
label-change kick IS a relocate-or-change success), so the interior descent is not
strictly needed for the migration bound. For completeness and to close the DAG
row as typed, the winding-1 descent (branch (beta) of the honest split,
lane-minmig:1902-1905) is also available:

  (1) The killed L1-Z kick is sign-blind (index-2 is fine: L1-Z Step 4 uses only
      the Gronwall factor e^{L tau}, dominating expansion or contraction alike,
      lane-minmig:470). Targeting the HOME quadrant y' with u(y') = (+2 delta,
      +2 delta) in Q_{++}, the same estimate (P2.6) lands the process off
      W^s_loc(Z_high) STILL winding 1, at cost exp(-beta O(delta^2)), with the
      landing ball off the closed W^s_loc by margin >= 5 delta/4 (as in P2.5,
      both coordinates positive).
  (2) The deterministic gradient flow then strictly decreases J from 4 kappa
      (J strictly decreasing off Crit along W^u, SR-LS1'). Its omega-limit is a
      winding-1 critical set STRICTLY below 4 kappa. By LS.6(b) (lane-ls:560-576)
      the only winding-1 critical levels below 4 kappa are m_1 (C_1) and S_1 (SP_1)
      — the floor fact (F) guarantees no other on-Delta family intervenes (next is
      4 kappa itself). So the omega-limit is C_1 (branch (i), done — ground) or
      SP_1 (apply the Part 1 kick LS.5a-Z-SP) or a valley/Delta-approach (branch
      (ii), a label-change candidate via LS.2c). The DAG has depth <= 2 (4 kappa
      -> S_1 -> m_1), FINITE (LS.6 finiteness, lane-minmig:1941).
  (3) Uniform crossing/flow time: the compact landing ball, disjoint from the
      closed W^s_loc(Z_high) by margin 5 delta/4, flows to the next tube (or across
      Delta) in uniform beta-free time by upper-semicontinuity of the exit/flow
      time on the compact set + continuous dependence — the identical argument
      LS.5 uses for SP_1 (lane-ls:522-529, lane-minmig:1880).
  (4) Composition is by strong Markov at tube entrance/exit times, distinct tubes
      per orbit, NO common small-set law (COORDINATION [23] §D). Finitely many
      levels each costing exp(-beta O(delta^2)) compose to
      exp(-beta sum_j O(delta_j^2)) = exp(-beta O(delta^2)).

TYPE 3 DISCHARGED: total descent cost exp(-beta O(delta^2)), one killed sign-blind
L1-Z kick per level, beta-free per-orbit constants, no common small-set law, finite
DAG (LS.6).


------------------------------------------------------------------------
CONSEQUENCE FOR GAP-M2-HIGH AND LS-MIN-MIG (flagship k=1, N>=10)
------------------------------------------------------------------------

TYPES 1-4 are discharged for every consumed Z_high in the flagship. The on-Delta
high-orbit residue of §R1.2 (lane-minmig:1913-1932) is therefore CLOSED for the
flagship: with the SP_1 leg exact (Part 1) and the Z_high leg complete (Part 2),
the DISPLACEMENT half of LS-MIN-MIG is discharged for the entire consumed critical
set { C_1, SP_1, the C(N,2) Z_high circles } at k = 1, N >= 10. This SUPERSEDES
GAP-M2-HIGH as flagship-open. (LS-MIN-MIG as a whole still awaits the LP-side /
R2-R3 reconstruction — GAP-M3-INTERFACE and GAP-LP-RECUR, XM-R F2/F3 — which are
out of this piece's scope; no migration flip is authorized here.)


========================================================================
ORDER OF LIMITS (declared, both parts)
========================================================================
For every kick (SP_1 and Z_high): beta -> infinity FIRST at fixed delta (each
L1-Z valid for beta >= 16/(9 delta^2) = O(delta^{-2}); the load-bearing floor
beta h^2 >= 16 holds throughout), THEN delta -> 0. Never delta -> 0 at fixed beta
(inverts the diffusive floor; lane-minmig:488). The delta-window (R1.1d) and the
tube inclusions are satisfied eventually at every fixed geometry because
delta -> 0 acts last.


### r5c — consumed

EXACT ROWS CONSUMED (file : line — verbatim what is used):

- L1-Z lemma (the killed local kick), lane-minmig-proofs-v1.md:394-423 (hypotheses H1-H3; statement P_x(X_tau in B_{h/4}(y), X_[0,tau] subset T_r(Z)) >= c_Z(tau) exp(-beta C_Z(tau)(dist(x,Z)^2 + h^2)), floor beta h^2 >= B_Z = 16, beta_0 = O(h^{-2})); constants block :502-512 (C_Z(tau)=(2+L tau)^2/(2 tau), c_Z(tau)=(2/pi)^n exp(-n pi^2 tau e^{2L tau}/4), corridor T_{3h}(Z)); proof Step 4 :464-472 (the Delta-blind, sign-blind corridor bootstrap sup|R_t| <= h/4, path in T_{3h}). Consumed at its EXACT typed strength; the sign-blindness (index-2 use) is the same Gronwall e^{L tau} factor :470.

- R1 splice §R1.1 (SP_1), lane-minmig:1830-1882 — the SP_1 discharge whose lane-minmig:1882 exact-interface claim ("|x - y| <= 3 delta") Part 1 repairs; (R1.1a) Lip_s<=1 :1837; target (R1.1b) :1845; margin (R1.1c) :1855-1861 (>= delta/2, C* = 3/8); window (R1.1d) :1864; kick (R1.1e) :1872-1876.

- LS.5a source contract, lane-ls-label-sharpness-v1.md:422-436 — "displacement |x - y| <= 3 delta", the contract Part 1 supersedes by the native row LS.5a-Z-SP.

- LS.4 (SP_1 transverse form + inertia), lane-ls:397-420 — Q_SP = kappa cos(a_1)[-|(Bx)_1|^2 + sum_{i>=2}|(Bx)_i|^2], inertia (N-2,1,0) on {sum(Bx)_i=0}; the method Part 2 TYPE 1 extends to two negative weights.

- LS.6(b) classification, lane-ls:560-576 — winding-1 criticals: C_1 (m_1), SP_1 (S_1), p>=2 forces alpha=0 bonds (pi,pi,0,...), level >= 4 kappa; S_1 <= 2.7 kappa < 4 kappa for N>=10; DAG finiteness (levels).

- LS.2b (single-sheet far-branch crossing), lane-ls:310-330 — consumed for SP_1 only (Part 1(b)); explicitly NOT invoked for Z_high (bypassed, TYPE 4).

- SR-LS1 (index-1 circle stable/unstable manifold theorem), lane-ls:115-128 — consumed for SP_1; its index-2 sibling SR-LS1' (Hirsch-Pugh-Shub/Fenichel NHIM) named as the analogous external input for Z_high (TYPE 2).

- Persistence-schema T1 parity/floor facts, lane-m2-persistence-schema-v1.md:53 (p=2 level 4 kappa), :58-64 (cyclic sum p·pi=0 mod 2pi forces p EVEN; on-Delta level 2 p mu, floor 4 mu).

- COORDINATION [23]:408-415 (COORDINATION.md) — post-gate transmission requirement (entry into a different sector before return, probability exp(-o(beta))); §C :453-520 (L1-Z shape, one declared metric); §D :522-563 (composition by strong Markov, no common small-set law).

- Energy/Hessian: J = kappa sum_i (1-cos d_i) (lane-m2:31-64 model, lane-ls Standing Data :131-173); the theta-Hessian = weighted cycle Laplacian H = B^T diag(kappa cos d_i) B is DERIVED in Part 2 TYPE 1 (not cited).

- GAP-M1-NORM (lane-minmig:352-367) — the fixed beta-free norm-equivalence factor under which all distances are read.

### r5c — typed gaps

GAP-M2-HIGH is DISCHARGED for the flagship (k=1, N>=10) by this piece; the residuals below are genuinely typed:

- GAP-M2-HIGH-NONFLAG (scope boundary, mirrors §R1.5, lane-minmig:1950-1951): everything above is the flagship k=1, N>=10. Any non-flagship row (k>=2, general N, composed/symmetric families) that enlarges the on-Delta critical set must re-enter the enumeration: for each newly consumed on-Delta orbit re-derive its bond-Hessian inertia (TYPE 1: the count of negative weights = number of pi-bonds p, giving transverse inertia (N-1-p, p, 0) on the hyperplane and full (N-1-p, p, 1); p even by parity, so index p even), verify Morse-Bott cleanness and the disjoint-circles/no-stratification structure, invoke the index-p NHIM theorem (TYPE 2), and re-run the direct sector-targeting kick into an adjacent non-home sector at reach h=3 delta (TYPE 4). For p>=4 the corner is a codim-p multi-sheet stratum: the direct-kick argument still applies (adjacent sectors within O(delta) reach, killed L1-Z Delta-blind), but the sector-lattice geometry and the polarity of the codim-p corner (codim-p sets are polar for N-dim BM when p>=2, holds here) must be re-verified per family. NOT inherited from the flagship.

- SR-LS1' as a named external input (TYPE 2): the index-2 NHIM stable/unstable-manifold theorem (Hirsch-Pugh-Shub/Fenichel) is consumed as a classical SR-style input, on the same footing as the corpus's SR-LS1 (index-1). Its hypotheses are fully discharged from TYPE 1 (compact invariant circle, nondegenerate transverse inertia, normal hyperbolicity). If corpus policy requires SR-LS1' internalized rather than cited, that is a separate SR obligation, not a defect in this discharge.

- RELOCATE uniform-time delivery to dist <= 3 delta of Z_high (and of SP_1 in Part 1): consumed from LS.5 RELOCATE (lane-ls:466-499) at the SAME strength R1.1 assumes for SP_1 — the flow-approach time to the omega-limit is absorbed into T_R(delta). This is a PRE-EXISTING consumed row of LS.5, not opened by this piece; flagged for symmetry with the SP_1 treatment. Mitigated for Z_high by robustness: an approach-graze of Delta is itself a label-change success (Z_high is on Delta).

NOT gaps (recorded): FLOOR/ORDER (beta -> infinity before delta -> 0) unchanged; NON-CONSUMPTION of winding-j (j!=1) orbits unchanged (§R1.3); L1-Z-TUBE now DISCHARGED for Z_high via TYPE 1 (formerly subsumed into GAP-M2-HIGH). LS-MIN-MIG as a whole remains BLOCKED on the LP-side rows (GAP-M3-INTERFACE, GAP-LP-RECUR, XM-R F2/F3) — out of scope here; no flip authorized.



---

# R6a — the collar-killed crossing event (XM-R2 F1 cure; Section 1's asserted density is DISCHARGED by Lemma KD below)

(grade: draft PROVED; checker REPAIRABLE; its Section-1 assertion was the R6a FATAL, cured by R7a/R8a Lemma KD below - read Section 1 through the KD lemma)

R6a — THE COLLAR-KILLED CROSSING EVENT FOR R5a's (P) FLOOR
(route (a) of the XM-R2 F2 repair: kill the M3-GS chain on S^+, verdict line 91)

========================================================================
0. WHAT IS BROKEN AND THE ONE-LINE FIX
========================================================================
R5a's crossing floor is Phi(x) := P_x(L < D(0)) with the pointwise claim
inf_{x in S} Phi(x) >= p (lane-minmig:3045,3055-3059), S = B_{delta/4}(g*),
S^+ = B_{delta/2}(g*), D(0) the DELAYED S-return (first exit of S^+, THEN
first re-entrance of S; :2997-3002). The floor is built by prepending the
M3-GS product-orbit chain to the SH.3 sandwich: M3-GS delivers
P_x(X_{n+1} in A) >= p_chain . m_1 Leb(A) for A subset B_0 = S, uniformly
over the WHOLE tube U_{1/2} (:670-725), and this "average-to-infimum"
Lebesgue floor over S feeds the SH.3 average. The defect (verdict 85-89):
the M3-GS event is an n-hop TANGENTIAL relocation around G_k that LANDS in
S; for a start x tangentially far from g* the chain exits S^+ and lands
back in S, realizing D(0) at that landing. Its probability therefore
cannot sit inside a lower bound for {L < D(0)}, and the sentence "every leg
travels UPWARD from S" (:3059) is false of the M3-GS legs.

THE FIX (one insight). The M3-GS chain is stated over ALL of U_{1/2} —
tangentially arbitrary starts up to the orbit diameter D_G = pi sqrt(2N)
away from g* — but the crossing floor is only ever evaluated at
x = X_{sigma_{i-1}} in S (Round-start law, :3021; used in §7 at :3087). A
start in S is within delta/4 (max norm) of g* in BOTH the transverse and
tangential coordinates. So the long orbit chain is never needed here: a
SINGLE local density step positions x inside S^+ WITHOUT ever exiting S^+,
the SH.3 ascent then makes the ONE exit of S^+ upward, and the LP.5(a)+(b)
route avoids S until the label change. The chain's uniformity over U_{1/2}
was precisely the source of the collar-exit; restricting to the true start
domain S removes it. Below, this is executed and every constant re-derived.

========================================================================
1. THE KILLED POSITIONING STEP (single L1', confined to S^+)
========================================================================
Fix the reference ground ball B_ref := B_{delta/8}(g*) subset S (a valid
ground small-set: radius delta/8 <= r0/8). Let x in S be arbitrary; write
delta_x := dist(x, G_k) <= delta/4 and h_x := d_{G_k}(pi(x), g*). Because
S = B_{delta/4}(g*) is a max-norm ball centred at g* in G_k, both
delta_x <= delta/4 and (by the flat-orbit identity C_geo = 1 below the
injectivity radius, lane-minmig:688-691; single displacement <= delta/4 so
the norm-equivalence ledger GAP-M5-EUC is used only in its EXACT regime,
not widened) h_x <= delta/4. Both are <= r0/4, so L1/L1' apply.

Instantiate L1' (density upgrade, corridor-qualified A5 free-density form,
lane-sh2local:74-90,276-281) with horizon 1, transverse size delta_x,
tangential slide from pi(x) to the target y := g*, and — using L1's master
bound (star), which is FREE in the landing radius rho (lane-sh2local:164,
190-195; rho enters only the small-ball term, absorbed once beta rho^2 >= 1)
— the FIXED landing/corridor radius rho := delta/8, UNIFORM over x in S
(this decouples the landing ball from h_x, curing the h-dependence of the
default rho = min(h,r0/8)). The action is rho-independent,
S(1) <= C_1(delta_x^2 + h_x^2) <= C_1 . delta^2/8 (lane-sh2local:142-146),
and the diffusive floor beta rho^2 = beta(delta/8)^2 >= 1, i.e.
beta >= 64/delta^2, lies inside the mandated floor beta >= B/delta^2 (XF A3,
carried before beta -> infinity). This yields, on the flagship manifold
M = T^{2N} (n = 2N, so beta^{n/2} = beta^N), the S^+-CONFINED density floor
as sub-measures on M:

  P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3 delta/8 )
        >=  m_ref . Leb(dz)|_{B_ref},                              (POS)
  m_ref := c_0' beta^N exp( -beta C_2 . delta^2/8 ),   C_2 = C_2' (A4-inflated),

uniform over x in S. Justification of the two conjuncts from ONE event:
L1's corridor bootstrap (Gronwall) controls the FULL lifted deviation
R_t := X_t - phi(t), giving sup_t |R_t| <= sigma e^{L} rho = delta/8 on the
driving small-ball event G_eps (lane-sh2local:156-158); the mean control
path phi is the two-leg path (transverse relaxation b_0 -> 0 at base a_0,
then tangential slide a_0 -> a* along G_k, :133-134), whose every point has
max-norm distance to g* at most max(delta_x, h_x) <= delta/4. Hence on
G_eps, sup_t |X_t - g*|_max <= delta/4 + delta/8 = 3 delta/8 < delta/2, so
the path stays STRICTLY inside S^+ throughout [0,1], AND X_1 in B_{delta/8}(g*).
The L1' Girsanov/symmetry-Jensen argument lower-bounds exactly the mass of
this G_eps-type event and its endpoint density; tightening the recorded
corridor from T_{3r0/8} to B_{3delta/8}(g*) is immediate because L1 already
bounds sup|R_t|, not merely the transverse part. No orbit chain, no p_chain
factor: (POS) is STRICTLY STRONGER than the M3-GS density m_1 (:711-712,717)
because the err-class chain cost c_0^n exp(-2 beta C_1^eps n h^2), whose
exponent is O(beta . n h^2) = O(beta D_G h) = O(beta delta), is DROPPED. The
surviving positioning cost is O(delta^2), better than the discarded O(delta).

========================================================================
2. THE CROSSING EVENT, AS A SUBSET OF {L < D(0)}
========================================================================
Read D(0), L, T := min(D(0), L) from the shifted origin, start x in S
(the §5 convention, :3043). Let phi_cr denote the LP.5(a)+(b) reference
sample path started at a point of B_ref: the SH.1-SH.3 reversal-sandwich
ASCENT from the ground ball B_ref up the eigenfiber through z_sl to the
near-saddle target B'' (LP.5(a), lane-lp:790-820), then the LP.4b crossing
chain into the FAR-side cone, LP.4a to the valley-side frame exit, and
LP.4(i) the valley's only exit ACROSS Delta_theta — the label change
(LP.5(b), lane-lp:821-835). Its beta-free horizon is
T_att = T* + T_sand + n_b + T_cone + T_V (R5a §6, :3071-3077), but with the
positioning step now occupying [0,1] the ascent occupies [1, 1 + T_att'],
T_att' := T_att - T*, because the M3-GS chain length T* = n+1 is no longer
part of the event (its removal only shortens the horizon). Define, for
x in S,

  Cross(x) := A_pos(x)  INTERSECT  A_asc(x),   where
   A_pos(x) := { X_1 in B_ref } ∩ { sup_{[0,1]} |X_t - g*|_max <= 3 delta/8 },
   A_asc(x) := { X_{1+.} stays within the SH.2 max-norm corridor of radius
                 rho_corr := delta/8 around phi_cr (started at X_1), and
                 phi_cr reaches a different open theta-sector across
                 Delta_theta at some time L_cr <= 1 + T_att' }.

CLAIM: Cross(x) subset { L < D(0) }. Proof of containment, three facts.

 (i) NO EARLY RETURN DURING POSITIONING. On A_pos the path lies in
     B_{3delta/8}(g*) subset S^+ on all of [0,1]; the collar-exit operator
     has not fired, theta^+(0) > 1. In particular D(0) > 1 (a delayed
     return needs a prior S^+ exit, :3002), and the label is constantly k
     on [0,1] (S^+ subset U_ch misses Delta_theta by level, :3002), so L > 1.

 (ii) RADIAL EXPULSION ON (theta^+, L]. After t = 1 the tracked path follows
     phi_cr within rho_corr = delta/8. The ascent segment of phi_cr lies in
     the tube T_{r0}(G_k) until it exits; there the transverse coordinate
     b(t) := dist(phi_cr(t), G_k) is STRICTLY INCREASING, because the SH.3
     reversal flow is the E_eps-descent flow run backward and M2P.5 Step 2
     gives the slice-gradient floor <grad E_eps(u), u - pi(u)> >= (c_1/2)
     dist(u,G_k)^2 uniformly in eps (lane-minmig:778-780), so
     d/dt (b^2/2) = -<grad E_eps, u-pi(u)> reverses to STRICTLY POSITIVE on
     the ascent. The ascent is along the transverse eigenfiber v_u through
     z_sl (LP.5(a), lane-lp:796-799), i.e. orbit-coordinate-preserving, so
     the tangential coordinate stays within O(delta) of a* while b climbs
     from ~delta/8 to r0; hence the FIRST exit of S^+ = B_{delta/2}(g*) is
     radial, theta^+ := theta^+(0) occurs at b = delta/2. Thereafter b only
     increases inside the tube and equals >= r0 outside it, so the reference
     has b > delta/2 on (theta^+, tube-exit] and dist(.,G_k) >= r0 beyond,
     all the way through the saddle passage and the far valley. The tracked
     path, within delta/8, therefore has dist(X_s, G_k) > delta/2 - delta/8
     = 3 delta/8 > delta/4 for every s in (theta^+, L]. Since every point of
     S = B_{delta/4}(g*) has dist(., G_k) <= delta/4, the path is OUTSIDE S
     on (theta^+, L]. (Radial expulsion alone settles it; the diameter
     geometry reinforces — S is a single delta/4-ball at ONE base point g*
     on an orbit of diameter D_G = pi sqrt(2N), so any near-G_k passage at a
     base point other than g* also misses S, but this is not needed.)
     Consequently D(0) = inf{ s >= theta^+ : X_s in S } > L.

 (iii) L IS FINITE AND FIRES AT THE SADDLE. phi_cr crosses Delta_theta at
     L_cr <= 1 + T_att' (LP.4(i): the valley's only flow exit is across
     Delta_theta, beta-free time; lane-lp:833-834). The crossing happens on
     the far side of z_sl at level E_eps <= S_k - 2 eps'_0 (lane-lp:827),
     i.e. at dist(., G_k) of order one, BEFORE any re-descent to the
     winding-k ground; and L (first hit of a different open theta-sector) is
     realized AT that crossing. So L <= 1 + T_att' < infinity, and by (ii)
     L < D(0).

Hence Cross(x) subset {L < D(0)} for every x in S. Every leg AFTER the
positioning step travels upward and away from S; the positioning step never
leaves S^+, so it contributes no delayed return. This is exactly the
property (:3059) claimed but not established by the old M3-GS construction.

========================================================================
3. THE FLOOR AT THE LP.5 EXPONENT + err(delta)
========================================================================
By the strong Markov property at t = 1 (§3, :3019) — the [0,1]-confinement
and {X_1 in B_ref} are F_1-measurable, A_asc is a functional of the post-1
path — and the S^+-confined density floor (POS):

  P_x(Cross(x)) = E_x[ 1_{A_pos-on-[0,1]} 1_{X_1 in B_ref} P_{X_1}(A_asc) ]
               >= INT_{B_ref} m_ref Leb(dz) . P_z(A_asc)
                = m_ref Leb(B_ref) . avg_{z in B_ref} P_z(A_asc).

The SH.3 sandwich is an AVERAGE-over-the-ground-ball statement, native over
any ground ball of radius <= r0/8 (lane-lp:808-817); on B_ref it gives,
composed with the LP.4b/LP.4a/LP.4(i) legs tracked by SH.2 at order-one
probability as beta -> infinity (lane-lp:819-835; the single exp-small
factor is the sandwich ascent),

  avg_{z in B_ref} P_z(A_asc)
     >= exp( -beta ( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2
                     + err_{SH,LP}(delta) ) ),

the LP.5(a)+(b) per-attempt crossing floor (lane-lp:836-838; C_w = C_B +
the LP.4b (b)-chain constant), with the two eps-coefficients
S_k/kappa = W*(z_sl) and w_k = W*(G_k) NEVER identified ([23] §B.3).
Therefore

  inf_{x in S} Phi(x) >= inf_{x in S} P_x(Cross(x)) >= p,          (P)
  p := c(delta) exp( -beta( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2
                            + err(delta) ) ),
  c(delta) := c_0' beta^N Leb(B_{delta/8}(g*)) = c_0' beta^N (delta/4)^{2N}
             = c_0' (beta delta^2)^N 4^{-2N}  ( >= 4^{-2N} c_0' by the
             diffusive floor beta delta^2 >= 1 — a healthy prefactor, not
             exp-small, exactly as m_1 Leb(B_0) in the old bookkeeping ),
  err(delta) := C_2 . delta^2/8  +  err_{SH,LP}(delta)   ( = O(delta^2) ).

This is the EXACT (P) exponent of lane-minmig:3057 and lane-lp:836, with
err(delta) merely REDEFINED: the discarded M3-GS orbit-chain term
Gamma(h) = O(h) = O(delta) is gone, replaced by the positioning cost
C_2 delta^2/8 = O(delta^2). The order of limits (:3105-3113) is untouched —
beta -> infinity FIRST at fixed (eps, delta), the diffusive floor
beta >= B/delta^2 held throughout; THEN delta -> 0, sending err(delta) -> 0;
THEN the eps-window is read. The floor is if anything LARGER than before
(smaller exponent), so the final LP.5 upper display (:3111,
lane-lp:760-761) is preserved verbatim. QED (P).

========================================================================
4. COMPOSITION WITH R5a's TERMINUS, FILTRATION, AND WALD (UNCHANGED)
========================================================================
- TERMINUS (§4, :3026-3038). Cross(x) subset {L < D(0)} = {round crosses}
  (§2 above), so Phi(x) = P_x(L < D(0)) >= P_x(Cross(x)) >= p on the SAME
  single continuous terminus T = min(D(0), L). No new stopping object; the
  strict-hitting-time / no-zero-return convention (:3002) is used, not
  altered.
- FILTRATION (§3, :3019-3021). Cross(x) is a functional of the
  post-sigma_{i-1} path (its first unit of time is the positioning step,
  then the ascent); the strong-Markov identity
  P(round i crosses | F_{sigma_{i-1}}) = Phi(X_{sigma_{i-1}}) >= p (:3050)
  holds verbatim. No coin, no split, no independence — the augmented path
  filtration is unchanged.
- COUNT + WALD (§7, :3083-3103). (P) is the only input to the geometric
  domination P(N >= i) <= (1-p)^{i-1} and E[N] <= 1/p (GEOM); COUNT-MEAS and
  the tower step are untouched. The (WALD) arithmetic
  E_q[tau] <= E_q[sigma_0] + D_bar/p is unchanged.

SCOPE. This piece repairs ONLY the (P) crossing floor and its M3-GS import.
The duration bound (D) (:3061-3064), the initial-delay object sigma_0, and
the beta-free-collar-exit / GAP-LP-RECUR question (R5b; XM-R2 Finding 2,
"F3") are a SEPARATE piece and are NOT addressed here; nothing in R6a
weakens or strengthens them, and no beta-free exit of a flat rotation mode
is asserted anywhere in R6a (the positioning cost is the polynomial-in-delta
term exp(-beta O(delta^2)), fully charged). The standing external rows
PROD-EXCURSION / PROD-EXCURSION-COND are untouched.

### consumed

R5a body §1-§7 (lane-minmig-proofs-v1.md:2977-3138), esp. the base-ball / delayed-return convention (:2990-3002), round-start law (:3021), terminus (:3026-3038), the broken (P) floor (:3055-3059), attempt containment §6 (:3067-3078), Wald §7 (:3083-3103). M3-GS chain and its U_{1/2} reach (:670-746). L1 HOP master bound (rho-free) and Gronwall corridor (lane-sh2local-proofs-v1.md:96-104,142-146,156-168,190-195), L1' A4/A5 corridor-qualified free-density minorization (:61-90,270-281), flat-orbit C_geo=1 identity (lane-minmig:688-691). LP.5(a) near-target sandwich on the eigenfiber through z_sl and LP.5(b) crossing chain to Delta_theta (lane-lp-product-saddle-v1.md:790-838), LP.5 upper display and order of limits (:750-767). M2P.5 Step 2 slice-gradient transverse-dissipativity floor (lane-minmig:778-784). Verdict XM-R2-2026-07-21.md Finding 1 ("F2 — BLOCKING", lines 83-92) and its named route-(a) repair (line 91).

### typed gaps

None NEW opened by R6a; the collar-killed crossing event and its (P) floor are proved outright. Inherited/adjacent items carried unchanged (not this piece's burden): (1) GAP-M5-EUC Euclidean->max-norm ledger — used here only for the single positioning displacement <= delta/4 below the injectivity radius, where the flat-orbit identity C_geo = 1 is EXACT (lane-minmig:688-691), so R6a adds no new metric burden; (2) GAP-LP-RECUR / the beta-free-collar-exit sigma_0 question (R5b; XM-R2 Finding 2 / "F3") is a separate piece, NOT discharged here; (3) the external rows PROD-EXCURSION and PROD-EXCURSION-COND remain honestly TYPED and untouched; the duration bound (D) still consumes PROD-EXCURSION at its typed strength and the conditional strengthening remains GAP-PE-COND. The one geometric sub-claim inside R6a — that the first S^+ exit is radial — is DERIVED (not typed) from M2P.5 transverse dissipativity plus the transverse (orbit-coordinate-preserving) eigenfiber structure of the LP.5(a) ascent, and even without it the radial-expulsion bound dist(.,G_k) > delta/4 on (theta^+, L] alone yields the containment.


---

# R6b — the collar-exit charge + delayed-return floor (XM-R2 F2 cure; B_gate DELETED by R8b below)

(grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE; its two MINORs cured by R8b - the B_gate construction is deleted, the ascent launches from B_ref via KD)

========================================================================
R6b — THE COLLAR-EXIT CHARGE AND THE DELAYED-RETURN FLOOR
(discharges XM-R2 F2 = verdict Findings 1 and 2)
========================================================================

Standing setting (consumed verbatim from R5a §0/§1, lane-minmig-proofs-v1.md:2983-3002). The autonomous reversible diffusion is dX_t = -grad E_eps(X_t) dt + sqrt(2/beta) dW_t on M = T^{2N} = T^N_theta x T^N_phi, flagship k=1, N>=10, M2-PIN (lambda>kappa), eps in [0,eps_2) fixed; W a standard 2N-dimensional Brownian motion. The flat product-ground 2-torus is G_k = C_k^theta x C_0^phi with base point g*, hop scale h := delta/2, base ball S := B_{delta/4}(g*) and exit collar S^+ := B_{delta/2}(g*), max-norm centred at g*, S subset S^+ subset U_ch := {dist(.,G_k) <= delta/2}. The delayed-return operator is theta^+(t) := inf{s >= t : X_s not in S^+} and D(t) := inf{s >= theta^+(t) : X_s in S} (lane-minmig:2997-3002). Round epochs from arbitrary q: sigma_0 := D(0), sigma_i := D(sigma_{i-1}) on the non-crossing event (lane-minmig:3009-3012). One augmented natural path filtration (F_t), no coins, strong Markov at every F_t-stopping time (lane-minmig:3017-3019). Terminus T_i := min(D(sigma_{i-1}), L_i), L_i := inf{s > sigma_{i-1} : w_theta(X_s) != k} (lane-minmig:3028-3036).

The two defects XM-R2 F2 names are (i) that R5a §5(P)'s crossing floor Phi(x)=P_x(L<D(0)) is lower-bounded by an M3-GS event that lands the path back in S and hence is NOT a subset of {L<D(0)} (verdict Finding 1); and (ii) that R5b lower-bounds "delayed return" by mere arrival in S and calls the prerequisite collar exit "beta-free order-one," which is false (verdict Finding 2). This piece supplies the missing collar-exit charge with its true cost, redesigns the crossing event to obey the delayed-return convention, and rebuilds p_sub, the geometric estimate, the duration bound, the horizon, and E_q[sigma_0] on the corrected events.

-------------------------------------------------------------------
(1) LEMMA R6b.1 — THE COLLAR-EXIT LEMMA (option (i): polynomial-in-beta expected exit, order beta N delta^2), with EXACT flat-mode driftlessness
-------------------------------------------------------------------
Claim. There is a symbolic constant such that, uniformly over every start x in S^+ and every F_t-stopping time alpha at which X_alpha in S^+,

   E[ theta^+(alpha) - alpha | F_alpha ]  <=  (beta N delta^2)/8   a.s.        (COLLAR-EXIT)

In particular theta^+(alpha) < infinity a.s., and beta^{-1} log E[theta^+(alpha)-alpha] <= beta^{-1} log(beta N delta^2/8) -> 0 as beta -> infinity: the collar exit is polynomial in beta, hence err-class in the rate under the beta-first order of limits. This is the TRUE cost; the beta-free assertion of R5b §6 (lane-minmig:3291, "adds only a beta-free order-one horizon T_exit") is false and is replaced by (COLLAR-EXIT).

Proof. The energy is E_eps(theta,phi) = sum_i [ kappa(1-cos d_i) + lambda(1-cos e_i) + eps(1-cos(d_i-e_i)) ], d_i = theta_{i+1}-theta_i, e_i = phi_{i+1}-phi_i (lane-m2-coupled-pair-declaration-v1.md:32-36). By Lemma M2a.2 (double rotation symmetry, EVERY eps; lane-m2-coupled-pair-declaration-v1.md:58-72), E_eps depends on (theta,phi) only through the bonds (d_i,e_i), and both bond families are invariant under the two INDEPENDENT global rotations theta -> theta + c1_N, phi -> phi + c'1_N. Hence, IDENTICALLY on M and for every eps,

   sum_i dE_eps/dtheta_i = 0    and    sum_i dE_eps/dphi_i = 0.               (M2a.2)

Let u_theta := 1_N in R^N_theta be the (unnormalised) global-theta-rotation tangent, one of the two exact T^2-rotation directions that constitute the tangent kernel of G_k (M5.0b, lane-minmig:1472-1501; M2P.2 gives the transverse Hessian positive-definite MOD exactly this T^2 rotation kernel, lane-minmig:929). Define the mean-angle collective coordinate

   psi_theta := (1/N) sum_i theta_i = <X_theta, u_theta>/N.

By Ito on the componentwise SDE d theta_i = -(dE_eps/dtheta_i) dt + sqrt(2/beta) dW_i^theta,

   d psi_theta = -(1/N)( sum_i dE_eps/dtheta_i ) dt + sqrt(2/beta) (1/N) sum_i dW_i^theta
              = 0 . dt + sqrt(2/beta) (1/N) sum_i dW_i^theta,

the drift vanishing IDENTICALLY by (M2a.2). Thus psi_theta - psi_theta(alpha) is a continuous martingale with quadratic variation

   d<psi_theta>_t = (2/beta) (1/N^2) sum_i dt = (2/(beta N)) dt,

i.e. an EXACT driftless one-dimensional Brownian motion of variance Var(psi_theta(t)-psi_theta(alpha)) = 2t/(beta N) (the tangential-Brownian projection scale of the task; the "2t/(beta N)" mean-angle normalisation). No O(delta^2) tangential-drift residue arises: (M2a.2) is an identity on all of M, so the flat-mode driftlessness is exact everywhere, not merely on G_k. This is the flat-mode exactness the corpus records; the Stage-A l2_product probe validated the corresponding flatness in theta_dir AND phi_dir at eps in {0,0.1} (r_tube=0.8, N=10) as CONSISTENCY, never as proof (lane-minmig:706-708,216).

Domination of the max-norm collar exit by the mean-angle mode. For any configuration y, the max-norm displacement from g* dominates the mean displacement:

   max_i |theta_i(y) - theta_i(g*)|  >=  |(1/N) sum_i (theta_i(y)-theta_i(g*))|  =  |psi_theta(y) - psi_theta(g*)|

(triangle inequality / Jensen: max >= |mean|). Hence, pathwise, the first time |psi_theta - psi_theta(g*)| reaches delta/2 the max-norm distance of X from g* is already >= delta/2, so X has left S^+. Therefore

   theta^+(alpha) - alpha  <=  tau_psi := inf{ t >= 0 : |psi_theta(alpha+t) - psi_theta(g*)| = delta/2 }.

Because X_alpha in S^+, the start satisfies |psi_theta(alpha)-psi_theta(g*)| <= max_i|theta_i(X_alpha)-theta_i(g*)| < delta/2, i.e. psi_theta(alpha)-psi_theta(g*) lies in the open interval (-delta/2, delta/2). For a driftless Brownian motion of variance rate 2D, D := 1/(beta N), the expected first exit of the symmetric interval (-L,L) from an interior start y0 is (L^2 - y0^2)/(2D) <= L^2/(2D). With L = delta/2, D = 1/(beta N),

   E[ tau_psi | F_alpha ]  <=  (delta/2)^2 / (2 . (1/(beta N)))  =  (beta N delta^2)/8,

uniformly over the start (the bound is monotone in y0 and maximal at y0=0). Combining, E[theta^+(alpha)-alpha | F_alpha] <= beta N delta^2/8. QED (COLLAR-EXIT).

Remark (why option (i), not (ii)). The verdict adjudicated A6 compatible with either the polynomial expected-exit route (i) or the forced fixed-horizon route (ii), probability exp(-beta O(delta^2)) with geometric retry cost exp(+beta O(delta^2)) (verdict Finding 2, "A6's selected interface is mathematically appropriate"). I take (i): it delivers a finite EXPECTATION directly, needs no auxiliary retry ledger, and is exact (no drift residue) by (M2a.2). It is charged additively as a Phase-E segment in §3 and in §5; its polynomial prefactor never enters the rate. HOUSE-RULE COMPLIANCE: this is a POLYNOMIAL-in-beta exit scale (order beta N delta^2, N explicit), NOT a beta-free exit; no beta-free exit of a flat mode is asserted anywhere.

-------------------------------------------------------------------
(2) R6b.2 — THE CROSSING-FLOOR CONTAINMENT (fixes verdict Finding 1 on R5a §5(P))
-------------------------------------------------------------------
Defect. R5a §5(P) (lane-minmig:3055-3059) lower-bounds Phi(x)=P_x(L<D(0)) by first invoking (M3-GS) — the n-hop product-orbit chain plus L1' base-ball density, P_x(X_{n+1} in A) >= p_chain . m_1 Leb(A) for Borel A subset S, uniform over x in U_ch (lane-minmig:698-725) — to relocate x to a Lebesgue-distributed point of the INNER base ball S, and only THEN runs the SH.3 sandwich ascent to B'' and the LP.5(b) crossing chain. But a landing in S IS an S-entrance; if it occurs after the path has left S^+ it realises D(0), and the round has FAILED (route (r)) before the later ascent. The M3-GS event is constrained only to the broad tube U/U_ch (lane-minmig:717-724) with no S^+-avoidance clause, so its probability cannot be counted inside {L<D(0)}. The sentence "every leg travels UPWARD from S" (lane-minmig:3059) is not a property of the cited M3-GS relocation, which is a tangential density landing in S.

Repair (a killed local uphill event that stays in S^+ before its ONE exit and then avoids S until crossing). Replace the M3-GS relocation-into-S by a forced local uphill displacement realised through the L1 HOP lemma, landing OUTSIDE S^+ on the ascent side, whose entire cost is exp(-beta O(delta^2)) subset err(delta) (this is the "forced local displacement costs exp(-beta O(delta^2))" of the verdict's Finding-1 repair note). Fix a gateway point y_gate at radial distance 3delta/4 from g* along the SH.3 ascent (saddle-ward) direction, so B_gate := B_{delta/4}(y_gate) lies entirely in (S^+)^c on the uphill side and is a ground-region ball (dist(.,G_k) = O(delta)). For any x in S the displacement |x - y_gate| <= diam(S) + 3delta/4 = O(delta), so the L1 HOP (P_x(X_1 in B_{h/2}(y)) >= c_0 exp(-beta C_1(delta^2+h^2)), lane-sh2local-proofs-v1.md:192-195; equivalently the L1' A4/A5 corridor-qualified free-density form, lane-sh2local:74-90) gives, uniformly over x in S,

   P_x( X_1 in B_gate , the time-1 bridge stays in a shrinking tube of the segment [x,y_gate] )  >=  c(delta) exp( -beta C_1 . O(delta^2) ),

the tube radius O(beta^{-1/2}) -> 0 under beta -> infinity at fixed delta (the tube-stay is SUB-exponential in beta, no exp(-beta c) loss; the L1 small-ball/symmetry-Jensen bound, lane-minmig:481,505). Because the segment [x,y_gate] runs monotonically outward from radius <= delta/4 to radius 3delta/4, the tracked bridge crosses the shell {dist(.,g*)=delta/2}=∂S^+ exactly ONCE (realising theta^+(0)) and, after that single collar exit, never returns to radius < delta/4, so it does not re-enter S; entries to S BEFORE theta^+(0) are irrelevant because D(0) counts only S-entrances after theta^+(0). From B_gate — a ground-region ball at O(delta) from g*, cost-equivalent to g* by the exact T^2-rotation symmetry (M2a.2) and the totally-geodesic flatness of G_k (M5.0, lane-minmig:1472-1501) — the SH.3 downhill reference flow delivers the near-saddle target B'' at the unchanged sandwich cost exp(-beta(S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta))) (lane-lp-product-saddle-v1.md:806-808; lane-minmig:738-744; the two eps-coefficients S_k/kappa=W*(z_sl) and w_k=W*(G_k) never identified, [23] §B.3), and LP.5(b) runs the far-side crossing chain to a theta-label change (lane-lp:810-824). Every leg after the single collar exit ascends away from S and reaches Delta_theta without re-entering S (the §6 spatial ascent-out-of-S argument, lane-minmig:3078, now with a genuine prior S^+ exit supplied). Hence this whole sample-path event is a subset of {L < D(0)}, and

   Phi(x) = P_x(L<D(0))  >=  c(delta) exp(-beta C_1 O(delta^2)) . exp(-beta(S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta))) . (LP.5(b) floor)
          >=  p := c'(delta) exp( -beta( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ) ),   C_w := C_B + LP.4b(b)-chain constant,

uniformly over x in S, where the extra O(delta^2) gateway-displacement exponent has been absorbed into err(delta) (it is O(delta^2), the err-class shape). The floor EXPONENT is exactly R5a §5(P)'s p (lane-minmig:3057-3059); only the definition of the realising event has changed, from "relocate into S then ascend" to "one forced uphill hop to B_gate outside S^+, then ascend," which is now a legitimate subset of {L<D(0)}. This discharges Finding 1: inf_{x in S} Phi(x) >= p on a crossing event that genuinely obeys the delayed-return convention, so the geometric domination E[N] <= 1/p of R5a §7 (lane-minmig:3087-3093) stands on the corrected event.

-------------------------------------------------------------------
(3) R6b.3 — THE REBUILT DELAYED-RETURN FLOOR (fixes verdict Finding 2 on R5b; obligation (2))
-------------------------------------------------------------------
Defect. R5b's subcycle success floor (lane-minmig:3238-3248) proves only that the composed relax/kick + M5 + L1' pass REACHES S; it omits the prerequisite exit from S^+. For subcycle 0, which starts at X_{sigma_{i-1}} in S subset S^+, an M5/L1' pass that stays in the collar and lands in S again is NOT a D(sigma_{i-1}) event. The same missing implication feeds the geometric estimate (lane-minmig:3253-3265) and the duration bound (lane-minmig:3270-3284).

Repair (the subcycle FIRST realises the collar exit, charged per §1, THEN the return/crossing dichotomy). Restructure each R5b subcycle m (working inside a single R5a round i, on {N>=i}, lane-minmig:3197-3217) into three consecutive F_t-stopping-time phases:

  PHASE A (recovery to R_0, unchanged from R5b §2, lane-minmig:3208-3209): alpha_m := inf{s >= kappa_m : X_s in R_0 or w_theta(X_s) != k}. If a crossing intervenes, rho_i = L_i <= alpha_m and the round terminates by route (x). Otherwise X_{alpha_m} in R_0 := {w_theta=k, w_phi=0, E_eps <= S_k+c_H} in a.s.-finite time, its off-R_0 sojourn governed by PROD-EXCURSION-COND (§7 below).

  PHASE E (collar exit — NEW, charged per LEMMA R6b.1): beta_m := theta^+(alpha_m) = inf{s >= alpha_m : X_s not in S^+}. By (COLLAR-EXIT), E[beta_m - alpha_m | F_alpha_m] <= beta N delta^2/8 and beta_m < infinity a.s.; if X_{alpha_m} not in S^+ then beta_m = alpha_m (zero-time). This is the prerequisite collar exit R5b omitted; every subcycle passes through it, in particular subcycle 0 whose start X_{sigma_{i-1}} in S subset S^+.

  PHASE R (the return-or-cross attempt over the fixed beta-free window T_sub, §4): from X_{beta_m} — which lies on ∂S^+ (radius delta/2 from g*, hence dist(.,G_k) <= delta/2, i.e. in U_ch) or already outside — run the composed pass of R5b §2 (band trichotomy recovery is empty here since X_{beta_m} in U_ch is a ground-region point: M5 product-torus orbit chain U_ch -> B_{h/2}(g*)=S at matched radii sigma=h/2, n=ceil(2 D_G/h), D_G=pi sqrt(2N), Gamma_orb(h)=2 C_1 n h^2 <= 6 C_1 D_G h=O(h), lane-minmig:1425,1691; then the L1' base-ball landing, lane-sh2local:74-90).

  SUBCYCLE SUCCESS (round terminates during subcycle m): Succ_m := { a delayed S-return D(sigma_{i-1}) into S occurs in (beta_m, beta_m + T_sub] } union { w_theta has changed by time beta_m + T_sub }. The first disjunct is now a GENUINE delayed return: the path left S^+ at beta_m (Phase E) and re-enters S in Phase R, so beta_m < the S-entrance and the S-entrance is a bona fide D(sigma_{i-1}) firing. The second disjunct fires for any theta-crossing at or before the window end (registered wherever it falls, Phase A/E/R alike), so no crossing is dropped. Succ_m fires exactly when the R5a round terminates by route (r) or route (x); M_i := min{m>=0 : Succ_m occurs}, zero-based (subcycle 0 is a genuine termination opportunity, lane-minmig:3215-3217).

The per-subcycle return floor (rebuilt on the corrected post-exit event). Conditional on H_m := F_{alpha_m}, by strong Markov at beta_m the regular conditional law of the post-beta_m path is P_{X_{beta_m}}, and

   P( Succ_m | H_m )  >=  P( delayed S-return into S during (beta_m, beta_m+T_sub] | H_m )
                      >=  [ c_0^n exp(-beta Gamma_orb(h)) ] . [ m(beta,h) Leb(S) ] . exp(-beta gamma_2 eps^2) . exp(-beta err(delta))
                      =:  p_sub  =  c(delta,h) exp( -beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) )  >  0,

with Gamma(h):=Gamma_orb(h)+Gamma_dens(h)=6 C_1 D_G h + 2 C_2 h^2 = O(h), m(beta,h)=c_0' beta^N exp(-beta Gamma_dens(h)) the L1' base-ball small-set mass (dim M=2N, lane-sh2local:74-90), valid for beta >= beta_0(h)=O(h^{-2}) (the diffusive floor beta h^2 >= B, load-bearing; XF A3, lane-sh2local:33-35). This p_sub is the SAME rate object as R5b's (lane-minmig:3246), but it now floors P(round terminates by a GENUINE delayed return-or-cross), because the collar exit (Phase E) has been performed first; the gamma_2 eps^2 term is retained as a conservative under-estimate uniform over all R_0-starts (a ground-region post-exit point needs no core kick, so this only weakens the floor). The floor is uniform over every H_m-measurable start (via the a.s.-finite Phase A recovery and the a.s.-finite Phase E exit); a crossing in any phase only enlarges Succ_m.

Rebuilt geometric estimate. Each alpha_m, beta_m, kappa_m, rho_i is an F_t-stopping time; Succ_m in F_{beta_m + T_sub}; {M_i >= m} = intersection_{j<m} Succ_j^c in F_{alpha_m}=H_m. On {M_i>=m} the recovery of Phase A places X_{alpha_m} in R_0, Phase E exits S^+ a.s.-finitely, and Phase R gives P(Succ_m | H_m) >= p_sub. The tower property yields

   P( M_i >= m+1 | G_i )  =  E[ 1_{M_i>=m} P(Succ_m^c | H_m) | G_i ]  <=  (1-p_sub) P( M_i >= m | G_i ),   G_i := F_{sigma_{i-1}},

so by induction from the correct zero-based base P(M_i>=0 | G_i)=1, P(M_i>=m | G_i) <= (1-p_sub)^m (m>=0). Hence M_i < infinity a.s. (the R5a round terminates a.s. — this is R5a §2's asserted a.s. finiteness of sigma_i, now proved on the corrected event) and E[M_i+1 | G_i] = sum_{m>=0} P(M_i>=m | G_i) <= 1/p_sub.

-------------------------------------------------------------------
(4) R6b.4 — THE HORIZON (obligation (3): T_sub must dominate the full off-core band route)
-------------------------------------------------------------------
Defect. R5b declares T_sub := T_relax(eps,delta) + T_reloc(eps) + T*(h) with T_relax merely "the RELAX/descent horizon" (lane-minmig:3201-3203), while the band route Phase R consumes has its own named horizon T_B(eps) before the cone/ground legs (lane-lp-product-saddle-v1.md:688-733). A band or core start is not returned to S within an unqualified T_relax.

Repair. Redefine T_relax to dominate the full off-core band route of lane-lp:672-745 (the band trichotomy). On B minus T_core the flow descends at rate dE_eps/dt <= -floor(eps)^2, reaching an outcome within T_B(eps) := (c_H + eps')/floor(eps)^2 (beta-free, lane-lp:692-693); a CORE ENTRY then runs one LP.4b eigenfiber kick and the LP.4a frame exit within T_cone(eps) := O(log 1/eps) (lane-lp:713-729,735); the resulting sub-cap landing flows to the G_k-component, and M2P.5 Step 2/3 (slice-gradient floor <grad E_eps(x), x-pi(x)> >= (c_1/2) dist^2, both Delta faces missed, lane-minmig:771-776) relaxes dist(.,G_k) into U_ch within the sub-cap RELAX horizon T_relax^{subcap}(delta,eps) (beta-free). Set

   T_relax(eps,delta) := T_B(eps) + T_cone(eps) + T_relax^{subcap}(delta,eps),   T_reloc(eps) := T_cone(eps),

all beta-free, so that

   T_sub := T_relax(eps,delta) + T_reloc(eps) + T*(h),   T*(h) := n+1, n=ceil(2 D_G/h)=ceil(4 pi sqrt(2N)/delta),

DOMINATES, for every R_0-start (core, band, sub-cap), the composed pass (kick-or-descend over T_B(eps)+T_cone(eps)) -> (sub-cap relax over T_relax^{subcap}) -> (M5 orbit chain over T*) -> (L1' landing). Re-verification of the duration bound: each Phase-R window is the fixed beta-free length T_sub which now upper-bounds the wall-clock of the whole tracked composed pass, and the floor p_sub of §3 is realised within it (each leg tracked by SH.2 max-norm shadowing over its beta-free sub-horizon at order-one probability as beta -> infinity, penalty exp(-beta err(delta)) attributed to SH.2''s displacement leg per lead amendment A5, lane-minmig:2953-2964; legs composed by strong Markov at the intermediate F_t-stopping times, no global minorization, [23] §D.1). No exponent changes; T_sub remains beta-free.

Rebuilt within-round duration. Partition [sigma_{i-1}, T_i) into the alternating Phase-A recovery segments, Phase-E collar-exit segments, and Phase-R attempt windows (subcycle 0's Phase A is empty since X_{sigma_{i-1}} in S subset R_0). Then, with D_i := T_i - sigma_{i-1},

  Phase-R time: <= (M_i+1) T_sub, so E[Phase-R time | G_i] <= T_sub . E[M_i+1 | G_i] <= T_sub / p_sub.
  Phase-E time (the collar charge): by (COLLAR-EXIT) each beta_m - alpha_m has conditional mean <= beta N delta^2/8; by the tower property with {M_i>=m} in H_m,
     E[ Phase-E time | G_i ] = E[ sum_{m>=0} 1_{M_i>=m} (beta_m - alpha_m) | G_i ]
        = sum_{m>=0} E[ 1_{M_i>=m} E(beta_m-alpha_m | H_m) | G_i ]  <=  (beta N delta^2/8) . E[M_i+1 | G_i]  <=  (beta N delta^2)/(8 p_sub).
  Phase-A (off-R_0) time: the phase-A segments are pairwise disjoint and disjoint from Phases E/R, and their union is a subset of the round's total off-R_0 occupation, so by the typed row PROD-EXCURSION-COND (§7),
     E[ Phase-A time | G_i ]  <=  E[ off-R_0 occupation of round i | G_i ]  <=  T_row(eps,delta) exp(-beta(c_H/2 - err(delta))).

By additivity of conditional expectation,

   E[ D_i | G_i ]  <=  ( T_sub + beta N delta^2/8 ) / p_sub  +  T_row exp(-beta(c_H/2 - err(delta)))
        =  ( T_sub + beta N delta^2/8 ) / c(delta,h) . exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) )  +  T_row exp( -beta( c_H/2 - err(delta) ) )
        =:  D_bar',

uniformly over the range S of X_{sigma_{i-1}} (both p_sub and the PROD-EXCURSION-COND bound are uniform over R_0-starts), so sup_{x in S} Psi_{R_0}(x) <= D_bar' and, with the off-R_0 term folded in, sup_{x in S} Psi(x) <= D_bar' conditionally modulo PROD-EXCURSION-COND. HONEST CORRECTION to R5a §5(D): D_bar' carries an EXPLICIT polynomial-in-beta prefactor P(beta) := (T_sub + beta N delta^2/8)/c(delta,h) (from the charged collar exit and the beta^N L1' prefactor). It is NOT beta-free; but it is RATE-INERT:

   beta^{-1} log D_bar'  =  beta^{-1} log P(beta) + Gamma(h) + gamma_2 eps^2 + err(delta)  ->  Gamma(h) + gamma_2 eps^2 + err(delta)   (beta -> infinity),

since beta^{-1} log P(beta) -> 0 for a polynomial P, and the off-R_0 term is beta-suppressed (c_H/2 - err(delta) > 0 by the c_H ledger, lane-lp:152-155). Then Gamma(h)=O(h) and err(delta) -> 0 as h,delta -> 0. So D_bar' has EXACTLY R5a §5(D)'s err-class rate exponent; the collar charge lives only in the rate-inert prefactor. R5a §7's Wald arithmetic (lane-minmig:3095-3101) closes verbatim with D_bar' in place of D_bar: E_q[tau_change^theta] <= E_q[sigma_0] + E[N] . D_bar' <= E_q[sigma_0] + D_bar'/p.

-------------------------------------------------------------------
(5) E_q[sigma_0] AT THE A6 INTERFACE RATE (the fix in passing)
-------------------------------------------------------------------
R5a §2 defines sigma_0 := D(0) from arbitrary q and delegates E_q[sigma_0] to R5b §6 (lane-minmig:3287-3299), which used the false beta-free collar exit. Rebuild it on (COLLAR-EXIT). Take q in D_k(eps) (the theorem's start domain): E_eps(q) < 2 kappa < S_k + c_H, w_phi=0, w_theta=k, so q in R_0 (sub-cap part). Run the §3 scaffold from kappa_0 := 0, X_0 = q, with success the first delayed S-return D(0) (route (r)) or a crossing (route (x)); Phase A of subcycle 0 is empty. The sub-cap composed pass reaches S in one Phase-R window at floor p_sub (M2-ATTR(k,eps) THEOREM on [0,eps_0) superset [0,eps_2): Crit(E_eps) intersect closure(D_k(eps)) = G_k, positive invariance, strict descent off G_k, lane-m2-attractor-pinning-small-coupling-v1.md:157,220; then M2P.5 RELAX into U_ch; then the M5 chain to B_{h/2}(g*)=S at n=ceil(2 D_G/h) hops covering the full product diameter). Since q in S^+ (in particular q in S) requires the delayed-return convention's prerequisite collar exit, Phase E charges it at (COLLAR-EXIT): the collar exit of a low-energy ground state stays inside R_0 (it does not require E_eps > S_k+c_H) and adds the polynomial term beta N delta^2/8, not the false beta-free T_exit. By the geometric budget of §3 applied to the sigma_0-scaffold,

   E_q[ sigma_0 ]  <=  ( beta N delta^2/8 + T_sub ) / p_sub  +  T_row exp(-beta(c_H/2 - err(delta)))
        =  P(beta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ) + beta-suppressed,   P(beta) polynomial,

hence sigma_0 is a.s. finite from arbitrary q in D_k(eps) and E_q[sigma_0] is err-class at the same exponent as D_bar':

   beta^{-1} log E_q[sigma_0]  <=  Gamma(h) + gamma_2 eps^2 + err(delta)  ->  0   after beta -> infinity then h,delta -> 0.

STATED AT THE A6 INTERFACE RATE. Lead amendment A6 (lane-minmig:3153-3161) fixes the interface as: beta^{-1} log E_q[sigma_0] must be bounded by the ROUND-SUM rate S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 + err, not the bare S_k - m_k. The bound just derived, Gamma(h)+gamma_2 eps^2+err(delta), is STRICTLY BELOW the round-sum rate (which contains the positive barrier term S_k - m_k > 0 absent from the sigma_0 exponent), so A6 is satisfied with room to spare [SUPERSEDED 2026-08-01 per the XE-8 release fence: the claim rode the WITHDRAWN R6b fix-in-passing (SIGMA0-DECLAIM); the honest state is GAP-LP-RECUR OPEN at A6 strength per MM:3163 - this sentence stands as record, not as a discharge]: the initial-delay term is inert and cannot dominate the round-sum term D_bar'/p under the beta-first, then delta-second, order of limits. The collar charge rides in P(beta), rate-inert. (Residual honestly typed: the bound uses q in D_k(eps); for q in U outside the certified basin the sub-cap RELAX leg is not licensed and E_q[sigma_0] is not claimed, matching R5a §7's fixed q in D_k(eps).)

-------------------------------------------------------------------
WHAT R6b DISCHARGES AND WHAT REMAINS TYPED
-------------------------------------------------------------------
Discharged (relative to XM-R2 F2). Finding 1: R5a §5(P)'s crossing floor is re-based on an event that genuinely obeys the delayed-return convention — one forced uphill L1 hop to a gateway B_gate outside S^+ (cost exp(-beta O(delta^2)) subset err(delta), realising the single collar exit) followed by the SH.3 ascent and LP.5(b) crossing without re-entering S — so inf_{x in S} Phi(x) >= p holds on a subset of {L<D(0)} and E[N] <= 1/p stands (§2). Finding 2: the collar exit is charged with its TRUE polynomial-in-beta cost (COLLAR-EXIT), exact by the M2a.2 double-rotation identity; R5b's subcycle is restructured so it FIRST realises the collar exit (Phase E) and THEN the return/crossing dichotomy, and p_sub, the geometric estimate M_i, the duration bound D_bar', the horizon T_sub, and E_q[sigma_0] are rebuilt on the corrected events (§3-§5). The false beta-free collar-exit assertion (lane-minmig:3291) is removed; the honest replacement is a polynomial prefactor P(beta) that is rate-inert under the mandated order of limits. The A6 interface is met [SUPERSEDED 2026-08-01 per the XE-8 release fence: the claim rode the WITHDRAWN R6b fix-in-passing (SIGMA0-DECLAIM); the honest state is GAP-LP-RECUR OPEN at A6 strength per MM:3163 - this sentence stands as record, not as a discharge] (§5); A7's inequality direction (lane-minmig:3162-3169) is untouched and consumed as tau_change^theta <= sigma_0 + sum_{i=1}^N D_i.

Remaining typed (the honest tail, unchanged by this piece). PROD-EXCURSION-COND (N,k) [NEW NAMED ROW = R5a's GAP-PE-COND; external, expectation-shaped, TYPED, not proved here]: for every admissible round-start field G_i and subcycle field H_m, E[off-R_0 occupation of round i | G_i] <= T_row(eps,delta) exp(-beta(c_H/2 - err(delta))) a.s., T_row beta-free, uniformly over the G_i-measurable start in S; consumed in §4 (Phase-A summation) and §5 (sigma_0) - the §5 instance rides the WITHDRAWN fix-in-passing and is CONDITIONAL per the GAP-LP-RECUR @ A6 fence [XE-8]. [SUPERSEDED IN PART 2026-07-27 — CURE-XE5-4 v3; LANDED 2026-08-01 under the XE-8 release fence. The '§5 (sigma_0)' consumption recorded here is WITHDRAWN with the §5 display at MM:4246 (CURE-XE5-4 v2). It was at index i = 0, conditioning field F_0 = F_{kappa_0}, start domain D_k(eps) with no claimed containment in closure(S) — outside the domain to which CURE-XE4-4 narrowed this row and inside which E2-ASSEMBLY discharges it (i >= 1 / G_i = F_{sigma_{i-1}} / starts in closure(S) / on O_R5a, PX:17123-17126). The §4 consumption at i >= 1 is UNAFFECTED. The record of what was consumed is retained here, not deleted. SUPERSEDED TEXT AT THIS SITE, VERBATIM: "consumed in §4 (Phase-A summation) and §5 (sigma_0)". This bracketed note is landed identically at MM:4260 and MM:4268; per PX:22625-22626, "Same text, distinct anchor; the two register lines must not drift."] PROD-EXCURSION (lane-lp:214-233, external, unchanged): the underlying unconditional per-round off-R_0 expectation; consumed at exactly its source strength. GAP-M5-EUC (inherited, not re-opened): the fixed beta-free 2N-dimensional Euclidean/max-norm equivalence factor (lane-minmig:1712-1727). No flip of LP-MIN-MIG follows from R6b: the migration flip stays BLOCKED until (i) the composition/wiring of PROD-EXCURSION-COND and the R5c rows across every LP/master consumer (verdict Finding 3) is completed, (ii) the external rows and register/gate items (verdict Findings 4-8) are resolved, and (iii) an external XM-R2 DISCHARGE-SOUND verdict signs off (release gate, lane-minmig:2989-2995; [23] §E). Those are out of this piece's scope.

### consumed

DELAYED-RETURN CONVENTION / ROUND OBJECT (R5a): theta^+(t), D(t), sigma_0:=D(0), sigma_i:=D(sigma_{i-1}), terminus T_i:=min(D(sigma_{i-1}),L_i), one augmented path filtration, strong Markov at F_t-stopping times, the crossing floor Phi(x)>=p and count/Wald frame E[N]<=1/p — lane-minmig-proofs-v1.md:2983-3002,3009-3036,3055-3059,3078,3087-3101. | EXACT DOUBLE ROTATION SYMMETRY (the load-bearing new input): energy E_eps=sum_i[kappa(1-cos d_i)+lambda(1-cos e_i)+eps(1-cos(d_i-e_i))] and Lemma M2a.2 "sum_i dE/dtheta_i=0 and sum_i dE/dphi_i=0 IDENTICALLY on X and for every epsilon" — lane-m2-coupled-pair-declaration-v1.md:32-36,58-72. | FLAT-MODE KERNEL: G_k tangent kernel = R u_theta ⊕ R u_phi (the T^2 rotation directions), normal bundle splits, transverse Hessian positive-definite MOD the T^2 rotation kernel (Morse-Bott) — lane-minmig:1472-1501 (M5.0b/0c/0d), 929 (M2P.2). | G_k E_eps-critical for every eps, E_eps(G_k)=m_k+eps w_k — M2P.1, lane-minmig:601-602,922; lane-m2-persistence-schema-v1.md:122-128. | l2_product probe (flatness in theta_dir AND phi_dir, eps in {0,0.1}, r_tube=0.8, N=10) as CONSISTENCY only — lane-minmig:706-708,216. | L1 HOP (P_x(X_1 in B_{h/2}(y))>=c_0 exp(-beta C_1(delta^2+h^2))) + L1' A4/A5 corridor-qualified free-density form + tube-stay sub-exponential in beta — lane-sh2local-proofs-v1.md:192-195,74-90; lane-minmig:481,505. | M3-GS chain (the object being replaced in the crossing floor) — lane-minmig:698-725. | SH.3 sandwich cost + LP.5(a)/(b) crossing chain — lane-lp-product-saddle-v1.md:806-808,810-824; lane-minmig:738-744. | R5b subcycle scaffold, p_sub, geometric induction, phase-A/B duration, sigma_0 section (incl. the FALSE beta-free collar claim at :3320) — lane-minmig:3197-3217,3238-3248,3253-3265,3270-3284,3316-3328. [ANCHORS CORRECTED, WITH THE LANDING CHECK ATTACHED AND NOT SILENTLY, 2026-08-01 — XE-8 release fence, executing AM-R5-27(c4) item 5 / T-21 items (4c)(ii)-(iii) (PX:22637-22649). SUPERSEDED TEXT AT THIS SITE, VERBATIM: "sigma_0 section (incl. the FALSE beta-free collar claim at :3291) — lane-minmig:3197-3217,3238-3248,3253-3265,3270-3284,3287-3299." (ii) '3287-3299' -> '3316-3328', the R5b Section 6 anchor CURE-XE5-4 v2 corrects at MM:4244 (B5); the header "(6) THE INITIAL DELAY sigma_0 FROM ARBITRARY q (obligation (4))" is at MM:3316. (iii) ':3291' -> ':3320', with the landing check attached, verbatim: "[:3320, per CURE-XE5-4 v2 B4 — the beta-free T_exit assertion is at MM:3320 and is STILL PRESENT in the bytes; MM:4258's claim that it 'is removed' is UNRESOLVED and must be resolved before MM:3316-3328 is treated as neutralized.]" That check is now landed at MM:3320 itself. Appended clause, verbatim (PX:22647-22649): "[2026-07-27 — the block cited here at MM:3316-3328 retains its bytes, but its closure claim at MM:3328 is WITHDRAWN (CURE-XE5-4 v2 B1). Nothing here consumes that closure claim.]" RESIDUAL, FLAGGED AND NOT MOVED: the sibling ranges 3197-3217, 3238-3248, 3253-3265 and 3270-3284 in this same citation string are not verified against current bytes here. The instrument's own internal checker records why the caution is needed (PX:22792-22793): "Bytes indicate the whole list is shifted, not just the last entry", MM:3290-3292 carrying the 'geometric induction' item where the last entry was cited. Flagged, not re-pointed. No constant, exponent, threshold or display moves.] | BAND TRICHOTOMY horizons T_B(eps)=(c_H+eps')/floor(eps)^2, T_cone(eps)=O(log 1/eps), core kick + LP.4a frame exit, PROCESS FORM — lane-lp-product-saddle-v1.md:672-745 (688-733). | M5 product-torus orbit chain (matched radii, n=ceil(2 D_G/h), D_G=pi sqrt(2N), Gamma_orb(h)=O(h)) — lane-minmig:1425,1691,1735-1738. | M2-ATTR(k,eps) THEOREM (no trap in basin, positive invariance) + M2P.5 Step 2/3 (slice-gradient floor, closure attraction) — lane-m2-attractor-pinning-small-coupling-v1.md:157,220; lane-minmig:771-776. | SH.2 max-norm shadowing + lead amendment A5 — lane-minmig:2953-2964. | Diffusive floor beta h^2>=B necessary (XF A3) — lane-sh2local:33-35. | c_H ledger, gamma_2, C_1, C_2, C_w, T_row, T_1, err(delta) (symbolic, named-and-bounded) — lane-lp:152-155; lane-minmig constants ledger. | A6 interface (sigma_0 at round-sum rate) + A7 inequality — lane-minmig:3169-3177,3179-3186. [ANCHORS CORRECTED 2026-08-01 — XE-8 release fence, executing AM-R5-27(c4) item 5 / T-21 item (4c)(i) (PX:22631-22636) through CURE-XE4-4 v3's own ANCHOR FIX, note N25 (PX:16685-16700). SUPERSEDED TEXT AT THIS SITE, VERBATIM: "lane-minmig:3153-3161,3162-3169." CURE-XE4-4 v3 N25, verbatim: "LEAD AMENDMENT A6 is at lane-minmig:3169-3177, under the header '### LEAD AMENDMENT A6 (2026-07-21; source: R5a checker MINOR 1)'. Lines 3153-3161 are the tail of R5a's consumed-sources block and the '### r5a - typed gaps' header with GAP-LP-RECUR; they do not contain A6. The SUBSTANCE quoted at this site is accurate against A6 verbatim ... so nothing mathematical changes; only the pointer moves. Recorded because this cure exists to remove citations that do not resolve to the bytes they name." On the A7 half, PX:22634-22636 verbatim: "MM:3162-3169 is the typed-gaps header plus GAP-LP-RECUR/GAP-PE-COND/GAP-M5-EUC plus A6's header, not A7." A7 runs MM:3179-3186. These are the same two corrections CURE-XE5-4 v2 already makes at MM:4253 (A6) and MM:4258 (A7) and left unfixed here. No constant, exponent, threshold or display moves; only pointers move.] | Order of limits / rate shape — [23] §B.3 lines 436-447; the conditional-round-field requirement — [23] §D lines 552-558.

### typed gaps

PROD-EXCURSION-COND (N,k) [NEW NAMED ROW = R5a's GAP-PE-COND; EXTERNAL, expectation-shaped; TYPED, NOT discharged here]: for every admissible round-start field G_i=F_{sigma_{i-1}} and subcycle field H_m=F_{alpha_m} arising in the §3 scaffold, E[off-R_0 occupation of round i | G_i] <= T_row(eps,delta) exp(-beta(c_H/2-err(delta))) a.s., T_row beta-free, uniformly over the G_i-measurable start X_{sigma_{i-1}} in S. Strengthens the source PROD-EXCURSION from an unconditional per-round expectation (lane-lp:214-233) to the conditional-uniform version [23] §D (lines 552-558) requires; consumed in §4 (Phase-A summation) and §5 (sigma_0) - the §5 instance rides the WITHDRAWN fix-in-passing and is CONDITIONAL per the GAP-LP-RECUR @ A6 fence [XE-8]. [SUPERSEDED IN PART 2026-07-27 — CURE-XE5-4 v3; LANDED 2026-08-01 under the XE-8 release fence. The '§5 (sigma_0)' consumption recorded here is WITHDRAWN with the §5 display at MM:4246 (CURE-XE5-4 v2). It was at index i = 0, conditioning field F_0 = F_{kappa_0}, start domain D_k(eps) with no claimed containment in closure(S) — outside the domain to which CURE-XE4-4 narrowed this row and inside which E2-ASSEMBLY discharges it (i >= 1 / G_i = F_{sigma_{i-1}} / starts in closure(S) / on O_R5a, PX:17123-17126). The §4 consumption at i >= 1 is UNAFFECTED. The record of what was consumed is retained here, not deleted. SUPERSEDED TEXT AT THIS SITE, VERBATIM: "consumed in §4 (Phase-A summation) and §5 (sigma_0)". This bracketed note is landed identically at MM:4260 and MM:4268; per PX:22625-22626, "Same text, distinct anchor; the two register lines must not drift."]; proof is the stage-4 reversibility round-trip route recorded for PROD-EXCURSION (lane-lp:232-237), now conditional; the off-stratum G_{k,j}=C_k x C_j^phi pinning-tori traps in R_0^c are its burden and no bare probability-floor version holds. | PROD-EXCURSION (lane-lp:214-233, EXTERNAL, unchanged): the underlying unconditional per-round off-R_0 expectation; consumed at exactly its source strength, NOT proved here (stage-4 target); the verdict's Finding 4 warns its all-N>=10 discharge route is likely false outside a narrow window (independent PE.5 recompute: 1411/1528 reachable-cell violations) — that scope warning is inherited, not resolved here. | GAP-M5-EUC (inherited, not re-opened): the fixed beta-free 2N-dimensional Euclidean/max-norm equivalence factor (lane-minmig:1712-1727); this piece introduces no new norm dependence. | OUT OF R6b SCOPE (blocking the flip, other pieces): the composition/wiring of PROD-EXCURSION-COND and the R5c rows across every LP.5/master-display/Master-Theorem consumer surface (verdict Finding 3), the external-row scope and register/gate items (verdict Findings 4-8), and the required external XM-R2 DISCHARGE-SOUND verdict (release gate lane-minmig:2989-2995, [23] §E). LP-MIN-MIG stays BLOCKED until all of these land.


---

# Lemma KD (R7a) — the killed corridor-confined base-ball density (mechanism)

(grade: draft PROVED; checker REPAIRABLE; its two metric MAJORs cured by R8a below - read the geometry through R8a)

========================================================================
R7a — LEMMA KD: THE KILLED (CORRIDOR-CONFINED) BASE-BALL DENSITY
(cures the R6a FATAL: the object R6a Section 1 asserted is here PROVED, by
a Dirichlet-killed kernel spliced through a killed-semigroup Chapman-
Kolmogorov step, not by conflating an event bound with an unconfined bridge)
========================================================================

0. WHAT WAS ASSERTED, AND WHAT IS BUILT
------------------------------------------------------------------------
R6a's load-bearing object (POS) (R6a Section 1) is a CORRIDOR-CONFINED
DENSITY on the flagship M = T^{2N} (n = 2N, so beta^{n/2} = beta^N):

  (POS)   P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3 delta/8 )
             >=  m_kd . Leb(dz)|_{B_ref},   B_ref := B_{delta/8}(g*) subset S,
          m_kd := c beta^N exp( -beta C delta^2 ),   c, C > 0 beta-free,
          uniformly over x in S = B_{delta/4}(g*).

R6a Section 1 wrote "the L1' Girsanov/symmetry-Jensen argument lower-bounds
exactly the mass of this G_eps-type event AND its endpoint density; tightening
the recorded corridor from T_{3r0/8} to B_{3delta/8}(g*) is immediate." The
R6a checker's FATAL (finding 1) is correct: L1 (lane-sh2local:160-164)
delivers a corridor-confined EVENT probability with NO endpoint density; L1'
(lane-sh2local:349-504) delivers an endpoint density but through an
UNCONFINED Doob bridge on [1/2,1] (leg 2), whose free Chapman-Kolmogorov
splice (lane-sh2local:481-486) integrates over ALL of M and thereby DROPS the
[1/2,1] confinement; A5's killed form (lane-sh2local:87-90) confines only to
the transverse tube T_{r0}(G_k), which is tangentially the whole orbit -- not
the max-norm ball B_{3delta/8}(g*). Neither tool gives (POS). "Immediate" was
a conflation.

R7a builds (POS) as an outright lemma KD by the route the verdict named
(line 91) and the R6a checker prescribed: (Step A) a DIRICHLET-KILLED
driftless kernel lower bound on the confinement ball, from the classical
interior Dirichlet heat-kernel estimate SR-KD, whose beta-free constant is
legitimate because the driftless diffusivity is CONSTANT (no O(1) drift) and
the ball is scale-invariant; (Step B) transfer to the SDE by the SAME exact
Girsanov/Doob factor D_t that L1' uses, now carried on the Q-CONFINED bridge
-- reproving L1' leg 2 with the killed kernel in place of the unconfined
bridge; (Step C) the drift action on the confined event is O(beta delta^2)
because |grad E_eps| = O(delta) + O(eps) throughout the collar (M5-DRIFT);
(Step D) the crux -- splice at t = 1/2 with the KILLED-semigroup Chapman-
Kolmogorov identity, whose spatial integral is over Q ONLY, so the
confinement conjunct is transported across the splice. Leg 1 (the L1 confined
positioning event) is kept exactly as in R6a. Every constant is re-derived
symbolically.

Standing setting and notation are those of R5a Section 0 (lane-minmig:2986)
and L1/L1' (lane-sh2local:96-104, 224-257): dX_t = -grad E_eps(X_t) dt +
sqrt(2/beta) dW_t on M = T^{2N}, flagship k=1, N>=10, eps in [0,eps_2) fixed;
G_k the flat totally-geodesic product-ground 2-torus, E_eps|_{G_k} = e_0 =
m_k + eps w_k (M2P.1, lane-minmig:922); g* in G_k the fixed base point; all
distances/balls in the max norm centred at g*; S = B_{delta/4}(g*), S^+ =
B_{delta/2}(g*), S subset S^+ subset U_ch = {dist(.,G_k) <= delta/2}
(lane-minmig:2991-2994). Fix

  Q := B_{3delta/8}(g*)   (the CONFINEMENT BALL; open max-norm ball,
        S subset Q subset S^+ strictly, since delta/4 < 3delta/8 < delta/2),
  B_ref = B' := B_{delta/8}(g*)   (the landing/reference ball; B' subset S).

Q lifts isometrically to a Euclidean ball Q~ of radius 3delta/8 on the
universal cover, because 3delta/8 <= r0/4 << inj(M) (same flat-lift regime as
L1/L1', lane-sh2local:110,236-238); below inj(M) geodesic = principal-lift
Euclidean distance, and a process killed on exiting Q cannot wind, so the
M-killed kernel EQUALS the lifted Euclidean-Q~ killed kernel on the principal
sheet (no image sum is needed for a killed kernel -- cleaner than L1' Step 1,
which needed IMG only because its FREE kernel could wrap). We therefore work
on Q~ where the Euclidean-domain theorem SR-KD applies, and read the result
back through the isometry.

Diffusive floor (mandated throughout, XF A3, lane-sh2local:33-35): beta >=
B_0/delta^2 with B_0 := 64, carried before beta -> infinity. Let
lambda_diff := sigma sqrt(1/2) = sqrt((2/beta)(1/2)) = beta^{-1/2} be the
half-time diffusive length. Two consequences of B_0 = 64, both used below:
(i) LEG-1 small-ball floor: beta rho^2 = beta(delta/8)^2 >= 1 at rho = delta/8;
(ii) SR-KD INTERIOR regime: the boundary distance of B_ref to partial Q is
3delta/8 - delta/8 = delta/4, and (delta/4)/lambda_diff = (delta/4) sqrt(beta)
>= (delta/4)(8/delta) = 2, i.e. B_ref sits at least 2 diffusive lengths inside
Q. Both hold for all beta >= B_0/delta^2; enlarging B_0 only pushes B_ref
deeper and improves the SR-KD constant.

========================================================================
1. THE CLASSICAL INPUT (SR-KD), STATED WITH HYPOTHESIS ROWS
========================================================================
SR-KD (corpus-named; interior lower half of the two-sided Dirichlet heat-
kernel Gaussian estimate on a smooth bounded domain). Classical; consumed as
a NAMED IMPORT and NOT reproduced (SR discipline), on the same footing L1'
consumes SR-SH1 and the Aronson/Levi family (lane-sh2local:285-298). The
statement used:

  Let g^{Q~}_t(a,b) be the Dirichlet heat kernel of the DRIFTLESS generator
  (1/beta) Laplacian (diffusivity sigma^2 = 2/beta) on the open Euclidean ball
  Q~ = B_R (R = 3delta/8), killed on exit. There are dimensional constants
  kappa_0 > 0 and C_* >= 1 (depending only on n = 2N, not on beta, delta, R --
  the ball is scale-invariant) such that for all t > 0 and all a,b in Q~,

    g^{Q~}_t(a,b)  >=  kappa_0 . ( 1 wedge zeta(a)/(sigma sqrt t) )
                                . ( 1 wedge zeta(b)/(sigma sqrt t) )
                                . ( beta/(4 pi t) )^{n/2}
                                . exp( -C_* beta |a-b|^2/(4t) ),
    zeta(u) := dist(u, partial Q~).

Named-theorem provenance (non-reproduced): the boundary-factor Gaussian form
is the two-sided Dirichlet estimate on a bounded C^{1,1} domain (e.g.
Q. S. Zhang, "The boundary behavior of heat kernels of Dirichlet Laplacians,"
J. Differential Equations 182 (2002) 416-430; E. B. Davies, Heat Kernels and
Spectral Theory, 1989); the interior lower bound alone follows from Moser's
parabolic Harnack inequality plus the Fabes-Garofalo-Salsa parabolic boundary
Harnack principle. Hypothesis rows (each MATCHED here):

  ROW SR-KD.1 domain: bounded, C^{1,1} (here C^infinity) boundary.
    MET -- Q~ = B_{3delta/8} is a Euclidean ball.
  ROW SR-KD.2 operator: constant-coefficient uniformly elliptic, driftless.
    MET -- (1/beta) Laplacian, diffusivity 2/beta constant. (Crucially the
    theorem is applied to the DRIFTLESS process, so its lower constant is
    beta-uniform after the scale-invariant rescaling y = sqrt(beta)(x-g*),
    which maps the problem to the FIXED unit-diffusivity Dirichlet kernel on
    a ball of radius R sqrt(beta) -> infinity; no O(1) drift enters SR-KD, so
    the L1' Remark C beta-uniformity concern (lane-sh2local:555-564) does NOT
    arise -- the drift is reinstated separately in Section 3 by Girsanov.)
  ROW SR-KD.3 time: t in (0, T_0]. MET at t = 1/2 (rescale absorbs T_0).
  ROW SR-KD.4 endpoints: interior. Used at a,b in B_ref, zeta(a),zeta(b)
    >= delta/4 >= 2 lambda_diff (Section 0(ii)), so both boundary factors
    (1 wedge zeta/(sigma sqrt(1/2))) = (1 wedge (delta/4) sqrt(beta)) = 1.

Instantiating at t = 1/2, a,b in B_ref (so |a-b| <= delta/4), beta >=
B_0/delta^2, and using (beta/(4 pi . 1/2))^{n/2} = (beta/(2 pi))^N:

  g^{Q}_{1/2}(a,b)  >=  kappa_0 (beta/(2 pi))^N exp( -C_* beta |a-b|^2/2 )
                    >=  kappa_0 (beta/(2 pi))^N exp( -C_* beta delta^2/32 ),   (KD-A)

uniformly over a,b in B_ref, where g^{Q} is read back on M by the isometry
Q~ <-> Q. This is the KILLED analogue of L1's (GAUSS) seed (lane-sh2local:341)
-- but with the endpoints CONFINED to Q, the Dirichlet exponent shape is
O(beta delta^2) with a beta-free C_*, exactly the checker's predicted cost.

========================================================================
2. THE KILLED SEMIGROUP AND ITS CONFINEMENT-PRESERVING SPLICE (CK-Q)
========================================================================
Let tau_Q := inf{ t : X_t not in Q } be the first exit of the SDE from Q, and
define the KILLED (Dirichlet) semigroup of the FULL SDE on Q,

  (P^Q_t f)(x) := E_x[ f(X_t) ; t < tau_Q ]   (sub-Markov).

By SR-SH1 (lane-sh2local:285-288: L_beta with E_eps smooth on compact M has a
jointly continuous strictly positive transition density) restricted to Q with
the Dirichlet boundary condition, P^Q_t has a jointly continuous density
p^Q_t(x,z) on Q x Q for t > 0 (the Dirichlet heat kernel of L_beta on Q). By
construction, for any Borel A subset Q,

  P_x( X_t in A , t < tau_Q )  =  integral_A p^Q_t(x,z) dz.                    (KILL)

Killed-semigroup Chapman-Kolmogorov (THE kernel / monotone-class step). For
s,t > 0, on {s < tau_Q}, the strong Markov property at s and the pathwise
identity {s+t < tau_Q} = {s < tau_Q} intersect theta_s^{-1}{t < tau_Q} give

  E_x[ f(X_{s+t}) ; s+t < tau_Q | F_s ]
     = 1_{s<tau_Q} . E_{X_s}[ f(X_t) ; t < tau_Q ]  =  1_{s<tau_Q} (P^Q_t f)(X_s)   a.s.

Taking E_x and reading in density form (Fubini on the nonnegative kernels;
extend from f = 1_A, A subset Q Borel, to general nonnegative Borel f by the
monotone class theorem),

  p^Q_{s+t}(x,w)  =  integral_Q p^Q_s(x,z) p^Q_t(z,w) dz.                       (CK-Q)

THIS is the exact step that carries the confinement through the splice: the
spatial integral runs over Q ONLY. Contrast L1' Step 5 (lane-sh2local:481-486),
whose Chapman-Kolmogorov integrates the FREE kernel p_{1/2}(z,w) over all of M
and therefore imposes no [1/2,1] confinement -- the precise source of the
FATAL. (CK-Q) is a semigroup identity for the killed sub-Markov kernel, not
an inequality, and it is where R7a differs structurally from R6a Section 1.

Two elementary reductions used below.
 (R-i) KILLING UNDER-COUNTS THE CLOSED-BALL SUP EVENT. Since {tau_Q > 1} =
   {sup_{[0,1]} |X_t - g*|_max < 3delta/8} subset {sup_{[0,1]} |X_t - g*|_max
   <= 3delta/8}, and P_x(sup = 3delta/8 exactly) = 0 for the nondegenerate
   diffusion, (KILL) at t=1 is a valid LOWER bound for the (POS) confined
   density: P_x(X_1 in dz, sup_{[0,1]}|X_t-g*| <= 3delta/8) >= p^Q_1(x,z) dz.
   It therefore SUFFICES to lower-bound p^Q_1(x,.) on B_ref.
 (R-ii) FACTORS. Apply (CK-Q) at s=t=1/2 and drop mass outside B' subset Q:

   p^Q_1(x,w)  =  integral_Q p^Q_{1/2}(x,z) p^Q_{1/2}(z,w) dz
             >=  integral_{B'} p^Q_{1/2}(x,z) p^Q_{1/2}(z,w) dz
             >=  ( inf_{z in B'} p^Q_{1/2}(z,w) ) . integral_{B'} p^Q_{1/2}(x,z) dz
              =  ( inf_{z in B'} p^Q_{1/2}(z,w) ) . P_x( X_{1/2} in B', 1/2 < tau_Q ),  (SPLICE)

   the first factor = LEG 2 (Section 3), the second = LEG 1 (Section 4), both
   confined to Q by construction of the killed kernel.

========================================================================
3. LEG 2 -- THE KILLED BASE-BALL DENSITY VIA THE L1' GIRSANOV FACTOR
========================================================================
We lower-bound inf_{z in B'} p^Q_{1/2}(z,w) for w in B_ref, keeping the
confinement to Q, by transferring (KD-A) to the SDE through the SAME exact
ground-state Girsanov/Doob factor L1' uses (RN)/(BRIDGE), now on the
Q-CONFINED bridge.

(BRIDGE-Q) -- the killed density = killed Gaussian times the confined-bridge
RN factor. Let P^0 be the driftless lifted law, P the SDE law, both from z.
Girsanov (valid: |grad E_eps| bounded, Novikov trivial; lane-sh2local:353-356)
gives dP/dP^0|_{F_t} = D_t with, by Ito on E_eps exactly as L1' (RN)
(lane-sh2local:363-367),

  D_t = exp( -(beta/2)( E_eps(X_t) - E_eps(X_0) ) + (1/2) integral_0^t Delta E_eps(X_s) ds
             - (beta/4) integral_0^t |grad E_eps(X_s)|^2 ds ).

Killing is multiplication by the path functional 1_{t < tau_Q}, which commutes
with the Radon-Nikodym reweighting. Disintegrating the driftless law over the
endpoint X_t = w by the driftless bridge and then conditioning that bridge on
{t < tau_Q} (whose bridge-probability is exactly g^{Q}_t(z,w)/g_t(z,w)),

  p^Q_t(z,w)  =  g^{Q}_t(z,w) . E^{0,Q,br}_{z->w}[ D_t ],                       (BRIDGE-Q)

the expectation over the driftless Gaussian bridge from z to w in time t
CONDITIONED TO STAY IN Q. This is the Dirichlet-killed analogue of L1'
(BRIDGE) (lane-sh2local:373-374), obtained by the identical Girsanov factor
D_t; it is the promised "reprove L1' leg 2 with the killed kernel in place of
the unconfined bridge."

Bounding D_t on the confined bridge (STRICTLY EASIER than L1' Step 3 -- the
confinement REMOVES the tube-tail term). Fix t = 1/2, z,w in B'. On the event
{path stays in Q} every X_s in Q subset U_ch, so dist(X_s, G_k) <= |X_s - g*|
<= 3delta/8 < r0 PATHWISE; hence L1' Step 3's excursion tail (F3b, its
1[|xi_s| >= 7r0/8] term, lane-sh2local:410-431) is IDENTICALLY ZERO on the
confined bridge, and the drift bound is purely linear. Using the collar drift
bound M5-DRIFT (lane-minmig:1404: |grad E_eps(x)| <= L_eps dist(x,G_k), L_eps
<= L + 8 eps, from M2P.1 exact criticality of G_k so grad E_eps(pi x) = 0;
equivalently M5-DRIFT-naive |grad E_eps| <= L dist + 2 sqrt(2N) eps = O(delta)
+ O(eps), lane-minmig:1395,635), pathwise on Q:

  |grad E_eps(X_s)|  <=  L_eps . (3 delta/8),   so
  (beta/4) integral_0^{1/2} |grad E_eps|^2 ds  <=  (beta/4)(1/2)(3 L_eps delta/8)^2
       =  beta . ( 9 L_eps^2/512 ) delta^2   =  O(beta delta^2).

This is exactly the "drift action is O(beta delta^2) since |grad E_eps| =
O(delta) + O(eps) in the collar" the design named. Endpoint energy, by (TUBE+)
(lane-sh2local:253: E_eps(u) - e_0 <= (C_+/2) dist(u,G_k)^2) with z,w in B',
dist <= delta/8, and E_eps(z) >= e_0:

  -(beta/2)( E_eps(w) - E_eps(z) )  >=  -(beta/2)(C_+/2)(delta/8)^2  =  -beta (C_+/256) delta^2.

Laplacian, |Delta E_eps| <= M_2 (lane-sh2local:246), t = 1/2:
(1/2) integral Delta E_eps ds >= -M_2/4 (beta-free). All three are PATHWISE
deterministic bounds on the confined bridge (no Jensen needed -- the gradient
integral is bounded pathwise BECAUSE the path stays in Q), so

  E^{0,Q,br}_{z->w}[ D_{1/2} ]  >=  exp( -beta Gamma_E delta^2 - M_2/4 ),
     Gamma_E := C_+/256 + 9 L_eps^2/512   ( > 0, beta-free ).                   (KD-C)

(A Jensen step E[e^{-Y}] >= e^{-E[Y]} on the confined bridge gives the same
bound and is the fallback if one prefers not to argue pathwise; either way
the exponent is O(beta delta^2), never O(beta).)

Compose (BRIDGE-Q) with (KD-A) and (KD-C): for all z,w in B' = B_ref,

  p^Q_{1/2}(z,w)  =  g^{Q}_{1/2}(z,w) . E^{0,Q,br}_{z->w}[ D_{1/2} ]
     >=  [ kappa_0 (beta/(2 pi))^N exp(-C_* beta delta^2/32) ] . [ exp(-beta Gamma_E delta^2 - M_2/4) ]
      =  a_0^{kd} beta^N exp( -beta a_1^{kd} delta^2 ),
     a_0^{kd} := kappa_0 (2 pi)^{-N} exp(-M_2/4)  ( > 0, beta-free ),
     a_1^{kd} := C_*/32 + Gamma_E  ( > 0, beta-free ).                          (LEG*-Q)

Hence inf_{z in B'} p^Q_{1/2}(z,w) >= a_0^{kd} beta^N exp(-beta a_1^{kd}
delta^2) for every w in B_ref. This is the Dirichlet-killed replacement for
L1' (LEG*)/(ARONSON-LEG) (lane-sh2local:465-474): a base-ball DENSITY that,
unlike L1', is CONFINED to Q throughout [1/2,1].

========================================================================
4. LEG 1 -- THE L1 BALL-CONFINED POSITIONING EVENT (UNCHANGED FROM R6a)
========================================================================
The second factor of (SPLICE) is, by (KILL) at t = 1/2,

  P_x( X_{1/2} in B' , 1/2 < tau_Q )  =  integral_{B'} p^Q_{1/2}(x,z) dz.

We lower-bound it by the L1 confined event, exactly as R6a leg 1 (which the
checker did NOT dispute). Instantiate L1 (lane-sh2local:96-104) at horizon
1/2, target y := g* in G_k, start x in S so the transverse size delta_x :=
dist(x,G_k) <= delta/4 and the tangential slide h_x := d_{G_k}(pi(x),g*) <=
delta/4 (both <= r0/4), FIXED landing radius rho := delta/8 (L1's master bound
(star), lane-sh2local:164, is FREE in rho; rho enters only the small-ball term,
absorbed once beta rho^2 = beta(delta/8)^2 >= 1, i.e. beta >= 64/delta^2, held
by B_0 = 64). L1's Gronwall corridor bootstrap (lane-sh2local:156-158) bounds
the FULL lifted deviation R_t = X_t - phi(t): on the driving small-ball event
G_eps, sup_{[0,1/2]} |R_t| <= sigma e^{L/2} epsilon = rho = delta/8. The two-leg
control path phi (transverse relaxation at base pi(x), then tangential slide
pi(x) -> g* along G_k, lane-sh2local:133-134) has every point within
max(delta_x, h_x) <= delta/4 of g* in max norm. Hence on G_eps,

  sup_{[0,1/2]} |X_t - g*|_max  <=  sup |phi(t) - g*| + sup |R_t|  <=  delta/4 + delta/8  =  3 delta/8,

so the WHOLE [0,1/2] path stays in Q = B_{3delta/8}(g*) (i.e. 1/2 < tau_Q) AND
X_{1/2} in B_{delta/8}(g*) = B'. Thus G_eps subset {X_{1/2} in B', 1/2 <
tau_Q}, and L1's master bound (star) at tau = 1/2 (display (b),
lane-sh2local:183-188) gives

  P_x( X_{1/2} in B' , 1/2 < tau_Q )  >=  P_x(G_eps)
       >=  c_0(1/2) exp( -beta C_1(1/2) (delta_x^2 + h_x^2) )
       >=  c_leg1 exp( -beta a_leg1 delta^2 ),                                  (LEG1)
     a_leg1 := C_1(1/2)/8   (using delta_x^2 + h_x^2 <= 2(delta/4)^2 = delta^2/8),
     c_leg1 := c_0(1/2) = (2/pi)^{2N} exp(-2N pi^2 e^{L}/8),   C_1(1/2) = 1 + L/4 + L^2/48.

This is an EVENT bound (L1's native output, no density claim) and reads the
ball-confinement off L1's own Gronwall control of sup|R_t| -- no new tool, and
exactly the leg the R6a checker confirmed sound.

========================================================================
5. COMPOSITION -> (POS) = LEMMA KD
========================================================================
Insert (LEG*-Q) and (LEG1) into (SPLICE): for every w in B_ref,

  p^Q_1(x,w)  >=  ( inf_{z in B'} p^Q_{1/2}(z,w) ) . P_x( X_{1/2} in B', 1/2 < tau_Q )
    >=  [ a_0^{kd} beta^N exp(-beta a_1^{kd} delta^2) ] . [ c_leg1 exp(-beta a_leg1 delta^2) ]
     =  c beta^N exp( -beta C delta^2 ),
    c := c_leg1 a_0^{kd}  ( > 0, beta-free ),   C := a_leg1 + a_1^{kd}  ( > 0, beta-free ),

uniformly over x in S and w in B_ref. By reduction (R-i), the (POS) confined
density dominates p^Q_1(x,.), so as sub-measures on M,

  P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3 delta/8 )
       >=  p^Q_1(x,z) dz  >=  m_kd . Leb(dz)|_{B_ref},
  m_kd := c beta^N exp( -beta C delta^2 ),   C delta^2 = O(delta^2)  (C beta-free),  (POS)

uniformly over x in S = B_{delta/4}(g*), on the flagship M = T^{2N}, for beta
>= B_0/delta^2. This is precisely the object R6a Section 1 asserted, now
PROVED outright. QED (Lemma KD).

Remark (why the fix is exactly at the FATAL). The endpoint DENSITY comes from
the Dirichlet-killed Gaussian (KD-A) -- a genuine density that is ALREADY
confined -- not from L1's symmetry-Jensen event bound (which has no density)
nor from L1''s unconfined bridge (which has no confinement); the CONFINEMENT
is carried across the [1/2,1] splice by the killed-semigroup identity (CK-Q),
whose spatial integral is over Q, not M. The three objects the checker said
"are not composable into a confined density without the missing killed-kernel
step" are here composed THROUGH that step. The drift is reinstated by the same
Girsanov factor L1' uses, at cost O(beta delta^2) because the confined path
has |grad E_eps| <= L_eps . 3delta/8 (M5-DRIFT), with the tube-tail term of
L1' Step 3 vanishing under confinement.

========================================================================
6. R6a SECTIONS 2-4 CONSUME KD VERBATIM
========================================================================
KD delivers (POS) with m_kd = c beta^N exp(-beta C delta^2), the SAME shape
R6a used (R6a wrote m_ref = c_0' beta^N exp(-beta C_2 delta^2/8)); only the
prefactor c and the beta-free exponent constant C are now DERIVED rather than
asserted. Reading R6a's downstream against KD:

 - R6a SECTION 2 (containment, Cross(x) subset {L < D(0)}). Uses only the two
   conjuncts of (POS): (2.i) "on A_pos the path lies in B_{3delta/8}(g*) subset
   S^+ on all of [0,1]," hence D(0) > 1 and L > 1. KD's confinement conjunct
   {sup_{[0,1]} |X_t - g*|_max <= 3delta/8} is EXACTLY this, and 3delta/8 <
   delta/2 puts the whole [0,1] path strictly inside S^+ = B_{delta/2}(g*), so
   the collar-exit theta^+(0) > 1 and (S^+ subset U_ch misses Delta_theta by
   level, lane-minmig:3002) L > 1. KD's endpoint conjunct {X_1 in B_ref}
   feeds A_pos's {X_1 in B_ref}. R6a 2.(ii)-(iii) (radial expulsion via M2P.5
   slice-gradient dissipativity, lane-minmig:778-780; L finite at the saddle)
   concern the POST-t=1 ascent and are independent of KD's internal
   construction. Consumed verbatim.
 - R6a SECTION 3 (floor at the LP.5 exponent). Uses the strong Markov property
   at t = 1: {A_pos on [0,1]} and {X_1 in B_ref} are F_1-measurable, A_asc is a
   functional of the post-1 path, so P_x(Cross(x)) = E_x[1_{A_pos on [0,1]}
   1_{X_1 in B_ref} P_{X_1}(A_asc)] >= integral_{B_ref} m_kd Leb(dz) P_z(A_asc)
   = m_kd Leb(B_ref) . avg_{z in B_ref} P_z(A_asc). This is R6a Section 3's
   display with m_ref -> m_kd verbatim; the SH.3 average-over-B_ref and the
   LP.5(a)+(b) crossing floor (lane-lp:836-838) are untouched. The prefactor
   c(delta) := c beta^N Leb(B_{delta/8}(g*)) = c beta^N (delta/4)^{2N} = c
   (beta delta^2)^N 4^{-2N} >= 4^{-2N} c by the diffusive floor beta delta^2 >=
   B_0 -- a healthy (non-exp-small) prefactor, as required. The error term is
   err(delta) := C delta^2 + err_{SH,LP}(delta) = O(delta^2) (R6a's C_2 delta^2/8
   slot, now the derived C delta^2).
 - R6a SECTION 4 (composition, filtration, Wald). Cross(x) subset {L < D(0)}
   (Section 2) gives Phi(x) = P_x(L < D(0)) >= P_x(Cross(x)) >= p on R5a's
   single terminus; the strong-Markov conditional identity, (COUNT-MEAS),
   (GEOM) E[N] <= 1/p, and (WALD) are unchanged. Consumed verbatim.

Hence the (P) crossing floor inf_{x in S} Phi(x) >= p of R5a Section 5
(lane-minmig:3056-3060) holds with

  p := c(delta) exp( -beta ( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ) ),
  err(delta) = C delta^2 + err_{SH,LP}(delta) = O(delta^2),

the SAME exponent as R5a/LP.5 (lane-lp:836), err(delta) merely redefined
(R6a already dropped the M3-GS orbit-chain term O(delta); KD supplies the
positioning term C delta^2 = O(delta^2) with C now derived). ORDER OF LIMITS
untouched (lane-minmig:3106-3113): beta -> infinity FIRST at fixed (eps,delta),
the diffusive floor beta >= B_0/delta^2 held throughout; THEN delta -> 0,
sending err(delta) -> 0; THEN the eps-window. The floor is if anything LARGER
than before (smaller exponent), so the LP.5 upper display is preserved.

========================================================================
7. SCOPE
========================================================================
R7a proves ONLY the killed base-ball density KD = (POS), curing the R6a FATAL
(and thereby R5a's (P) floor via Section 6). It does NOT touch: the beta-free-
collar-exit / delayed-return question (R5b / R6b; XM-R2 Finding 2), which R6b
handles by a different route (an EXACT polynomial-in-beta collar-exit charge,
lane-m2-coupled-pair-declaration M2a.2) -- KD and R6b are complementary and
non-conflicting, both charging exp(-beta O(delta^2)); the composition/wiring
of PROD-EXCURSION-COND across LP/master consumers (Finding 3); the external
rows PROD-EXCURSION / PROD-EXCURSION-COND (Findings 4, honestly TYPED,
untouched); the register/gate items (Findings 5-8). No beta-free exit of a
flat mode is asserted anywhere in KD (the positioning cost is the fully-charged
polynomial-in-delta term exp(-beta O(delta^2))). The migration flip LP-MIN-MIG
stays BLOCKED pending R6b's F3 piece, the wiring, and an external XM-R2
DISCHARGE-SOUND verdict. [RELEASE NOTE 2026-07-26: this in-round status is SATISFIED and CLOSED - the wiring completed, XM-R16 signed DISCHARGE-SOUND, and the flips EXECUTED; see the status head.]

### consumed

SR-KD [NEW named classical import, non-reproduced per SR discipline; hypothesis rows SR-KD.1-4 all matched]: the interior lower half of the two-sided Dirichlet heat-kernel Gaussian estimate on a smooth bounded domain (a ball) for the driftless generator -- Q. S. Zhang, J. Differential Equations 182 (2002) 416-430; E. B. Davies, Heat Kernels and Spectral Theory (1989); interior lower bound alone from Moser parabolic Harnack + Fabes-Garofalo-Salsa boundary Harnack. Applied to the DRIFTLESS killed kernel so its constant is beta-uniform by ball scale-invariance. | SR-SH1 (corpus-named, lane-sh2local:285-288): joint continuity + strict positivity of the L_beta transition density, restricted to Q with Dirichlet condition to yield the killed kernel p^Q_t and its continuity. | THE L1' GIRSANOV/DOOB ENGINE reused verbatim: exact Girsanov RN factor D_t = exp(-(beta/2)(E_eps(X_t)-E_eps(X_0)) + (1/2)int Delta E_eps - (beta/4)int|grad E_eps|^2) (RN, lane-sh2local:363-367); Doob bridge disintegration (BRIDGE, :373-374), here on the Q-CONFINED bridge (BRIDGE-Q); Step-3 endpoint-energy (TUBE+ E_eps-e_0 <= (C_+/2)dist^2, :253), Laplacian |Delta E_eps|<=M_2 (:246), gradient bounds (:395-443) -- with the tube-tail term (:410-431) vanishing under confinement. | L1 THE HOP: master bound (star) free in landing radius rho (lane-sh2local:164), Gronwall corridor control sup|R_t| <= rho (:156-158), two-leg control path (:133-134), half-time display (b) C_1(1/2)=1+L/4+L^2/48, c_0(1/2) (:183-188), diffusive floor beta rho^2>=1 (:170). | M5-DRIFT collar drift bound |grad E_eps(x)| <= L_eps dist(x,G_k), L_eps <= L+8eps, from M2P.1 exact criticality grad E_eps(pi x)=0 (lane-minmig:1404); M5-DRIFT-naive |grad E_eps| <= L dist + 2 sqrt(2N) eps = O(delta)+O(eps) (:1395,635). | XF A3 diffusive floor beta >= B/delta^2 necessary (lane-sh2local:33-35). | R5a Section 0/1/5: S=B_{delta/4}(g*), S^+=B_{delta/2}(g*), U_ch, delayed-return convention theta^+/D (lane-minmig:2986,2991-3003), the (P) floor and its exponent (:3056-3060), G_k = m_k+eps w_k (M2P.1, :922). | M2P.5 Step 2 slice-gradient floor <grad E_eps, x-pi(x)> >= (c_1/2) dist^2 (lane-minmig:778-780) -- consumed by R6a Section 2.ii, cited for the verbatim-consumption check only. | LP.5(a)+(b) sandwich + crossing floor exp(-beta(S_k-m_k+eps(S_k/kappa-w_k)+C_B eps^2+err)) (lane-lp:806-808,836-838) -- consumed by R6a Section 3, cited for the check. | R6a draft Sections 1-4 (the piece being repaired) and its checker finding 1 (the FATAL), from minmig_r6_results.json. | Verdict XM-R2-2026-07-21.md Finding 1 (F2-BLOCKING, lines 83-92) naming the killed-density repair route (line 91). HEAD/evidence-lock per the verdict: lane-minmig sha256 d6378eaa..4b69, lane-sh2local 3ccad736..be5b, lane-lp fb532b41..02ff.

### typed gaps

NONE NEW. Lemma KD = (POS) is proved outright. Honest register: (1) SR-KD is a NAMED CLASSICAL IMPORT, not a typed gap -- it is consumed on exactly the SR footing L1' consumes SR-SH1 and the Aronson/Levi family (lane-sh2local:285-298,555-564): theorem named, hypothesis rows SR-KD.1-4 stated and matched, statement non-reproduced. Its beta-free constant is legitimate (unlike the L1' Aronson beta-uniformity concern of Remark C) precisely because SR-KD is applied to the DRIFTLESS killed kernel, where the diffusivity 2/beta is constant and the ball is scale-invariant, so the rescaling y = sqrt(beta)(x-g*) maps it to the fixed unit-diffusivity Dirichlet kernel on a growing ball with interior endpoints -- no O(1) drift enters SR-KD; the drift is reinstated separately and beta-uniformly by the Girsanov factor at cost O(beta delta^2). If a reviewer insists on treating the imported beta-free exponent constant C_* of SR-KD as unbuilt, it types cleanly as GAP-R7a-KDCONST (a beta-free dimensional Dirichlet-Gaussian constant on a ball), affecting ONLY the value of C = a_leg1 + C_*/32 + Gamma_E in m_kd, hence only err(delta) = C delta^2 = O(delta^2) -> 0 -- it cannot touch the leading (P) exponent S_k - m_k, the order of limits, or the confinement; I do not think it is a genuine gap (the interior Dirichlet lower bound on a ball is standard analysis) and record it as an import. (2) INHERITED, not re-opened: GAP-M5-EUC (the beta-free Euclidean->max-norm ledger, lane-minmig:1712-1727) -- KD adds no new metric burden, Q lifts isometrically below inj(M). (3) SEPARATE PIECES, out of R7a scope: R5b / R6b collar-exit and delayed-return (XM-R2 Finding 2); the PROD-EXCURSION / PROD-EXCURSION-COND external rows (Finding 4, honestly TYPED); the wiring (Finding 3) and register/gate (Findings 5-8). One sub-fact inside KD -- that killing on the OPEN ball Q under-counts the closed-ball sup event -- is DERIVED (reduction R-i: the diffusion spends zero time on the sphere, P_x(sup = 3delta/8 exactly)=0), not typed.


---

# Lemma KD (R8a, METRIC-CORRECTED - the OPERATIVE version): killed on the max-norm cube via SR-KD on the inscribed ball + domain monotonicity

(grade: draft PROVED-WITH-TYPED-GAPS; checker REPAIRABLE)

========================================================================
R8a — LEMMA KD (METRIC/DOMAIN-CORRECTED): THE KILLED (CORRIDOR-CONFINED)
BASE-BALL DENSITY
(cures the two R7a MAJORs — the cube-vs-ball domain mismatch of the SR-KD
import, and the Euclidean-vs-max-norm distance factor in its Gaussian — while
keeping VERBATIM everything the R7a checker verified: CK-Q, BRIDGE-Q, the
confined-bridge Girsanov bound KD-C, the leg-1 event, and the R6a Sec 2-6
consumption)
========================================================================

0. WHAT WAS ASSERTED, AND WHAT IS BUILT
------------------------------------------------------------------------
R6a's load-bearing object (POS) (R6a Section 1) is a CORRIDOR-CONFINED
DENSITY on the flagship M = T^{2N} (n = 2N, so beta^{n/2} = beta^N):

  (POS)   P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3 delta/8 )
             >=  m_kd . Leb(dz)|_{B_ref},   B_ref subset S,
          m_kd := c beta^N exp( -beta C delta^2 ),   c, C > 0 beta-free,
          uniformly over x in S = B^max_{delta/4}(g*).

R7a built (POS) as a killed (Dirichlet) endpoint density and its mechanism was
verified SOUND by the R7a checker (verdict REPAIRABLE): a Dirichlet-killed
Gaussian carried to the SDE by the exact L1' Girsanov factor on the confined
bridge (BRIDGE-Q), with the [0,1] confinement transported across the t=1/2
splice by the killed-semigroup Chapman-Kolmogorov identity (CK-Q) whose spatial
integral is over the confinement region only. The R7a checker confirmed all of
that and left TWO repairable MAJORs, both rooted in one error: R7a imported the
classical estimate SR-KD as a smooth EUCLIDEAN BALL theorem and matched it
against a MAX-NORM confinement region, which in R^{2N} is a CUBE, and it
instantiated SR-KD's EUCLIDEAN-distance Gaussian with a MAX-NORM endpoint
separation, dropping the dimension factor. R8a repairs exactly these two, and
NOTHING else, re-deriving every constant that moves.

THE GEOMETRY, STATED HONESTLY AND FIXED CLEANLY. The confinement region that
leg 1 and (POS) require is intrinsically MAX-NORM: L1's Gronwall control is in
the max norm (lane-sh2local:116 "Norms are the max-norm on lifted coordinates
(corpus convention)"; :156-162), R5a's start region S = B^max_{delta/4}(g*) is
max-norm (lane-minmig:2991), and (POS) must hold UNIFORMLY over every x in that
max-norm S (lane-minmig:3022,3056). One therefore CANNOT simply move the
killed semigroup onto a Euclidean ball Q_e = B^euc_{3delta/8}(g*): since
|x-g*|_euc can reach sqrt(2N)|x-g*|_max, a corner start x in S has
|x-g*|_euc up to sqrt(2N)(delta/4) = O(sqrt N) delta, which EXCEEDS the
Euclidean radius 3delta/8 already at N=2 (explicit: sqrt(2N)/4 > 3/8 iff
2N > 9/4). A semigroup killed on Q_e would kill such a start instantly and
deliver the trivial floor 0 for a positive-measure subset of S — no uniform
(POS). The max-norm confinement is not optional; it is forced by the max-norm
start region and by leg 1's max-norm Gronwall control.

R8a therefore keeps the killed semigroup on the MAX-NORM CUBE Q and uses the
smooth Euclidean ball Q_e ONLY as the domain on which the classical import
SR-KD legitimately applies, bridging the two by DOMAIN MONOTONICITY of Dirichlet
heat kernels (Q_e subset Q => g^{Q_e} <= g^Q, elementary, Section 1). This
(i) delivers the max-norm confinement conjunct of (POS) NATIVELY (the killed-
on-cube kernel confines to Q = B^max_{3delta/8}, exactly (POS)'s conjunct — no
a-fortiori step is needed in the deliverable), (ii) lets leg 1 run VERBATIM on
the cube for every x in the max-norm S, and (iii) applies SR-KD on a genuine
C^infinity ball Q_e, so ROW SR-KD.1 is now truly matched. The one remaining
adjustment is the reference ball: B_ref must sit inside Q_e (Euclidean interior)
for SR-KD's boundary factors, and the max-norm delta/8 ball does not fit inside
Q_e at large N (its Euclidean circumradius sqrt(2N)delta/8 exceeds 3delta/8 for
N >= 5); so B_ref is taken as the EUCLIDEAN ball B^euc_{delta/8}(g*), and the
leg-1 landing radius is adjusted to hit it (Section 4). This shrink also cures
the second MAJOR outright: for two points in a EUCLIDEAN delta/8 ball the
Euclidean separation is <= delta/4 GENUINELY (no dimension factor), so the
(KD-A) exponent -C_* beta delta^2/32 is now correct as written. The dimension
factor 2N does not vanish — it migrates, honestly and in one place, to the
leg-1 landing floor (Section 4), a beta-free, delta-free, N-fixed diffusive-
floor constant that cannot touch the leading exponent or the order of limits.

Standing setting and notation are those of R5a Section 0 (lane-minmig:2986) and
L1/L1' (lane-sh2local:96-104, 224-257): dX_t = -grad E_eps(X_t) dt +
sqrt(2/beta) dW_t on M = T^{2N}, flagship k=1, N>=10, eps in [0,eps_2) fixed;
G_k the flat totally-geodesic product-ground 2-torus, E_eps|_{G_k} = e_0 = m_k +
eps w_k (M2P.1, lane-minmig:922); g* in G_k the fixed base point; ambient tube
radii and dist(.,G_k) in the max norm (corpus convention); S = B^max_{delta/4}(g*),
S^+ = B^max_{delta/2}(g*), S subset S^+ subset U_ch = {dist(.,G_k) <= delta/2}
(lane-minmig:2991-2994). Fix

  Q  := B^max_{3delta/8}(g*)   (the CONFINEMENT CUBE; open max-norm ball in
        R^{2N} = a box, S subset Q subset S^+ strictly, since
        delta/4 < 3delta/8 < delta/2 in the max norm),
  Q_e := B^euc_{3delta/8}(g*)  (the smooth EUCLIDEAN ball inscribed in Q:
        Q_e subset Q because |v|_max <= |v|_euc, so |v-g*|_euc < 3delta/8
        implies |v-g*|_max < 3delta/8),
  B_ref := B^euc_{delta/8}(g*) (the EUCLIDEAN landing/reference ball;
        B_ref subset B^max_{delta/8}(g*) subset S).

Q lifts isometrically to a box Q~ on the universal cover, and Q_e to a Euclidean
ball Q_e~, because 3delta/8 <= r0/4 << inj(M) (same flat-lift regime as L1/L1',
lane-sh2local:110,236-238); below inj(M) geodesic = principal-lift Euclidean
distance, and a process killed on exiting Q (resp. Q_e) cannot wind, so the
M-killed kernel EQUALS the lifted Euclidean-domain killed kernel on the
principal sheet (no image sum for a killed kernel). We work on the cover and
read back through the isometry.

Diffusive floor (mandated throughout, XF A3, lane-sh2local:33-35; the necessary
form is beta >= B_0/delta^2 for a beta-free, delta-free constant B_0). Set

  B_0 := 128 N   (beta-free, delta-free; N is the FIXED half-dimension, N>=10),

carried before beta -> infinity. Let lambda_diff := sigma sqrt(1/2) =
sqrt((2/beta)(1/2)) = beta^{-1/2} be the half-time diffusive length. Three
consequences of B_0 = 128N, all re-derived below in the EUCLIDEAN metric:
(i) LEG-1 small-ball floor (Section 4): the leg-1 landing target is the
    Euclidean B_ref, reached by a max-norm landing radius rho := (delta/8)/sqrt(2N)
    (so the Euclidean landing radius is sqrt(2N) rho = delta/8); the L1 floor
    beta rho^2 >= 1 reads beta delta^2/(128 N) >= 1, i.e. beta delta^2 >= 128 N,
    i.e. beta >= B_0/delta^2. EXACT.
(ii) SR-KD INTERIOR regime on Q_e (Section 1): the EUCLIDEAN boundary distance
    of B_ref to partial Q_e is 3delta/8 - delta/8 = delta/4, and
    (delta/4)/lambda_diff = (delta/4) sqrt(beta) >= (delta/4) sqrt(B_0)/delta =
    sqrt(128 N)/4 >= sqrt(128)/4 > 2, so B_ref sits at least 2 diffusive lengths
    inside Q_e in the Euclidean metric (the "2-diffusive-lengths interior margin,"
    re-verified Euclidean). This only needs beta delta^2 >= 64, subsumed by 128N.
(iii) LEG-1 action floor (Section 4): beta (delta/8)^2 >= beta delta^2/64 >= 2N
    >= 1, giving the R6a small-ball absorption a fortiori.
All hold for every beta >= B_0/delta^2; enlarging B_0 only pushes B_ref deeper
and improves every constant. (In the mandated order of limits, lane-minmig:3110,
beta -> infinity FIRST at fixed (eps, delta, N), so beta >= 128N/delta^2 =
O(delta^{-2}) at fixed N is held throughout, exactly XF A3's form.)

========================================================================
1. THE CLASSICAL INPUT (SR-KD) ON THE SMOOTH BALL Q_e, AND ITS TRANSFER TO
   THE CUBE KERNEL BY DOMAIN MONOTONICITY
========================================================================
SR-KD (corpus-named; interior lower half of the two-sided Dirichlet heat-kernel
Gaussian estimate on a smooth bounded domain). Classical; consumed as a NAMED
IMPORT and NOT reproduced (SR discipline), on the same footing L1' consumes
SR-SH1 and the Aronson/Levi family (lane-sh2local:285-298). We import it on the
GENUINE SMOOTH BALL Q_e (this is the cube-vs-ball repair: the domain to which
SR-KD is applied is now a C^infinity Euclidean ball, so its hypotheses are truly
met; the transfer to the cube kernel is a separate elementary monotonicity step
below). The statement used:

  Let g^{Q_e}_t(a,b) be the Dirichlet heat kernel of the DRIFTLESS generator
  (1/beta) Laplacian (diffusivity sigma^2 = 2/beta) on the open Euclidean ball
  Q_e = B^euc_R (R = 3delta/8), killed on exit. There are dimensional constants
  kappa_0 > 0 and C_* >= 1 (depending only on n = 2N, not on beta, delta, R --
  the ball is scale-invariant) such that for all t > 0 and all a,b in Q_e,

    g^{Q_e}_t(a,b)  >=  kappa_0 . ( 1 wedge zeta(a)/(sigma sqrt t) )
                                . ( 1 wedge zeta(b)/(sigma sqrt t) )
                                . ( beta/(4 pi t) )^{n/2}
                                . exp( -C_* beta |a-b|_euc^2/(4t) ),
    zeta(u) := dist_euc(u, partial Q_e),   |a-b|_euc the EUCLIDEAN distance.

Named-theorem provenance (non-reproduced): the boundary-factor Gaussian form is
the two-sided Dirichlet estimate on a bounded C^{1,1} domain (E. B. Davies,
Heat Kernels and Spectral Theory, 1989; Q. S. Zhang, J. Differential Equations
182 (2002) 416-430); the interior lower bound alone follows from Moser's
parabolic Harnack inequality plus the Fabes-Garofalo-Salsa parabolic boundary
Harnack principle. Hypothesis rows (each MATCHED here BECAUSE the domain is now
the ball Q_e, not the cube):

  ROW SR-KD.1 domain: bounded, C^{1,1} (here C^infinity) boundary.
    MET -- Q_e = B^euc_{3delta/8} is a Euclidean ball (this is the fix: the
    earlier max-norm reading made this row a cube, unmatched; it is now a
    genuine smooth ball).
  ROW SR-KD.2 operator: constant-coefficient uniformly elliptic, driftless.
    MET -- (1/beta) Laplacian, diffusivity 2/beta constant. Applied to the
    DRIFTLESS process, so the lower constant is beta-uniform after the scale-
    invariant rescaling y = sqrt(beta)(x-g*), which maps the problem to the
    FIXED unit-diffusivity Dirichlet kernel on a ball of radius R sqrt(beta) ->
    infinity; no O(1) drift enters SR-KD (the L1' Remark C beta-uniformity
    concern, lane-sh2local:555-564, does NOT arise), and the drift is reinstated
    separately in Section 3 by Girsanov.
  ROW SR-KD.3 time: t in (0, T_0]. MET at t = 1/2 (rescale absorbs T_0).
  ROW SR-KD.4 endpoints: interior. Used at a,b in B_ref = B^euc_{delta/8}, where
    zeta(a),zeta(b) >= delta/4 >= 2 lambda_diff (Section 0(ii), Euclidean), so
    both boundary factors (1 wedge zeta/(sigma sqrt(1/2))) = (1 wedge (delta/4)
    sqrt(beta)) = 1.

DOMAIN MONOTONICITY (the transfer to the cube kernel; ELEMENTARY, derived, not
imported). For the DRIFTLESS killed kernels on the two nested domains
Q_e subset Q, the Doob-bridge representation (the same one BRIDGE-Q uses,
Section 3) gives g^{D}_t(a,b) = g_t(a,b) . P^{0,br}_{a->b,t}( bridge stays in D )
for any open D containing a,b, where g_t is the free driftless kernel. Since
Q_e subset Q, {bridge stays in Q_e} subset {bridge stays in Q}, hence for all
a,b in Q_e,

  g^{Q_e}_t(a,b)  <=  g^{Q}_t(a,b).                                          (MONO)

(MONO) is the standard Dirichlet-domain monotonicity; here it needs one line
because the bridge representation is already in the proof. It lets the SR-KD
bound on the smooth ball Q_e serve as a LOWER bound for the cube kernel g^{Q},
which is the object the splice (Section 2) actually carries.

Instantiating SR-KD at t = 1/2, a,b in B_ref = B^euc_{delta/8}:
  - Euclidean separation: |a-b|_euc <= |a-g*|_euc + |b-g*|_euc <= delta/8 +
    delta/8 = delta/4 GENUINELY (this is the distance-norm repair: because
    B_ref is a EUCLIDEAN ball, its Euclidean diameter is delta/4 with NO
    dimension factor -- the earlier max-norm B_ref forced |a-b|_euc up to
    sqrt(2N) delta/4, the source of the second MAJOR; the shrink removes it).
  - Boundary factors = 1 (Section 0(ii)).
  - (beta/(4 pi . 1/2))^{n/2} = (beta/(2 pi))^N.
Hence, and then applying (MONO),

  g^{Q}_{1/2}(a,b)  >=  g^{Q_e}_{1/2}(a,b)
                    >=  kappa_0 (beta/(2 pi))^N exp( -C_* beta |a-b|_euc^2/2 )
                    >=  kappa_0 (beta/(2 pi))^N exp( -C_* beta delta^2/32 ),   (KD-A)

uniformly over a,b in B_ref, read back on M by the isometry. This is the KILLED
analogue of L1's (GAUSS) seed (lane-sh2local:341) with endpoints CONFINED to Q
and CORRECTLY matched: the smooth-ball SR-KD supplies the beta-free kappa_0, C_*
on Q_e; (MONO) lifts it to the cube kernel; the Euclidean-ball B_ref makes the
exponent -C_* beta delta^2/32 honest (no dropped 2N).

========================================================================
2. THE KILLED SEMIGROUP ON THE CUBE Q AND ITS CONFINEMENT-PRESERVING SPLICE
   (CK-Q) -- VERBATIM FROM R7a (checker-verified)
========================================================================
Let tau_Q := inf{ t : X_t not in Q } be the first exit of the SDE from the cube
Q, and define the KILLED (Dirichlet) semigroup of the FULL SDE on Q,

  (P^Q_t f)(x) := E_x[ f(X_t) ; t < tau_Q ]   (sub-Markov).

By SR-SH1 (lane-sh2local:285-288) restricted to Q with the Dirichlet boundary
condition, P^Q_t has a jointly continuous density p^Q_t(x,z) on Q x Q for t > 0
(the Dirichlet heat kernel of L_beta on Q). By construction, for any Borel
A subset Q,

  P_x( X_t in A , t < tau_Q )  =  integral_A p^Q_t(x,z) dz.                    (KILL)

Killed-semigroup Chapman-Kolmogorov. For s,t > 0, on {s < tau_Q}, the strong
Markov property at s and the pathwise identity {s+t < tau_Q} = {s < tau_Q}
intersect theta_s^{-1}{t < tau_Q} give

  E_x[ f(X_{s+t}) ; s+t < tau_Q | F_s ]
     = 1_{s<tau_Q} . E_{X_s}[ f(X_t) ; t < tau_Q ]  =  1_{s<tau_Q} (P^Q_t f)(X_s)   a.s.

Taking E_x and reading in density form (Fubini on the nonnegative kernels;
extend from f = 1_A, A subset Q Borel, to general nonnegative Borel f by the
monotone class theorem),

  p^Q_{s+t}(x,w)  =  integral_Q p^Q_s(x,z) p^Q_t(z,w) dz.                       (CK-Q)

THIS carries the confinement through the splice: the spatial integral runs over
Q ONLY. (CK-Q) is a semigroup identity for the killed sub-Markov kernel; it is
where R7a differs structurally from R6a Section 1, and the R7a checker re-derived
it independently and confirmed it correct. It is UNCHANGED here (the cube Q is
the same max-norm confinement region R7a used).

Two elementary reductions.
 (R-i) KILLING UNDER-COUNTS THE CLOSED-CUBE SUP EVENT. {tau_Q > 1} =
   {sup_{[0,1]} |X_t - g*|_max < 3delta/8} subset {sup_{[0,1]} |X_t - g*|_max <=
   3delta/8}, and P_x(sup = 3delta/8 exactly) = 0 for the nondegenerate
   diffusion, so (KILL) at t=1 is a valid LOWER bound for the (POS) confined
   density: P_x(X_1 in dz, sup_{[0,1]}|X_t-g*|_max <= 3delta/8) >= p^Q_1(x,z) dz.
   It suffices to lower-bound p^Q_1(x,.) on B_ref.
 (R-ii) FACTORS. Apply (CK-Q) at s=t=1/2 and drop mass outside B_ref subset Q:

   p^Q_1(x,w)  =  integral_Q p^Q_{1/2}(x,z) p^Q_{1/2}(z,w) dz
             >=  integral_{B_ref} p^Q_{1/2}(x,z) p^Q_{1/2}(z,w) dz
             >=  ( inf_{z in B_ref} p^Q_{1/2}(z,w) ) . integral_{B_ref} p^Q_{1/2}(x,z) dz
              =  ( inf_{z in B_ref} p^Q_{1/2}(z,w) ) . P_x( X_{1/2} in B_ref, 1/2 < tau_Q ),  (SPLICE)

   the first factor = LEG 2 (Section 3), the second = LEG 1 (Section 4), both
   confined to the cube Q by construction of the killed kernel.

========================================================================
3. LEG 2 -- THE KILLED BASE-BALL DENSITY VIA THE L1' GIRSANOV FACTOR
   (BRIDGE-Q and KD-C VERBATIM from R7a; only the seed is the corrected KD-A)
========================================================================
We lower-bound inf_{z in B_ref} p^Q_{1/2}(z,w) for w in B_ref, keeping the
confinement to the cube Q, by transferring the corrected (KD-A) to the SDE
through the SAME exact ground-state Girsanov/Doob factor L1' uses, now on the
Q-CONFINED bridge.

(BRIDGE-Q) -- the killed SDE density = killed DRIFTLESS kernel times the
confined-bridge RN factor. Let P^0 be the driftless lifted law, P the SDE law,
both from z. Girsanov (valid: |grad E_eps| bounded, Novikov trivial;
lane-sh2local:353-356) gives dP/dP^0|_{F_t} = D_t with, by Ito on E_eps exactly
as L1' (RN) (lane-sh2local:363-367),

  D_t = exp( -(beta/2)( E_eps(X_t) - E_eps(X_0) ) + (1/2) integral_0^t Delta E_eps(X_s) ds
             - (beta/4) integral_0^t |grad E_eps(X_s)|^2 ds ).

Killing is multiplication by 1_{t < tau_Q}, which commutes with the Radon-
Nikodym reweighting. Disintegrating the driftless law over X_t = w by the
driftless bridge and conditioning that bridge on {t < tau_Q} (whose bridge-
probability is exactly g^{Q}_t(z,w)/g_t(z,w)),

  p^Q_t(z,w)  =  g^{Q}_t(z,w) . E^{0,Q,br}_{z->w}[ D_t ],                       (BRIDGE-Q)

the expectation over the driftless Gaussian bridge from z to w in time t
CONDITIONED TO STAY IN the cube Q. This is the Dirichlet-killed analogue of L1'
(BRIDGE) (lane-sh2local:373-374); the R7a checker re-derived it and confirmed it
correct. UNCHANGED here -- note the killed kernel g^{Q}_t on the cube is exactly
the object (KD-A) lower-bounds via (MONO).

Bounding D_t on the confined bridge (STRICTLY EASIER than L1' Step 3 -- the
confinement REMOVES the tube-tail term). Fix t = 1/2, z,w in B_ref. On {path
stays in Q} every X_s in Q subset U_ch, so dist(X_s, G_k) <= |X_s - g*|_max <=
3delta/8 < r0 PATHWISE (the CUBE Q is exactly the max-norm 3delta/8 corridor, so
this pathwise max-norm bound is IMMEDIATE -- another reason the confinement must
be the cube, not the Euclidean ball); hence L1' Step 3's excursion tail (F3b,
its 1[|xi_s| >= 7r0/8] term, lane-sh2local:410-431) is IDENTICALLY ZERO on the
confined bridge, and the drift bound is purely linear. Using M5-DRIFT
(lane-minmig:1404: |grad E_eps(x)| <= L_eps dist(x,G_k), L_eps <= L + 8 eps,
from M2P.1 exact criticality grad E_eps(pi x) = 0), pathwise on Q:

  |grad E_eps(X_s)|  <=  L_eps . (3 delta/8),   so
  (beta/4) integral_0^{1/2} |grad E_eps|^2 ds  <=  (beta/4)(1/2)(3 L_eps delta/8)^2
       =  beta . ( 9 L_eps^2/512 ) delta^2   =  O(beta delta^2).

Endpoint energy, by (TUBE+) (lane-sh2local:253: E_eps(u) - e_0 <= (C_+/2)
dist(u,G_k)^2) with z,w in B_ref subset B^max_{delta/8}, dist <= delta/8, and
E_eps(z) >= e_0:

  -(beta/2)( E_eps(w) - E_eps(z) )  >=  -(beta/2)(C_+/2)(delta/8)^2  =  -beta (C_+/256) delta^2.

Laplacian, |Delta E_eps| <= M_2 (lane-sh2local:244,246), t = 1/2:
(1/2) integral Delta E_eps ds >= -M_2/4 (beta-free). All three are PATHWISE
deterministic bounds on the confined bridge (the gradient integral is bounded
pathwise BECAUSE the path stays in the cube Q), so

  E^{0,Q,br}_{z->w}[ D_{1/2} ]  >=  exp( -beta Gamma_E delta^2 - M_2/4 ),
     Gamma_E := C_+/256 + 9 L_eps^2/512   ( > 0, beta-free ).                   (KD-C)

(A Jensen step E[e^{-Y}] >= e^{-E[Y]} on the confined bridge gives the same
bound; either way the exponent is O(beta delta^2).) KD-C is UNCHANGED from R7a
(the R7a checker verified it, incl. the vanishing of the tube-tail term under
confinement); it only ever used the max-norm confinement to the cube, which is
retained.

Compose (BRIDGE-Q) with (MONO)+(KD-A) and (KD-C): for all z,w in B_ref,

  p^Q_{1/2}(z,w)  =  g^{Q}_{1/2}(z,w) . E^{0,Q,br}_{z->w}[ D_{1/2} ]
     >=  [ kappa_0 (beta/(2 pi))^N exp(-C_* beta delta^2/32) ] . [ exp(-beta Gamma_E delta^2 - M_2/4) ]
      =  a_0^{kd} beta^N exp( -beta a_1^{kd} delta^2 ),
     a_0^{kd} := kappa_0 (2 pi)^{-N} exp(-M_2/4)  ( > 0, beta-free ),
     a_1^{kd} := C_*/32 + Gamma_E  ( > 0, beta-free, and N-FREE ).             (LEG*-Q)

Hence inf_{z in B_ref} p^Q_{1/2}(z,w) >= a_0^{kd} beta^N exp(-beta a_1^{kd}
delta^2) for every w in B_ref. The exponent constant a_1^{kd} is now HONEST:
C_*/32 comes from the smooth-ball SR-KD, and the Euclidean-ball B_ref makes
|a-b|_euc <= delta/4 exact, so no dimension factor was dropped and none is hidden
in a_1^{kd}.

========================================================================
4. LEG 1 -- THE L1 CONFINED POSITIONING EVENT (CONFINEMENT VERBATIM; LANDING
   RETARGETED TO THE EUCLIDEAN B_ref, WITH THE 2N FACTOR IN THE FLOOR)
========================================================================
The second factor of (SPLICE) is, by (KILL) at t = 1/2,

  P_x( X_{1/2} in B_ref , 1/2 < tau_Q )  =  integral_{B_ref} p^Q_{1/2}(x,z) dz.

We lower-bound it by the L1 confined event. Instantiate L1 (lane-sh2local:96-104)
at horizon 1/2, target y := g* in G_k, start x in the max-norm S so the
transverse size delta_x := dist(x,G_k) <= delta/4 and the tangential slide
h_x := d_{G_k}(pi(x),g*) <= delta/4 (both <= r0/4). L1's master bound (star)
(lane-sh2local:164) is FREE in the landing radius rho; set the max-norm landing
radius

  rho := (delta/8)/sqrt(2N)   ( < delta/8 ),

so that the EUCLIDEAN landing radius is sqrt(2N) rho = delta/8 (this is the
retarget: the Euclidean B_ref of radius delta/8 is hit by controlling the
max-norm deviation to rho). L1's Gronwall corridor bootstrap
(lane-sh2local:156-158) bounds the full lifted deviation R_t = X_t - phi(t) in
the MAX NORM: on the driving small-ball event G_eps, sup_{[0,1/2]} |R_t|_max <=
sigma e^{L/2} epsilon = rho. Two consequences:

 - LANDING. The control path phi has phi(1/2) = g* (leg (ii) slides to y = g*,
   lane-sh2local:134), so X_{1/2} = g* + R_{1/2} with |R_{1/2}|_max <= rho, hence
   |X_{1/2} - g*|_euc <= sqrt(2N) |R_{1/2}|_max <= sqrt(2N) rho = delta/8, i.e.
   X_{1/2} in B_ref = B^euc_{delta/8}(g*). (This is where the max-norm-to-
   Euclidean factor sqrt(2N) is spent -- honestly, in the LANDING FLOOR below,
   not in the leg-2 Gaussian exponent.)
 - CONFINEMENT (VERBATIM, max-norm cube). The two-leg control path phi
   (transverse relaxation at pi(x), then tangential slide pi(x) -> g* along G_k,
   lane-sh2local:133-134) has every point within max(delta_x, h_x) <= delta/4 of
   g* in the max norm. Hence on G_eps, since rho < delta/8,

     sup_{[0,1/2]} |X_t - g*|_max  <=  sup |phi(t) - g*|_max + sup |R_t|_max
                                   <=  delta/4 + rho  <  delta/4 + delta/8  =  3delta/8,

   STRICTLY, so the WHOLE [0,1/2] path stays in the open cube Q = B^max_{3delta/8}
   (i.e. 1/2 < tau_Q). (Strictness resolves the R7a NOTE on open-vs-closed exit:
   the strict small-ball event {sup|W| < epsilon}, of identical probability,
   gives sup|R_t|_max < rho and hence the strict max-norm bound < 3delta/8; the
   open-cube exit tau_Q is thus not reached on [0,1/2].) Thus G_eps subset
   {X_{1/2} in B_ref, 1/2 < tau_Q}.

L1's master bound (star) at tau = 1/2 (display (b), lane-sh2local:183-188), whose
action S(1/2) is UNCHANGED by shrinking rho (lane-sh2local:190: "The action
(hence C_1) is unchanged by shrinking the target; only the small-ball term
changes"), gives

  P_x( X_{1/2} in B_ref , 1/2 < tau_Q )  >=  P_x(G_eps)
       >=  c_0(1/2) exp( -beta C_1(1/2) (delta_x^2 + h_x^2) )
       >=  c_leg1 exp( -beta a_leg1 delta^2 ),                                  (LEG1)
     a_leg1 := C_1(1/2)/8   (using delta_x^2 + h_x^2 <= 2(delta/4)^2 = delta^2/8),
     c_leg1 := c_0(1/2) = (2/pi)^{2N} exp(-2N pi^2 e^{L}/8),   C_1(1/2) = 1 + L/4 + L^2/48.

The floor. The absorbed small-ball term of (star) is n pi^2 (1/2) e^{L}/(4 beta
rho^2), bounded by the beta-free n pi^2 e^{L}/8 (already folded into c_0(1/2))
ONCE beta rho^2 >= 1. With rho = (delta/8)/sqrt(2N), beta rho^2 = beta
delta^2/(128 N) >= 1 iff beta delta^2 >= 128 N = B_0 (Section 0(i)). So the ONLY
effect of retargeting leg 1 from the max-norm delta/8 ball (R7a) to the Euclidean
delta/8 ball is to raise the diffusive-floor constant from 64 (R7a's value for
the max-norm landing) to B_0 = 128 N; c_leg1, C_1(1/2), a_leg1 are UNCHANGED
(the absorbed bound n pi^2 e^{L}/8 is rho-independent once the floor holds). This
is the single place the dimension factor 2N is booked, and it is beta-free,
delta-free, N-fixed. (LEG1) is an EVENT bound (L1's native output, no density
claim), the exact leg the R7a checker confirmed sound, with only its landing
target and floor moved.

========================================================================
5. COMPOSITION -> (POS) = LEMMA KD (VERBATIM shape from R7a)
========================================================================
Insert (LEG*-Q) and (LEG1) into (SPLICE): for every w in B_ref,

  p^Q_1(x,w)  >=  ( inf_{z in B_ref} p^Q_{1/2}(z,w) ) . P_x( X_{1/2} in B_ref, 1/2 < tau_Q )
    >=  [ a_0^{kd} beta^N exp(-beta a_1^{kd} delta^2) ] . [ c_leg1 exp(-beta a_leg1 delta^2) ]
     =  c beta^N exp( -beta C delta^2 ),
    c := c_leg1 a_0^{kd}  ( > 0, beta-free ),
    C := a_leg1 + a_1^{kd} = C_1(1/2)/8 + C_*/32 + Gamma_E  ( > 0, beta-free, N-FREE ),

uniformly over x in S = B^max_{delta/4}(g*) and w in B_ref. By reduction (R-i),
the (POS) confined density dominates p^Q_1(x,.), so as sub-measures on M,

  P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3 delta/8 )
       >=  p^Q_1(x,z) dz  >=  m_kd . Leb(dz)|_{B_ref},
  m_kd := c beta^N exp( -beta C delta^2 ),   C delta^2 = O(delta^2)  (C beta-free, N-free),  (POS)

uniformly over x in S, on the flagship M = T^{2N}, for beta >= B_0/delta^2 =
128N/delta^2. This is precisely the object R6a Section 1 asserted, now PROVED
with both R7a metric MAJORs cured: (POS)'s confinement conjunct is the MAX-NORM
corridor (delivered natively by the killed-on-cube kernel -- no a-fortiori step
needed), the endpoint density is the Dirichlet-killed kernel on the cube lower-
bounded via (MONO) by the smooth-ball SR-KD, and the exponent constant C is
beta-free, delta-free, and N-free (the dimension factor lives solely in the
floor B_0 = 128N). QED (Lemma KD, metric-corrected).

Remark (where the two MAJORs went). (I) CUBE vs BALL: the killed semigroup lives
on the max-norm CUBE Q (forced by the max-norm start region S and leg-1's
max-norm Gronwall control), so SR-KD is NOT matched against the cube; instead
SR-KD is imported on the inscribed smooth ball Q_e and lifted to the cube kernel
by the one-line domain monotonicity (MONO). ROW SR-KD.1 is now genuinely met.
(II) DISTANCE NORM: the reference ball is the EUCLIDEAN B^euc_{delta/8}, whose
Euclidean diameter is delta/4 with no dimension factor, so the SR-KD Gaussian
exponent -C_* beta |a-b|_euc^2/2 with |a-b|_euc <= delta/4 is exactly
-C_* beta delta^2/32 -- honest, N-free. The 2N that the max-norm reading had
silently dropped reappears in the leg-1 landing floor B_0 = 128N, a beta-free,
delta-free, N-fixed diffusive-floor constant.

Remark (equivalent booking, for transparency; not the route taken). One could
instead keep B_ref MAX-NORM and prove the killed-cube kernel directly by the
1-D interval factorization (the cube Dirichlet kernel = product of 2N one-
dimensional interval Dirichlet kernels, each an elementary reflection formula),
whose Euclidean Gaussian applied to max-norm endpoints |a-b|_euc^2 <= 2N(delta/4)^2
= N delta^2/8 yields the dimension-dependent exponent constant C = C(N) =
C_1(1/2)/8 + C_* N/16 + Gamma_E, with the leg-1 floor staying at 64. Both
routes are correct; both book the dimension factor as a beta-free, delta-free,
N-fixed constant that CANNOT touch the leading (P) exponent S_k - m_k, the
confinement, or the order of limits. The route taken (Euclidean B_ref + smooth-
ball SR-KD + MONO) follows the design directive to lean on a genuine smooth ball
for the classical import and keeps C itself N-free; the alternative is stated so
the placement of C = C(n) is fully open.

========================================================================
6. R6a SECTIONS 2-4 CONSUME KD VERBATIM (only Leb(B_ref) and the floor move)
========================================================================
KD delivers (POS) with m_kd = c beta^N exp(-beta C delta^2), the SAME shape R6a
used; only the prefactor c and the beta-free exponent C are derived, and B_ref
is now the Euclidean delta/8 ball. Reading R6a's downstream against KD:

 - R6a SECTION 2 (containment, Cross(x) subset {L < D(0)}). Uses only the two
   conjuncts of (POS): (2.i) on A_pos the path lies in B^max_{3delta/8}(g*)
   subset S^+ on all of [0,1], hence D(0) > 1 and L > 1. KD's confinement
   conjunct {sup_{[0,1]} |X_t - g*|_max <= 3delta/8} is EXACTLY this MAX-NORM
   statement (delivered natively by the cube kernel), and 3delta/8 < delta/2
   puts the whole [0,1] path strictly inside S^+ = B^max_{delta/2}(g*), so the
   collar-exit theta^+(0) > 1 and L > 1 (S^+ subset U_ch misses Delta_theta by
   level, lane-minmig:3002). KD's endpoint conjunct {X_1 in B_ref} feeds A_pos's
   {X_1 in B_ref} (now the smaller Euclidean ball -- still a valid launch region
   for the post-t=1 ascent). R6a 2.(ii)-(iii) (radial expulsion via M2P.5,
   lane-minmig:778-780; L finite at the saddle) concern the POST-t=1 ascent and
   are independent of KD's internals. Consumed verbatim (max-norm containment
   is exactly what the cube confinement supplies -- a further reason the
   confinement is not moved to a Euclidean ball).
 - R6a SECTION 3 (floor at the LP.5 exponent). Uses the strong Markov property
   at t = 1: {A_pos on [0,1]} and {X_1 in B_ref} are F_1-measurable, A_asc is a
   functional of the post-1 path, so P_x(Cross(x)) = E_x[1_{A_pos on [0,1]}
   1_{X_1 in B_ref} P_{X_1}(A_asc)] >= integral_{B_ref} m_kd Leb(dz) P_z(A_asc)
   = m_kd Leb(B_ref) . avg_{z in B_ref} P_z(A_asc). This is R6a Section 3's
   display with m_ref -> m_kd; the SH.3 average-over-B_ref and the LP.5(a)+(b)
   crossing floor (lane-lp:836-838) are untouched (B_ref subset S subset U_ch,
   so the LP.5 floor holds for z in B_ref a fortiori). The prefactor is now
   c(delta) := c beta^N Leb(B^euc_{delta/8}(g*)) = c beta^N omega_{2N}(delta/8)^{2N}
   = c omega_{2N} 8^{-2N} (beta delta^2)^N (omega_{2N} = pi^N/N! the unit-ball
   volume in R^{2N}) >= c omega_{2N} 8^{-2N} (128 N)^N by the floor beta delta^2
   >= 128 N -- a healthy (non-exp-small) prefactor, as required. (The only change
   from R7a is the ball volume omega_{2N}(delta/8)^{2N} in place of the cube
   volume (delta/4)^{2N}; both are beta-free and >= const . (beta delta^2)^N.)
   The error term err(delta) := C delta^2 + err_{SH,LP}(delta) = O(delta^2)
   (C beta-free, N-free).
 - R6a SECTION 4 (composition, filtration, Wald). Cross(x) subset {L < D(0)}
   gives Phi(x) = P_x(L < D(0)) >= P_x(Cross(x)) >= p on R5a's single terminus;
   the strong-Markov conditional identity, (COUNT-MEAS), (GEOM) E[N] <= 1/p, and
   (WALD) are unchanged. Consumed verbatim.

Hence the (P) crossing floor inf_{x in S} Phi(x) >= p of R5a Section 5
(lane-minmig:3056-3060) holds with

  p := c(delta) exp( -beta ( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ) ),
  err(delta) = C delta^2 + err_{SH,LP}(delta) = O(delta^2),

the SAME exponent as R5a/LP.5 (lane-lp:836), err(delta) merely redefined (KD
supplies the positioning term C delta^2 = O(delta^2), C derived and N-free).
ORDER OF LIMITS untouched (lane-minmig:3106-3113): beta -> infinity FIRST at
fixed (eps, delta, N), the diffusive floor beta >= B_0/delta^2 = 128N/delta^2 =
O(delta^{-2}) held throughout; THEN delta -> 0, sending err(delta) -> 0; THEN
the eps-window. The floor is if anything LARGER than before (smaller exponent),
so the LP.5 upper display is preserved.

========================================================================
7. SCOPE
========================================================================
R8a cures ONLY the two R7a metric/domain MAJORs inside Lemma KD = (POS) -- the
cube-vs-ball SR-KD domain match (now: smooth ball Q_e + domain monotonicity to
the cube Q) and the Euclidean-vs-max-norm distance factor (now: Euclidean B_ref,
exact |a-b|_euc <= delta/4, dimension factor booked into the floor B_0 = 128N).
Everything the R7a checker VERIFIED is retained verbatim: the killed-semigroup
Chapman-Kolmogorov splice (CK-Q), the Girsanov transfer on the confined bridge
(BRIDGE-Q, KD-C, with the tube-tail term vanishing under confinement), the
leg-1 event mechanism, the composition, and the R6a Section 2-6 consumption. It
does NOT touch: the beta-free-collar-exit / delayed-return question (R5b / R6b;
XM-R2 Finding 2), handled elsewhere by an exact polynomial-in-beta collar-exit
charge (both charge exp(-beta O(delta^2)), non-conflicting); the wiring of
PROD-EXCURSION-COND across LP/master consumers (Finding 3); the external rows
PROD-EXCURSION / PROD-EXCURSION-COND (Finding 4, honestly TYPED); the register/
gate items (Findings 5-8). No beta-free exit of a flat mode is asserted anywhere
in KD (the positioning cost is the fully-charged exp(-beta O(delta^2))). The
migration flip LP-MIN-MIG stays BLOCKED pending R6b's F3 piece, the wiring, and
an external XM-R2 DISCHARGE-SOUND verdict. [RELEASE NOTE 2026-07-26: this in-round status is SATISFIED and CLOSED - the wiring completed, XM-R16 signed DISCHARGE-SOUND, and the flips EXECUTED; see the status head.]

### consumed

SR-KD [NAMED classical import, non-reproduced per SR discipline; now applied to the GENUINE SMOOTH EUCLIDEAN BALL Q_e = B^euc_{3delta/8}(g*), so hypothesis rows SR-KD.1-4 are genuinely matched -- this is the cube-vs-ball repair]: interior lower half of the two-sided Dirichlet heat-kernel Gaussian estimate on a smooth bounded domain for the DRIFTLESS generator -- E. B. Davies, Heat Kernels and Spectral Theory (1989); Q. S. Zhang, J. Differential Equations 182 (2002) 416-430; interior lower bound alone from Moser parabolic Harnack + Fabes-Garofalo-Salsa boundary Harnack. Beta-uniform constant by ball scale-invariance (driftless). | DOMAIN MONOTONICITY of Dirichlet heat kernels (MONO): Q_e subset Q => g^{Q_e}_t <= g^{Q}_t, DERIVED in one line from the Doob-bridge representation already used in BRIDGE-Q ({bridge stays in Q_e} subset {bridge stays in Q}); this transfers the smooth-ball SR-KD bound onto the max-norm CUBE kernel g^{Q} that the splice carries. | SR-SH1 (corpus-named, lane-sh2local:285-288): joint continuity + strict positivity of the L_beta transition density, restricted to the cube Q with Dirichlet condition to yield p^Q_t and its continuity. | THE L1' GIRSANOV/DOOB ENGINE reused verbatim on the Q-CONFINED bridge: exact Girsanov RN factor D_t (RN, lane-sh2local:363-367); Doob bridge disintegration (BRIDGE, :373-374) -> (BRIDGE-Q); Step-3 endpoint-energy (TUBE+ E_eps-e_0 <= (C_+/2)dist^2, :253), Laplacian |Delta E_eps|<=M_2 (:244,246), gradient bounds (:395-443) with the tube-tail term (:410-431) vanishing under cube confinement. [checker-verified; verbatim] | L1 THE HOP: master bound (star) free in landing radius rho (lane-sh2local:164), Gronwall MAX-NORM corridor control sup|R_t|_max <= rho (:156-158), max-norm convention (:116), two-leg control path (:133-134), half-time display (b) C_1(1/2)=1+L/4+L^2/48, c_0(1/2)=(2/pi)^{2N}exp(-2N pi^2 e^L/8) (:183-188), action free in rho (:190), diffusive floor beta rho^2>=1 (:170) -- here with rho=(delta/8)/sqrt(2N) so the EUCLIDEAN landing radius is delta/8 and the floor reads beta delta^2 >= 128N. | M5-DRIFT |grad E_eps(x)| <= L_eps dist(x,G_k), L_eps <= L+8eps, from M2P.1 exact criticality (lane-minmig:1404). | XF A3 diffusive floor beta >= B/delta^2 necessary, B beta-free/delta-free (lane-sh2local:33-35) -- here B_0 = 128N. | R5a Section 0/1/5: S=B^max_{delta/4}(g*) (MAX-NORM, :2991), S^+=B^max_{delta/2}(g*), U_ch, delayed-return theta^+/D (:2986,2991-3003), (P) floor uniform over S (:3022,3056-3060), G_k=m_k+eps w_k (M2P.1, :922), metric declaration + GAP-M5-EUC (:1036-1047,1712-1727), order of limits (:3106-3113). | M2P.5 Step 2 slice-gradient floor (lane-minmig:778-780) -- consumed by R6a Section 2.ii, cited for the verbatim-consumption check. | LP.5(a)+(b) crossing floor exp(-beta(S_k-m_k+eps(S_k/kappa-w_k)+C_B eps^2+err)) (lane-lp:806-808,836-838) -- consumed by R6a Section 3, cited for the check. | R7a draft (minmig_r7_results.json, R7a-killed-density) and its checker (verdict REPAIRABLE): the FATAL cured and mechanism verified SOUND; the two MAJORs (Section-0/1 cube-vs-ball domain match; Section-1 (KD-A) Euclidean-vs-max-norm |a-b| factor dropping 2N) are exactly what R8a repairs; the two NOTEs (open/closed-cube strict exit; positive confirmation of the R6a cure) folded in. HEAD/evidence-lock per verdict XM-R2-2026-07-21: lane-minmig sha256 d6378eaa..4b69, lane-sh2local 3ccad736..be5b, lane-lp fb532b41..02ff.

### typed gaps

TWO metric MAJORs of R7a are now CURED (not typed): (A) cube-vs-ball -- SR-KD is imported on the genuine smooth Euclidean ball Q_e and transferred to the max-norm cube kernel by the DERIVED domain monotonicity (MONO), so ROW SR-KD.1 is genuinely matched and no C^{1,1}-cube claim is made; (B) distance-norm -- the reference ball is the Euclidean B^euc_{delta/8}, so |a-b|_euc <= delta/4 exactly and the (KD-A) exponent -C_* beta delta^2/32 is honest with the dimension factor 2N booked openly into the leg-1 landing floor B_0 = 128N (beta-free, delta-free, N-fixed). | NAMED ACCOUNTING ROW (new, explicit): GAP-R8a-DIMFLOOR -- the diffusive-floor constant is dimension-dependent, B_0 = 128N, arising from landing leg 1 in the Euclidean delta/8 ball via a max-norm landing radius rho=(delta/8)/sqrt(2N). It is beta-free and delta-free; N is the FIXED half-dimension held constant through the mandated order of limits (beta->infinity first, then delta->0, at fixed N), so it CANNOT touch the leading (P) exponent S_k-m_k, the confinement, or the order of limits. Equivalent booking (Remark, Section 5): keep B_ref max-norm and carry C=C(N)=C_1(1/2)/8+C_* N/16+Gamma_E via the 1-D interval factorization of the cube kernel, floor staying 64; both placements are honest and inert on the leading rate -- this discharges the design directive to state C=C(n) openly. | STANDING import, not a genuine gap: GAP-R8a-KDCONST (renamed from R7a) -- SR-KD's beta-free dimensional Dirichlet-Gaussian constants (kappa_0, C_*) on the SMOOTH BALL Q_e; consumed on the SR footing L1' consumes SR-SH1 and the Aronson/Levi family (:285-298), theorem named, rows matched, statement non-reproduced. If a reviewer treats C_* as unbuilt it affects ONLY C = C_1(1/2)/8 + C_*/32 + Gamma_E in m_kd, hence only err(delta)=O(delta^2)->0 -- never the leading exponent, limits, or confinement. | INHERITED, not re-opened: GAP-M5-EUC (the beta-free Euclidean<->max-norm ledger, lane-minmig:1712-1727) -- R8a now MAKES ONE EXPLICIT, ACKNOWLEDGED USE of this ledger class (the sqrt(2N) max-norm/Euclidean factor in the leg-1 landing, = GAP-R8a-DIMFLOOR); this is the honest correction of R7a's understatement "KD adds no new metric burden." It is exactly the GAP-M5-EUC bookkeeping class the design named, with N fixed. | DERIVED sub-facts (not typed): (MONO) domain monotonicity (one line from the bridge representation); reduction R-i (killing on the open cube under-counts the closed-cube sup event, P(sup=3delta/8)=0); the strict open-cube exit via the strict small-ball event {sup|W|<epsilon} (folds in the R7a NOTE). | SEPARATE PIECES, out of R8a scope: R5b/R6b collar-exit and delayed-return (XM-R2 Finding 2); PROD-EXCURSION/PROD-EXCURSION-COND external rows (Finding 4, TYPED); wiring (Finding 3) and register/gate (Findings 5-8).

### LEAD AMENDMENT A9 (2026-07-21; source: R8a checker MINOR)

Constant-dependence harmonization in Lemma KD: SR-KD's constants
kappa_0, C_* depend on the dimension n = 2N (Section 1 states this
correctly); wherever Sections 3/5/Remark call the assembled C
'N-FREE', read: C is beta-free and delta-free (all the rate and the
order of limits need); its value depends on the fixed dimension
n = 2N through C_*, exactly as GAP-M1-NORM/GAP-M5-EUC class
constants do, with the explicit 2N bookkeeping relocated to the
leg-1 landing floor B_0 = 128 N. The 'N-free' touting is withdrawn;
the route comparison in the Remark stands on its other merits
(no per-coordinate factorization bookkeeping).

### LEAD AMENDMENT A10 (2026-07-21; source: XM-R3 finding 5's written route)

R6b's mean-angle process psi_theta is not globally defined on the
torus; the Ito display is licensed through the STOPPED CONTINUOUS
LIFT: at the stopping time alpha choose principal lifts relative to
g* while the path remains in the injectivity-radius collar, continue
as path lifts on the universal cover, and stop the comparison at the
collar exit. The lifted mean has zero drift (sum_i d/dtheta_i E_eps
= 0) and quadratic-variation rate 2/(beta N); before collar exit all
lifted coordinate displacements are < delta/2, and if the lifted
mean reaches +-delta/2 Jensen forces a coordinate to the collar
(any prior wrap would already have exited). Hence
theta^+(alpha) - alpha <= tau_psi and E[tau_psi | F_alpha] <=
beta N delta^2 / 8. No exponent or constant changes.

### LEAD AMENDMENT A11 (2026-07-21; source: XM-R3 finding 2's named route)

SR-KD is restated at its TRUE strength: Zhang's bounded-C^{1,1}
estimate holds for 0 < t <= T with domain-dependent constants; the
all-time/domain-independent form R8a displayed is FALSE (the
Dirichlet kernel decays at the first-eigenvalue rate at large time).
THE OPERATIVE IMPORT: rescale the ball B_R, R = 3 delta/8, to the
UNIT ball; for the generator (1/beta) Delta at t = 1/2 the unit-ball
time is s = 32/(9 beta delta^2); apply Zhang on the FIXED unit ball
(constants depending only on n = 2N) valid for s <= T_n; scale back
for the beta^{n/2} Gaussian factor. The honest diffusive threshold
becomes beta delta^2 >= max(128 N, 32/(9 T_n)) (or any explicitly
larger dimension-dependent constant) - replacing B_0 = 128 N
wherever KD's floor is consumed. Alternative equally valid repair
(recorded): a direct Brownian-bridge survival estimate on the
interior sub-ball. The killed CK/Girsanov mechanism is unchanged
(XM-R3: sound conditional on this statement).

### LEAD AMENDMENT A12 (2026-07-21; source: XM-R3 finding 3's safe cure)

R8b's splice-ready replacement reverted to the superseded R7a
reference set. OPERATIVE READING: B_ref is R8a's EUCLIDEAN ball
B^euc_{delta/8}(g*); the KD density is supplied on THAT ball; the
splice integrates the KD density against P_z(A_asc) exactly as
R6a/R8a's Lebesgue-integral display (never an unattributed
infimum); the volume is the Euclidean omega_{2N}(delta/8)^{2N}
(prefactor-level only, rate unmoved); R8b's 'GAP-R7a-KDCONST'
references read as the R8a rows (GAP-R8a-KDCONST /
GAP-R8a-DIMFLOOR). If the infimum form is ever preferred, it must
cite and quantify lane-lp's independent uniform per-attempt floor
(lane-lp:790-839), not the average display.


---

# R8b — B_gate deleted; the ascent launches from B_ref (cures the R7b MAJOR)

[A12-PRECEDENCE BANNER (XM-R4 finding 4): wherever the body below
prints an infimum form, the cube volume (delta/4)^{2N}, a max-norm
B_ref, or GAP-R7a-KDCONST, the OPERATIVE reading is amendment A12:
Euclidean B_ref = B^euc_{delta/8}(g*), the Lebesgue integral of the
KD density against P_z(A_asc), the Euclidean volume
omega_{2N}(delta/8)^{2N}, and the GAP-R8a-* rows. The body is the
round-8 draft preserved as produced; A12 governs.]

(grade: draft PROVED; checker SOUND)

========================================================================
R8b — WHAT THE SANDWICH CONSUMES AT ITS LAUNCH POINT, AND WHY B_gate IS DELETED
(cures the R7b MAJOR / R6b §2 defect: the SH.1-SH.3 sandwich launches FROM A GROUND
BALL; B_gate at dist 3delta/4 from G_k is not a ground ball and is not a launch point)
========================================================================

ROUTE DETERMINATION (the task's fork, resolved by reading LP.5(a)/[MACH-UP] SH.1-SH.3, lane-lp:779-820)
------------------------------------------------------------------------
The task asks EXACTLY what the sandwich consumes at its launch, then Route (a) delete-B_gate
or Route (b) cite-a-mid-collar-license. The source is decisive for Route (a):

 (i) LP.5(a) opens "THE ATTEMPT (from B_{delta/2}(G_k))" (lane-lp:790): the native launch region
     is the delta/2-TUBE around the ground manifold, not a mid-collar shell.
 (ii) The sandwich's minorization is AT THE GROUND: "SH.2' minorizes at the ground (G_k IS
     E_eps-critical: M2P.1)" (lane-lp:817), and the reversal (downhill) leg from the near-saddle
     target B'' "is TRACKABLE AND ENDS AT THE GROUND BALL" (lane-lp:810-816). The uphill transition
     the sandwich bounds runs ground ball -> B''.
 (iii) The cost exponent is measured FROM THE GROUND ENERGY: sup_{B''} E_eps - (m_k + eps w_k)
     = S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta) (lane-lp:818-820).

Hence the launch point the sandwich consumes is a GENUINE GROUND BALL inside B_{delta/2}(G_k)
(near-ground density / SH.2' minorization at G_k, energy m_k + eps w_k). B_gate = B_{delta/4}(y_gate),
centred at dist(y_gate, G_k) = 3delta/4, spans transverse distance [delta/2, delta]: it has energy
m_k + eps w_k + O(delta^2), it sits OUTSIDE the delta/2-tube from which the attempt is stated, and the
corpus routes any dist-in-(delta/2, r0] start through a preliminary RELAX step BEFORE the chain
(lane-minmig:733-735). So B_gate is NOT what LP.5(a) consumes, and no mid-collar launch row licenses
it at dist 3delta/4 — Route (b) has no citation. Route (a) is forced: the launch must happen FROM the
ground ball, and B_gate is not a launch point.

Verification against the R6a Cross(x) event structure. R6a/R7a positions the process, CONFINED, into
the ground ball B_ref := B_{delta/8}(g*) (Lemma KD, R7a), and the ascent phi_cr starts AT a point of
B_ref (R6a Section 2). B_ref is centred ON G_k at g* with dist(., G_k) <= delta/8 < delta/2, so B_ref
lies inside the sandwich's native launch tube B_{delta/2}(G_k) and IS the ground ball at which the
reversal leg terminates. The single collar exit theta^+(0) is realised by the ascent ITSELF (the
near-saddle target B'' is at O(1) max-norm distance from g*, so the climb necessarily crosses
partial S^+); B_gate's job — "realise a collar exit before ascending" — is thus performed by the
ascent at no separate charge. B_gate is redundant AND inadmissible; it is DELETED, which removes the
forced-hop citation, the rotation-symmetry-off-G_k appeal (M2a.2 equates points ON G_k), and the
RELAX-step mismatch in one stroke, and moves no leading constant.

========================================================================
REPAIRED PASSAGE — cures the R7b MAJOR / R6b §2 (splice-ready)
========================================================================
SPLICE INSTRUCTION. In R6b §2 (R6b.2, "THE CROSSING-FLOOR CONTAINMENT"), the "Defect" paragraph
(beginning "Defect. R5a §5(P) ... a tangential density landing in S.") is UNCHANGED. Replace the
entire "Repair" paragraph and its floor display — everything from "Repair (a killed local uphill
event ...)" through "... E[N] <= 1/p of R5a §7 (lane-minmig:3087-3093) stands on the corrected event."
(the paragraph that introduces y_gate/B_gate and the two-line Phi(x) >= p display) — by the following.
This SUPERSEDES both R6b §2's original B_gate sentence and R7b's Passage 1 repair of it.

  "Repair (defer the crossing floor to the R6a/R7a killed-density ground-ball launch; B_gate is
  DELETED). The M3-GS relocation-into-S is replaced NOT by a forced hop to a gateway outside S^+, but
  by the corridor-confined killed positioning of Lemma KD (R7a; R6a §1-2), which is the object that
  legitimately launches the SH.1-SH.3 sandwich. Two facts make B_gate unnecessary and inadmissible.

   WHAT THE SANDWICH CONSUMES AT ITS LAUNCH POINT. The LP.5(a) attempt launches FROM THE GROUND: its
  reversal (downhill) leg from the near-saddle target B'' is trackable and ENDS AT THE GROUND BALL,
  and SH.2' minorises at G_k, which is E_eps-critical (M2P.1); the sandwich cost exponent
  sup_{B''} E_eps - (m_k + eps w_k) = S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta) is
  measured from the GROUND energy m_k + eps w_k (lane-lp-product-saddle-v1.md:790,808-820). The
  attempt is native to the delta/2-tube B_{delta/2}(G_k) (lane-lp:790). A launch from a mid-collar
  point at dist(., G_k) = 3delta/4 (energy m_k + eps w_k + O(delta^2), OUTSIDE that tube, and routed
  through the preliminary RELAX step of lane-minmig:733-735 before any chain) is NOT what LP.5(a)
  consumes; there is no source row licensing the sandwich launch at that transverse distance.

   THE R6a/R7a POSITIONING ALREADY LANDS THE GROUND BALL, CONFINED, WITHOUT LEAVING S^+. Lemma KD
  gives, uniformly over x in S, the confined endpoint density
  P_x( X_1 in dz , sup_{t in [0,1]} |X_t - g*|_max <= 3delta/8 ) >= m_kd Leb(dz)|_{B_ref},
  m_kd = c beta^N exp(-beta C delta^2), B_ref := B_{delta/8}(g*) (R7a, Lemma KD). During [0,1] the
  positioning path stays in B_{3delta/8}(g*) subset S^+ (3delta/8 < delta/2), so theta^+(0) > 1 and
  L > 1: no collar exit and no crossing occur during positioning, hence no premature D(0) — this is
  precisely what cures the M3-GS defect (a landing in B_ref while the path is confined to S^+ is NOT
  an S-entrance after a collar exit, whereas the M3-GS tangential relocation into S was). B_ref is
  centred on G_k at g* with dist(., G_k) <= delta/8 < delta/2, so it lies inside the sandwich's native
  launch tube B_{delta/2}(G_k) and IS the ground ball at which the reversal leg terminates; no RELAX
  step and no on-orbit rotation-symmetry appeal (M2a.2 equates points ON G_k, off which B_gate lay)
  are invoked, because KD delivers the process to B_ref directly.

   THE CROSSING EVENT AND ITS CONTAINMENT. From a point z in B_ref (at time 1), run the LP.5(a)
  sandwich ascent to B'' and the LP.5(b) crossing chain to a theta-label change
  (lane-lp:790-820,821-839). The near-saddle target B'' sits at an O(1) max-norm distance from g*
  (radial ~ pi - a_k >> delta/2), so the ascent NECESSARILY crosses the shell
  partial S^+ = {|. - g*|_max = delta/2} on its way up: this single crossing realises theta^+(0) at a
  time > 1. The M2P.5 Step 2 slice-gradient dissipativity <grad E_eps(u), u - pi(u)> >= (c_1/2)
  dist(u, G_k)^2, uniform in eps < eps_0 on the r_1-tube with r0 <= r_1 (lane-minmig:777-780),
  radially EXPELS the ascending path, so that after theta^+(0) it moves monotonically outward and does
  not re-enter S before the label change (the §6 spatial ascent-out-of-S argument, lane-minmig:3078,
  now with a genuine prior S^+ exit supplied by the ascent itself). Because B'' and Delta_theta lie at
  O(1) distance, the label change L occurs strictly after theta^+(0) and strictly before any return to
  S; hence theta^+(0) < L < D(0) on the whole event, so it is a subset of {L < D(0)} — with the single
  collar exit realised BY THE ASCENT, at no separate charge, rather than by a forced gateway hop.

   THE FLOOR. By the strong Markov property at t = 1 ({positioning-confined on [0,1]} and
  {X_1 in B_ref} are F_1-measurable; the ascent-and-cross A_asc is a functional of the post-1 path),
  exactly as R6a §3,

     Phi(x) = P_x(L < D(0))
        >=  E_x[ 1_{X_1 in B_ref, conf} P_{X_1}(A_asc) ]
        >=  m_kd Leb(B_ref) . inf_{z in B_ref} P_z(A_asc)
        >=  [ c beta^N (delta/4)^{2N} ] . [ c' exp( -beta( S_k - m_k + eps(S_k/kappa - w_k)
                                                          + C_w eps^2 + err_{SH,LP}(delta) ) ) ]
         =  p := c(delta) exp( -beta( S_k - m_k + eps(S_k/kappa - w_k) + C_w eps^2 + err(delta) ) ),

  uniformly over x in S, with c(delta) := c c' beta^N (delta/4)^{2N} a healthy (non-exp-small)
  prefactor by the diffusive floor beta delta^2 >= B_0, C_w := C_B + the LP.4b(b)-chain constant, and
  err(delta) := C delta^2 + err_{SH,LP}(delta) = O(delta^2) — where the O(delta^2) positioning cost is
  now KD's DERIVED constant C (R7a) in place of the deleted gateway hop's C_1. The floor EXPONENT is
  exactly R5a §5(P)'s p (lane-minmig:3057-3059) — UNCHANGED; only the realising event has changed,
  from 'relocate into S, then ascend' to 'KD-confined positioning into the ground ball B_ref (never
  leaving S^+), then ascend out of S^+ to the saddle and cross', a legitimate subset of {L < D(0)}
  whose sandwich launches from a genuine ground ball. This discharges Finding 1 on the R6a/R7a killed
  route, and the geometric domination E[N] <= 1/p of R5a §7 (lane-minmig:3087-3093) stands on the
  corrected event. ORDER OF LIMITS untouched: beta -> infinity first at fixed (eps, delta), the
  diffusive floor beta >= B_0/delta^2 held; then delta -> 0, sending err(delta) -> 0; then the
  eps-window."

========================================================================
SUMMARY-SENTENCE EDIT — R6b closing summary (the "Discharged" line)
========================================================================
SPLICE INSTRUCTION. In R6b's closing "WHAT R6b DISCHARGES" paragraph, replace the Finding-1 clause
"Finding 1: R5a §5(P)'s crossing floor is re-based on an event that genuinely obeys the delayed-return
convention — one forced uphill L1 hop to a gateway B_gate outside S^+ (cost exp(-beta O(delta^2))
subset err(delta), realising the single collar exit) followed by the SH.3 ascent and LP.5(b) crossing
without re-entering S — so inf_{x in S} Phi(x) >= p holds on a subset of {L<D(0)} and E[N] <= 1/p
stands (§2)." by:

  "Finding 1: R5a §5(P)'s crossing floor is discharged on the R6a/R7a killed-density event —
  KD-confined positioning into the ground ball B_ref (never leaving S^+, so theta^+(0) > 1 and D(0) > 1),
  then the SH.1-SH.3 sandwich ascent launched FROM that ground ball, which itself realises the single
  collar exit theta^+(0) on its way to the O(1)-distant saddle (M2P.5 radial expulsion prevents
  re-entry to S), then the LP.5(b) crossing — a subset of {L < D(0)}, so inf_{x in S} Phi(x) >= p and
  E[N] <= 1/p stand (§2). B_gate is DELETED: the sandwich consumes a ground-ball launch (SH.2'
  minorisation at G_k, lane-lp:817), which a mid-collar gateway is not."

========================================================================
DELTA NOTE (one line)
========================================================================
DELETES B_gate from R6b §2 (and its summary clause) and re-bases the Finding-1 crossing floor on the
R6a/R7a killed density: the SH.1-SH.3 sandwich provably consumes a GROUND-ball start (SH.2' minorises
at G_k, reversal leg ends at the ground ball, exponent measured from m_k + eps w_k; lane-lp:790,
808-820), so B_gate at dist(., G_k) = 3delta/4 — energy m_k + eps w_k + O(delta^2), outside the
delta/2 launch-tube, RELAX-routed — is not a launch point; the ascent instead launches from
B_ref = B_{delta/8}(g*), which KD delivers CONFINED (no collar exit during [0,1]) and which lies
inside B_{delta/2}(G_k), the single collar exit being realised by the ascent itself. Only the err-class
constant moves: err(delta)'s O(delta^2) positioning term is now KD's derived C (R7a) instead of the
gateway hop's C_1; the leading exponent S_k - m_k, C_w, the subset property Cross(x) subset {L<D(0)},
E[N] <= 1/p, and the order of limits are all unchanged. R6b §1 (COLLAR-EXIT charge) and §3-§5
(delayed-return floor) are untouched — B_gate appeared only in §2.

========================================================================
NET EFFECT
========================================================================
The R7b MAJOR is cured honestly and at the root: rather than trying to justify the sandwich launch AT
B_gate (which fails, because B_gate is not a ground ball and the source routes such starts through a
RELAX step), B_gate is DELETED and the crossing floor is deferred to the canonical R6a/R7a killed
density, whose ground-ball launch B_ref is exactly what LP.5(a) consumes. This also removes R6b §2's
redundant, flawed parallel Finding-1 route, leaving ONE crossing floor (KD) consumed by both R6a and
R6b — the 'build canonical, not patches' shape. No exponent moves, no event outside {L<D(0)} is
counted, no new typed gap is opened, and R6b's genuine contribution (the §1 polynomial-in-beta
collar-exit charge and the §3-§5 delayed-return floor, Finding 2) is preserved verbatim.

### consumed

lane-lp-product-saddle-v1.md: LP.5(a) "THE ATTEMPT (from B_{delta/2}(G_k))" (:790); the [MACH-UP] SH.1-SH.3 sandwich — reversal (downhill) leg from B'' "TRACKABLE AND ENDS AT THE GROUND BALL", SH.2' minorises at G_k E_eps-critical via M2P.1, cost exponent sup_{B''} E_eps-(m_k+eps w_k)=S_k-m_k+eps(S_k/kappa-w_k)+C_B eps^2+err(delta) (:808-820); the near-saddle target B'' at O(1) distance (radial ~ pi-a_k), z''=z_sl-A_x eps v_u, frame-ball radius gamma_c A_x eps/8 (:791-807); LP.5(b) crossing chain to the theta-label change (:821-839). THIS IS THE DECISIVE READ: the sandwich consumes a ground-ball launch (energy floor m_k+eps w_k, minorisation at G_k), forcing Route (a). | R7a Lemma KD (scratchpad minmig_r7_results.json R7a-killed-density): the corridor-confined killed endpoint density P_x(X_1 in dz, sup_{[0,1]}|X_t-g*|_max <= 3delta/8) >= m_kd Leb(dz)|_{B_ref}, m_kd=c beta^N exp(-beta C delta^2), B_ref=B_{delta/8}(g*), with derived beta-free C; the [0,1] confinement to B_{3delta/8}(g*) subset S^+ (so theta^+(0)>1, L>1, D(0)>1); R6a §2 containment (radial expulsion via M2P.5) and R6a §3 strong-Markov splice at t=1 (Phi(x) >= m_kd Leb(B_ref) . inf_{z in B_ref} P_z(A_asc)). | R6b draft §2 (scratchpad minmig_r6_results.json R6b-collar-exit) — the passage being repaired: the "Defect" para (M3-GS relocation-into-S is not a subset of {L<D(0)}) KEPT; the "Repair" para introducing y_gate at radial 3delta/4, B_gate=B_{delta/4}(y_gate) outside S^+, the L1 hop, the sandwich-from-B_gate, and the floor display — DELETED; the "Discharged" summary Finding-1 clause EDITED. B_gate verified to occur ONLY in §2 (draft lines 59-68) and the summary (line 152); §1 (COLLAR-EXIT), §3-§5 untouched. | R7b Passage 1 and its checker MAJOR (scratchpad minmig_r7_results.json R7b-minor-repairs): the "native-ground-ball on the fixed r0-tube" justification the checker CONFIRMED as citation-overstatement (B_gate is not a ground ball; lane-lp:790 launches from B_{delta/2}(G_k); lane-minmig:733-735 routes dist-in-(delta/2,r0] via RELAX first) — R8b supersedes it by deletion. | lane-minmig-proofs-v1.md: R5a §5(P) crossing floor and exponent p (:3055-3059); delayed-return convention theta^+(t), D(t), L (:2997-3002); the M3-GS reach U_ch/U_{1/2} and RELAX clause (:717-734,733-735); M2P.5 Step 2 slice-gradient dissipativity <grad E_eps(u),u-pi(u)> >= (c_1/2)dist^2 uniform in eps on r_1-tube r0<=r_1 (:777-780); §6 spatial ascent-out-of-S argument (:3078); E[N]<=1/p geometric domination (:3087-3093); order of limits beta->infinity then delta->0 then eps-window (:3106-3113); M2a.2 double-rotation identity equating points ON G_k (:1472-1501). | lane-sh2local-proofs-v1.md: L1 growth bound E_eps-e0 <= (L/2)dist^2 (:114); XF A3 diffusive floor beta >= B/delta^2 (:33-35). | HEAD/evidence-lock per the R7 verdict: lane-minmig d6378eaa..4b69, lane-sh2local 3ccad736..be5b, lane-lp fb532b41..02ff.

### typed gaps

NONE opened by R8b. The cure is a DELETION plus a re-basing on an already-proved object (R7a Lemma KD), not a new construction: no new external row, no new norm conversion, no beta-free flat-mode claim. Route (a) is a DERIVATION, not a typed gap — the sandwich's ground-ball launch (SH.2' minorisation at G_k, reversal leg ending at the ground ball, exponent from m_k+eps w_k) is a cited source fact (lane-lp:808-820), and B_ref = B_{delta/8}(g*) is verified inside the native launch tube B_{delta/2}(G_k) exactly (dist(., G_k) <= delta/8 < delta/2), delivered confined by KD. Inherited and UNCHANGED (not R8b's burden, carried from R6b/R7a): (1) SR-KD as the named classical import inside R7a (and, if a reviewer insists, GAP-R7a-KDCONST — the beta-free Dirichlet-Gaussian constant on the cube, which the R7a checker flagged for the max-norm-ball/2N metric factor; it affects only err(delta)=O(N delta^2)=O(delta^2) at fixed N, not the leading (P) exponent); (2) GAP-M5-EUC, the fixed beta-free 2N-dimensional Euclidean/max-norm equivalence factor (lane-minmig:1712-1727) — R8b adds no new metric burden, B_ref confinement being native max-norm; (3) PROD-EXCURSION and PROD-EXCURSION-COND (external, expectation-shaped, TYPED), consumed in R6b §3-§5, out of R8b scope. LP-MIN-MIG stays BLOCKED pending the Finding-3 wiring, the external rows (Findings 4-8), and an external XM-R2 DISCHARGE-SOUND verdict.


---

# R7b — the collar-exit lemma + Phase-R honesty (as amended by R8b)

(grade: draft PROVED; checker REPAIRABLE; its MAJOR (the B_gate entry) cured by R8b)

R7b — TWO SURGICAL CURES FOR THE R6b MINORS (splice-ready)

Both defects are err-class JUSTIFICATION gaps flagged REPAIRABLE by the R6b checker: neither changes an exponent nor breaks the subset property. Passage 1 replaces one clause in R6b §2; Passage 2 replaces the Phase-R paragraph in R6b §3. No other byte of R6b changes.

========================================================================
ROUTE DECISION FOR MINOR 1 (B_gate placement) — Route B, fewer constants
========================================================================
The task offered two routes: (A) move y_gate inward to radial 3 delta/8 (so B_gate spans dist [delta/8, 5 delta/8]) and re-verify the exit-direction margin, the SH.3 sandwich entry hypothesis, and the corridor radii; or (B) re-derive the consumed floor on the wider region if the source rows permit (checking the M2P.5 tube radius r_1 vs delta). Choose the route moving FEWER constants.

Decisive geometry. R6b's containment (checker-CONFIRMED sound: "convex radial profile crosses ∂S^+ exactly once; shrinking tube keeps the post-exit bridge out of S") REQUIRES B_gate to lie OUTSIDE S^+ = B_{delta/2}(g*): the forced hop runs monotonically OUTWARD from radius <= delta/4 to radial 3 delta/4, crossing the shell ∂S^+ = {radial = delta/2} EXACTLY ONCE (realising theta^+(0) during the hop) and never returning to radius < delta/4. This single-exit-via-hop is what makes the crossing event a subset of {L < D(0)} WITHOUT the S^+-confined ("killed") endpoint density that sank the sister piece R6a: the L1 Gronwall corridor confines the bridge to a shrinking TUBE around the OUTWARD SEGMENT [x, y_gate] (lane-sh2local:156-158, sup_t |X_t - phi(t)| <= rho), which is a legitimately available object, not the ball-around-g* killed density R6a could not build.

Along the saddle-ward (transverse) ray, radial-distance-from-g* EQUALS dist(.,G_k), so "outside S^+" (radial > delta/2) and "inside U_{1/2} = {dist <= delta/2}" are the SAME threshold delta/2 in the SAME coordinate — mutually exclusive. Hence Route A (move B_gate into U_{1/2}) would place B_gate inside S^+, DESTROY the monotone-outward single-exit-via-hop, force the collar exit onto the ascent, and thereby re-inherit exactly R6a's killed-density burden — it moves the gate constant AND breaks a checker-confirmed-sound containment AND opens a fresh FATAL. (Concretely, at radial 3 delta/8 the segment [x, y_gate] never reaches radius delta/2, so ∂S^+ is not crossed by the hop at all.) Route A therefore moves MANY constants and regresses.

Route B moves ZERO geometric constants (y_gate stays at radial 3 delta/4) and swaps ONE citation, re-deriving exactly the one thing that was wrong: the launch-region justification. The source rows permit it. (M3-GS)'s U_{1/2}-uniformity (lane-minmig:717-724,773) is the reach of its RELOCATION sub-step — the L2 orbit chain that MANUFACTURES a base-ball Lebesgue density from an arbitrary in-tube start. That sub-step is not invoked at B_gate, because the forced hop already deposits an L1 Lebesgue density there. What is actually consumed is only the SH.1-SH.3 downhill sandwich, whose reversal leg runs FROM a ground ball TO B'' (lane-lp:808-820) and is native to any ground ball of radius <= r0/8 inside the FIXED r0-tube T_{r0}(G_k), r0 an O(1) constant, r0 < (1/4) inj(M) (L1 setting, lane-sh2local:96-100,116). The M2P.5 Step 2 slice-gradient dissipativity floor the reversal flow relies on holds UNIFORMLY on the r_1-tube with r0 <= r_1 (lane-minmig:777-780) — and r_1 is O(1), so r_1 >> delta. B_gate at dist(.,G_k) <= delta << r0 <= r_1 sits deep inside this region. Route B is therefore selected.

========================================================================
REPAIRED PASSAGE 1 — cures MINOR 1 (R6b §2)
========================================================================
SPLICE INSTRUCTION. In R6b §2, replace the single sentence beginning "From B_gate — a ground-region ball at O(delta) from g*, cost-equivalent to g* by the exact T^2-rotation symmetry (M2a.2) and the totally-geodesic flatness of G_k (M5.0, lane-minmig:1472-1501) — the SH.3 downhill reference flow delivers the near-saddle target B''..." (through its "...never identified, [23] §B.3" citation) by the following. Everything before ("For any x in S ... realising theta^+(0)") and after ("...and LP.5(b) runs the far-side crossing chain...") is unchanged.

  "From B_gate the SH.3 downhill reference flow delivers the near-saddle target B'' at the unchanged sandwich cost. The launch region is justified WITHOUT the U_{1/2} = {dist(.,G_k) <= delta/2} restriction of (M3-GS) and WITHOUT any on-orbit rotation-symmetry appeal (M2a.2 equates points ON G_k, and B_gate is off G_k), as follows. (M3-GS)'s U_{1/2}-uniformity (lane-minmig:717-724,773) is the reach of its RELOCATION sub-step — the L2 orbit chain that MANUFACTURES a base-ball Lebesgue density from an arbitrary in-tube start; that sub-step is NOT invoked here, because the forced hop of the previous sentence already deposits an L1 Lebesgue density on B_gate. What is consumed at B_gate is only the SH.1-SH.3 downhill sandwich itself, whose reversal (downhill) leg runs FROM a ground ball TO B'' and ends at the ground (SH.2' minorises at G_k, E_eps-critical by M2P.1; lane-lp:808-820), and which is native to ANY ground ball of radius <= r0/8 lying inside the FIXED r0-tube T_{r0}(G_k) — r0 an O(1) constant with r0 < (1/4) inj(M) (L1 setting, lane-sh2local:96-100,116), the SAME native-ground-ball form used by the sister construction (R6a §3). B_gate = B_{delta/4}(y_gate) qualifies for every delta below the fixed threshold delta <= r0/3 (already inside the standing small-delta regime beta >= B/delta^2): its radius delta/4 <= r0/8 and its centre distance dist(y_gate, G_k) = 3 delta/4 <= r0/4 place it wholly in T_{r0}(G_k) at transverse distance in [delta/2, delta], all << r0. The transverse-dissipativity ingredient the downhill reference flow relies on — M2P.5 Step 2's slice-gradient floor <grad E_eps(u), u - pi(u)> >= (c_1/2) dist(u, G_k)^2, uniform in eps < eps_0 — holds on the r_1-tube with r0 <= r_1 (lane-minmig:777-780), hence is in force throughout B_gate and its ascent corridor; no delta/2-collar hypothesis and no relocation chain enter. The only price of launching at dist(y_gate, G_k) = 3 delta/4 rather than at g* is the extra transverse energy E_eps(B_gate) - (m_k + eps w_k) <= (L/2) dist(., G_k)^2 <= (L/2) delta^2 = O(delta^2) (the L1 quadratic growth bound E_eps - e0 <= (L/2) dist^2, lane-sh2local:114), which only SHORTENS the climb to B'' and is absorbed into err(delta). The sandwich level display is therefore unchanged, exp(-beta( S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta) )) (LP.5(a), lane-lp:806-820; lane-minmig:738-744; the two eps-coefficients S_k/kappa = W*(z_sl) and w_k = W*(G_k) NEVER identified, [23] §B.3)."

DELTA NOTE 1 (one line). Replaces the incorrect on-G_k rotation-symmetry / M3-GS-over-U_{1/2} justification of the B_gate sandwich launch with the correct native-ground-ball-in-the-fixed-r0-tube argument (M2P.5 dissipativity uniform on the r_1-tube, r0 <= r_1 = O(1) >> delta); y_gate stays at radial 3 delta/4 so R6b's checker-confirmed single-collar-exit-via-hop containment is untouched — Route B chosen over moving the gate because the containment needs B_gate OUTSIDE S^+, which is impossible inside U_{1/2}, and moving inward would reintroduce R6a's killed-density FATAL. Floor exponent p unchanged.

========================================================================
REPAIRED PASSAGE 2 — cures MINOR 2 (R6b §3)
========================================================================
SPLICE INSTRUCTION. In R6b §3, replace the whole "PHASE R" paragraph — the one beginning "PHASE R (the return-or-cross attempt over the fixed beta-free window T_sub, §4): from X_{beta_m} — which lies on ∂S^+ ... or already outside — run the composed pass of R5b §2 (band trichotomy recovery is empty here since X_{beta_m} in U_ch is a ground-region point: M5 product-torus orbit chain ...; then the L1' base-ball landing, lane-sh2local:74-90)." — by the following. The surrounding PHASE A, PHASE E, and SUBCYCLE SUCCESS paragraphs are unchanged.

  "PHASE R (the return-or-cross attempt over the fixed beta-free window T_sub, §4): run the composed pass of R5b §2 from X_{beta_m}, honestly case-split on the two starts Phase E leaves.
   (R-exit) If X_{alpha_m} in S^+, then beta_m = theta^+(alpha_m) is a GENUINE collar exit, and by path-continuity X_{beta_m} lies ON ∂S^+ (max-norm radius delta/2 from g*, hence dist(., G_k) <= delta/2), i.e. in U_ch = {dist <= delta/2} = U_{1/2}, the M5-chain start region (lane-minmig:773). Here the band trichotomy COLLAPSES: X_{beta_m} is already a ground-region point in U_{1/2}, so the pass proceeds directly by the M5 product-torus orbit chain U_ch -> B_{h/2}(g*) = S (matched radii sigma = h/2, n = ceil(2 D_G/h), D_G = pi sqrt(2N), Gamma_orb(h) = 2 C_1 n h^2 <= 6 C_1 D_G h = O(h), lane-minmig:1425,1691), then the L1' base-ball landing (A4/A5 corridor-qualified free-density form, lane-sh2local:74-90).
   (R-zero) If X_{alpha_m} not in S^+, then beta_m = alpha_m (the zero-time Phase-E branch) and X_{beta_m} = X_{alpha_m} is a GENERAL R_0 point — core, band, or a sub-cap point at dist(., G_k) up to r0 — NOT necessarily in U_ch. The band trichotomy of R5b §2 is then NOT empty and runs in full (lane-minmig:3241-3244): (T-core) x in T_core = {dist(., Z) <= rho(eps)} runs ONE LP.4b eigenfiber kick FIRST (cost exp(-beta O(eps^2)), charged as gamma_2 eps^2) then LP.4a descent; (T-band) 2 kappa <= E_eps <= S_k + c_H off T_core returns to the sub-cap sector by the LP.4(ii) PROCESS FORM in T_B(eps); (T-subcap) E_eps < 2 kappa relaxes into U_ch by M2-ATTR(k, eps) + M2P.5 Step 2/3. In every case the pass then joins the SAME M5 orbit chain -> L1' landing as (R-exit).
  The floor p_sub of §3 is the SAME in both starts and is UNCHANGED: its display already carries the exp(-beta gamma_2 eps^2) core-kick factor and is stated UNIFORM over every H_m-measurable start in R_0 — core, band, and sub-cap alike (R5b §3, lane-minmig:3261; a ground-region collar-exit landing needs no kick, so retaining gamma_2 eps^2 only WEAKENS the floor). Thus (R-exit) is merely the trichotomy's trivial case and (R-zero) its full case; no new cost, no new exponent, and Succ_m still fires exactly on a genuine post-beta_m delayed S-return into S or a theta-crossing."

DELTA NOTE 2 (one line). Phase R now case-splits honestly on Phase E's two outcomes — (R-exit) X_{alpha_m} in S^+ gives a genuine collar exit onto ∂S^+ subset U_{1/2}, where the trichotomy is trivial and the M5 chain runs directly; (R-zero) X_{alpha_m} not in S^+ gives beta_m = alpha_m at a general R_0 point where the FULL R5b §2 band trichotomy (T-core/T-band/T-subcap) is required — p_sub is unchanged because it already charges the gamma_2 eps^2 kick and is uniform over all R_0 starts (lane-minmig:3261).

========================================================================
NET EFFECT
========================================================================
With Passages 1 and 2 spliced in, both R6b MINORs are cured: §2's crossing floor launches the SH.3 sandwich from a legitimately-in-region native ground ball (no rotation-symmetry-off-G_k, no U_{1/2}-violation), and §3's Phase-R prose covers every Phase-E outcome. No exponent moves, the subset property Cross(x) subset {L < D(0)} and the delayed-return charge are untouched, and R6b's status (PROVED-WITH-TYPED-GAPS on the inherited external rows) is preserved with the two REPAIRABLE flags discharged. No new typed gap is opened.

### consumed

R6b draft and its checker findings IN FULL (scratchpad minmig_r6_results.json: the two MINOR findings — §2 B_gate-outside-U_ch launch mislabelled via M2a.2 rotation symmetry; §3 Phase-R "trichotomy empty" false on the zero-time Phase-E branch — plus the checker's confirmation that R6b's single-collar-exit containment and p_sub formula are correct). | lane-minmig-proofs-v1.md: R5a §5(P) crossing floor and its M3-GS import (:3055-3060), M3-GS chain with EXPLICIT reach U_{1/2} = {dist <= delta/2} and the "dist in (delta/2, r0] first RELAXed" clause (:670-746, esp. :717-734), the PRE-CHAIN RELAX step and the r_1-tube with r0 <= r_1 (:772-799, esp. :777-780 M2P.5 Step 2 slice-gradient floor uniform in eps), R5b §2 band trichotomy (T-core)/(T-band)/(T-subcap) and the common M5-chain -> L1' tail uniform over core/band/sub-cap (:3237-3246), R5b §3 p_sub display carrying exp(-beta gamma_2 eps^2) and its "uniform over every H_m-measurable start in R_0 — core, band, sub-cap alike" (:3251-3261), M5-MAIN orbit chain constants (:1425,1691). | lane-lp-product-saddle-v1.md: LP.5(a) SH.1-SH.3 sandwich reversal leg running FROM a ground ball TO B'' and ending at the ground via SH.2' minorisation, with the level display exp(-beta(S_k - m_k + eps(S_k/kappa - w_k) + C_B eps^2 + err(delta))) (:800-820), LP.5(b) crossing chain (:821-839). | lane-sh2local-proofs-v1.md: L1 setting/tube hypotheses r0 < (1/4) inj(M), growth E - e0 in [(c_perp/2), (L/2)] dist^2 (:96-116), L1 Gronwall corridor sup|R_t| <= rho around the reference path phi and the master corridor-confined hitting bound (:154-170), L1' A4/A5 corridor-qualified FREE-density form and the note that the killed/tube-localised form is available-but-unused (:61-90). | XM-R2-2026-07-21 outer spec via the R6b consumed/typed-gap fields (the F2 obligations, order-of-limits, and standing defect classes).

### typed gaps

NONE opened by R7b. The two cures are prose/citation repairs, complete and self-contained; each is a strict subset re-justification that changes no exponent and no event. R6b's pre-existing typed gaps are carried UNCHANGED and are not R7b's burden: (1) PROD-EXCURSION-COND (N,k) [NEW NAMED EXTERNAL ROW = R5a's GAP-PE-COND; expectation-shaped, TYPED, not proved] consumed in R6b §4-§5; (2) PROD-EXCURSION (external, unchanged, consumed at source strength; its all-N>=10 scope warning from XM-R2 Finding 4 inherited, not resolved); (3) GAP-M5-EUC (inherited Euclidean/max-norm equivalence factor). R7b introduces no new norm dependence, no new external row, and no beta-free flat-mode claim. Route B for MINOR 1 is a DERIVATION, not a typed gap: the SH.3 sandwich's native-ground-ball validity on the fixed r0-tube and M2P.5 Step 2's r_1-tube uniformity (r0 <= r_1) are both cited source facts, and B_gate (radius delta/4 <= r0/8, centre dist 3 delta/4 <= r0/4, for delta <= r0/3) sits inside them exactly.

# Typed-gap register (the honest tail)

```text
GAP-M1-NORM      norm-equivalence bookkeeping in prefactors/floors
                 (beta-free, h-tracked; rate unaffected).
L1-Z-TUBE        per-orbit normal injectivity radius: DISCHARGED
                 for the flagship consumed set (SP_1 by LS.4;
                 the p = 2 high circles by R5c TYPE 1 Morse-Bott
                 cleanness); carried ONLY for the non-flagship
                 extension (GAP-M2-HIGH-NONFLAG).
GAP-M5-EUC       the Euclidean/max-norm dimensional factor: no
                 exponent change and no threshold-ORDER change; the
                 fixed factor rescales the O(h^-2) threshold
                 CONSTANT (XM F7 wording).
GAP-M3-INTERFACE DISCHARGED-IN-ARTIFACT (R5a + rounds 6-8): the
                 continuous FLOORS round object (R5a, A6/A7) with
                 its crossing floor now built on the COLLAR-KILLED
                 event (R6a) whose density is Lemma KD (R7a
                 mechanism + R8a geometry: killed on the max-norm
                 cube, SR-KD on the inscribed ball, domain
                 monotonicity; A9 constant harmonization). The
                 XM-R2 F1 event-containment defect is cured: the
                 floor event is a proved SUBSET of {L < D(0)}.
GAP-LS-SPLICE    DISCHARGED-IN-ARTIFACT (R5c, round 5): the SP_1
                 constant repaired via the native row LS.5a-Z-SP
                 (offsets priced separately; the old |x-y| framing
                 retired); winding-j non-consumption STANDS; the
                 on-Delta work is GAP-M2-HIGH below (also R5c).
                 [XM-R2 F7 margin correction: the bond map has
                 max-norm Lipschitz 2, so the landing-ball margin
                 is delta/2, not 5 delta/4 - amendment A8; sound
                 in substance per the verdict.]
GAP-M2-HIGH      DISCHARGED-IN-ARTIFACT for the flagship k = 1,
                 N >= 10 (R5c, round 5, checker SOUND): bond-
                 Hessian inertia computed at the (pi,pi,0,...)
                 configurations; the applicable manifold statement
                 per inertia; DAG descent recomposed; the corner
                 transmission built as a direct sector-targeting
                 kick into an adjacent non-home sector. Residuals
                 typed: GAP-M2-HIGH-NONFLAG (non-flagship rows
                 re-enter the enumeration per R5c's recipe; p >= 4
                 corners) - carried below.
GAP-M2-HIGH-NONFLAG  TYPED (R5c): non-flagship (k >= 2, composed/
                 symmetric) on-Delta orbits re-run the R5c recipe
                 (inertia count = pi-bond count p, index p even;
                 NHIM at index p; sector-targeting kick). Not
                 consumed by the flagship discharge.
GAP-LP-RECUR     OPEN AT A6 STRENGTH (XE-8 release fence,
                 2026-08-01). The former status label
                 "DISCHARGED-IN-ARTIFACT" is SUPERSEDED; see the
                 supersession note appended at the end of this
                 entry. The superseded entry is retained
                 verbatim from here:
                 DISCHARGED-IN-ARTIFACT (R5b + rounds 6-8): the
                 retry scaffold with the collar-exit charge proved
                 (R6b/R7b: the flat-mode exit priced explicitly -
                 no beta-free assertion), the delayed-return floor
                 on R5a's exact convention, and the launch
                 re-based on B_ref via Lemma KD (R8b: B_gate
                 DELETED). The XM-R2 F2 defects are cured. The
                 excursion contract stays the TYPED external row
                 PROD-EXCURSION-COND - no silent strengthening.
                 [SUPERSESSION NOTE 2026-08-01 - XE-8 RELEASE
                 FENCE. The label "DISCHARGED-IN-ARTIFACT"
                 above is FALSE at A6 strength and is
                 WITHDRAWN. THE ROW'S LANDED STATE, RESTORED.
                 MM:3163, verbatim: "Until R5b furnishes it,
                 the LP.5(c) upper limsup is conditional on
                 GAP-LP-RECUR at exactly this strength." And,
                 verbatim: "This is the GAP-LP-RECUR row the
                 register honestly lists REOPENED (verdict
                 line 102; [34])." WHY THE LABEL IS FALSE.
                 The claims to have furnished the row, named:
                 R5b Section 6's closure claim at MM:3328,
                 WITHDRAWN (CURE-XE5-4 v2 B1), whose beta-free
                 T_exit input at MM:3320 is still in the bytes
                 (reconciliation note landed there); R6b
                 Section 5's display and A6-satisfaction
                 sentence at MM:4242-4253, WITHDRAWN
                 (CURE-XE5-4 v2), whose recorded i = 0
                 consumption is superseded in part at MM:4260
                 and MM:4268. LEAD AMENDMENT A6 (MM:3169-3177)
                 is not amended, its named site is not
                 re-pointed, and its obligation is LIVE.
                 WHAT STAYS TRUE. The superseded entry's
                 substantive content - the collar-exit charge
                 (R6b/R7b), the delayed-return floor on R5a's
                 exact convention, the B_ref re-basing (R8b:
                 B_gate DELETED) and Lemma KD - stands as
                 printed; what is withdrawn is the STATUS
                 LABEL. The XM-R2 F2 cures are unaffected, and
                 the excursion contract stays the TYPED
                 external row PROD-EXCURSION-COND.
                 SCOPE. XE-8, verbatim: "A future narrow
                 discharge can remain separable only if the
                 full-upper `GAP-LP-RECUR @ A6` condition is
                 explicitly preserved." The narrow ordinary
                 i >= 1 E2 display is not bound by this row;
                 the package/full LP.5(c) upper is. No
                 constant, exponent, threshold or display
                 moves.]
                 [E5 INTERNAL RECORD 2026-08-02 - APPENDED; NOTHING ABOVE IS
                 ALTERED. THE XE-8 RELEASE FENCE TEXT AND THE STATUS LABEL
                 "OPEN AT A6 STRENGTH" ABOVE STAND VERBATIM AND ARE NOT
                 WITHDRAWN BY THIS NOTE. NO CONSTANT, EXPONENT, THRESHOLD OR
                 DISPLAY MOVES. ANCHOR CONVENTION: every reference in this
                 note is BY NAME - row name, label name or verbatim quoted
                 text - and NOT by line number.
                 WHAT E5 DELIVERS, BY NAME: DISCHARGED-AT-THE-MIN-OBJECT AT
                 RATE STRENGTH - EXTERNALLY SIGNED (XE-14 SOUND,
                 2026-08-02). The governing label OPEN AT A6 STRENGTH
                 above STANDS VERBATIM: it guards the full E_q[D(0)]
                 expectation and the package/full LP.5(c) upper, which
                 this signature does NOT discharge.
                  - AT-THE-MIN-OBJECT: the object proved is E_q[D(0) ^ L_0],
                    not E_q[D(0)]; on {L_0 < D(0)} the Wald consumer's clock
                    has already stopped (convention N_x := 0, empty sum, N_x
                    being the FIRST-CROSSING ROUND INDEX this file's round-sum
                    decomposition writes N; see the record notes appended at
                    the (Wald) display and at the (WALD) round-sum display).
                    The full D(0) EXPECTATION goes typed-unconsumed; its A.S.
                    FINITENESS stays consumed and is landed in R5a's
                    round-object section, verbatim "Each S-return time is
                    therefore a.s. finite from anywhere in U".
                  - AT RATE STRENGTH: the delivered tier is (TIER-A6-RATE),
                    E_q[D(0) ^ L_0] <= P_E5(beta) exp(beta(Gamma(h) + gamma_2
                    eps^2 + err(delta))), with E5's OWN prefactor
                    P_E5(beta) := P(beta) + C_E5 beta^{2N}. HERE P(beta) IS
                    THIS FILE'S OWN R6b.4 PREFACTOR, (T_sub + beta N
                    delta^2/8)/c(delta,h), and C_E5 is beta-free, built from
                    the two beta-free occupation constants C_5 and C_4 of
                    lane-prodexc-v2.md; N is the DIMENSION parameter of
                    dim M = 2N, never the crossing index N_x. THE SECOND
                    SUMMAND IS E5'S PROVED OFF-R_0 LEG AND IS NOT ABSORBED
                    SILENTLY: it is carried in the prefactor and the prefactor
                    is renamed for it. P_E5 IS RATE-INERT, beta^-1 log
                    P_E5(beta) -> 0, by this file's own reason at the R6b.4
                    rate-inertness line, verbatim "since beta^{-1} log P(beta)
                    -> 0 for a polynomial P".
                    (TIER-A6) WITH T_sig BETA-FREE IS NOT CLAIMED: that shape
                    is refuted by this file's own HONEST CORRECTION row,
                    verbatim "It is NOT beta-free; but it is RATE-INERT", and
                    the same R6b.4 paragraph supplies the rate-inert reading
                    LEAD AMENDMENT A6's adopted ROUND-SUM form asks for.
                  - INTERNAL: one drafter, one adversarial checker and one
                    cure pass; no external verdict exists for E5.
                  - PENDING EXTERNAL GATE: E5's own WORKLIST item, one paste,
                    after both pipelines land and LEAD-VERIFY passes. THE
                    FENCE COMES OFF ONLY AT THAT SIGNATURE, NEVER BEFORE.
                 ARTIFACT: the P1 draft lane-e5-gaplprecur-v1.md - pathwise
                 split; LEG 1 = a DOMINATION of the in-R_0 occupation by this
                 file's own Phase-E and Phase-R charges (the lines beginning
                 "Phase-R time: <= (M_i+1) T_sub" and "Phase-E time (the collar
                 charge)"), Phase-A time being off-R_0 by the definition of
                 alpha_m; LEG 2 = lane-prodexc-v2.md Section 5.2's W(z) under
                 its one-application warrant; and the descent-arc certificate
                 typing (H-DESC) PROVED ON D_k(eps) at err_desc = 0. THREE
                 NUMERICAL ROWS ARE MINTED INSIDE THE T-6 FENCE
                 (lane-prodexc-v2.md register row T-6) AND ARE NOT DISCHARGED
                 HERE: (E5-MARGIN), (E5-TRAPMARGIN) and (E5-DOMAIN); the last
                 of these is VERIFIED FAILING at the named flagship eps = 0.05
                 and is carried on the eps-window eps < 0.0472135955.
                 NOTHING IN THIS NOTE FLIPS A FENCE OR A STATUS LABEL.]
GAP-R8a-KDCONST  the SR-KD unit-ball constant (A11): dimension-
                 dependent, beta/delta-free; enters the threshold
                 beta delta^2 >= max(128 N, 32/(9 T_n)).
GAP-R8a-DIMFLOOR the sqrt(2N) landing conversion in the leg-1
                 diffusive floor (R8a Section 4); beta-free,
                 delta-free, N-fixed.
PROD-EXCURSION   EXTERNAL expectation-shaped contract (unchanged;
                 stage-4 target; the prodexc design page is a
                 CANDIDATE route for the PARENT row - PE.1-PE.5
                 with PE.3 retired; the COND companion additionally
                 needs the pointwise upgrade PE.3', not designed
                 yet). ADJUDICATED 2026-07-21 (ADJ-2, lane-prodexc):
                 NO N-window enters the row - per-round, refuted
                 nowhere on the flagship range; the red-flag window
                 reading is WITHDRAWN (the PE.5 scans are aggregate-
                 display statements only - wording per lane-lp).
PROD-EXCURSION-COND  NEW TYPED EXTERNAL ROW (R5b, 2026-07-21): the
                 conditional-uniform strengthening - for every
                 admissible round-start field F_{sigma_{i-1}} and
                 subcycle field, E[off-R_0 occupation of round i |
                 F_{sigma_{i-1}}] <= T_row(eps, delta)
                 exp(-beta(c_H/2 - err(delta))) a.s., T_row
                 beta-free, uniform over the round start in S.
                 Consumed by R5b SS 5-6 in place of the silent
                 strengthening XM-R F3 rejected. Discharge route =
                 the prodexc design (PE.1-PE.5), stage-4.
```

# Consumer wiring plan (NOT executed at assembly)

THE RELEASE MANIFEST (XM-R3 F1 cure): the executable batch is
scripts/minmig_flip_batch.py (every anchor asserts occurrence
count == 1 - abort-on-mismatch; the LIVE anchor count is printed
by the dry-run and recorded in the manifest header - never
hardcoded here, XM-R5 F2); its INSPECTABLE form with exact
verbatim OLD/NEW pairs and expected counts is
governance/minmig-flip-manifest-v1.md, GENERATED by
`python scripts/minmig_flip_batch.py --manifest` (the pair is
self-regenerating). Re-run the dry-run and regenerate the
manifest in the SAME commit as any consumer edit.

After (i) the round-6 lemmas land for XM-R2 findings F1-F2 (the
collar-killed crossing event; the collar-exit charge + delayed-
return floor), (ii) the F3 propagation batch runs (PROD-EXCURSION-
COND at EVERY LP/master upper surface - or an explicit supersedes
statement - and the lane-LS operative call sites REPLACED with the
R5c rows LS.5a-Z-SP + the direct sector-targeting kick, with an
occurrence-complete sweep), and (iii) SATISFIED 2026-07-26: XM-R16 reached dated LEAD-VERIFIED
recording DISCHARGE-SOUND (the terminal state; README +
COORDINATION [47] C.7) and the flips RAN under its authorization
[the update rule is CLOSED with the release; gate-line history:
XH-R3, XM-R, XM-R3, then the derivation-pointer form through
XM-R16]:
flip LS-MIN-MIG / LP-MIN-MIG from TYPED to DISCHARGED at EVERY
operative surface (the XH-cycle checklist): lane-ls (status,
headline, LS.5 header/bracket/QED, LS.6 header/CONSEQUENCE, honest
boundary), lane-lt (status, headline, LT.1 header/bracket/QED, LT.4
rows, unifying line, honest boundary, verdict), lane-lp (status,
LP.5 heading/hypothesis/window line/proof body/XH block, tower
table, firewall, verdict), lane-master (Display 2 label paragraph,
Display 3 upper, honest boundary, AND the roof paragraph 'Why this
is Part III's roof'), lane-ls ADDITIONALLY the LS.5a inline
LS-MIN-MIG note (a separate lemma surface - cold-pass catch),
master-theorem (done-criterion, C-1 record, Part III, H3).
PROD-EXCURSION stays typed everywhere.
