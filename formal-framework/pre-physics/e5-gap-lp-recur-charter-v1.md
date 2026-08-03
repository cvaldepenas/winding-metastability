# E5 DESIGN CHARTER — GAP-LP-RECUR AT A6 STRENGTH — REV 2
(lead design pass 2026-07-28; REV 2 2026-08-02 after the adversarial
design-check returned NOT SOUND AS DESIGNED with every repair named from
landed bytes: 4 BLOCKING, 3 MAJOR, 5 MEDIUM, all folded below. The two
structural cores — the pathwise split and the min-object Wald restatement —
PASSED and are unchanged. Spec-lens law honored: no drafting preceded this
revision. Full findings: the design-check record in the campaign bundle.)

## THE DELIVERABLE — RETYPED TO (TIER-A6-RATE) [BLOCKING-1's repair]

OWNER DECISION, RECORDED: the corpus's own honest correction MM:4339 refutes
a beta-free T_sig ("D_bar' carries an EXPLICIT polynomial-in-beta prefactor
P(beta) := (T_sub + beta N delta^2/8)/c(delta,h) ... It is NOT beta-free;
but it is RATE-INERT"). E5 therefore MINTS AND DELIVERS

  (TIER-A6-RATE):  E_q[ D(0) ^ L_0 ]  <=  P(beta) exp( beta( Gamma(h)
                    + gamma_2 eps^2 + err(delta) ) ),   P polynomial in beta,

with the displayed rate-inertness row beta^{-1} log P(beta) -> 0 (the
MM:4341 form). (TIER-A6) as V2 T-2 types it ("T_sig beta-free", V2:3244) is
NOT claimed — that shape is refuted by MM:4339 and no route delivers it
without removing the per-subcycle collar charge, which contradicts MM:4290's
"every subcycle passes through it".

CONSUMER WALK (all three, by name): MM:2520-2524 and MM:2531-2535 are
limsup displays and read only the rate — unaffected by a polynomial
prefactor. MM:2481 (Wald) is an expectation inequality but is read only
through MM:2531's max — unaffected. The register row therefore flips
SIGMA0-EXC at (TIER-A6-RATE) strength and MUST SAY SO by that name.

THE TARGET, VERBATIM (MM:3163): "an arbitrary-q expected ground-ball
hitting-time bound with beta^{-1} log E_q[sigma_0] <= S_k - m_k + o_delta(1)
(or E_q[sigma_0] beta-free), so that the initial-delay term does not
dominate the round-sum term D_bar/p in the limsup rate reading". The
rate-inert P(beta) satisfies the beta^{-1} log reading exactly.

THE OPERATIVE OBJECT IS THE MIN OBJECT E_q[D(0) ^ L_0] (XE-5 F4's own
preferred repair; on {L_0 < D(0)} the Wald consumer's clock already
stopped). Start domain: q in D_k(eps), the SIGMA0-EXC start set (V2 T-2),
no claimed containment in closure(S).

## THE ROUTE: ONE NEW LEMMA + ONE ASSEMBLY (not "no new analysis" —
   the descent-arc certificate and the LEG-2 occupation proof are NEW,
   built from landed rows) [MEDIUM-11(i) repair]

DECOMPOSITION (pathwise, additive, an identity — PASSED the check):
  D(0) ^ L_0 = int_0^{D(0)^L_0} 1_{R_0}(X_s) ds + int_0^{D(0)^L_0} 1_{M\R_0}(X_s) ds.
LEG 1 + LEG 2 = D(0)^L_0 exactly; no double count, no drop.

TARGETING, VERBATIM (MM:2536-2539): "ROW SIGMA0-EXC ... covers the OFF-R_0
occupation of the window [0, min(D(0), L_0)] only ... It does not cover the
IN-R_0 occupation of that window". LEG 2 = the first sentence's object;
LEG 1 = the second's; the min-object restatement disposes of the remainder.

### LEG 1 — TIME IN R_0 [BLOCKING-2's repair: MM:4350 minus its off-R_0 summand]

  E_q[ int_0^{D(0)^L_0} 1_{R_0}(X_s) ds ]  <=  ( T_sub + beta N delta^2/8 ) / p_sub ,

which is EXACTLY the landed R6b display MM:4350 with its off-R_0 summand
removed. Constituents, at the LIVE vintage only:
- T_sub := T_relax(eps,delta) + T_reloc(eps) + T*(h)  [MM:4320], with
  T_relax(eps,delta) := T_B(eps) + T_cone(eps) + T_relax^{subcap}(delta,eps)
  [MM:4316]. The R3 form "T_sub := T_relax + T*(h)" (MM:2858) is SUPERSEDED —
  R6b names it a defect at MM:4312 ("A band or core start is not returned to
  S within an unqualified T_relax") — and is NOT read.
- beta N delta^2/8 = Phase E's collar-exit charge, per-subcycle (MM:4290
  "every subcycle passes through it"; charged at MM:4329), and it is IN-R_0
  time by MM:4348 ("the collar exit of a low-energy ground state stays
  inside R_0").
- NO in-R_0 recovery charge exists: Phase A's window [kappa_m, alpha_m) is
  DISJOINT from R_0 by the definition of alpha_m (MM:4287: "alpha_m :=
  inf{s >= kappa_m : X_s in R_0 or w_theta(X_s) != k}"). Phase-A time is
  off-R_0 and is charged in LEG 2 (below). The REV-1 "T_relax in-R_0
  recovery part" was a phantom and is WITHDRAWN.
- The count: E[#subcycles] <= 1/p_sub by the landed geometric, LIVE at
  MM:4303 ("On {M_i>=m} the recovery of Phase A places X_{alpha_m} in R_0,
  Phase E exits S^+ a.s.-finitely, and Phase R gives P(Succ_m | H_m) >=
  p_sub"); vintages MM:2972 (R3) and MM:3386 (R5b). It consumes recovery
  a.s.-FINITENESS only — the recovery's DURATION is deliberately unbounded
  (a deterministic-flow horizon is not a pathwise bound on the diffusion's
  recovery time; SH.2 tracking is order-one-probable, MM:2924).
- p_sub >= m(beta,h)-class = c(delta,h) beta^N exp(-beta(Gamma(h)
  + gamma_2 eps^2 + err(delta))) (M5.5b + L1', landed) [CORRECTED BY THE
  ARTIFACT, Section 3.2(e): the landed bytes place beta^N INSIDE c(delta,h)
  (MM:4298-4301); writing it outside double-counts beta^N in P(beta). The
  artifact form governs; this line stands as the spec vintage, R-7 of the
  artifact Appendix B is the record] — so LEG 1 alone
  already has the (TIER-A6-RATE) shape with P(beta) =
  (T_sub + beta N delta^2/8)/c(delta,h), the MM:4339 polynomial verbatim.

### LEG 2 — TIME OUTSIDE R_0: THE OBJECT IS THE CORPUS'S W(q) [the
    structural win — display FIRST; MAJOR-4 + MEDIUM-9 repairs]

  LEG 2's object is LITERALLY W(q) of V2:2762: "W(z) := E_z[ int_0^{H_S ^ L}
  1_{M\R_0}(X_s) ds ]" — no re-derivation; the identity is displayed, then
  the landed STEP rows are consumed at z = q. The ONE-APPLICATION row is the
  warrant that this covers EVERY subcycle's Phase-A excursion, verbatim
  (V2:2798-2800): "ONE application of each display of STEP 5 covers the
  ENTIRE round: the occupation integral int_0^{H_S ^ T} counts every doorway
  visit and every R_0 exit and re-entry before the S-return. NO WINDOW COUNT
  EXISTS in this reading, and none is formed." This is why E5 never touches
  PROD-EXCURSION-COND's delivered domain (G_i, closure(S), i >= 1) — see D5.

BRIDGE ROWS, BY NAME [MAJOR-4's repair]:
- (COV), verbatim V2:2688: the 1_{M\R_0} time on the excursion window is
  covered by { X_s in TRAP_2 } union { X_s in TRAP }.
- (COV-SCOPE), V2:2802/T-11 (V2:3258): the cover runs on s < T' <= L using
  the theta-sector openness and the ROUND-START property w_theta = k AT the
  start. Discharged at the sigma_0 scaffold: the round start is time 0
  (V2:137: "L := the first theta-label change after the round start", here
  L = L_0), and w_theta(q) = k holds since q in D_k(eps) (MM:4348).

START-SET PARTITION [BLOCKING-4's repair — replaces REV 1's collar-prepend,
closes CASE 0, boundary(S), and the q-in-S^+ horizon mismatch at once;
CASE 2 is never needed]:
- (A) q NOT in S^+: theta^+(0) = 0 deterministically and D(0) = H_S
  (HOR-b, V2:2792), so the displays' window H_S ^ T IS the min-object
  window (the HOR-a subset direction is moot on this branch). Separation:
  dist(q, S) >= delta/4 >= 4/beta for beta >= 16/delta (V2:1573-1575's own
  clause) — CASE 1 applies DIRECTLY.
- (B) q in S^+: split at theta^+(0) by the strong Markov property, the
  corpus's own STEP 2 move (V2:2766: "u(x) = E_x[ W( X_{theta^+(0)} ) ]";
  V2:2780: "sup_{x in closure(S)} u(x) <= sup_{z in dS^+} W(z)"). The
  pre-exit segment [0, theta^+(0)) contributes ZERO to LEG 2's 1_{M\R_0}
  integrand by the CLOSURE ROW (V2:2813, AM-R5-21: "closure(S^+) subset
  R_0") — the collar sojourn's expected duration (beta N delta^2/8) is
  LEG 1's charge, never LEG 2's. OWED ROW, to be displayed by the drafter:
  V2 STEP 2 is printed at x in closure(S); q in S^+ \ closure(S) needs the
  same strong-Markov line re-instantiated (same argument, displayed).
  Note D(0) at q in S (CASE 0) is a DELAYED return (MM:3118-3121: "every
  delayed return carries a genuine excursion of radial extent >= delta/4,
  and D(t) > t strictly") — the min-object left side is NOT zero there, so
  no CASE-0 scope-out is available; branch (B) is what covers it.

THE TRAP_2 LEG'S QUANTIFIER [MAJOR-5's repair]: (TRAPOCC-2-ROUND)'s PRINTED
index set is sup over the open collar S^+ (V2:2608). Consuming it at
general sub-cap q uses the corpus's own instantiation move (V2:2810-2814):
quote the UNDERLYING landed Regime-A quantifier — "for every z in R_0 with
Theta(z,S) <= theta_2 - c_0. Unconditional in Theta(z,S)" — and discharge
its rows at q BY NAME:
  (a) q in R_0 (sub-cap part): MM:4348 verbatim ("E_eps(q) < 2 kappa <
      S_k + c_H, w_phi=0, w_theta=k, so q in R_0").
  (b) Regime A: by the descent-arc certificate below.
  (c) the CASE row: per the (A)/(B) partition above.
NON-CONSUMPTION FENCES (say them so no drafter drifts): (TRAPOCC-UNIF)'s
index set is Door inter R_0^* (V2:2455) and EXCLUDES sub-cap q (Door :=
{E_eps = S_k + c_H, ...}, V2:1446) — not read. The unrestricted
(TRAPOCC-2*) is not carried (T-24, V2:3281: "plausibly false at the
corpus's unclassified above-band structure") — not read. The (c1) all-z
generalization — not read.

REGIME-A MARGIN, THE CORPUS'S OWN FORM [MAJOR-6's repair]: the certificate
bounds Theta(q,S) <= E_eps(q) < 2 kappa directly, so eps w_k and
L_eps N delta^2/4 do NOT enter. The needed clearance is against the hinge
constant c_0 := L_eps N delta^2/4 (V2:271, beta-free), NOT bare positivity:
  theta_2 - 2 kappa >= S_k + c_H - 1/beta - 2 kappa = 0.9341803190 - 1/beta
  must clear c_0 — restate V2:2600-2602 with 0.9342 in place of 1.024350:
  c_0 is of err class while the left side is order-one, so Regime A applies
  at every sub-cap start for the corpus delta/eps ranges. TYPED AS A
  NUMERICAL CONDITION inside the T-6 fence (V2:3248) — a satisfiable
  numerical row for the E6 pass, not a theorem.

CONCLUSION OF LEG 2: both occupation displays (TRAP_2 leg + TRAP leg) have
NEGATIVE exponents at sub-cap starts — a fortiori inside (TIER-A6-RATE)'s
POSITIVE allowance.

### THE DESCENT-ARC CERTIFICATE — H-DESC PROVED ON D_k(eps), err_desc = 0
    [BLOCKING-3's repair; MEDIUM-11(iii) renaming]

NOT "H-DESC-free": the certificate IS the closure route of (H-DESC)
(PX:9184), proved at err_desc = 0 on D_k(eps) ONLY — type it that way so
downstream cannot silently read it at general z in R_0.

Theta's competitor class, verbatim (V2:1261-1262): "inf over simple
piecewise-C^1 arcs gamma from x to Y of max_gamma E_eps; Theta(x,S) is
written with Y = {g*}." The M2-ATTR flow converges only ASYMPTOTICALLY
(MM:2904: "every trajectory from closure(D_k(eps)) converging to G_k") and
never reaches g* — the arc must be COMPLETED. Three legs, all landed:
  (i)  truncate the flow at a finite time T_1 chosen AFTER tube entry,
       dist(X_{T_1}, G_k) <= r_1 (M2-ATTR closure attraction gives finite
       T_1); energy strictly decreasing along the leg (MM:2904-2907).
  (ii) the radial segment X_{T_1} -> pi(X_{T_1}) in G_k, DESCENDING by
       M2P.5 Step 2's slice-gradient floor (MM:771-773:
       <grad E_eps(x), x - pi(x)> >= (c_1/2) dist^2).
  (iii) a G_k-geodesic pi(X_{T_1}) -> g*, along which E_eps is CONSTANT
       (MM:3097: "G_k = C_k^theta x C_0^phi is the flat totally-geodesic
       product-ground 2-torus, E_eps-critical for every eps with
       E_eps(G_k) = m_k + eps w_k").
Max energy over the completed arc = E_eps(q), since m_k + eps w_k <=
E_eps(q) on the basin. Hence Theta(q, S) <= E_eps(q) < 2 kappa. NO collar
penalty enters.
TWO ROWS THE DRAFT MUST DISPLAY (absent in REV 1):
  - SIMPLICITY: the competitor class is SIMPLE arcs. Strict descent gives
    injectivity on leg (i); legs (ii)/(iii) re-meeting leg (i) must be
    excluded or the arc reparametrized (first-hitting reparametrization is
    the standard move — display it).
  - PIECEWISE-C^1 at the two junctions (flow-to-radial, radial-to-geodesic).

### ASSEMBLY

  E_q[ D(0) ^ L_0 ]  =  LEG 1 + LEG 2
    <=  ( T_sub + beta N delta^2/8 ) / p_sub  +  W(q)-bounds
    <=  P(beta) exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ),

i.e. THE ASSEMBLY IS "MM:4350 WITH THE SIGMA0-EXC SUMMAND REPLACED BY E5'S
PROVED LEG 2". The honest one-line description of the whole campaign.

### CONSUMER RE-WIRE [MEDIUM-8 repairs folded]

The Wald sites are MM:2481 ("E_q[ tau_change^theta ] <= E_q[ sigma_0 ] +
D_bar / p. (Wald)") and MM:3216-3220 (the round-sum decomposition). The
restated display is an INEQUALITY on the min object, displayed ONCE at the
Wald site, with the branch convention PINNED: on {L_0 < D(0)}, tau = L_0 =
D(0)^L_0 and NO round starts — the convention is N := 0 (empty sum); on
{D(0) <= L_0}, sigma_0 = D(0) = D(0)^L_0 and MM:3216's identity holds
unchanged. (MM:3216 as printed is an identity FALSE on the first branch —
the restatement must be the inequality with the displayed convention.)
REGISTER HONESTY: full D(0)'s EXPECTATION goes typed-unconsumed, but its
A.S. FINITENESS stays consumed (it makes X_{sigma_0} in S and rounds i >= 1
well-posed) and is landed at MM:3135 ("Each S-return time is therefore
a.s. finite from anywhere in U"). Say both or the register row overclaims.
Consumer walk: MM:2531-2532 consumes MM:2520-2524 inside its max (MM:2519),
so LP.5(c)'s upper reads only the max of two exponents — nothing else moves.

### D5 — DOMAIN HONESTY, RE-DERIVED FROM TODAY'S BYTES [MEDIUM-9 repair]

PROD-EXCURSION + PROD-EXCURSION-COND are DISCHARGED (LP:14/LP:253, XE-11,
2026-08-02) — they are no longer the live conditionality; GAP-LP-RECUR @ A6
is the SOLE remaining condition on the package/full LP.5(c) upper (LP:16).
The COND row's delivered domain is "round-start fields G_i with starts in
closure(S) (i >= 1)" (LP:259-260); the sigma_0 scaffold (field F_0, start
q in D_k(eps), i = 0) sits OUTSIDE it, and the LIVE sigma_0 route DOES
reach outside it (MM:4287: "its off-R_0 sojourn governed by
PROD-EXCURSION-COND (S7 below)"). E5's escape, NOW DISPLAYED: every
Phase-A sojourn of every subcycle is routed into LEG 2's SINGLE-APPLICATION
occupation integral (warrant V2:2798-2800, quoted above) — the COND row is
never consumed at the i = 0 field.

## CLAIM LIST FOR THE DRAFT'S ADVERSARIAL CHECK (post-REV-2)

D1: RESOLVED (row typed; (TIER-A6-RATE) is E5's deliverable — retype
    accepted, MM:4339/4341 the warrant).
D2: PASSED at the live anchor MM:4303 (vintages MM:2972/3386); carry the
    caveat: a.s.-finiteness only, never expected duration.
D3: REPLACED by the MM:4350-minus-off-R_0 LEG 1 above; the check is that
    the draft's LEG 1 display matches MM:4350's in-R_0 charge byte-for-byte
    with T_sub at MM:4316/4320.
D4: PASSED with the two owed rows (inequality + N := 0 convention; the
    a.s.-finiteness honesty clause) — check they are displayed.
D5: PASSED on the single-application route — check the draft DISPLAYS it
    (V2:2798-2800 quoted) rather than assumes it.
D6: the three-leg certificate — check simplicity + piecewise-C^1 rows are
    displayed and the H-DESC-on-D_k(eps) typing is used.
D7: the (A)/(B) partition — check branch (B)'s STEP-2 re-instantiation at
    q in S^+ \ closure(S) is displayed; check (COV)/(COV-SCOPE) discharge;
    check the (TRAPOCC-2-ROUND) instantiation quotes the underlying
    Regime-A quantifier and discharges (a)/(b)/(c) by name; check the c_0
    margin row is typed as a numerical condition in the T-6 fence.

## SHAPE

One drafter + one adversarial checker per pipeline; TWO pipelines:
  P1 — the E5 statement: certificate + LEG 1 + LEG 2 + assembly, landing as
       a new Section in the MM lane home (the A6 fence's own file) or as a
       standalone lane artifact consumed by MM — drafter's call, checker
       verifies the wiring either way.
  P2 — the consumer re-wire + register flips: the Wald restatement at
       MM:2481/3216, the SIGMA0-EXC row flip to (TIER-A6-RATE), the
       GAP-LP-RECUR register update, the A6 fence text updates at
       lane-minmig:47 / :5692 and lane-lp LP.5 (fence comes OFF only at
       E5's external signature, never before).
Draft artifacts are WRITTEN TO FILES and returned as paths (the 64k
output-ceiling law). The external gate: E5's own WORKLIST item, one paste,
after both pipelines land and LEAD-VERIFY passes.

## WHY THIS CLOSES LEVEL 2 (with the numerical pass)

After E5: LP.5(c)'s upper unconditional at the min-object (TIER-A6-RATE)
reading; the obra's remaining conditionals are the standing parameter rows
only, which E6 (the numerical instantiation pass, running in parallel on
the closed condition inventory) closes mechanically. Then Level 2 = done:
the sharp theorems as typed, unconditional modulo declared geometry.
