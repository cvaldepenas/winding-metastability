========================================================================
E2-CONSOLIDATED — lane-prodexc-v2.md
THE OPERATIVE CONSOLIDATED STATEMENT OF THE E2 (PROD-EXCURSION) CAMPAIGN
========================================================================

STATUS (2026-07-27). This document is the SINGLE-VINTAGE statement of the
campaign's final chain, produced under AM-R5-28 (THE CONSOLIDATION PIVOT).
Every display is carried verbatim-or-cited from its adjudicated source
piece with a [PROV: piece ; verdict trail] tag; nothing is re-derived.
lane-prodexc-proofs-v1.md is FROZEN as the verbatim historical record
(its own head carries the freeze banner); ALL future edits happen HERE.

INTERNAL VERIFICATION TRAIL OF THIS DOCUMENT (before any external eye):
three section drafters over lead-closed source lists; fidelity checker
round 1 (one load-bearing drift - cured) + round 2 (12/12 load-bearing
displays verbatim against source bytes; 2 introduced drifts - cured in
this landing); completeness checker round 1 (8 findings - cured) +
round 2 (round-1 list closed, 'BOTH legs run through (RATIO-W)' closes;
3 introduced items - cured in this landing); one harmonizer (20 local
patches, all find-strings unique, no exponent/constant/verdict-tag
touched) + final patch verifier (the three cross-section decisions are
single; 4 wording repairs lead-executed with the enumeration-by-name
rule replacing every quantified-exhaustiveness claim).

CAMPAIGN STATE (2026-08-02): CLOSED SOUND. XE-11 authorized the
fence-preserving release; the PROD-EXCURSION + PROD-EXCURSION-COND
rows are DISCHARGED at their lane-lp home (prodexc-flip-manifest-v1);
B-DWELL and the E2-ASSEMBLY discharge stand at consumed strength.
The one retained condition on the package/full LP.5(c) upper is
GAP-LP-RECUR @ A6 (the release fence; E5's target). Sixteen external
verdicts across the arc; zero mathematical cores refuted.

RELEASE FENCE (historical wording, superseded by the state above; the
fence CLAUSE itself remains in force). This document AUTHORIZES NOTHING BY ITSELF: B-DWELL
remains DISCHARGED-PENDING, the lane-lp row flip remains BLOCKED, and
the adjudicator is XE-7 (QUEUE.md), which reviews THIS document end to
end with the frozen artifact as provenance appendix.

========================================================================

========================================================================
E2-CONSOLIDATED (lane-prodexc-v2) — SECTIONS 0-3
Single vintage. Every display is carried from its adjudicated source with a
[PROV: piece ; verdict trail] tag. Nothing is re-derived. Where a source
carries superseded layers, only the final operative form appears.
Charter: AM-R5-28 (THE CONSOLIDATION PIVOT), PX.
========================================================================

STANDING DECLARATION (once, for Sections 0-3).
NO INDEPENDENCE IS CLAIMED ANYWHERE IN THESE SECTIONS.
[PROV: PIECE E2-ASSEMBLY v2 ; internal checker SOUND, AM-R5-25 (eight findings
OPERATIVE)]


========================================================================
SECTION 0 — STANDING OBJECTS
========================================================================

0.1 AMBIENT, GENERATOR, FILTRATION

(OBJ-M) M := T^{2N}, n := 2N, E_eps in C^inf(M). X = (X_t)_{t>=0} the diffusion
with generator
     L u = (1/beta) Delta u - <grad E_eps, grad u>,
read off the adjoint of ROW SR-PE1.2: "L^* u = (1/beta) Delta u +
div(u grad E_eps)". (F_t)_{t>=0} := the usual augmentation of the natural
filtration of X (right-continuous, P-complete). X has continuous paths, so
hitting times of CLOSED sets are (F_t)-stopping times.
[PROV: LEMMA PE-TRAPOCC Section 0 (PE-DOORREACH Section 0, verbatim) ; carried
verbatim into PIECE E2-ASSEMBLY v2 objects block, checker SOUND / AM-R5-25]

STANDING SDE, verbatim: "dX_t = -grad E_eps(X_t) dt + sqrt(2/beta) dW_t on
M = T^{2N}, flagship k=1, N>=10, M2-PIN (lambda>kappa), eps in [0, eps_2)
fixed" (the kappa there is the STANDING COUPLING); "E_eps is smooth and
Lambda-periodic".
[PROV: CURE-XE4-2 v3 (PLATE-REG) objects block ; three adversarial rounds,
mathematics SUSTAINED, residuals disposed/TYPED in AM-R5-26(c)]

0.2 WEIGHTS, FORM, CAPACITY, REVERSIBILITY

(OBJ-FORM) mu(dx) := e^{-beta E_eps(x)} dx, w := (1/beta) e^{-beta E_eps},
     D(f) := int_M w |grad f|^2 dx,
     cap(Y,Y') := inf{ D(f) : f = 1 on Y, f = 0 on Y', f Lipschitz },
and the single reversibility input div(w grad u) = mu L u, from ROW SR-PE1.2:
"rho_beta(dx) = Z_beta^{-1} exp(-beta E_eps(x)) dx ... is the unique invariant
probability of L, and L is rho_beta-reversible". COND-free.
[PROV: LEMMA PE-TRAPOCC Section 0 ; verbatim]
NOTE ON VINTAGE: the operative capacity used from Section 2 onward is the
(WFF-1) variational capacity over the H^1/q.e. class; Section 2.6 proves the
two infima coincide, so no object is redefined.

0.3 SETS

(OBJ-SETS)  S := B^max_{delta/4}(g*);  S^+ := B^max_{delta/2}(g*), the OPEN
max-norm ball; dS^+ its boundary sphere (dS^+ inter S^+ = empty); g* in G_k.
[PROV: PIECE E2-ASSEMBLY v2 objects block ; checker SOUND / AM-R5-25]

(PLATE) THE KILLING PLATE. closure(S) = the CLOSED max-norm ball
B^max_{delta/4}(g*) = the product over i = 1..2N of the closed intervals
[g*_i - delta/4, g*_i + delta/4] in the standing chart; compact, being closed in
the compact M ("S = B_{delta/4}(g*) is a MAX-NORM ball (a cube, Lebesgue volume
(delta/2)^{2N})"). closure(S) IS the grounding set of every WFF display; the
landed OPEN S is not admissible in (WFF-1) and is replaced throughout. The
replacement is a.s. invisible to every consumer because H_S = H_{closure(S)}
a.s. from every start, by (PLATE-REG) (Section 2.4).
[PROV: CURE-XE4-2 v3 "(PLATE)" / the Section-4 preamble and (WFF-1) hypothesis
row replacements ; three adversarial rounds SUSTAINED, AM-R5-26(c)]

(R_0) VERBATIM: "let R_0 := {w_theta = k, / w_phi = 0, E_eps <= S_k + c_H}".
[PROV: lane-lp-product-saddle-v1.md:217-218, carried verbatim by LEMMA
PE-TRAPOCC Section 0 and by PIECE E2-ASSEMBLY v2 ; SOUND / AM-R5-25]

(STRAT) VERBATIM: "STRAT := (union over nonzero realizable j of
{w_theta=k, w_phi=j}) union ({w_theta=k} inter Delta_phi) - R3-STRAT's slicing
verbatim." TWO CLAUSES, BOTH LOAD-BEARING: (i) the second clause
{w_theta = k} inter Delta_phi puts the gate transit - where w_phi is undefined,
hence neither 0 nor nonzero - INSIDE STRAT, so the cover has no hole there;
(ii) the {w_theta = k} restriction is part of the landed definition and matters
in the direction OPPOSITE to enlargement: the numerator floor is a winding-k
statement, so enlarging across theta sectors would INVALIDATE the display being
consumed. The landed strengthening is full-vs-reachable STRAT ONLY, inside
{w_theta = k}.
[PROV: LEMMA PE-TRAPOCC Section 0 (declaration) + PIECE E2-ASSEMBLY v2 (A1)
"TWO CLAUSES v1 DROPPED, RESTORED HERE" ; SOUND / AM-R5-25]

(RHO) rho := 1/beta (PE-DOORREACH's scale choice).
[PROV: LEMMA PE-TRAPOCC Section 0 ; verbatim]

TRAP, TRAP_2^cl and D_2 are the TARGETS and are stated once, in Section 1.

0.4 ROUND OBJECTS AND SIGMA-FIELDS (exact stopping objects)

(OBJ-ROUND)
     theta^+(t) := inf{ s >= t : X_s not in S^+ };
     D(t)       := inf{ s >= theta^+(t) : X_s in S };
     L          := the first theta-label change after the round start;
     round start sigma_{i-1};  round terminus T_i := min(D(sigma_{i-1}), L_i);
     from the shifted origin  T := min(D(0), L);
     H_Y := inf{ t >= 0 : X_t in Y } for closed Y;  H_S := inf{ s >= 0 : X_s in S };
     tau_lev := inf{ s >= 0 : E_eps(X_s) >= S_k + c_H }.
SIGMA-FIELDS USED: F_{sigma_{i-1}}, F_t, F_{theta^+(0)}, F_{tau_lev}; and, only
inside (PLATE-REG), F_sigma with sigma := H_{closure(S)} together with the
canonical-space fields G_1, G_{0+}. THERE IS NO xi_j AND NO SUB-WINDOW FIELD:
no block decomposition is used anywhere.
[PROV: PIECE E2-ASSEMBLY v2 objects block ; SOUND / AM-R5-25]
[PROV (the F_sigma / G_{0+} row): CURE-XE4-2 v3 (PLATE-REG) "SIGMA-FIELDS USED,
EXHAUSTIVELY" + AM-R5-26(c)(v) ; SUSTAINED]
[TYPED -> S7: SIGMA-FIELD-BOOKKEEPING]

TERMINUS SEMANTICS, STATED ONCE: L is read at the EXIT reading of the label
change; the authority is MM's own consumption coherence (the round decomposition
with terminus L_i, and the consumption of PROD-EXCURSION at termini T' <= L),
and the reading is FORCED in-file. The general row R_0 = R_0^* remains typed and
is NOT consumed here.
[PROV: CURE-XE4-3 v3 / AM-R5-26(d)(i)-(iii) ; three adversarial rounds, the exit
reading SUSTAINED]

0.5 CONSTANTS, ALL BETA-FREE; THE beta_* RECONCILIATION; AND THE TWO ERR-CLASS
FREEZES

(CONST) G := sup_M |grad E_eps| < inf, V_M := Leb(M),
omega_{n-1} := Leb_{n-1}(unit ball in R^{n-1}), L_eps <= L + 8 eps.
A_tube, THE TUBE CEILING ON E_eps, DECLARED HERE BECAUSE TWO THRESHOLD ROWS READ IT: "A_tube := m_k + eps w_k + (25/128) L_eps delta^2" [PX:8365, PE-DOORREACH scale choice — the source vintage the TRAPOCC-4 checker's row (ii) quotes below]; its OPERATIVE vintage is DOORREACH-MAXFIX's recomputation at the collar quadratic, "= m_k + eps w_k + L_eps N delta^2 / 4 =: A_tube. (TUBE-LEVEL')" [PX:9785], and THAT is the reading wherever beta_*^{DR} is read. Beta-free in both vintages; no exponent depends on which is taken, only the threshold's size.
Standing thresholds: beta_* := max(16/delta, 24G/(3 c_H), 1 + (5G+2)/(3 c_H));
beta_*^{DR} := max(8/delta, (2+G)/(S_k + c_H - A_tube)) [per (BETA-STAR) below];
beta_plate := 2/c_plate; beta_S4 := max(2/c_plate, 8/delta);
beta_env := max(4G/c_0, 2/c_0);
beta_1 := max( beta_1^hist , beta_1^weak ), THE ENLARGED MAIN-LEG THRESHOLD
[XE-8 F1 residual 3]. TWO VINTAGES REACH THIS SYMBOL AND ONLY THE MAXIMUM IS
CLAIMED:
  beta_1^hist := the beta-free threshold at which the last line of the HISTORICAL
     (ENTRY) (Section 3.2) falls to 1/2 on dA_z. That line runs on C_H' and a
     ONE-eta margin [PE-TRAPOCC Section 5 (5c), landed at PX:9074].
  beta_1^weak := the beta-free threshold the LIVE weak main route needs, i.e. any
     beta-free value at or above which
        C_3^main * e^{6G} * beta^{2N+1} * exp( -beta ( 3 c_H - 2 eta ) )  <=  1/2 ,
     with C_3^main := C_H'' e^2 G^2 V_M / c(N,delta), C_H'' = C(n, e^{4G})^8, and
     the TWO-eta margin of Section 4.2(g)/(h.7). SUCH A VALUE EXISTS AND IS
     beta-FREE: C_3^main, G, c_H, eta and N are beta-free, and 3 c_H - 2 eta > 0
     is the err-class inequality L_eps N delta^2/4 < 3 c_H collected at (SML'),
     so the left side tends to 0 as beta grows.
THE ENLARGEMENT IS STATED, NOT ASSUMED: the live route runs the LARGER C_H'', the
main prefactor C_3^main and a two-eta margin, so beta_1^hist is NOT claimed to
serve it, and no domination between the two witnesses is asserted in either
direction. Enlarging a threshold only shrinks the range over which a row is
asserted: NO EXPONENT, NO PREFACTOR AND NO RATE MOVES.
  beta_2 := the beta-free threshold of the Regime-A
hinge (C0) below, and the threshold at which the last line of (ENTRY-W)
(Section 4.2(e)) falls to 1/2.
[PROV: LEMMA PE-TRAPOCC Section 0 (G, V_M, omega_{n-1}, L_eps, beta_*) ;
CURE-XE4-2 v3 (beta_plate, beta_S4) ; PIECE TRAPOCC-4 Section 3 (beta_env) ;
LEMMA PE-TRAPOCC Section 5 (5c) [PX:9073-9074] (beta_1) ; AM-R5-19(b) (beta_2) ;
all verbatim]

(BETA-STAR) THE SYMBOL beta_* DENOTES ONE SCALAR IN THIS DOCUMENT. Two landed
pieces write "beta_*" for two DIFFERENT beta-free numbers, and both are read
inside Sections 1-3. Reconciled once, BY NAMING, not by arithmetic - no
threshold value moves:
  OPERATIVE (the unqualified symbol beta_* here):
     beta_* := max(16/delta, 24G/(3 c_H), 1 + (5G+2)/(3 c_H)),
  the FIRST TWO legs LEMMA PE-TRAPOCC (G4) [PX:9010], the THIRD the
  ramp-admissibility leg collected at (RAMP-ADM) just below. The (G4) legs are
  what (G4') leans on in Section 1.1 - "The LANDED threshold beta_* :=
  max(16/delta, 24G/(3c_H)) [PX:9010] already forces beta >= 24G/(3 c_H)" - and
  the ramp-admissibility clause of (CAP-UP-GATE) in Section 3.1 reads the
  ENLARGED symbol, i.e. all three legs.
  (RAMP-ADM) THE THIRD LEG, DERIVED HERE AND COLLECTED ONCE. (CAP-UP-GATE) of
  Section 3.1 needs the inclusion A_z subset {E_eps < a}. Its own printed rows
  give
     a  =  theta - 1/beta  >=  Theta(z,TRAP) - 2/beta
        >=  S_k + 4 c_H - (4G+2)/beta        [(GATE-LOWER), with the consumed
                                              non-strict chain Gate >= S_k+4c_H],
     E_eps(x)  <=  E_eps(z) + G/beta  <=  S_k + c_H + G/beta   for x in A_z
                                             [z in R_0, A_z = closed B_rho(z),
                                              rho = 1/beta],
  so the inclusion holds IF AND ONLY IF (5G+2)/beta < 3 c_H, i.e. if and only if
     beta > (5G+2)/(3 c_H) .
  THE (G4) LEGS DO NOT IMPLY THIS for arbitrary positive G - max(16/delta,
  24G/(3 c_H)) forces only 3 beta c_H >= 24G, which does not dominate 5G+2 unless
  a relation among the parameters is assumed, and none is - so the entry is
  COLLECTED, not inferred. STRICTNESS, HANDLED CONSERVATIVELY: the leg is printed
  as 1 + (5G+2)/(3 c_H), strictly above the value the inclusion needs, so the
  non-strict standing hypothesis beta >= beta_* delivers the STRICT inequality
  3 beta c_H > 5G + 2. Any beta-free number strictly exceeding (5G+2)/(3 c_H)
  serves; the +1 is a choice, not a computed constant, and choosing it larger only
  shrinks the asserted range further. NO EXPONENT, NO PREFACTOR AND NO ASYMPTOTIC
  RATE MOVES: enlarging a threshold only shrinks the range over which a row is
  asserted.
  [PROV: LEMMA PE-TRAPOCC Section 5 (5a) (CAP-UP-GATE) together with (GATE-LOWER),
  both carried at Section 3.1 at their landed values ; the PE-TRAPOCC checker's
  own reading that this step is met "by a beta-free threshold" rather than by the
  displayed beta_* ; entry collected per XE-7 F5]
  SOURCE-VINTAGE ALIAS, RENAMED SO THE SYMBOL STAYS SINGLE-VALUED:
  PE-DOORREACH's own threshold, landed verbatim as "Threshold beta_* :=
  max( 16/delta , 2/(S_k + c_H - A_tube) )" [PX:8367], is carried here as
  beta_*^{DR}. Its OPERATIVE vintage is DOORREACH-MAXFIX's replacement of the
  Step-4 block, which lands "absorbed by beta_* := max(8/delta,
  (2+G)/(S_k + c_H - A_tube))" [PX:9814]; THAT value is beta_*^{DR} for this
  document, and the PE-DOORREACH form above is its superseded predecessor,
  recorded so no reader re-derives it. Section 3.4's SINGLE VINTAGE clause is
  what performs the supersession.
  SITE MAP, so no consumer is left pointing at the collision: Sections 1.1 (G4')
  and 4.2(c) (the near-S separation) read beta_* at its (G4) legs; Section 3.1's
  ramp-admissibility clause reads beta_* AT ALL THREE LEGS, the third - (RAMP-ADM)
  above - being read at that one site and nowhere else; the tube rows of Sections
  3.3 and 3.4 are PE-DOORREACH/MAXFIX rows and read beta_*^{DR}, INCLUDING Section
  3.3's (CAP-LOW*-H1), which PRINTS the unqualified "beta >= beta_*" for the
  Section-3.4 tube objects and is READ at max(beta_*, beta_*^{DR}) by the clause
  immediately below - the conservative reading, and the reason that printing is
  not a second scheme. Every "for
  beta >= beta_*" row in this document may be read at max(beta_*, beta_*^{DR}),
  which is conservative at every site: enlarging a threshold only shrinks the
  range over which the row is asserted, and moves no exponent and no prefactor.
  NOT CLAIMED: that either threshold dominates the other. Both are beta-free.
  The single collected list is Section 7.2's, not this one.
[PROV: LEMMA PE-TRAPOCC (G4) [PX:9010] and PIECE TRAP-LICENSE Section 4 (G4')
[PX:13473] for the operative symbol ; LEMMA PE-DOORREACH threshold row [PX:8367]
and PIECE DOORREACH-MAXFIX [PX:9814] for the alias and its vintage ; the
collision itself recorded by the TRAPOCC-4 internal checker, verbatim: "beta_*
defined at PX:8367: 'Threshold beta_* := max( 16/delta , 2/(S_k + c_H -
A_tube) )'. The draft's own Section 3 row (ii) writes 'for beta >= beta_*' while
Section 4 lists only max(beta_2, beta_env)." [PX:13131] ; NAMING ONLY]
[TYPED -> S7: BETA-STAR-TWO-VINTAGES -> T-7]

(ETA) eta := L_eps N delta^2 / 8. THIS IS THE CURRENT VALUE, frozen at err class
and NEVER sent to 0. LICENSE: the freeze value was always arbitrary - the landed
text says "say" - and any fixed positive err-class value serves (T3)/Ell_max
identically.
[PROV: AM-R5-27(a) re-freeze, EXECUTED IN PLACE at both operative freeze
declarations and the CURE-XE4-2 ledger row ; XE-5 cure package]

(C0) c_0 := L_eps N delta^2 / 4, the Regime-A hinge constant:
     m_k + eps w_k + (1/2) L_eps N delta^2 + 1/beta <= S_k + c_H,
holding for beta >= beta_2.
[PROV: AM-R5-19(b), carried as absorption (vi) of PIECE E2-ASSEMBLY v2 ; SOUND]

(ENTRY-MARGIN) EFFECT OF THE RE-FREEZE: the general-z Regime-A margin reads
     c_0 - eta = L_eps N delta^2 / 8 > 0.
STATED HONESTLY AT BOTH STRENGTHS: (ENTRY-MARGIN) was REAL at general z and
VACUOUS at the consumed z - at the collar starts the schedule consumes,
Theta(z,S) <= m_k + err sits the FULL doorway gap (~1.024350) below theta_2, not
c_0-deep.
[PROV: AM-R5-27(a) ; XE-5 cure package]

0.6 THE PARTIAL-LABEL CONVENTION, AND BOTH NULL TRACES

(LABEL-PARTIAL) w_phi is defined only off Delta_phi and is integer-valued and
locally constant off Delta_phi; hence {w_phi = 0} is OPEN and a continuous curve
joining {w_phi = 0} to {w_phi != 0} meets Delta_phi. w_theta is defined off
Delta_theta. Delta_phi is a finite union of smooth codimension-1 tori, hence
Lebesgue-null, hence rho_beta-null; Delta_theta is likewise Lebesgue-null.
[PROV: LEMMA PE-TRAPOCC (G2) + PIECE R3-STRAT "NULL-SET CAVEATS" (a) ; carried
by PIECE TRAPOCC-3 (T3.2)]

(NULL-TRACE) THE ONE MECHANISM, TWO TRACES. VERBATIM: "the nondegenerate
(uniformly elliptic, constant diffusion matrix (2/beta) I) diffusion of the
standing setting has transition densities w.r.t. Lebesgue for every t > 0, so by
Tonelli E_x[ int_0^T 1_{Delta_phi}(X_s) ds ] = int_0^T P_x(X_s in Delta_phi) ds
= 0 for every x, T: Delta_phi is a.s. never occupied for positive time."
NAMED IMPORT, non-reproduced, hypotheses checked: existence of a Lebesgue
transition density for a uniformly elliptic diffusion with smooth bounded
coefficients on a compact manifold (Friedman, Stochastic Differential Equations
and Applications, Ch. 6).
  HYPOTHESIS ROWS: M compact and smooth - HOLDS [lane-minmig:1345]; diffusion
  coefficient constant and nondegenerate, = (2/beta) I - HOLDS [same line];
  drift smooth, grad E_eps with E_eps smooth - HOLDS [same].
"The SAME remark, and ONLY this remark, is what covers Delta_theta: STRAT is
defined inside {w_theta = k}, which is defined off Delta_theta, and Delta_theta
is likewise Lebesgue-null and a.s. unoccupied for positive time."
STATUS, SINGLE VINTAGE: the landed marking "used ONLY as a remark" is
SUPERSEDED. The row is LOAD-BEARING and CONSUMED, by (T3-ID) (Section 1.2).
[PROV: PIECE R3-STRAT "NULL-SET CAVEATS" (b) ; status change recorded by PIECE
TRAPOCC-3 Section 2, checker findings adopted in AM-R5-24 (all six OPERATIVE)]

(NULL-STMT) THE MECHANISM PLACED INSIDE A STATEMENT, not beside it - AM-R4-1
supplies it ("P(X_u in Delta_theta) = integral over a Lebesgue-NULL set of an
L^1 density = 0 for every u > 0, and by Fubini
E[ integral 1_{Delta_theta}(X_s) ds ] = 0"); AM-R4-2 places the SAME mechanism
on Delta_phi INSIDE a statement: the outside-R_0 occupation is contained in the
B_k occupation "UP TO the Delta_phi trace {w_phi undefined}, which is occupied
for ZERO TIME almost surely ... All downstream consumers of LEM-LABEL use
occupation EXPECTATIONS, for which a zero-measure time set is invisible."
[PROV: AM-R4-1 and AM-R4-2 (ROUND-4 LEAD AMENDMENTS) ; each cures a named
round-3 checker finding BY AMENDMENT, OPERATIVE over the round-3 body]

(PE3p.3) THE THETA-LABEL TRACE, VERBATIM: "up to a set of times of ZERO
Lebesgue measure a.s. (the Delta_theta trace), every s in [0, T) with X_s not in
R_0 satisfies tau_lev <= s", proof cases (a)-(c). Landed with "Let x in S"; the
theta-label argument of its proof uses only s < T' <= L, the openness of the
theta-sectors, AND THE ROUND-START PROPERTY w_theta = k AT THE START. THE EARLIER
PHRASING "no property of the start" IS WITHDRAWN [AM-R5-25(c); registered at S7.1
T-11, which carries the withdrawal]. The operative cover consumes the corrected
hypothesis, and consumes it at every start Section 5 rides; nothing that reads
this row read the withdrawn wording.
[PROV: Lemma PE3p.3, R4c-PE3p body (supersedes the round-3 R3-PE3p body in its
entirety) ; scope reading registered by PIECE E2-ASSEMBLY v2 as COV-SCOPE]
[TYPED -> S7: COV-SCOPE]

DIRECTION NOTE, TYPED: on the landed STRAT the Delta_phi trace is ALSO covered
SET-THEORETICALLY (clause (ii) of STRAT), so the Delta_phi null row is a SECOND,
independent cover of the same times, not a sole load-bearer.
[PROV: PIECE E2-ASSEMBLY v2 (A1) proof step (4) ; SOUND]

0.7 THE FLAGSHIP SCALARS AND THE TWO LEG MARGINS

(FLAG) FLAGSHIP CHECK AT THE CELL (N, lambda) = (10, 1+): kappa = 1, N = 10,
lambda -> 1 FROM ABOVE, eps = 0.05, delta -> 0. THE SHORTHAND "lambda = kappa = 1"
IS THE BOUNDARY OF THE STANDING REGIME, NOT A POINT OF IT: M2-PIN is
lambda > kappa (Section 0.1), so the honest name of this cell is (10, 1+) — the
same cell the ADJ-2 sample below and the budget of Section 5.3 already print —
and every scalar listed here is the lambda -> 1+ reading, at which the
lambda-bearing quantities are continuous. Where Sections 3.1 (GATE-LOWER) and 5.1
(COV) say the STRICT middle clause m_k + 2 lambda > m_k + 2 kappa "fails at
lambda = kappa", they name that BOUNDARY and not a standing cell, and they consume
the non-strict chain regardless — which is conservative at every lambda > kappa
[XE-7 nonblocking residual 4].
All recomputed in the source:
SITES ELSEWHERE THAT EVALUATE AT lambda = kappa READ AS THE (10, 1+) LIMIT:
every displayed scalar is an elementary closed form, continuous in lambda, so
the boundary evaluation and the limit reading agree; no site's justification
changes value. (No totality claim; resolution is by this note.)
     g(10)      = 1.909830 ;   m_k = 1.909830 ;   m_1(lambda) = 1.909830 ;
     S_1 = S_k  = 2 + 8(1 - cos(pi/8)) = 2.608964 ;
     c_H        = (m_k + 2 - S_k)/4 = 0.325217 ,   c_H/2 = 0.162608 ;
     S_k + c_H - m_k = 1.024350   (the doorway gap Delta_door) ;
     m_1 - c_H/2 = g(10)(1 - 1/8) + (S_k - 2)/8 = 1.671101 + 0.076121
                 = 1.747222 > 0 ;
     assembly margin  min(S_k + c_H - m_k, m_1) - c_H/2
                 = 1.024350 - 0.162608 = 0.861742 ;
     err = eps g(10) = 0.095492 << 0.861742.
[PROV: PIECE R3-STRAT Section 7 "FLAGSHIP CHECK" ; recomputed to 10 dp by the
round-3 checker (g(10)=1.9098300563, S_k=2.6089637399, c_H=0.3252165791,
c_H/2=0.1626082895, Delta_door=1.0243502627, m_1-c_H/2=1.7472217667, assembly
margin 0.8617419732, err=0.0954915028)]

TWO LEGS, TWO MARGIN SCALARS, TWO TAGS - STATED ONCE. The budget has two legs
and they carry two DIFFERENT margin scalars. Under this document's single-vintage
rule one tag denotes one scalar, so the two are tagged separately here and are
merged nowhere; Section 5.3's budget table uses the SAME two tags at the SAME two
values, and the two families are not interchangeable.

(MRG) THE TRAP_2 (COMPANION / DOORWAY) LEG MARGIN, IN CLOSED FORM:
     (MRG) := (S_k + c_H - m_k) - c_H/2 = (7/8)( S_k - m_k ) + kappa/4
            = 0.861742    at the flagship cell.
(MRG) IS LAMBDA-FREE AND INCREASING IN N, so N = 10 is the worst TRAP_2 cell.
THE LAMBDA-FREE / INCREASING-IN-N SENTENCE BELONGS TO THIS SCALAR AND TO NO
OTHER; it is false of the ADJ-2 identity below, which is lambda-bearing.
[PROV: the landed closed form and its worst-cell reading, PX:7726-7733, carried
in the MARGIN column of the (A3) budget table of PIECE E2-ASSEMBLY v2 ; DAG
audit row "(MRG) closed form (S_k + c_H - m_k) - c_H/2 = (7/8)(S_k - m_k) +
kappa/4 | anchor: PX:7726 — verified verbatim, exact line | grade: landed;
verified symbolically by the R4c checker at PX:8106 | load-bearing: True |
issue: NONE"]

(ADJ-2) THE TRAP (STRATUM) LEG MARGIN IDENTITY, VERBATIM:
     m_1 - c_H/2 = lambda g(N) - (1/8)( g(N) + 2 - S_k )
                 = g(N)( lambda - 1/8 ) + ( S_k - 2 )/8 ,
with "Both summands are STRICTLY POSITIVE for every N>=10, lambda>=1".
VERIFIED SAMPLE MARGINS, ON THE TRAP LEG ONLY, at the four cells
(10,1+)/(18,1.05)/(46,4)/(200,1.0001):
     1.7472217667 / 1.0425473031 / 1.6742434887 / 0.0894771449 ,
of which (200, 1.0001) is the worst and is the cell (SML') is stated against.
(ADJ-2) IS LAMBDA-BEARING - it increases in lambda - so NO lambda-free
worst-cell reading is available for it; the worst cell is read off the verified
sample, not off a monotonicity claim.
[PROV: ADJ-2 (lane-prodexc-design-v1.md:730-731), carried by PIECE E2-ASSEMBLY
v2 (A3) margin table ; checker-verified and independently recomputed
(g(10)(1-1/8) + (S_k-2)/8 = 1.74722125 vs 1.7472217667), LOAD-BEARING]

THE TWO-LEG CANCELLATION IS AN IDENTITY, NOT A NUMERICAL COINCIDENCE. IT IS
STATED AT ZERO LOSS, WHERE IT IS EXACT, AND THE LOSSES ARE AGGREGATED BESIDE IT,
NOT ABSORBED INTO ONE SYMBOL:
     A := S_k + c_H - m_k ,      B := m_k + m_1 - S_k - c_H ,
     A + B = m_1                                         (EXACT IDENTITY),
and, with err_tot := err_A + err_B (BOTH of err class; err_A is the TRAP_2 leg's
loss, err_B the TRAP leg's), the delivered two-leg exponent is
     (A - err_A) + (B - err_B) = m_1 - err_tot .
THE SYMBOL err IS NOT REBOUND FROM LINE TO LINE. Two losses are paid on the two
legs and BOTH are carried; no single err is asked to cover two payments, and the
final smallness condition of Section 5.3 reads err_tot.
[PROV: PIECE E2-ASSEMBLY v2 (A3), the budget table's cancellation line, restated
at zero loss with the two losses named separately ; SOUND / AM-R5-25 ; XE-7 F4]

(SML') THE TIGHTEST-CELL NUMERICAL CONDITION, at the sample point with margin
0.0894771449:
     eps w_k + O(N L_eps delta^2) + s + s' < 0.0894771449 .
A NUMERICAL condition on (eps, delta, s, s'), not a proof gap; at the flagship
cell the same condition clears against 0.861742 with room. NO Gamma(h) TERM: the
one-excursion reading incurs no 1/p_sub, so the O(h) = O(delta) loss is not
incurred at all. Operative anchors: the N-free sufficient condition
eps < kappa/(4 g(10)) = 0.1309017 and the design scale eps = 0.05. NUMERAL
CORRECTED: 1/(4 g(10)) = 0.130901699... at kappa = 1; the inherited 0.130906 is a
stale transcription and is not carried. The operative eps = 0.05 sits safely below
either numeral, and the simpler eps < 1/8 condition below both, so nothing else
moves. [XE-7 MINOR]
[PROV: PIECE E2-ASSEMBLY v2 (A3) + typed register item (3) ; SOUND / AM-R5-25(g)]
[TYPED -> S7: (SML')]


========================================================================
SECTION 1 — TARGETS
========================================================================

1.1 THE MAIN TARGET: TRAP, DECLARED BY SANDWICH, REALIZED BY MOLLIFIED DISTANCE

(TRAP-DECL) THE DECLARATION, VERBATIM (the whole line, construction clause
included): "TRAP := a set with STRAT subset {dist(.,STRAT) <= 2rho} subset TRAP
subset {dist(.,STRAT) <= 4rho}, with dTRAP a smooth compact hypersurface.
CONSTRUCTION: d(x) := dist(x,STRAT) is 1-Lipschitz; take f_s smooth with
|f_s - d| <= rho/8 (NAMED: smooth approximation of Lipschitz functions on a
compact manifold, Whitney; hypothesis rows: M compact smooth, d continuous
- met); by SARD'S THEOREM (row: f_s in C^inf(M), M compact - met) pick a regular
value r in [2rho+rho/8, 3rho] and set TRAP := {f_s <= r}."
TRAP IS DECLARED BY A SANDWICH: the declaration asserts the EXISTENCE of a set
with stated inclusions and a smooth boundary; any realization serves.
[PROV: LEMMA PE-TRAPOCC Section 0 ; quoted in full (not elided) by PIECE
TRAP-LICENSE Section 1]

(TRAP-EXIST) THE REALIZATION. Let M = T^{2N}, n := 2N, with its flat Riemannian
metric and geodesic distance dist. Let STRAT subset M be any NONEMPTY subset -
NO regularity of STRAT is assumed - and let rho > 0. Then there exist
f_s in C^inf(M) and r in R with TRAP := {f_s <= r} satisfying
  (S1)  STRAT subset {x : dist(x,STRAT) <= 2rho} subset TRAP ;
  (S2)  TRAP subset {x : dist(x,STRAT) <= (25/8) rho}
                   subset {x : dist(x,STRAT) <= 4rho} ;
  (S3)  TRAP is a compact smooth n-manifold with boundary; its topological
        boundary is dTRAP = f_s^{-1}(r) EXACTLY, a compact smoothly embedded
        two-sided hypersurface carrying the induced surface measure dS and the
        unit normal field n = -grad f_s / |grad f_s| pointing INTO TRAP ;
  (S4)  dTRAP is NONEMPTY, provided TRAP is a proper nonempty subset of M.
NAMED ROWS, HYPOTHESES CHECKED IN PLACE:
  ROW 1 (distance function): d 1-Lipschitz by the triangle inequality under the
  infimum. NO NAMED THEOREM NEEDED; LOAD-BEARING: NO REGULARITY OF STRAT IS
  USED - the mollified distance function launders an arbitrary set.
  ROW 2 (smoothing): WHITNEY APPROXIMATION THEOREM (Lee, Introduction to Smooth
  Manifolds, 2nd ed., Thm 6.21; equivalently Hirsch, Differential Topology,
  Ch. 2). Rows: (i) M a smooth manifold - MET; (ii) u := d continuous - MET;
  (iii) eta := rho/8 continuous and strictly positive - MET (rho = 1/beta > 0).
  NOT CONSUMED: compactness of M; Lipschitz-ness of d beyond continuity.
  ROW 3 (Sard): SARD'S THEOREM (Lee ISM 2nd ed., Thm 6.10; Milnor, Topology from
  the Differentiable Viewpoint, Ch. 3). Rows: (i) f_s of class C^k with
  k >= n - MET; (ii) M second-countable smooth n-manifold - MET. The interval
  [2rho + rho/8, 3rho] = [17rho/8, 24rho/8] has length (7/8) rho > 0, hence
  contains a regular value r. NO THRESHOLD ON beta IS USED AT THIS ROW.
  ROW 4 (the sandwich, arithmetic displayed): (S1) d(x) <= 2rho implies
  f_s(x) <= d(x) + rho/8 <= 2rho + rho/8 <= r; (S2) x in TRAP implies
  d(x) <= f_s(x) + rho/8 <= 3rho + rho/8 = (25/8) rho = 3.125 rho <= 4rho.
  SLACK: (7/8) rho below the declared 4rho.
  ROW 5 (smooth boundary): REGULAR LEVEL SET THEOREM (Lee ISM 2nd ed., Cor 5.14)
  with the submersion local normal form for the regular sublevel set. Rows:
  (i) f_s smooth - MET; (ii) r regular - MET; (iii) M smooth without boundary -
  MET.
ATTAINMENT MICRO-ROW, RESOLVED BY PINNING THE CONSTRUCTION: (S2)'s (25/8) rho
means that for any eps <= (7/8) rho there is y in STRAT with
dist(x,y) <= (25/8) rho + eps <= 4rho directly from the definition of the
infimum - no attainment, hence no closedness of STRAT, is needed.
[PROV: PIECE TRAP-LICENSE (TRAPOCC-5), LEMMA TRAP-EXIST ; checker SOUND, three
MEDIUMs adopted in AM-R5-26(b)]
[TYPED -> S7: TRAP-EXIST-STRAT-NONEMPTY]
[TYPED -> S7: TRAP-EXIST-EDITION-SPOTCHECK]

(G4') SEPARATION AT WIDTH 4rho, STATED AT THE PROVED AND CONSUMED WIDTH ONLY.
For every z in R_0,
     dist(z, TRAP) > 4 rho .
PROOF (verbatim the second sentence of the landed (G4) with 2rho -> 4rho). Let y
satisfy dist(y, TRAP) <= 4rho. By (S2), TRAP subset {dist(.,STRAT) <= 4rho}, so
dist(y, STRAT) <= 8rho. Suppose y in R_0. Then w_phi(y) = 0, since "R_0 subset
{w_phi = 0} by [lane-lp:217-218]". (G3)'s collar transfer run at radius 8rho -
a point of STRAT within 8rho, a minimizing geodesic to it of length < inj(M),
which meets Delta_phi at some p by (G2), E_eps(p) >= Gate by (G1), and
|grad E_eps| <= G - gives E_eps(y) >= Gate - 8 G/beta. By (G1)'s NON-STRICT
chain, verbatim, "The chain used is m_k + 2 lambda >= m_k + 2 kappa >=
S_k + 4 c_H, and the cover needs only Gate >= S_k + 4 c_H > S_k + c_H - a margin
of 3 c_H",
     E_eps(y) >= S_k + 4 c_H - 8 G/beta > S_k + c_H
whenever 8 G/beta < 3 c_H. The LANDED threshold beta_* := max(16/delta,
24G/(3 c_H)) already forces beta >= 24 G/(3 c_H), which covers this width. This
contradicts "E_eps <= S_k + c_H" in the definition of R_0, so y is not in R_0.
COST LEDGER: NO new constant, NO new threshold on beta beyond (G3)'s own
beta-free injectivity clause read at width 8rho, i.e. 8/beta < inj(M) -
beta-free, inj(T^{2N}) a fixed positive number independent of beta. Nothing
enters any exponent: (G4') is a separation row, consumed only as a hypothesis of
the Harnack ball and of the disjointness of A_y from TRAP.
SINGLE VINTAGE: the generalization clause "dist(z, TRAP) > k rho for every
integer k <= 20" is NOT carried. AM-R5-26(b)(i) retypes it to the proved range,
and the load-bearing case is k = 4, unconditional at the landed threshold. The
landed (G4) width of 2rho is SUPERSEDED for this consumption: the Harnack step
needs B_{2rho}(y) subset M \ (TRAP u S) for every y in B_{2rho}(z), i.e.
dist(z,TRAP) >= 4rho, which (G4) alone did not supply.
[PROV: PIECE TRAP-LICENSE Section 4 (G4') ; checker SOUND, MEDIUM-1 and MEDIUM-2
disposed by the k = 4 retype in AM-R5-26(b)(i)]

STRUCTURAL NOTE, WHY THE MAIN TARGET IS NOT THE COMPANION'S DEFECT CLASS: TRAP
is declared BY A SANDWICH and LEMMA TRAP-EXIST realizes it; TRAP_2^cl is
declared BY A FORMULA, so there is no freedom and no construction can smooth it
- hence the envelope of Section 1.3. The STRUCK remedial aside "the identical
envelope device applies [to the MAIN target] with Door' at the gate level" is
STRUCTURALLY FALSE (TRAP contains stratum floor points below any usable energy
level - no superlevel set contains it) and is not carried.
[PROV: PIECE TRAP-LICENSE Section 3 CONTRAST + AM-R5-26(a)(i) STRIKE ; SOUND]

1.2 THE COMPANION TARGET: TRAP_2^cl

(TRAP2CL) DEFINITION. TRAP_2^cl := {E_eps >= theta_2} inter
closure({w_phi = 0}), with theta_2 a Sard-regular value in
[S_k + c_H - 1/beta, S_k + c_H], strengthened as in (T3.3). All other objects
are PE-TRAPOCC Section 0 verbatim.
SINGLE VINTAGE: the landed TRAP_2 := { E_eps >= theta_2, w_phi = 0 } is NOT
closed (XE-3 finding 2) and is superseded as the target by TRAP_2^cl. TRAP_2
survives only as the object of the display-value identity (T3-ID).
[PROV: PIECE TRAPOCC-3 Section 1 ; cures XE-3 finding 2, checker findings adopted
in AM-R5-24 (all six OPERATIVE)]

(T3.1) CLOSED AND COMPACT. {E_eps >= theta_2} is closed (E_eps continuous);
closure({w_phi = 0}) is closed by definition; the intersection of two closed sets
is closed, and a closed subset of the compact M = T^{2N} is compact. No
regularity of any kind is asserted.
[PROV: PIECE TRAPOCC-3 (T3.1) ; AM-R5-24]

(T3.2) CONSERVATIVE COVER. TRAP_2 subset TRAP_2^cl, and
closure({w_phi = 0}) \ {w_phi = 0} subset Delta_phi.
PROOF. The inclusion is immediate. For the second claim: by (G2) verbatim,
"w_phi is integer-valued and locally constant off Delta_phi". Hence
{w_phi = 0} is OPEN in M. Let y in closure({w_phi = 0}) with y not in Delta_phi;
local constancy at y gives a neighbourhood V off Delta_phi on which w_phi is
constant; V meets {w_phi = 0}, so that constant is 0.
CONSEQUENCE (COVER DIRECTION). 1_{TRAP_2} <= 1_{TRAP_2^cl} pointwise off
Delta_phi, so every UPPER bound proved for the ^cl occupation is an upper bound
for the TRAP_2 occupation, and wherever the schedule uses the companion set as a
COVER the inclusion keeps the direction.
[PROV: PIECE TRAPOCC-3 (T3.2) ; AM-R5-24]

(T3-ID) DISPLAY-VALUE IDENTITY. For every z in M,
     E_z[ int_0^{H_S} 1_{TRAP_2^cl}(X_s) ds ]
        = E_z[ int_0^{H_S} 1_{TRAP_2}(X_s) ds ] = v_2(z),
and a fortiori
     E_z[ int_0^{H_S ^ T} 1_{TRAP_2^cl} ds ] = E_z[ int_0^{H_S ^ T} 1_{TRAP_2} ds ].
PROOF. By (T3.2), TRAP_2^cl \ TRAP_2 subset Delta_phi inter {E_eps >= theta_2}
subset Delta_phi. Apply (NULL-TRACE) (Section 0.6) with its NAMED IMPORT and its
three hypothesis rows checked in place. Since E_z[H_S] < infinity by positive
Harris recurrence, Tonelli on [0, infinity) gives
E_z[ int_0^{H_S} 1_{Delta_phi} ds ] = 0. The stopped version follows from
H_S ^ T <= H_S pathwise.
CONSEQUENCE. v_2 is literally the SAME function under either target, and
L v_2 = -1_{TRAP_2^cl} = -1_{TRAP_2} is the same element of L^p. NO EXPONENT
MOVES; the row check "1.024350 - 0.162608 = 0.861742 > 0" is untouched.
[PROV: PIECE TRAPOCC-3 (T3-ID) ; AM-R5-24; consumes the (NULL-TRACE) row, whose
"ONLY as a remark" marking is thereby superseded]

BOUNDARY STRENGTH, AT EXACTLY WHAT IS PROVED. (T3.3) strengthens the Sard device
so that theta_2 is simultaneously regular for E_eps on M and for each
restriction E_eps|_{B_i}, B_i := {d_i = pi} the i-th bond torus, i = 1..N
(SARD applied N + 1 times excludes a finite union of Lebesgue-null subsets of
the interval). (T3.4)-(T3.5) then give: TRAP_2^cl is a COMPACT set whose
boundary is PIECEWISE SMOOTH - finitely many smooth faces meeting along sets of
Hausdorff dimension <= n - 2 - and which is locally Lipschitz at every one-bond
and every level-face point. A GLOBAL Lipschitz certificate (uniform interior
cone at every boundary point, including multi-bond corners) is NOT claimed.
This is why the WEAK route of Section 2 is executed: it needs none of
(T3.4)-(T3.5).
[PROV: PIECE TRAPOCC-3 (T3.3)-(T3.5) ; AM-R5-24]
[TYPED -> S7: (G3-CORNER)]

1.3 THE SMOOTH ENVELOPE: D_2

(T4.1) DEFINITION. D_2 := { E_eps >= theta_2 }, with theta_2 the value already
fixed for TRAP_2, drawn from [S_k + c_H - 1/beta, S_k + c_H] and Sard-regular
for E_eps on M by (T3.3).
KEY OBSERVATION (this is the whole cure): PE-DOORREACH (1a) constructs its own
target by exactly this recipe - "pick a regular value theta in
[S_k + c_H - 1/beta, S_k + c_H] and set Door' := { E_eps >= theta }" - so
     D_2 = Door'|_{theta = theta_2}   LITERALLY.
PE-DOORREACH Sections 2 and 5 are therefore INSTANTIATED at D_2, not re-proved
by analogy; every hypothesis row of those sections was checked in place for an
arbitrary admissible theta, and theta_2 is admissible. The repair costs no
exponent and no constant.
[PROV: PIECE TRAPOCC-4 (T4.1) ; cures XE-4 finding 1, narrow-brief checker
SOUND, adopted in AM-R5-26(a)]

(T4.2) SMOOTH COMPACT BOUNDARY. D_2 is compact and
boundary(D_2) = { E_eps = theta_2 } is a smooth compact embedded hypersurface
of M.
NAMED: REGULAR VALUE / PREIMAGE THEOREM (Guillemin-Pollack, Differential
Topology, Ch. 1 Sec. 4; equivalently Milnor, Topology from the Differentiable
Viewpoint, Sec. 1).
  HYPOTHESIS ROWS: (i) E_eps : M -> R smooth - HOLDS, E_eps in C^inf(M);
  (ii) M a compact smooth manifold without boundary - HOLDS, M = T^{2N};
  (iii) theta_2 a regular value of E_eps - HOLDS by (T3.3).
Boundary identification, two inclusions: (a) boundary(D_2) subset
{E_eps = theta_2}, since {E_eps > theta_2} is open and contained in D_2, hence
in int(D_2); (b) {E_eps = theta_2} subset boundary(D_2), since
grad E_eps(x) =/= 0 at every such x.
CONSEQUENCE (the row TRAP_2^cl failed and D_2 meets): every boundary point of
D_2 satisfies the exterior sphere condition, hence is regular for the Dirichlet
problem; Green's second identity applies on M \ (A_z u S u D_2) with a genuine
surface measure on boundary(D_2); and the inward normal derivative at
boundary(D_2) exists.
[PROV: PIECE TRAPOCC-4 (T4.2) ; SOUND / AM-R5-26(a)]

(T4.3) ENVELOPE MONOTONICITY. Y := TRAP_2^cl subset D_2, and for every start y
and every path,
     H_{D_2} <= H_Y      pathwise,                                 (ENV-PATH)
hence { H_Y < H_S } subset { H_{D_2} < H_S } and
     P_y( H_Y < H_S ) <= P_y( H_{D_2} < H_S )   for every y.        (ENV-MON)
PROOF. CONTAINMENT: Y subset {E_eps >= theta_2} = D_2 by the target's LEVEL
CLAUSE alone; no property of the label factor closure({w_phi = 0}) is used, and
no regularity of Y is asserted or needed. (ENV-PATH): for each fixed path,
{ t >= 0 : X_t in Y } subset { t >= 0 : X_t in D_2 }, and the infimum over a
superset is not larger. Set-theoretic; holds for every path with no exception
set; uses no continuity, no Markov property and NO INDEPENDENCE.
MEASURABILITY OF BOTH SIDES: H_Y is an (F_t)-stopping time by row MEAS.B, whose
hypothesis row reads "hitting time of a CLOSED set by a continuous adapted
process" and is met for Y by (T3.1); the SAME row is met for D_2, closed by
continuity of E_eps (T4.2), and for S under the landed plate convention.
DIRECTION CHECK. (ENV-MON) points the conservative way: the quantity required to
be <= 1/2 is bounded ABOVE by the envelope quantity.
[PROV: PIECE TRAPOCC-4 (T4.3) ; SOUND / AM-R5-26(a)]

STOPPING OBJECTS OF THIS SECTION, EXACT:
     H_Y     := inf{ t >= 0 : X_t in Y },       Y := TRAP_2^cl ;
     H_{D_2} := inf{ t >= 0 : X_t in D_2 } ;
     H_S     := inf{ t >= 0 : X_t in S },       S read under the plate convention.
The one new probabilistic step of Section 1.3 is PATHWISE set monotonicity
(T4.3), not a distributional statement.
[PROV: PIECE TRAPOCC-4 Section 0 ; SOUND]


========================================================================
SECTION 2 — WFF MACHINERY AT THE PLATE
========================================================================

2.1 THE PLATE SUBSTITUTION (the operative form)

ROUTE CHOICE, STATED ONCE: the plate is replaced by closure(S) EVERYWHERE in the
weak-flux framework, and the transfer is proved. The alternative route (restating
the Dirichlet-form theorem for an OPEN killing set) is NOT taken. Nothing outside
the plate symbol changes; in particular no constant, no exponent and no
numerator moves. Two explicit beta-free thresholds are introduced,
beta >= 2/c_plate at (PLATE-SEP) and beta >= 8/delta, both of exactly the landed
class.
[PROV: CURE-XE4-2 v3 ROUTE CHOICE ; three adversarial rounds SUSTAINED]

(PLATE-SUB) OBJECT LINE, OPERATIVE FORM:
     Y := TRAP_2^cl;  Y' := closure(S) = the CLOSED max-norm ball
     B^max_{delta/4}(g*) = THE KILLING PLATE;  A_z as in TRAPOCC-2 Section 2;
     Omega'' := M \ (A_z u Y' u Y).
HYPOTHESIS ROW, OPERATIVE FORM (this single row replaces the false landed row at
all THREE sites that asserted it - the (WFF-1) row, the machinery-table row, and
the (FLUX-ID'w) three-set Riesz clause):
     Y, Y' compact and disjoint - HOLDS: Y = TRAP_2^cl is compact by (T3.1);
     Y' = closure(S) is compact, being the product of the 2N closed intervals
     [g*_i - delta/4, g*_i + delta/4] in the standing chart, closed in the
     compact M; Y inter Y' = empty, with dist(Y, Y') >= c_plate/(2G) > 0 for
     every beta >= beta_plate := 2/c_plate, where c_plate > 0 and G < infinity
     are the beta-free constants displayed at (PLATE-SEP). NOT CLAIMED: a margin
     valid for every beta > 0. THE PLATE IS THE CLOSED BALL. NO boundary
     regularity of Y enters. NO boundary regularity of Y' is consumed by (WFF-1)
     either; the cube's interior cone is consumed at exactly one place, the
     hitting-time transfer (PLATE-REG), and nowhere else.
[PROV: CURE-XE4-2 v3 REPLACEMENT for the Section-4 preamble object line and for
the (WFF-1) hypothesis row (D1)/(D2)/(D3) ; SUSTAINED / AM-R5-26(c)]

(PLATE-SEP) dist( closure(S), TRAP_2^cl ) >= c_plate/(2G) > 0, for every
beta >= beta_plate := 2/c_plate; in particular closure(S) inter TRAP_2^cl =
empty for beta >= beta_plate. The plate level is DERIVED AT THE QUARTER RADIUS
from the landed quadratic envelope
"E_eps(x) <= m_k + eps w_k + (L_eps/2) dist(x, G_k)^2 on U (UP-QUAD)", not
inherited from the collar; the passage from level gap to distance is the same
one-line mean-value step the corpus already runs pointwise, applied to a PAIR of
points instead of a point and a set, using G := sup_M |grad E_eps| < infinity
beta-free.
[PROV: CURE-XE4-2 v3 (PLATE-SEP), STEPS 1-6 ; SUSTAINED]

2.2 THE WEAK FLUX FRAMEWORK, AT THE PLATE

Throughout: T_g(f) := D(g,f) = int_M w <grad g, grad f> dx, the distribution
-div(w grad g).

(WFF-1) DIRICHLET PRINCIPLE FOR COMPACTS. For disjoint compacts Y, Y' OF POSITIVE
CAPACITY (nonpolar; see (POS-CAP) below) the class
K(Y,Y') := {f in H^1(M): f = 1 q.e. on Y, f = 0 q.e. on Y'} is nonempty, convex
and closed in H^1(M); D is coercive on it; the unique minimizer h_{Y,Y'}
satisfies 0 <= h <= 1 (truncation lowers D) and cap(Y,Y') = D(h_{Y,Y'}) - which
is the corpus's OWN definition "cap(Y,Y') = inf{D(f): f=1 on Y, f=0 on Y'}", so
no object is redefined. Moreover h_{Y,Y'}(x) = P_x(H_Y < H_{Y'}) q.e.
NAMED: Fukushima-Oshima-Takeda, Dirichlet Forms and Symmetric Markov Processes,
Ch. 2 (equilibrium potential and capacity of compact sets) and Ch. 4
(identification with hitting probabilities).
  HYPOTHESIS ROWS: (D, H^1(M)) is a regular Dirichlet form on L^2(M, mu) - HOLDS
  (M compact smooth; w = (1/beta) e^{-beta E_eps} smooth, bounded above and below
  away from 0; mu = e^{-beta E_eps} dx smooth strictly positive); the associated
  Hunt process is the standing diffusion - HOLDS by ROW SR-PE1.2 reversibility
  div(w grad u) = mu L u; Y, Y' compact and disjoint - HOLDS by (PLATE-SUB);
  Y, Y' NONPOLAR, i.e. cap(Y,Y') > 0 - HOLDS at every instance consumed here, by
  (POS-CAP).
  (POS-CAP) THE POSITIVE-CAPACITY HYPOTHESIS: WHY IT IS NEEDED, AND WHY IT IS MET.
  NEEDED: for a POLAR plate the q.e. constraints defining K(Y,Y') are vacuous, the
  normalized capacity is 0, the minimiser is not determined, and (RATIO-W)'s
  quotient of capacities is 0/0. The hypothesis is therefore STATED, not left
  implicit. MET, WITH THE REASON DISPLAYED: every instance this document consumes
  is a compact with NONEMPTY INTERIOR, hence contains a closed ball B of positive
  radius, and the form's own lower bound gives, for every f admissible for (Y,Y'),
        D(f)  >=  ( inf_M w ) . int |grad f|^2 ,
        inf_M w  =  (1/beta) e^{ -beta sup_M E_eps }  >  0
  (w is smooth and bounded away from 0 on the compact M), so taking the infimum
  over the class and restricting the constraint to B,
        cap(Y,Y')  >=  ( inf_M w ) . inf{ int |grad f|^2 : f = 1 q.e. on B,
                                                           f = 0 q.e. on Y' }
                   >  0 ,
  the last infimum being the condenser capacity of a closed ball of positive
  radius against a disjoint compact, which is strictly positive.
  THE CONSUMED INSTANCES, BY NAME: A_z := closed B_rho(z) and A_y := closed
  B_rho(y), rho = 1/beta; closure(S) and closure(S'), closed max-norm balls;
  D_2 by (T4.2); TRAP by LEMMA TRAP-EXIST (S3); TRAP_2^cl by (TRAP2CL). Each has
  nonempty interior, so each is nonpolar. NO GENERALITY BEYOND THIS LIST IS
  CLAIMED.
  [PROV: FOT Ch. 2 (capacity of compacts, measures of finite energy) as already
  named for (WFF-1)/(WFF-2) ; scope hypothesis added per XE-7 nonblocking
  residual 1]
  NO boundary regularity of Y enters.
This UPGRADES the landed classical row (Friedman Thm 6.5.1, "every boundary
point regular"), whose regularity clause is exactly what the companion target
could not supply.
[PROV: PIECE TRAPOCC-3 (WFF-1) with the CURE-XE4-2 v3 plate hypothesis row ;
AM-R5-24 + AM-R5-26(c), SUSTAINED]

(WFF-2) RIESZ REPRESENTATION OF THE FLUX MEASURES. Let h = h_{Y,Y'}. First
variation on the affine class gives T_h(f) = 0 for every
f in C_c^inf(M \ (Y u Y')), so T_h is a distribution carried by Y u Y'; it is a
signed Radon measure T_h = e_Y - e_{Y'} with e_Y carried by Y, e_{Y'} carried by
Y'. BOTH ARE NONNEGATIVE. PROOF of e_Y >= 0: by (WFF-1) h(x) = P_x(H_Y < H_{Y'});
by the STRONG MARKOV PROPERTY for the Feller diffusion, for the semigroup
P_t^{Y'} of the process killed on Y', P_t^{Y'} h (x) <= h(x), i.e. h is excessive
for the killed semigroup. The form-semigroup relation
D(h, f) = lim_{t -> 0} t^{-1} <h - P_t^{Y'} h, f>_mu (NAMED: FOT Ch. 1, the
standard identity for u in the form domain; rows: h in H^1 - met by (WFF-1);
f in the form domain of the killed form, i.e. f = 0 q.e. on Y' - imposed) gives
D(h,f) >= 0 for every such f >= 0, which is precisely e_Y >= 0. Applying the same
to 1 - h = h_{Y',Y} gives e_{Y'} >= 0. Both measures have finite energy and
charge no set of zero capacity, so they integrate quasi-continuous functions
unambiguously (NAMED: FOT Ch. 2, measures of finite energy integral).
NO SURFACE INTEGRAL, NO NORMAL DERIVATIVE, NO SMOOTH dY.
NOTATION MATCH: with Y' = closure(S), e := e_Y is the equilibrium measure on the
target and cap(Y, closure(S)) = D(h) = T_h(h) = e(Y). For
h_z := h_{A_z, closure(S) u Y}: T_{h_z} = e_z - e_D - e_{closure(S)} with
e_z >= 0 on A_z, e_D >= 0 on Y, e_{closure(S)} >= 0 on closure(S), and
e_z(A_z) = cap(A_z, closure(S) u Y).
[PROV: PIECE TRAPOCC-3 (WFF-2) with the CURE-XE4-2 v3 plate substitution ;
AM-R5-24 + AM-R5-26(c)]

(WFF-3) THE WEAK EQUATION FOR v_2, AT THE NEW PAIR. v_2 in H^1(M) is the unique
element with v_2 = 0 q.e. on closure(S) and D(v_2, f) = int_M f 1_Y dmu for every
f in H^1(M) with f = 0 q.e. on closure(S). (Weak form of
"L v_2 = -1_{TRAP_2^cl} on M \ closure(S)" via div(w grad v_2) = mu L v_2;
existence/uniqueness by the same Dirichlet principle; boundedness by
v_2 <= E_.[H_S] < infinity.)
SINGLE VINTAGE: the plate substitution applies TWICE in this row - to the
defining condition and to the test class - and both halves are load-bearing, at
different places (Section 2.5).
[PROV: PIECE TRAPOCC-3 (WFF-3) with the CURE-XE4-2 v3 plate substitution
"v_2 = 0 q.e. on S -> q.e. on closure(S) (twice: the defining condition and the
test class)" ; AM-R5-24 + AM-R5-26(c)]

RE-PROVED IDENTITIES, at the plate (each exactly the landed display, with
dY-integrals read as Y-integrals against the measures of (WFF-2)):
  (EQ-OCC-2w)  int_Y v_2 de = mu(Y), i.e. E_nu[v_2] = mu(Y)/cap(Y, closure(S)),
               nu := e / cap(Y, closure(S)).
  (FLUX-ID'w)  int_{A_z} v_2 de_z = int_Y v_2 de_D.
  (FLUX-CONSw) e_z(A_z) = e_D(Y) + e_{closure(S)}(closure(S)) >= e_D(Y),
               unconditionally. (f = 1 in (WFF-2) for h_z: D(h_z, 1) = 0.)
  (SANDWICHw)  e_D <= 2 e as measures on Y, under the hypothesis
               1 - 2h >= 0 q.e. ON THE SOLID CLOSED BALL A_z, h := h_{Y,closure(S)}
               the COMPANION-leg potential of this section (hypothesis source
               displayed immediately below). PROOF: V := M \ (A_z u closure(S)),
               u := 2(1-h) - h_z is L-harmonic on V \ Y = Omega'' and u >= 0 q.e.
               on M \ Omega''; hence u^- in H^1_0(Omega'') and
               0 = D(u, u^-) = -D(u^-, u^-) forces u^- = 0. (Elementary weak
               minimum principle; it replaces the C^0(closure) framing at this one
               step and imports nothing.)

(SANDWICHw) HYPOTHESIS SOURCE, AT THE CORRECT LEG AND THE CORRECT VINTAGE. This
replaces the reading "h <= 1/2 on B_{2rho}(z) (supplied unconditionally in
Regime A by (ENTRY), Section 3.2)", which pointed at the WRONG LEG, at a
SUPERSEDED domain, and at insufficient strength.
  WHICH h. The h of this row is the COMPANION potential h_{TRAP_2^cl,
  closure(S)}. Section 3.2's (ENTRY) is the MAIN leg - it is
  h(y) = P_y(H_TRAP < H_S) at the target TRAP and concludes on dA_z only - and
  it does NOT license this row. The corpus records the licensing leg, verbatim:
  "the (ENTRY) row consumed by (SANDWICHw) is licensed by TRAPOCC-4, not by
  TRAPOCC-3".
  WHAT THE ROW NEEDS, VERBATIM: "1 - 2h >= 0 quasi-everywhere on the CLOSED ball
  A_z, where h is the equilibrium potential of Y against S, so that u^- in
  H^1_0(Omega'')" - read at the plate, i.e. Y against closure(S).
  OPERATIVE DELIVERY, VERBATIM FROM (ENTRY-W) (Section 4.2(e)): the bound
  h_2 = h_pl <= 1/2 is delivered "for every y in the OPEN ball B_{2rho}(z) - in
  particular for every y in the solid closed ball A_z and for every y in dA_z".
  THE SOLID-BALL HYPOTHESIS IS THEREFORE MET DIRECTLY, WITH NO EXTENSION STEP.
  PREDECESSOR AND ITS EXTENSION, RECORDED BECAUSE THE LANDED ROW WAS WEAKER: the
  landed companion (ENTRY), as re-proved through the envelope by TRAPOCC-4,
  supplies the bound ON dA_z ONLY - the internal-checker finding, verbatim,
  "(SANDWICHw) needs h <= 1/2 q.e. on the SOLID ball A_z, but the landed (ENTRY)
  row supplies it only ON dA_z" - and the dA_z -> A_z step is AM-R5-24(a)'s
  MAXIMUM-PRINCIPLE line, verbatim: "in Regime A, A_z inter (Y u S) = empty, so h
  is L-harmonic on int(A_z) and continuous on the closed ball; the MAXIMUM
  PRINCIPLE (GT Thm 3.1; rows as landed: bounded domain, c = 0, continuity up to
  the boundary) gives max_{A_z} h = max_{dA_z} h <= 1/2 by (ENTRY)". Both routes
  land the identical statement; the (ENTRY-W) delivery is the one consumed here.
  NO CIRCULARITY: (ENTRY-W) consumes (WFF-1), (WFF-2), (RATIO-W), (PTW-W) and
  (CAP-LOW-H1) - never (SANDWICH) or (SANDWICHw). The dependency order
  (WFF-1)/(WFF-2) -> (RATIO-W) -> (ENTRY-W) -> (SANDWICHw) is ACYCLIC; the
  forward pointer to Section 4.2(e) is a pointer, not a loop.
[PROV: PIECE ENTRY-W v2, the (ENTRY-W) display's solid-ball quantifier (the
operative delivery) ; predecessor and extension: AM-R5-24(a)'s maximum-principle
line [PX:11810-11816] as adopted, with the leg attribution and the hypothesis
restatement from PIECE TRAPOCC-4 Section 5 (CONSUMER CHECK) and its supersession
rows S3'/S4'/S5' ; two adversarial rounds 2026-07-27, (RATIO-W) and the chained
Harnack SURVIVE independent recomputation both rounds]

(SANDWICHw) step 2 CONSUMES (v3.2)'s q.e. statement at the new pair; (v3.2) is
CONSUMED-BY-(SANDWICHw), not unconsumed.
[PROV: PIECE TRAPOCC-3 Section 4 RE-PROVED IDENTITIES, at the CURE-XE4-2 v3
plate ; AM-R5-24 + AM-R5-26(c)(iii) wiring]

2.3 THE THREE IMPORT ROWS, STATED AT THEIR SINGLE SITES

The import surface of the capacity bridge is declared by a CHECKABLE PROCEDURE,
not by a universal assertion: each row carries a CONSUMER WALK naming every site
at which the fact is read; a reader may falsify the ledger by exhibiting a step
that uses a classical fact appearing in no row, or a site absent from a row's
walk. (The earlier universal sentence "NOTHING BELOW IS BOTH USED AND UNDECLARED"
is WITHDRAWN: it asserted exhaustiveness and was falsified at three rows.) Facts
consumed INSIDE rows this machinery merely cites from the corpus (e.g. inside
(WFF-1)) are the corpus's import surface, not the bridge's.
[PROV: XE-6 C3 RECORD, CURE-XE6-c3 EDIT 1 ; the (c3) residual of AM-R5-27, cores
verified]
[TYPED -> S7: (G3-CITE)]

(N9) SOBOLEV LATTICE / STAMPACCHIA GRADIENT IDENTITY. [IMP-6]
For v in H^1(M):
 (a) v^+ := max(v,0) lies in H^1(M) and grad v^+ = 1_{{v > 0}} grad v a.e.;
 (b) for every real constant c, grad v = 0 a.e. on the level set {v = c};
 (c) consequently, for u_1, u_2 in H^1(M), writing
       u_1 v u_2 = u_2 + (u_1 - u_2)^+,   u_1 ^ u_2 = u_1 - (u_1 - u_2)^+,
     both lie in H^1(M) and
       grad(u_1 v u_2) = grad u_1 a.e. on {u_1 > u_2},
                       = grad u_2 a.e. on {u_2 > u_1},
                       = grad u_1 = grad u_2 a.e. on {u_1 = u_2},
     with the two roles exchanged for u_1 ^ u_2.
NAMED: Gilbarg-Trudinger, Elliptic Partial Differential Equations of Second
Order, Lemma 7.6 (weak derivative of the positive part), with its standard
corollary (b). This is the lane's own name for this fact.
  HYPOTHESIS ROWS: v in W^{1,2} - MET (v in H^1(M), M compact, so v in
  W^{1,2}(V_i) in every chart of the finite atlas); the statement is chart-local
  and a.e., so it transfers to M - MET; no boundary regularity is used - MET
  (M compact without boundary).
DIVISION OF LABOUR WITH IMP-5: the MEMBERSHIP claims in (c) are already delivered
by (N5)/IMP-5, since t |-> t^+ is a normal contraction. (N9) is imported for the
a.e. GRADIENT FORMULA, which IMP-5 does not supply: the Markovian property gives
an INEQUALITY between energies, not an IDENTITY between gradients on a partition.
Both rows are load-bearing and neither subsumes the other.
CONSUMER WALK, RE-RUN OVER THE WHOLE CONSOLIDATED DOCUMENT - Sections 0-3, 4-5
AND 6-8 - NOT OVER THIS SECTION ALONE. The earlier walk ("exactly one site, the
'because' clause of the (N3) proof; through (N3) it reaches two further sites,
the gluing step (N8-0) and Lemma step (3). Read nowhere else.") is WITHDRAWN on
two counts: its exhaustiveness clause was FALSE, and the three sites it named
are all internal to a piece this document CITES WITHOUT REPRINTING. THE TRUE
LIST:
 (W-a) SITES IN THIS DOCUMENT. Grep on the fact's name over all three section
   files, THE CONSUMER WALK IS ENUMERATED BY NAMED SITE - occurrence counts and grep-closure claims are intentionally NOT asserted (this arc's record shows quantified-exhaustiveness sentences are the recurring defect class; enumeration by name is the authority; the authoring-time count of TWO is WITHDRAWN). THE SITES, THREE OF THEM REAL CONSUMPTIONS (the third added with Section 4.2(h): the (h.3) STEP-2 measure reading, clauses (a),(b) - a REAL consumption, self-declared at its site and listed here so walk and site agree):
     - Section 2.3, this row's own NAMED line. A STATEMENT SITE, not a
       consumption.
     - Section 4.2(a), the CONSUMED row of (RATIO-W), which lists
       "Gilbarg-Trudinger Lemma 7.6" among (RATIO-W)'s inputs. THIS IS A REAL
       CONSUMPTION and it was absent from the withdrawn walk - the falsification
       this section's own preamble invites.
        - Section 4.2(e), the REPRINTED proof row of (LAT-MON)(c): "STAMPACCHIA
       TRUNCATION (CLASSICAL FACT, NAMED: Gilbarg-Trudinger Lemma 7.6;
       hypothesis row: u, v in W^{1,2} - MET)". A SECOND REAL CONSUMPTION, IN
       THIS DOCUMENT. It migrated out of (W-b) when Section 4.2(e) began
       REPRINTING the (LAT-MON) proof rows instead of citing them, and it is
       named here because 4.2(e)'s own CONSUMER-WALK NOTE instructs it.
     - Section 4.2(e), that CONSUMER-WALK NOTE itself. A BOOKKEEPING POINTER,
       not a consumption; listed so the count and the grep agree.
     - Section 4.2(h.3), the STEP-2 MEASURE READING of (SANDWICHw)@MAIN, clauses
       (a),(b). A THIRD REAL CONSUMPTION, IN THIS DOCUMENT: it reads (N9)/IMP-6's
       a.e. GRADIENT PARTITION, which is what the weak minimum principle needs on
       the main pair and which IMP-5's Markovian inequality does not supply. It
       is self-declared at its own site, it is announced in this walk's preamble
       above, and it is listed here so preamble, bullets and enumerated list all
       name the same sites.
   THE ENUMERATED LIST IS THEREFORE: (1) Section 2.3, this row's NAMED line;
   (2) Section 4.2(a), the CONSUMED row of (RATIO-W); (3) Section 4.2(e), the
   (LAT-MON)(c) reprinted truncation row; (4) Section 4.2(e), the CONSUMER-WALK
   NOTE; (5) Section 4.2(h.3), the STEP-2 MEASURE READING of (SANDWICHw)@MAIN,
   clauses (a),(b) - the site this walk's preamble already announces and the
   list formerly omitted [XE-8, LOW bookkeeping]. THREE OF THE FIVE ARE REAL
   CONSUMPTIONS - (2), (3) and (5); (1) is a statement site and (4) is a
   bookkeeping pointer. (No further sites are named; totality is not asserted.)
 (W-b) SITES INSIDE PIECES THIS DOCUMENT CITES BUT DOES NOT REPRINT, listed
   because a reader following the citation reaches them:
     - PIECE CAP-LOW-H1 v2, cited at Section 2.6 as LEMMA (CORE-DENSITY): the
       "because" clause of the (N3) proof, and through (N3) the gluing step
       (N8-0) and Lemma step (3). These are the three sites the withdrawn walk
       named. They are REAL, but they live in the cited piece, not here.
     - PIECE ENTRY-W v2, cited at Section 4.2: the STAMPACCHIA TRUNCATION at
       (W-NUM)(iv) ONLY. ENTRY-W v2's import list books a PAIR, and the second member - the same truncation inside the (LAT-MON)(c) step - is NOT a (W-b) site in this document: Section 4.2(e) REPRINTS those proof rows, so that site is IN-DOCUMENT and is listed at (W-a) above. The
       latter being what Section 4.2(e)'s [(ENV-VAR)] chain step reads. ENTRY-W
       v2's own import list books the pair, verbatim: "Gilbarg-Trudinger Lemma
       7.6 (Stampacchia truncation) - rows checked at (W-NUM)(iv) and
       (LAT-MON)(c)."
 (W-c) NO EXHAUSTIVENESS IS ASSERTED BEYOND THE GREP. (W-a) is closed by a
   grep over the WHOLE ASSEMBLED DOCUMENT (the authoring-time three-file grep is superseded: it missed a site added in a different section file the same pass), re-runnable and falsifiable; (W-b) is a list of known sites
   inside cited pieces and is NOT claimed complete. The phrase "read nowhere
   else" appears nowhere in this row.
[PROV: XE-6 C3 RECORD, CURE-XE6-c3 EDIT 2 (row (N9) / IMP-6) ; cores verified,
executions landed here ; the walk re-run and the two (W-b) ENTRY-W sites carried
from PIECE ENTRY-W v2's own import list]

(N5) NORMAL CONTRACTIONS OPERATE: LIPSCHITZ COMPOSITION LOWERS D. [IMP-5]
Call T : R -> R a NORMAL CONTRACTION if T(0) = 0 and |T(a) - T(b)| <= |a - b| for
all real a, b. For every normal contraction T and every u in H^1(M):
     T(u) in H^1(M)   and   D(T(u)) <= D(u).                          (NC)
NAMED: Fukushima-Oshima-Takeda, Dirichlet Forms and Symmetric Markov Processes,
Ch. 1 (Theorem 1.4.1-class): for a symmetric closed form, the MARKOVIAN property
is equivalent to the statement that every normal contraction operates on the
form. This is the DEFINING property of a Dirichlet form, not an extra hypothesis.
  HYPOTHESIS ROWS: (D, H^1(M)) is a Dirichlet form (symmetric, closed, Markovian)
  on L^2(M, mu) - MET by ROW-REG, verbatim "(D, H^1(M)) is a regular Dirichlet
  form on L^2(M, mu)"; T a normal contraction - MET at each consumption site,
  checked one by one in the record's consumer walk; u in the form domain - MET by
  hypothesis at every site. The form contracted is D itself;
  E_1 = D + (.,.)_{L^2(mu)} is NOT contracted and no E_1-contraction is claimed
  or needed.
CLAUSE (N5') THE CONSTANT SHIFT, MADE EXPLICIT BECAUSE ONE LIVE CONSUMER NEEDS
IT. If T is 1-Lipschitz but T(0) is not 0, put T~ := T - T(0); then T~ is a normal
contraction, constants lie in H^1(M) with D(constant) = 0, and D is quadratic in
the gradient, so
     T(u) = T~(u) + T(0) . 1 in H^1(M)  and  D(T(u)) = D(T~(u)) <= D(u).
CITATION CORRECTION, SINGLE VINTAGE: this row is an EXTERNAL IMPORT (IMP-5). The
earlier classification as a landed corpus row (LND-1, sourced to
"0 <= h <= 1 (truncation lowers D)") is WITHDRAWN as MIS-SOURCED. The consolidated
ledger books NO item as "consumed as a landed corpus row".
[PROV: XE-6 C3 RECORD, CURE-XE6-c3 EDIT 3 (row (N5) re-sourced as IMP-5) ; cores
verified, executions landed here]

(N10) THE EUCLIDEAN MOLLIFIER PACKAGE, AND THE CONVERGENCE OF THE DISPLAYED
FAMILY. [IMP-7]
Let d := dim M and let J_r denote convolution on R^d with the kernel
j_r(y) = r^{-d} j(y/r), j in C_c^inf(B_1), j >= 0, integral j = 1. Then
  (MOL-1)  || J_r h ||_{L^2(R^d)} <= || h ||_{L^2(R^d)}  for every h in L^2(R^d);
  (MOL-2)  || J_r h - h ||_{L^2(R^d)} -> 0 as r -> 0, for every h in L^2(R^d);
  (MOL-3)  grad ( J_r h ) = J_r ( grad h ) a.e., for every h in W^{1,2}(R^d).
NAMED: the standard mollifier package - Evans, Partial Differential Equations,
Appendix C (properties of mollifiers); equivalently Brezis, Functional Analysis,
Sobolev Spaces and Partial Differential Equations, Ch. 4 (regularisation by
convolution). (MOL-1) is Young's / Minkowski's integral inequality for a
nonnegative kernel of total mass 1; (MOL-2) is continuity of translation in L^2;
(MOL-3) is differentiation under the convolution integral against the definition
of the weak derivative.
  HYPOTHESIS ROWS: kernel nonnegative, C_c^inf, total mass 1, support in B_1 -
  MET by construction of j_r.
THE SPLIT THAT MUST BE STATED ONCE, because two different statements were once
carried under one label:
 (ii-a) ABSTRACT DENSITY [IMP-4]: C^inf(M) is dense in H^1(M). NAMED: the
   Meyers-Serrin density theorem, in its compact-manifold form. Rows: M compact
   smooth without boundary - MET; F in H^1(M) - MET; finite atlas - MET by
   compactness. THIS IS AN EXISTENCE STATEMENT ABOUT SOME SMOOTH APPROXIMANT.
   CONSUMED AT EXACTLY ONE SITE: the proof of (N8-v), where only existence of
   some smooth sequence is needed.
 (ii-b) CONVERGENCE OF THE DISPLAYED FAMILY: for the family F_{r_mol} as
   displayed, and for NO OTHER, F_{r_mol} -> F in H^1(M) as r_mol -> 0. THIS IS
   NOT (ii-a): density gives SOME smooth approximant, but the argument needs THIS
   one, because the POINTWISE constraints are drawn from the same F_{r_mol} whose
   energy is limited. (ii-b) IS PROVED INLINE from (N10)/IMP-7. CONSUMED AT
   EXACTLY ONE SITE: step (8) of Lemma (CORE-DENSITY),
   "D(F_{r_mol}) -> D(F) as r_mol -> 0".
DEPENDENCY ORDER, DECLARED BECAUSE (ii-b) IS PROVED RATHER THAN IMPORTED:
     IMP-4 (density) -> (N8-v) -> (ii-b) -> Lemma step (8).
Acyclic: nothing in that chain reads (ii-b) back into (ii-a) or into (N8-v).
The only constants introduced by this row sit inside a LIMIT statement,
r_mol -> 0, and enter no display consumed downstream; NO exponent, power,
constant or beta threshold moves anywhere.
[PROV: XE-6 C3 RECORD, CURE-XE6-c3 EDIT 4 (row (N10) / IMP-7, and the
(ii-a)/(ii-b) split) ; cores verified, executions landed here]

2.4 (PLATE-REG): THE HITTING-TIME TRANSFER

(PLATE-REG)  H_S = H_{closure(S)}  P_x-a.s. FOR EVERY x in M.
ROUTE, STATED ONCE: GIRSANOV TRANSFER. The regularity fact is proved for the
DRIFTLESS process and moved to the standing diffusion by an equivalence of
measures. NO Brownian theorem is applied to a drifted object.
EXACT STOPPING OBJECTS: sigma := H_{closure(S)}, an (F_t)-stopping time
(closure(S) closed, paths continuous); sigma_S := inf{ s > 0 : X_s in S }, the
PENETRATION time, the exact object the regularity statement is about - at a point
y not in S, H_S = sigma_S pathwise, so no s = 0 convention is ever used. H_S is an
(F_t)-stopping time because S is open and paths are continuous:
{H_S < t} = union over rationals q in [0,t) of {X_q in S} lies in F_t, and the
right-continuity of (F_t) upgrades this.
NAMED SIGMA-FIELDS: F_sigma := { A in F : A inter {sigma <= t} in F_t for every
t >= 0 }; F_{theta^+(t)} at one step only; and, on the canonical space, G_1 and
G_{0+}. NO INDEPENDENCE IS CLAIMED ANYWHERE IN THIS TRANSFER.
(a) THE CUBE CONE, IN COORDINATES, AT FACES, EDGES AND CORNERS ALIKE. In the
standing chart (max norm, centred at the fixed g*),
     closure(S) = { x : ||x - g*||_max <= delta/4 }
                = product over i = 1..2N of [ g*_i - delta/4, g*_i + delta/4 ],
     S = { x : ||x - g*||_max < delta/4 },   dS = closure(S) \ S.
Put r := delta/8, B_r := { z : |z - g*|_euc <= r }; since |.|_max <= |.|_euc,
B_r subset B^max_r(g*) subset S. For y in dS put
K_y := { (1-t) y + t z : t in [0,1], z in B_r }.
 (a1) COORDINATE VERIFICATION, NO CASE SPLIT. For x = (1-t) y + t z and EACH i,
      | x_i - g*_i | <= (1-t)(delta/4) + t (delta/8) = delta/4 - t delta/8,
      so ||x - g*||_max <= delta/4 - t delta/8 < delta/4 for every t in (0,1].
      Hence K_y \ {y} subset S, with dist_max( x, dS ) >= t delta/8 at parameter
      t. The bound uses ONLY |y_i - g*_i| <= delta/4 for every i, which holds for
      every y in closure(S). It never inspects the active set
      J(y) := { i : |y_i - g*_i| = delta/4 }, never differentiates dS, and never
      case-splits on face / edge / corner. All three are covered by the same two
      lines.
 (a2) CONE SHAPE AND UNIFORM APERTURE. K_y = conv({y} u B_r) is the closed
      truncated circular cone with vertex y, axis [y, g*], height |y - g*|_euc,
      and half-angle
        alpha_y = arcsin( r / |y - g*|_euc )
                >= arcsin( (delta/8) / ( sqrt(2N) . delta/4 ) )
                 = arcsin( 1 / (2 sqrt(2N)) ) > 0,
      using |y - g*|_euc <= sqrt(2N) ||y - g*||_max = sqrt(2N) delta/4 on dS, and
      |y - g*|_euc >= ||y - g*||_max = delta/4 > 0.
EVERY-START SCOPE: the conclusion is stated for EVERY x in M, not q.e. and not
for a.e. start.
PROJECTION ROW, DISPLAYED (this is what makes the transfer legitimate on
M = R^{2N}/Lambda): the SDE's coefficients are smooth and Lambda-periodic;
solutions on M are PROJECTIONS of solutions on the cover with the same driving
noise, with pathwise uniqueness at both levels - NAMED: Karatzas-Shreve Ch. 5
Thm 2.5 (strong uniqueness); rows: Lipschitz coefficients - HOLDS, smooth on a
compact/periodic domain. Events of the projected process pull back to
shift-invariant events of the cover process, and the cover-level strong Markov
property (K-S Ch. 5) DESCENDS through the projection. The transfer therefore
consumes the named cover-level row PLUS this projection row - no unresolved
pointer.
[PROV: CURE-XE4-2 v3 (PLATE-REG), ROUTE (R-b) Girsanov transfer + (a)(a1)(a2)
cube cone ; three adversarial rounds SUSTAINED, with the projection row displayed
per AM-R5-26(c)(iv) and the new sigma-field site added per AM-R5-26(c)(v)]

2.5 (V2ID): THE IDENTIFICATION, AND THE OPERATIVE LINEAGE

SINGLE VINTAGE, STATED ONCE: the identification of the landed v_2 with the
(WFF-3)-at-the-new-pair solution was once carried as TYPED-PLATE-V2ID at
"a.e.-equality of the two W^{1,2} solutions". THAT TYPING IS RETIRED AND
CORRECTED: a.e. equality is INSUFFICIENT for the finite-energy-measure and
truncation consumers, and (V2ID)(a) is not obtained through it. The operative
object is the proved (V2ID) below.
[PROV: PIECE V2ID v2, "STRENGTH DELIVERED vs STRENGTH DEMANDED", correcting
AM-R5-26(c)(i) ; two adversarial rounds, both halves SURVIVE, propagation
residuals in AM-R5-27(c2)]

(V2ID) IDENTIFICATION OF THE NEW-PAIR OCCUPATION POTENTIAL. Let
G := M \ closure(S), P := closure(S), Y = TRAP_2^cl, and let v_2^new be the
unique solution of (WFF-3) at the new pair, i.e. the unique v in H^1(M) with
v = 0 q.e. on closure(S) and D(v, f) = int_M f 1_Y dmu for every f in H^1(M) with
f = 0 q.e. on closure(S). Assume the standing threshold
beta >= beta_S4 := max(2/c_plate, 8/delta). Then:
  (a)  v_2^new(x) = E_x[ int_0^{H_{closure(S)}} 1_Y(X_t) dt ]
                  = E_x[ int_0^{H_S} 1_{TRAP_2}(X_t) dt ]
                  = v_2^prob(x)                          for q.e. x in M;
  (b)  the SAME identity holds at EVERY point x of the OPEN set G, with v_2^new
       read as its C^{0,alpha}_loc(G) version v~;
  (c)  for x in closure(S): v_2^prob(x) = 0 pointwise by (PLATE-REG), and
       v_2^new~ = 0 q.e. on closure(S) by membership in F_G. NO pointwise
       identity on closure(S) is claimed, and none is consumed.
THE THREE INGREDIENTS, NAMED:
 (i)  Steps A-D produce a variational object v_2^new that is Lebesgue-a.e. equal
      to the probabilistic occupation potential, via q.e. equality plus "polar
      implies Lebesgue-null" (LEMMA (POLAR-OPEN): if N subset M has Cap(N) = 0
      then mu(N) = 0 and Leb(N) = 0; consequently no set of zero capacity
      contains a nonempty open set);
 (ii) INTERIOR De Giorgi-Nash-Moser regularity, which gives v_2^new a CONTINUOUS
      version v~ on G - a statement about the VARIATIONAL object only, proved
      from the weak formulation it satisfies BY CONSTRUCTION;
 (iii) the SMALL-TIME MEAN-VALUE identity, from the MARKOV PROPERTY AT A
      DETERMINISTIC TIME, plus the landed transition-density row SR-DENS, which
      lets the a.e.-defined v~ replace the probabilistic integrand inside
      E_z[ . (X_t) ] with zero error.
(MV-t) THE SMALL-TIME MEAN-VALUE IDENTITY. For every z in M and every t > 0,
     v_2^prob(z) = E_z[ int_0^{t ^ H_P} 1_Y(X_s) ds ]
                   + E_z[ 1_{t < H_P} v_2^prob(X_t) ].
Letting t -> 0 gives the pointwise identity at EVERY z in G. CONTINUITY OF THE
PROBABILISTIC SIDE IS AN OUTPUT OF THIS ARGUMENT, NOT AN INPUT.
WHAT (V2ID) DOES NOT CONSUME: not (WFF-1)'s CONCLUSION; not (WFF-2); not
(SANDWICHw); not (ENTRY); not any probabilistic-to-PDE identification. It
consumes only (WFF-1)'s HYPOTHESIS ROW (regular form, associated Hunt process).
The landed clauses "L v = -1_TRAP on M \ S" and "L v_2 = -1_{TRAP_2} on M\S,
v_2 in C^{1,alpha}" ARE NOT CONSUMED AT ANY STEP: (V2ID) OUTPUTS the v_2 instance
of that clause; it never inputs it. SCOPE: for v_2 at the new pair only (the
MAIN-target identification exists SEPARATELY as (MAIN-V2ID), Section 4.2(h.2) -
this sentence is a piece-scope fence, not an absence claim; see T-15); NO claim
is made about the MAIN-target object v, whose target is TRAP.
[PROV: PIECE V2ID v2 (PIECE CURE-XE5-2 v2), deliverable (V2ID)(a)(b)(c) + (E0)
(POLAR-OPEN) + (E3) (MV-t) + (E5-a)(E5-b)(E5-c) ; cures XE-5 finding 2, both
halves SURVIVE, AM-R5-27(b)]
[TYPED -> S7: V2ID-MAIN-TARGET-SCOPE]

THE OPERATIVE LINEAGE, STATED ONCE (this replaces every pointwise-vanishing
route through the withdrawn bridge). Wherever a display needs the plate
component of a flux measure to die, the authority is the DEFINING condition of
(WFF-3)-at-the-new-pair together with the finite-energy / no-polar-charge row -
NOT any pointwise evaluation of a variational object on closure(S):
  (DE-CS-0)
  (R0) WHICH OBJECT. v_2 here is v_2^new, the unique (WFF-3)-at-the-new-pair
       solution at the pair (TRAP_2^cl, closure(S)). It is NOT read as the landed
       probabilistic occupation; the bridge between the two is (V2ID) - q.e. on
       M, pointwise on G - and it is NOT consumed by this step.
  (R1) DEFINING CONDITION. v_2^new = 0 q.e. on closure(S), i.e. there is
       N contained in closure(S) with Cap(N) = 0 such that the quasi-continuous
       version of v_2^new vanishes at every point of closure(S) \ N.
       HYPOTHESIS ROW: this is a DEFINING condition of the object, imposed by the
       plate substitution and consumed as a hypothesis. It is NOT derived from
       the landed "v_2 = 0 q.e. on S"; the observation that "v_2 = 0 q.e. on S"
       does NOT give "v_2 = 0 q.e. on closure(S)" is respected, not circumvented.
  (R3) NO POLAR CHARGE. The flux measures of (WFF-2) have finite energy and
       charge no set of zero capacity, so e_{closure(S)}(N) = 0.
  DISPLAYED STEP:
       int v_2^new de_{closure(S)}
         = int_{closure(S)} v_2^new de_{closure(S)}
         = int_{closure(S) \ N} v_2^new de_{closure(S)} + int_N v_2^new de_{closure(S)}
         = 0 + 0 = 0,
  the first term because the integrand vanishes identically on closure(S) \ N by
  (R1), the second because the integrating measure gives N mass zero by (R3).
  WHAT IS NOT USED: no value of v_2^new at any individual point of closure(S); no
  pointwise-vanishing statement; no probabilistic object of any kind; no stopping
  time, no sigma-field, no Markov property, NO INDEPENDENCE; no fine continuity
  and no regular-boundary-point attainment.
  ADMISSIBILITY AND VANISHING ARE THE TWO HALVES OF THE SAME (WFF-3)
  SUBSTITUTION, USED AT DIFFERENT PLACES: the TEST-CLASS half licenses f = h_z;
  the DEFINING-CONDITION half kills the closure(S) component.
[PROV: XE-6 C2 RECORD, retarget notes XE6-C2-RETARGET-A/B, displayed step
(DE-CS-0) ; cores verified, stated here ONCE as the operative lineage per
AM-R5-28]

2.6 (CAP-LOW-H1): THE CORE-VS-H^1 CONDENSER BRIDGE

LEMMA (CORE-DENSITY). Let A, B be DISJOINT COMPACT subsets of M. Put
     K(A,B)    := { f in H^1(M) : f~ = 1 q.e. on A, f~ = 0 q.e. on B },
     Core(A,B) := { g : M -> [0,1] Lipschitz : g = 1 on an OPEN neighbourhood of
                   A, g = 0 on an OPEN neighbourhood of B }.
Then Core(A,B) subset Lip(A,B) subset K(A,B), both classes are nonempty, and
     inf_{Core(A,B)} D  =  inf_{K(A,B)} D  =  cap(A,B).            (CORE-EQ)
The easy direction (CORE-GE): a Lipschitz function on compact M lies in H^1(M)
and, being continuous, is its own quasi-continuous version, so
inf_{Core} D >= inf_{Lip} D >= inf_{K} D = cap(A,B), the last equality being the
landed definition; Core(A,B) is nonempty by the smooth-Urysohn row applied to the
disjoint compacts A, B. The hard direction is the mollified patching of steps
(1)-(8), whose limit step consumes (N10)/IMP-7 clause (ii-b) at exactly one site;
the approximation is pushed entirely onto the ENERGY, never onto the constraint.
[PROV: PIECE CAP-LOW-H1 v2, Lemma (CORE-DENSITY) ; two adversarial rounds, the
neighbourhood-to-compact limit, the eps-argument and the tube-flux extension all
SURVIVE ("the mathematics is intact"); import-ledger recount executed by the XE-6
C3 RECORD]

COROLLARY (CLASS-BRIDGE). Let A, B be disjoint compacts in M and let L be a
constant such that
     D(g) >= L for EVERY Lipschitz g with g = 1 pointwise on A and g = 0
     pointwise on B                                                (LIP-BOUND)
Then
     cap(A,B) := inf{ D(f) : f in H^1(M), f~ = 1 q.e. on A, f~ = 0 q.e. on B }
              >= L .                                               (CLASS-BRIDGE)
PROOF, WITH THE DIRECTION TRACKED EXPLICITLY. Every g in Core(A,B) satisfies the
hypothesis of (LIP-BOUND) (it equals 1 on a neighbourhood of A, hence pointwise
on A; and 0 on a neighbourhood of B, hence pointwise on B), so inf_{Core} D >= L.
By (CORE-EQ), cap(A,B) = inf_{Core} D >= L.
EQUIVALENT eps-FORM, DISPLAYED. Let f in K(A,B) and c > 0. By step (8) of the
Lemma there is g_c in Core(A,B) with D(g_c) <= D(f) + c. By (LIP-BOUND),
D(g_c) >= L. Hence D(f) >= L - c for every c > 0, so D(f) >= L for every
f in K(A,B), so cap(A,B) >= L.
MINIMISING-SEQUENCE FORM. Take g_m in Core(A,B) with
D(g_m) -> inf_{Core} D = cap(A,B). Each satisfies D(g_m) >= L; pass to the limit.
The two forms are the same argument written in the two directions; the
load-bearing content in both is (CORE-EQ), i.e. that the infimum over the SMALL
class is not strictly larger than the infimum over the LARGE class.
[PROV: PIECE CAP-LOW-H1 v2, Corollary (CLASS-BRIDGE) + eps-form +
minimising-sequence form ; SURVIVE, AM-R5-27(b)]

SCOPE FENCE, CARRIED BECAUSE IT IS THE FAULT LINE: the quasi-continuous calculus
used here upgrades bounds by CONSTANTS only. NO a.e. inequality between two
non-constant functions is upgraded anywhere. The general q.e.-ORDER property of
quasi-continuous versions is TRUE and STANDARD but is DELIBERATELY NOT IMPORTED
and NOWHERE USED; only the CONSTANT-bound case is used, and it is proved inline.
[PROV: PIECE CAP-LOW-H1 v2, (N8-iv) SCOPE FENCE + "DELIBERATELY NOT IMPORTED AND
NOWHERE USED" ; SURVIVE]

DENOMINATOR SYMBOL, CONCEDED ONCE: this bridge licenses cap_pl(A_z) =
cap(A_z, closure(S)); it does NOT license the landed literal symbol
cap(A_z, S). Every downstream denominator is read at the plate. SHARED-ROW
HYGIENE: (CORE-DENSITY)/(CLASS-BRIDGE) is ONE instance, cited not re-derived, by
both consumers; it takes no arrow from (V2ID) and none is taken.
[PROV: PIECE CAP-LOW-H1 v2 Section 6 per-symbol direction ledger + R6 shared-row
hygiene ; AM-R5-27(b)]
[TYPED -> S7: CAP-DENOM-SYMBOL]


========================================================================
SECTION 3 — CAPACITY BOUNDS
========================================================================

3.1 THE UPPER BOUND AT THE GATE: THE LEVEL RAMP

(CAP-UP-GATE) Let theta be a Sard-regular value in
[Theta(z,TRAP) - 1/beta, Theta(z,TRAP)], a := theta - 1/beta, and
     f(x) := median{ 0, (theta - E_eps(x)) beta, 1 }
the level ramp. Let W be the connected component of the open set
{E_eps < theta} containing z, and set f~ := f on W, f~ := 0 off W. Since theta is
regular, dW subset {E_eps = theta} where f = 0, so f~ is Lipschitz. f~ = 1 on A_z
(A_z is connected, inside {E_eps <= E_eps(z) + G/beta} subset {E_eps < a} for
beta >= beta_*; ADMISSIBILITY, DISPLAYED RATHER THAN ASSERTED: a = theta - 1/beta
>= Theta(z,TRAP) - 2/beta >= S_k + 4 c_H - (4G+2)/beta by (GATE-LOWER), while
E_eps <= S_k + c_H + G/beta on A_z since z lies in R_0, so the inclusion is
exactly the inequality (5G+2)/beta < 3 c_H, which beta_*'s (RAMP-ADM) leg
1 + (5G+2)/(3 c_H) of Section 0.5 delivers STRICTLY - the (G4) legs 16/delta and
24G/(3 c_H) alone do NOT imply it for arbitrary positive G), and f~ = 0 on TRAP: TRAP inter W = empty, because W meets TRAP
only if some arc from z into TRAP stays below theta, contradicting
theta <= Theta(z,TRAP). Hence f~ is admissible and
     cap(A_z, TRAP) <= D(f~) <= D(f) <= e^2 G^2 V_M beta exp( -beta Theta(z,TRAP) ).
COMMUNICATION HEIGHTS, EXACT OBJECTS: for a compact Y,
Theta(x,Y) := inf over simple piecewise-C^1 arcs gamma from x to Y of
max_gamma E_eps; Theta(x,S) is written with Y = {g*}.
NOTE ON THE COMPONENT TRUNCATION: it is forced by TRAP not being a superlevel
set. At the companion leg no truncation is needed, since D_2 IS a superlevel set
and the ramp is PE-DOORREACH's own, instantiated at theta = theta_2.
[PROV: LEMMA PE-TRAPOCC Section 5 (5a) (CAP-UP-GATE), with the target rows
licensed by LEMMA TRAP-EXIST (S3) ; PE-TRAPOCC main display PROVED, the target
license SOUND per PIECE TRAP-LICENSE / AM-R5-26(b)]

(GATE-LOWER) By (G1)+(G2)+(G3), every arc from z (w_phi = 0) to TRAP either
crosses Delta_phi or ends on TRAP inter {w_phi = 0}, so
     Theta(z, TRAP) >= Gate - 4G/beta = m_k + 2 lambda - 4G/beta,
with Gate := m_k + 2 lambda. GATE ROW, verbatim: "The w_phi = 0 stratum is
DYNAMICALLY CLOSED at band levels: crossing Delta_phi needs
E_eps >= m_k + 2 lambda > m_k + 2 kappa >= S_k + 4 c_H (c_H ledger, M2-PIN
strict), above the band top."
CONSUMED AT NON-STRICT STRENGTH ONLY: the chain used is
m_k + 2 lambda >= m_k + 2 kappa >= S_k + 4 c_H, a margin of 3 c_H above
S_k + c_H. THE STRICT MIDDLE CLAUSE IS NOT CONSUMED: it FAILS at the flagship
cell lambda = kappa = 1, where m_k + 2 lambda = m_k + 2 kappa.
[PROV: LEMMA PE-TRAPOCC (G1) + Section 5 (GATE-LOWER) ; non-strict-strength
reading landed by PIECE E2-ASSEMBLY v2 (A1) proof step (3), checker SOUND /
AM-R5-25]

3.2 (ENTRY): THE ENTRY PROBABILITY, AND h <= 1/2 ON dA_z

(ENTRY) MAIN LEG. Running PE-DOORREACH Sections 2 + 5 with the target TRAP
(step (2b)'s minimum principle and step (2c)'s monotonicity are stated for an
arbitrary closed target; the only replacement is the ramp of (CAP-UP-GATE)) gives,
for every y in B_{2rho}(z),
     h(y) = P_y(H_TRAP < H_S)
          <= C_H' cap(A_y, TRAP) / cap(A_y, S)
          <= C_3 beta^{2N+1} exp( -beta ( Theta(z,TRAP) - Theta(z,S) - 2G/beta ) ).
DENOMINATOR READING: cap(A_y, S) is read at cap_pl strength per T-16/S7.1; the
Lipschitz-class symbol is the source vintage.
ROUTE, OPERATIVE: the main-leg (ENTRY) input travels (RATIO-W) per 4.2(g), and
the main-leg OCCUPATION machinery travels the weak main pair/triple per 4.2(h);
the classical Green/normal-derivative record is HISTORICAL and is consumed at no
step [PROV: ENTRY-W v2 ; Section 4.2(h)].
EXPONENT, OPERATIVE: the display above reproduces the landed line [PX:9077,
PHYSICAL (post-banner) coordinates - a NAMED EXCEPTION to the pre-banner default
of Section 8.1; resolution is by the tag, LEMMA PE-TRAPOCC Section 5's main-leg
(ENTRY) line],
which SUPPRESSES the -eta that the (CAP-LOW*-H1) denominator pays; the operative
main-leg exponent is 4.2(g)'s, which carries it, and the operative consequence
pays TWO eta, not one (XE-7 F3, split displayed at 4.2(h.7)).
By (GATE-LOWER) and Theta(z,S) <= S_k + c_H + eta, the exponent is at least
Gate - S_k - c_H - eta - 6G/beta >= 3 c_H - eta - 6G/beta > 0 by (G1)'s chain
Gate >= S_k + 4 c_H, so h <= 1/2 on dA_z for all beta >= beta_1^hist, a beta-free
threshold. VINTAGE, NAMED [XE-8 F1 residual 3]: THIS is the HISTORICAL leg - C_H'
in the ratio constant and ONE eta in the margin - so the witness it delivers is
beta_1^hist and not the live beta_1^weak. The unqualified symbol beta_1 of
Section 0.5 is max(beta_1^hist, beta_1^weak) and is what every consumer reads.
NO CIRCULARITY: (ENTRY) uses only (CAP-UP-GATE), (CAP-LOW*) and PE-DOORREACH
Sections 2 / 5 - never (SANDWICH) or (SANDWICHw).
THE IMPORT IS LICENSED, NOT TARGET-AGNOSTIC. Sections 2 + 5 consume FOUR
properties of the target: (i) closed, compact, disjoint from A_y and from the
plate, with a SMOOTH boundary and Schauder regularity up to it; (ii) every
boundary point regular for the Dirichlet problem, met through the exterior sphere
condition of a smooth hypersurface; (iii) a surface measure and a normal on the
target boundary, for Green's second identity and for the sign of the inward
normal derivative; (iv) capacity monotonicity, the only target-agnostic row.
Rows (i)-(iii) are met at TRAP by LEMMA TRAP-EXIST (S3), and the separation
dist(y,TRAP) >= 2rho required for every y in B_{2rho}(z) is supplied by (G4') -
NOT by the landed (G4).
CARE POINT, THE DEGENERATE START: (ENTRY) is not needed at full strength
anywhere, but for the record, if z sits at or above the gate level the display is
not degenerate - (ENTRY) is then replaced by the trivial
P <= 1 <= C_3 beta^{2N+1} exp(-beta(Gate - E_eps(z))), whose exponent is <= 0
there. The two cases are exhaustive and neither is used to prove the other.
[PROV: LEMMA PE-TRAPOCC Section 5 (5c) (ENTRY) ; the citation repair (S1'') and
the (G4') separation from PIECE TRAP-LICENSE Sections 3-4, checker SOUND /
AM-R5-26(b)]

(ENTRY-COMP) COMPANION LEG, SINGLE VINTAGE. At the companion target the entry
bound is proved at the SMOOTH envelope D_2 - where PE-DOORREACH Sections 2 + 5
are INSTANTIATED, not analogised (T4.1) - and transferred to the rough target by
(ENV-MON):
     P_y( H_{TRAP_2^cl} < H_S )  <=  P_y( H_{D_2} < H_S ) .
Enlarging the target can only raise the probability, so proving the bound for the
LARGER, SMOOTH target proves it for the smaller, rough one. The rows PE-DOORREACH
consumes are met at D_2 by (T4.2) alone; Regime A is the standing hypothesis,
Theta(z,S) <= theta_2 - c_0, and all rows are checked for
beta >= beta_env := max( 4G/c_0, 2/c_0 ), beta-free.
[PROV: PIECE TRAPOCC-4 (T4.3) + Section 3 row re-check at D_2 ; cures XE-4
finding 1, checker SOUND / AM-R5-26(a)]
[TYPED -> S7: (C1) REGIME B]

3.3 THE LOWER BOUND AT H^1 STRENGTH

(CAP-LOW*-H1) Let z in R_0 with dist(z,S) >= 4/beta, rho = 1/beta,
A_z := closed B_rho(z), and let gamma, Tub, Ell, J, Ar, En(J) be the tube objects
of Section 3.4 with beta >= beta_*. Then, for the (WFF-1) variational capacity at
the plate,
     cap_pl(A_z) = cap(A_z, closure(S))
                 = inf{ D(f) : f in H^1(M), f~ = 1 q.e. on A_z,
                                            f~ = 0 q.e. on closure(S) }
                 >= 1 / En(J)
                 >= ( Ar / ( beta Ell ) ) exp( -beta ( Theta(z,S) + eta + G/beta ) )
                 =  c(N,delta) beta^{-2N} exp( -beta ( Theta(z,S) + eta ) )
                 =: LB(beta),      c(N,delta) beta-free.
PROOF. Apply (CLASS-BRIDGE) with A := A_z, B := closure(S), L := 1/En(J).
  HYPOTHESIS ROWS: (i) A, B disjoint compacts - MET by the plate separation row,
  margin >= 3rho; (ii) (LIP-BOUND) at these A, B - MET by the LANDED display,
  verbatim: "for Lipschitz f with f = 1 on A_z, f = 0 on S,
  (int <J, grad f>)^2 = 1 <= En(J) D(f)", the elementary (Cauchy-Schwarz) half of
  THOMSON'S PRINCIPLE, proved inline; J is divergence-free inside Tub, tangential
  on the lateral boundary, with unit flux, and En(J) := int |J|^2 / w.
  The tube's MAX ENERGY, not any pointwise value, is what enters:
  sup_Tub E_eps <= Theta(z,S) + eta + G rho.
SINGLE VINTAGE: this display SUPERSEDES the landed Lipschitz-class (CAP-LOW*) at
the pair (A_z, S). The Lipschitz display remains the INPUT (LIP-BOUND); the
delivered object is the H^1/q.e. condenser capacity at the plate.
[PROV: PIECE CAP-LOW-H1 v2, DELIVERED DISPLAY (CAP-LOW*-H1) ; cures XE-5
finding 3 unconditionally, with no constant, no power of beta and no exponent
moved; AM-R5-27(b)]

3.4 THE TUBE GEOMETRY: THE MAX METRIC

SINGLE VINTAGE: the tube is the MAX-METRIC tube. The landed Step-4
(Geometry/Flow) block and the landed Step-6 arithmetic are SUPERSEDED, and the
earlier half-repair is WITHDRAWN. The tube radius is unified to the operative
value everywhere, and every verbatim consumer of the superseded delivered display
now reads the max-metric tube's display.
[PROV: PIECE DOORREACH-MAXFIX (AM-R5-18 replacement of PE-DOORREACH Step 4 and
Step 6) ; cures XE-1 F4, checker findings cured by AM-R5-18(c)]

(MARG) THE MARGIN CONDITION. With the tube Tub of radius r built along the arc
from the source disc at parameter s_0,
     Tub subset B^max_{delta/2}(g*)  as soon as  r <= (s_0/ell(z))(delta/2),
and since ell(z) <= sqrt(2N) delta/2 it SUFFICES that
     r <= s_0 / sqrt(2N) .
TWO READINGS, BOTH RECORDED:
  - GEOMETRIC CEILING. With the generous start s_0 = delta/8, (MARG) reads
    exactly r <= delta/(8 sqrt(2N)) =: r_tube, sharp for that start.
  - OPERATIVE RADIUS. The source disc must lie in A_z, so s_0 = rho/2 and
       r = rho / (2 sqrt(2N))
    meets (MARG) with EQUALITY, and sqrt(s_0^2 + r^2) <= rho/sqrt(2) < rho puts
    the source disc D_0 := { z + s_0 v + y : y perp v, |y|_2 <= r } inside A_z.
    Moreover r <= r_tube whenever rho <= delta/4, i.e. beta >= 4/delta (inside
    beta_*). The operative tube is thus thinner than the geometric ceiling
    everywhere.
THE SINK LANDS IN THE PLATE, LEGITIMATELY. The terminal disc is
D_end := { p + y : y perp v, |y|_2 <= r } with p := z + s_1 v, so
|p - g*|_2 = delta/8 by construction; for y in D_end, Pythagoras and the norm row
give |y - g*|_2 = sqrt( (delta/8)^2 + |y - p|_2^2 ) <= (delta/8) sqrt(1 + 1/(2N))
<= (delta/8) sqrt(1.05) < delta/7.
CROSS-SECTION AREA: Ar := omega_{n-1} r^{n-1} at the OPERATIVE radius
r = rho/(2 sqrt(2N)); sqrt(2N) is beta-free, so c(N,delta) in (CAP-LOW*-H1)
remains beta-free.
[PROV: PIECE DOORREACH-MAXFIX (4'b)(MARG) and (4'd) ; AM-R5-18(c), radius unified
to r = rho/(2 sqrt(2N)) everywhere]

BETA-POWER ACCOUNTING, STATED ONCE SO IT IS NOT PAID TWICE: the raw tube bound
carries beta^{2N+1}, and sup_b b^{2N+1} e^{-b s} = C_s < infinity for every fixed
s > 0. The reach factor is therefore consumed as the s-PARAMETRIC display, which
is BETA-FREE: its beta^{2N+1} has ALREADY been paid, once, as the loss s. Exact
s = 0 is NOT available - it would need a beta-dependent prefactor. Each occupation
display carries exactly beta^{2N} and nothing more.
[PROV: AM-R5-22 s-parametric retype (superseding AM-R5-18(c)'s "any fixed s > 0
absorbs" / "keeps the exact N/4 allowance" pair, incompatible at s = 0), carried
as absorptions (i)-(ii) of PIECE E2-ASSEMBLY v2 (A3) ; SOUND / AM-R5-25]

========================================================================
END SECTIONS 0-3
========================================================================

=======================================================================
4. THE FOUR DISPLAYS
=======================================================================

The chain consumes exactly four quantitative displays. Each is stated
once here, at its final operative vintage, with its provenance tag.
Nothing below is re-derived; where a source carries superseded layers,
only the surviving layer is printed and the supersession is named.

STANDING OBJECTS (named once, used throughout Sections 4 and 5).
  (F_s)_{s>=0}   the augmented natural filtration of the standing SDE;
                 paths continuous on the compact M = T^{2N}.
  Sec_k       := {w_theta = k}, OPEN.
  S           := the max-norm ball B_{delta/4}(g*); S^+ := B_{delta/2}(g*),
                 OPEN; dS^+ its boundary sphere.
  R_0         := {w_theta = k, w_phi = 0, E_eps <= S_k + c_H}.
  O_eta       := {w_theta = k, w_phi = 0, E_eps < S_k + c_H + eta}, eta > 0;
                 R_0^* := the connected component of O_eta containing g*.
  Door        := {E_eps = S_k + c_H, w_theta = k, w_phi = 0}.
  rho         := 1/beta;  A_z := closed B_rho(z).
  STRAT, TRAP, TRAP_2 as in Section 5.1 below.

STOPPING OBJECTS, EXACT.
  H_S        := inf{ s >= 0 : X_s in S }.
  theta^+(t) := inf{ s >= t : X_s not in S^+ }   (exit time of an OPEN set).
  D(t)       := inf{ s >= theta^+(t) : X_s in S }.
  L          := inf{ s > 0 : X_s not in Sec_k }  (exit time of an OPEN set).
  T          := min( D(0), L );  T_i := min( D(sigma_{i-1}), L_i ).
  tau_lev    := inf{ s >= 0 : E_eps(X_s) >= S_k + c_H }  (hitting time of a
                CLOSED set); tau_theta := inf{ s >= 0 : E_eps(X_s) >= theta }.
For a continuous adapted process each of these is an (F_s)-stopping time by the
elementary closed-set / open-set argument. NO INDEPENDENCE IS USED OR CLAIMED
ANYWHERE IN SECTIONS 4 OR 5; every conditioning step below is a strong-Markov
equality of conditional laws at a named (F_s)-stopping time.

-----------------------------------------------------------------------
4.1 (REACH-s) — THE DOORWAY REACH FROM THE COLLAR, READ s-PARAMETRIC
-----------------------------------------------------------------------

  For every FIXED s > 0 (err class; s <= L_eps N delta^2/4 suffices
  for the corpus ranges), with C_s(eps, delta) beta-free:

    sup_{z in dS^+} P_z( tau_lev < T )
      <= C_s exp( -beta ( S_k + c_H - m_k - eps w_k
                          - L_eps N delta^2/4 - s ) ).        (REACH-s)

[PROV: LEMMA PE-DOORREACH (checker SOUND), tube step replaced by PIECE
DOORREACH-MAXFIX (cures XE-1 F4) ; retyped s-parametric by AM-R5-22 (cures
XE-2 F5/F4) ; XE-3 two-way verification ACCEPTS the retype as signed]

WHY THIS IS THE ONLY VINTAGE. The earlier exact form at allowance
L_eps N delta^2/4 with "C_1 beta-free" is SUPERSEDED: the honest output of
DOORREACH-MAXFIX carries beta^{2N+1}, and sup_{b>0} b^{2N+1} e^{-b s} = C_s
< infinity for every fixed s > 0, while s = 0 forces a beta-dependent constant.
The register row demanding beta-freeness at exact N/4 is RETYPED at the
CONSUMED strength: no consumer needs s = 0. The instance s := L_eps N delta^2/4
is the N delta^2/2 form of the MAXFIX repair; smaller s are equally delivered.

DIRECTION. s is a LOSS — the exponent shrinks. Every consumer of (REACH-s) in
this document consumes an UPPER bound on the reach probability, so the retype
is conservative in the correct direction at every site.

CONSUMPTION. (REACH-s) is applied exactly ONCE, on the TRAP leg of Section 5.2
STEP 5, composed at tau_lev by the strong Markov property. It is NOT applied to
the TRAP_2 leg — see the CONSUMPTION RULE of Section 4.4.

-----------------------------------------------------------------------
4.2 (ENTRY-W) — THE WEAK THREE-SET RATIO AND ITS MARGIN
-----------------------------------------------------------------------

[PROV: PIECE ENTRY-W v2 (cures XE-5 F1, the F1xF2 plate seam) ; two adversarial
rounds 2026-07-27, (RATIO-W) and the chained Harnack SURVIVE independent
recomputation both rounds ; ledger residuals disposed/TYPED in AM-R5-27(c1)]

(a) THE RATIO ITSELF.

For pairwise disjoint compacts A, P, F in M, EACH OF POSITIVE CAPACITY (nonpolar
- see (POS-CAP) at (WFF-1), which also names the consumed instances), with
H := h_{F,P} the (WFF-1)
equilibrium potential and nu := e_A/e_A(A) the (WFF-2) equilibrium probability
measure of A against P u F, carried by the COMPACT A:

  E_nu[H]  =  (int_A H de_A) / cap(A, P u F)          [(W0), (W-FLUX)]
           =  e_F(F) / cap(A, P u F)
          <=  cap(A, F) / cap(A, P u F)               [(W-NUM)]
          <=  cap(A, F) / cap(A, P).                  [(W-MON)]     (RATIO-W)

CONSUMED: (WFF-1) at four pairs of disjoint compacts; (WFF-2) at the same four
pairs, including its probabilistically proved positivity and the landed
three-set split; the finite-energy-measure testing row; symmetry of the
Dirichlet form D; Gilbarg-Trudinger Lemma 7.6; connectivity of M; positivity of
cap(A). NOT CONSUMED: Green's first or second identity, any surface measure,
any normal or directional derivative, any exterior sphere or cone condition,
any C^0(closure) framing, any regularity of dA, dP or dF, any independence.

DIRECTION CHECK. Both inequalities point the conservative way: (W-NUM) raises
the numerator to a capacity the ramp bounds above; (W-MON) lowers the
denominator to a capacity the tube bounds below. (RATIO-W) is an UPPER bound on
E_nu[H], which is what the consumer needs.

RELATION TO THE SUPERSEDED FORM. (RATIO-W) is PE-DOORREACH (2c)'s
"(RATIO) E_nu[h] = Fl / cap(A, S u Door') <= cap(A, Door') / cap(A, S)" with
(a) the smooth-boundary hypothesis row DELETED, not weakened; (b) the boundary
flux Fl replaced by the Riesz mass e_F(F); (c) nu carried by A instead of dA.
NO VALUE, NO CONSTANT AND NO EXPONENT DIFFERS.

(b) THE CHAINED HARNACK.

CLASSICAL FACT, NAMED: Gilbarg-Trudinger Thm 8.20 (Harnack inequality).
HYPOTHESIS ROWS, each checked in ENTRY-W v2 Section 4B: H a NONNEGATIVE weak
solution on a domain Omega — HOLDS ((WFF-1) equilibrium potential, weak
solution off its poles, 0 <= H <= 1); the estimate is interior on a ball whose
double lies in Omega — this is the row that fails at the landed instantiation
and forces the chain (the landed standing separation is exactly 4rho, while a
single application at the required scale would need dist(z,P) >= 7rho);
constant depending on the dimension n and the coefficient bounds — HOLDS,
delivered as C(n, e^{4G}).

  (PTW-W)  For every y in B_{2rho}(z) and every beta >= beta_W:
              H(y) <= C_H'' inf_{A_y} H,   C_H'' := C(n, e^{4G})^8, BETA-FREE.

THE CHAIN: after rescaling, fix x with |x| <= 1, put p_i := (i/m) x for
i = 0,...,m with m := 8, and apply the named Harnack estimate once per link.
Undoing the rescaling gives H(y) <= C_H'' H(x) for every x in A_y, i.e.
H(y) <= C_H'' inf_{A_y} H; and since nu_y is a probability measure carried by
A_y,
     H(y) <= C_H'' inf_{A_y} H <= C_H'' int H dnu_y = C_H'' E_{nu_y}[H].
The only cost of the chain relative to a single application is the constant,
from C_H' to C_H'' = C(n, e^{4G})^8 — displayed, not hidden, and beta-free.

(c) THE QUANTIFIER, AS THE LANDED ROW STATES IT.

THE LANDED STANDING SEPARATION, VERBATIM AND WITH ITS PARENTHETICAL:
  "Fix z in R_0 with dist(z,S) >= 4/beta (Section 7 removes this) and put
   A_z := closed B_rho(z), rho = 1/beta."

(ENTRY-W) IS THEREFORE STATED IN THREE CASES. THE SPLIT IS EXHAUSTIVE IN THE
QUANTIFIED SET, NOT IN ALL z. The blanket wording "EXHAUSTIVE IN z" is WITHDRAWN
as FALSIFIED; XE-6 S1 exhibits the omitted stratum: "The three advertised cases
are not exhaustive. A point z in boundary(S) = closure(S) \ S satisfies z notin S
and dist(z,S) = 0, hence lies in none of Cases 0-2." The three cases below are
exactly the LANDED quantifier (dist(z,S) >= 4/beta), the LANDED near-S reduction
(0 < dist(z,S) < 4/beta), and the z in S scope-out; boundary(S) is in none of them
and is CLAIMED by none of them. XE-6 grades the omission NONBLOCKING for the exact
boundary(S^+) use this document makes, and the reason is checkable here: every
consumer instantiates at collar starts, and at z in dS^+ the landed convention
dist_euc >= dist_max gives dist(z,S) >= delta/4 >= 4/beta for beta >= 16/delta, a
clause of beta_* — CASE 1, with room. [TYPED -> S7: T-8, the XE-6 (c1) all-z scope
note — an EXISTING register row; nothing here asks for a new one.]
  CASE 0 (z in S). (ENTRY-W) IS NOT CONSUMED: the consumer's left side
    vanishes, "If z in S then H_S = 0 and the left side is 0". A SCOPE ROW, NOT
    A PROOF STEP; no capacity object is formed at such z.
  CASE 1, MAIN BRANCH (z in R_0, Regime A, dist(z,S) >= 4/beta). Grounding
    compact P = closure(S). THIS IS THE LANDED QUANTIFIER, UNENLARGED.
  CASE 2, NEAR-S BRANCH (z in R_0, Regime A, 0 < dist(z,S) < 4/beta). The
    LANDED reduction replaces S by S', and every step re-runs with
    P' := closure(S'). [TYPED -> S7: (NEARS-ERR)]

THE LANDED NEAR-S REDUCTION, VERBATIM:
  "NEAR-S CASE (removing dist(z,S) >= 4/beta). If z in S then H_S = 0 and the
   left side is 0. If 0 < dist(z,S) < 4/beta, replace S by
   S' := B_{delta/8}(g*) subset S: H_S <= H_{S'} so the occupation before H_S
   is dominated by the occupation before H_{S'}, and
   dist(z,S') >= delta/8 - 4/beta > 2/beta for beta >= beta_*. Every step above
   runs with S', and (CAP-LOW*) is unchanged in the exponent because sup_{S}
   E_eps and sup_{S'} E_eps differ by O(delta^2) inside the same err class. No
   exponent moves."
The separation is re-derived at the closed set: 0 < dist(z,S) forces
|z - g*|_max >= delta/4, so dist_max(z,S') >= delta/4 - delta/8 = delta/8 and
dist(z,P') = dist(z,S') >= delta/8 by the landed convention dist_euc >=
dist_max together with dist(z, closure(B)) = dist(z,B).

THE THREE-CASE FORM IS MANDATORY, and the record says why: a blanket delta/4
plate separation for every z in R_0 in Regime A is FALSE — R_0 contains g*, the
CENTRE of S, and Regime A does not exclude starts inside or beside the plate.
CASE 0 and CASE 2 are, respectively, forms (a) and (b) of the repair the
corpus's own checker made a landing precondition.

(d) THE CONDITIONAL DENOMINATOR — WIRED ONCE.

DEFINITION, ONCE: cap_pl(A) := cap(A, closure(S)), the (WFF-1) variational
capacity at the plate, i.e. the infimum of D over
  { f in H^1(M) : f = 1 q.e. on A, f = 0 q.e. on closure(S) };
in the near-S branch the same symbol is read at P' = closure(S').

  (CAP-LOW-H1)  cap(A_y, P) >= c(N,delta) beta^{-2N} exp( -beta ( Theta(y,S)
                + eta ) ),  c(N,delta) beta-free, eta the arc-optimality slack;
                NEAR-S BRANCH: the same row at P', with Theta(y,S').

WIRING, STATED ONCE FOR THE WHOLE DOCUMENT: (CAP-LOW-H1) is Section 2's row
(PIECE CAP-LOW-H1 v2 / CAP-CLASS-BRIDGE v2, the core-vs-H^1 condenser bridge
curing XE-5 F3). (ENTRY-W) consumes it as the denominator of (RATIO-W) and is
CONDITIONAL on it EXACTLY where the superseded (ENTRY) was already conditional,
and NO WORSE: the superseded display carried cap(A_y,S), re-read as cap_pl(A_y),
and XE-5 F3 blocked that same symbol at that same site. (ENTRY-W) introduces NO
NEW conditionality on the denominator and REMOVES the plate-regularity
conditionality on the ratio. This sentence is the only place the wiring is
stated; no later section re-opens it.

(e) THE DISPLAY.

THE SECOND STEP'S TWO OBJECTS, DEFINED HERE BECAUSE THEY ENTER NOWHERE ELSE.
[PROV: PIECE ENTRY-W v2 Section 6A (the lemma and its target-side instance) and
Section 6B (the probabilistic corroboration)]
  H_2 := h_{D_2, closure(S)}, the (WFF-1) equilibrium potential of the SMOOTH
  ENVELOPE D_2 of Section 1.3 against the plate; h_pl := h_{TRAP_2^cl,
  closure(S)}, the same object at the closed companion target.
  (ENV-VAR) is the TARGET-SIDE instance of ONE lattice lemma, quoted with its
  hypothesis row and its consumption row:
    "(LAT-MON) Let Y1 subset Y2 be compacts and Q1 superset Q2 be compacts, with
     Y2 inter Q1 = empty. Then h_{Y1,Q1} <= h_{Y2,Q2} q.e. on M."
    "INSTANCE (ENV-VAR), TARGET SIDE: Y1 = TRAP_2^cl subset D_2 = Y2 by (R5),
     Q1 = Q2 = closure(S). Therefore
       h_pl := h_{TRAP_2^cl, closure(S)}  <=  H_2 := h_{D_2, closure(S)}
       q.e. on M.  (ENV-VAR)"
    "CONSUMES: (R5)'s level clause and nothing else about Y; no regularity of Y,
     D_2, S or S'; no probabilistic input."
  The inclusion the instance rests on — TRAP_2^cl subset D_2 — is the ENVELOPE
  INCLUSION of Section 1.3; ENTRY-W v2 cites it internally as its row (R5), and no
  other property of it is read.
  PROOF ROWS OF (LAT-MON), NAMED, NOT RE-RUN: admissibility of u ^ v for (Y1,Q1)
  and of u v v for (Y2,Q2); STAMPACCHIA TRUNCATION (CLASSICAL FACT, NAMED:
  Gilbarg-Trudinger Lemma 7.6; hypothesis row: u, v in W^{1,2} — MET), giving
  D(u ^ v) + D(u v v) = D(u) + D(v); uniqueness of the (WFF-1) minimiser, checked
  in place by the parallelogram law with M connected and w > 0.
  WHICH ROUTE IS EXECUTED: "the EXECUTED route uses the variational
  (LAT-MON)/(ENV-VAR) of Section 6A; (ENV-MON) is retained as recorded
  corroboration (6B). Both give the identical inequality." So the pathwise
  (ENV-PATH) and the probabilistic (ENV-MON) of Section 1.3 CORROBORATE this step;
  they are not it. (ENV-VAR) is a q.e. inequality, which is the strength the
  consumer needs and the strength the display below carries.
  CONSUMER-WALK NOTE, so the import ledger stays checkable: this is a READ SITE of
  Gilbarg-Trudinger Lemma 7.6, NAMED — the instruction is EXECUTED, not pending — in the (N9)/IMP-6 consumer walk (W-a) of
  Section 2.3 alongside its (W-NUM) site.

(ENTRY-W)  For every z in R_0 in REGIME A (Theta(z,S) <= theta_2 - c_0) with
dist(z,S) >= 4/beta [CASE 1; CASE 2 identical with P', Theta(.,S') and beta_W';
CASE 0 not consumed], for every y in the OPEN ball B_{2rho}(z) — in particular
for every y in the solid closed ball A_z and for every y in dA_z — and for
every beta >= beta_W:

  h_2(y)  :=  h_pl(y)  =  P_y( H_{TRAP_2^cl} < H_{closure(S)} )
                       =  P_y( H_{TRAP_2^cl} < H_S )      [(PLATE-REG)(h4), q.e.]

          <=  H_2(y)                                       [(ENV-VAR)]

          <=  C_H'' * cap( A_y , D_2 ) / cap( A_y , P )    [(RATIO-W) at
                                                            (A_y, P, D_2) + (PTW-W)]

          <=  C_3 * beta^{2N+1} *
              exp( -beta ( theta_2 - Theta(z,S) - 2G/beta - eta ) )

          <=  C_3 * e^{2G} * beta^{2N+1} * exp( -beta ( c_0 - eta ) )  [Regime A]

          <=  1/2      for all beta >= beta_2(N,delta,eps),
                       PROVIDED (ENTRY-MARGIN) HOLDS,

with  C_3 := C_H'' * C_up' / c(N,delta),  C_H'' = C(n, e^{4G})^8,
C_up' = e G^2 V_M, c(N,delta) the (CAP-LOW-H1) constant — ALL beta-FREE.

TWO NUMERATOR VINTAGES, TWO SYMBOLS, SPLIT BY NAMING [XE-8 F1 residual 2]. The
display above is the COMPANION leg, whose numerator is PE-DOORREACH's own ramp at
theta = theta_2 with the beta-free factor C_up' = e G^2 V_M; C_3 is and remains
that leg's constant and NOTHING BELOW CHANGES IT. The MAIN leg of (g)/(h) reads a
DIFFERENT numerator - (CAP-UP-GATE) of Section 3.1, whose landed display is
cap(A_z, TRAP) <= e^2 G^2 V_M beta exp( -beta Theta(z,TRAP) ), carrying e^2 and
not e, because the component truncation forced by TRAP not being a superlevel set
costs a second Euler factor that the companion's superlevel ramp does not pay.
The main route therefore reads its OWN symbol:
     C_3^main := C_H'' * e^2 G^2 V_M / c(N,delta),   C_H'' = C(n, e^{4G})^8,
beta-free, and DISTINCT from C_3 by exactly the factor e. NOT CLAIMED: that the
two are equal, or that the -2G/beta center-offset loss supplies the missing
factor - it does not, it is beta-vanishing and is already carried inside the
exponent. NO EXPONENT AND NO beta POWER MOVES; one beta-free prefactor is
enlarged by e on the main leg only.

  (ENTRY-MARGIN)   c_0 - eta > 0            [CASE 1]
                   c_0 - eta - err_S > 0    [CASE 2, err_S the (NEARS-ERR) term]

(f) (ENTRY-MARGIN): THE STATE, TWO FACTS, ONE DISPLAY EACH.

FACT 1 — THE GENERAL-z MARGIN IS POSITIVE AFTER THE RE-FREEZE.
  eta := L_eps N delta^2/8   [AM-R5-27(a), executed in place at both operative
                              freeze declarations; the freeze VALUE was always
                              arbitrary — the landed text says "say" — and any
                              fixed positive err-class value serves (T3)/Ell_max
                              identically]
  c_0 := L_eps N delta^2/4   [AM-R5-19(b)]
  ==>  c_0 - eta  =  L_eps N delta^2/8  >  0.                 (MARGIN-GEN)
The superseded numerals are named so no reader re-derives them: at the earlier
freeze eta := L_eps N delta^2 the same difference read 0 at one c_0 numeral and
-(3/4) L_eps N delta^2 at the other, where the displayed bound GROWS in beta.
That vintage is dead; (MARGIN-GEN) is the operative one.

FACT 2 — AT THE CONSUMED STARTS THE ROW IS VACUOUS.
At the collar starts the schedule actually consumes, the level bound is
unconditional (no H-DESC, no H-CONN):
  Theta(z,S) <= m_k + eps w_k + L_eps N delta^2/4,
so the start sits the FULL doorway gap below theta_2 —
  theta_2 - Theta(z,S)  >=  ( S_k + c_H - m_k ) - err - 1/beta
                        =  1.024350 - err - 1/beta
at the flagship cell — not c_0-deep.                          (MARGIN-CONS)
THE -1/beta IS DISPLAYED, NOT DROPPED: theta_2 is Sard-regular in
[S_k + c_H - 1/beta, S_k + c_H], so only theta_2 >= S_k + c_H - 1/beta is
available; e^{-beta(X - 1/beta)} = e . e^{-beta X} exactly, and the factor e is
BOOKED in the beta-free constant ledger at C_5 (the same landed device as the
companion numerator's Sard-offset row, 'times e^1 for the 1/beta Sard offset').
Hence (ENTRY-MARGIN) was REAL at general z and VACUOUS at the consumed z.
Both facts are carried; neither replaces the other.

(g) THE MAIN-LEG WIRING — (RATIO-W) READ AT (A_z, closure(S), TRAP).

[PROV: PIECE ENTRY-W v2 Sections 3-4 — (RATIO-W) and the chained Harnack are
stated at ARBITRARY pairwise disjoint compacts, see (a) and (b) above ; numerator
ramp, exponent and threshold: LEMMA PE-TRAPOCC Section 5 ((CAP-UP-GATE),
(GATE-LOWER), (CAP-LOW*), (ENTRY)), carried at their landed values ; main-target
realization: LEMMA TRAP-EXIST, PIECE TRAP-LICENSE / TRAPOCC-5 (checker SOUND,
three MEDIUMs adopted in AM-R5-26(b))]

WHY THIS SUBSECTION EXISTS, IN ONE SENTENCE. (a) and (b) are stated for pairwise
disjoint COMPACTS with no regularity of dA, dP or dF; the companion leg
instantiates them at (A_y, closure(S), D_2); the MAIN leg's ratio input is landed
on the CLASSICAL route — Green's second identity, a surface measure and a normal
at the target boundary, Schauder up to it, and a smooth killing plate — and it
does not have to be, because the main-leg triple satisfies (RATIO-W)'s hypotheses
exactly. NO NEW MATHEMATICS BELOW: no display, no constant and no exponent is new;
only the ROUTE to the landed (ENTRY) changes, and the classical rows — which the
plate cannot supply, closure(S) being a max-norm CUBE — stop being consumed.

THE TRIPLE QUALIFIES. Fix z as in CASE 1 of (c) and let y in B_{2rho}(z).
(THIS SENTENCE GOVERNS THE ENTRY RATIO ONLY [XE-9 item 1 rewording]: the RATIO's supremum over R_0^* is assembled exactly as (ENTRY-W)'s - CASE 1 by the
chain displayed below; CASE 2 identically with P', Theta(., S') and beta_W';
CASE 0 and boundary(S) not consumed - the consumer's left side is 0 there and
the closure reduction of 4.2(c) applies verbatim.)
 (i) COMPACT. A_y = closed B_rho(y): compact. closure(S): compact, a closed
     max-norm ball in the compact M. TRAP: compact — LEMMA TRAP-EXIST realizes the
     declared sandwich of Section 5.1 as TRAP := { f_s <= r } with f_s in C^inf(M)
     and r in R, a closed subset of M.
 (ii) PAIRWISE DISJOINT, INSIDE THE QUANTIFIED SET OF (c) CASE 1.
     dist(y, closure(S)) >= 2rho: the CASE-1 clause dist(z,S) >= 4/beta = 4rho
     gives dist(y,S) >= 2rho for every y in B_{2rho}(z) — tight, not slack — and
     dist(y, closure(S)) = dist(y,S) by the landed convention of (c).
     dist(y, TRAP) >= 2rho: this is (G4') of Section 1.1, the 4rho-WIDTH form;
     (G4)'s 2rho form is stated AT z and is not enough at y, and closing that
     4rho-versus-2rho gap at the landed threshold is exactly what PIECE
     TRAP-LICENSE does. closure(S) inter TRAP = empty: closure(S) subset
     closure(S^+) subset R_0 by the CLOSURE ROW (AM-R5-21) and R_0 inter TRAP =
     empty by (G4). A_y, of radius rho, therefore misses both.
 (iii) SMOOTHNESS IS AVAILABLE AND IS NOT USED. LEMMA TRAP-EXIST also delivers
     dTRAP = { f_s = r }, a nonempty smooth hypersurface. THE WEAK ROUTE CONSUMES
     NONE OF IT: (a)'s NOT-CONSUMED row already excludes Green's first and second
     identities, every surface measure, every normal or directional derivative,
     every exterior sphere or cone condition, every C^0(closure) framing and every
     regularity of dA, dP or dF. It is recorded because the SUPERSEDED classical
     route needed it and because recording it is what makes the two routes
     comparable — not because this one reads it.
 (iv) NO ENVELOPE STEP IS NEEDED ON THIS LEG. The companion carries (ENV-VAR)
     because TRAP_2^cl is declared BY A FORMULA whose boundary the lane never
     licenses; TRAP is declared BY A SANDWICH, any realization serves, and LEMMA
     TRAP-EXIST supplies one. (RATIO-W) therefore applies to the main target
     ITSELF, with no intermediate object and no second potential.

THE RE-READ, AT THE LANDED VALUES. For every y in B_{2rho}(z):

  h(y)  :=  h_{TRAP, closure(S)}(y)  =  P_y( H_TRAP < H_{closure(S)} )
                                     =  P_y( H_TRAP < H_S )
                                                    [(PLATE-REG)(h4), q.e.]

        <=  C_H'' * cap( A_y , TRAP ) / cap( A_y , closure(S) )
                                  [(RATIO-W) at (A_y, closure(S), TRAP) + (PTW-W)]

        <=  C_3^main * beta^{2N+1} *
            exp( -beta ( Theta(z,TRAP) - Theta(z,S) - eta - 2G/beta ) )

  THE -eta IS CARRIED, NOT SUPPRESSED (XE-7 F3). The denominator is
  (CAP-LOW*-H1) of Section 3.3, whose lower bound is
  c(N,delta) beta^{-2N} exp( -beta ( Theta(z,S) + eta ) ); inverting it puts
  exp( +beta ( Theta(z,S) + eta ) ) into the ratio, so the exponent loses eta
  ONCE HERE, before any level substitution. The frozen main-leg original
  [PX:9077, PHYSICAL (post-banner) coordinates - a NAMED EXCEPTION to the
  pre-banner default of Section 8.1, the same line §3.2 cites] omits this term; the omission is repaired here, and eta is of err
  class by (ETA), eta := L_eps N delta^2/8. The full two-eta accounting for the
  leg is displayed once, at 4.2(h.7).

NUMERATOR — the landed main-leg ramp, carried unchanged:
    cap(A_z, TRAP) <= e^2 G^2 V_M beta exp( -beta Theta(z,TRAP) )    (CAP-UP-GATE)
    Theta(z, TRAP) >= Gate - 4G/beta = m_k + 2 lambda - 4G/beta       (GATE-LOWER)
  (CAP-UP-GATE)'s admissibility needs only that no arc from z below the Sard-
  regular ramp level reaches TRAP, which is the definition of Theta(z,TRAP); no
  property of dTRAP enters.
DENOMINATOR — (CAP-LOW-H1) of (d), THE SAME ROW the companion consumes, read at
  P = closure(S). No second conditionality is introduced: (d)'s wiring sentence is
  stated once for the whole document and covers this instance as written.
CONSEQUENCE, WITH BOTH eta LOSSES PAID (XE-7 F3): by (GATE-LOWER) with
  Theta(z,S) <= S_k + c_H + eta, the exponent is at least
  Gate - S_k - c_H - 2 eta - 6G/beta >= 3 c_H - 2 eta - 6G/beta > 0 on (G1)'s
  chain Gate >= S_k + 4 c_H, so h <= 1/2 for every beta >= beta_1, beta_1
  beta-free AND READ AT ITS ENLARGED VALUE max(beta_1^hist, beta_1^weak) of
  Section 0.5 [XE-8 F1 residual 3]: THIS display is the one beta_1^weak is the
  witness for - it runs C_3^main, the chained C_H'' and the TWO-eta margin, none
  of which the historical beta_1^hist was derived against. TWO eta ENTRIES ARE PRINTED BECAUSE TWO ARE PAID: one by the
  (CAP-LOW*-H1) denominator of the display above, one by the level bound
  Theta(z,S) <= S_k + c_H + eta. With eta := L_eps N delta^2/8 (ETA), the
  positivity 3 c_H - 2 eta > 0 is the err-class inequality
  L_eps N delta^2/4 < 3 c_H = 0.9756497373 at the flagship scalars, of the same
  class as (SML') and collected at that site. NO EXPONENT AND NO RATE MOVES.
  [-> S7.2 THRESHOLD LIST: beta_1, consumed here and at Section 3.2]

CONSTANT, ONE VINTAGE PER LEG, TWO LEGS, TWO SYMBOLS [XE-8 F1 residual 2]. This
leg's constant is C_3^main := C_H'' e^2 G^2 V_M / c(N,delta) with
C_H'' = C(n, e^{4G})^8, declared once at (e) and read here: the numerator is
(CAP-UP-GATE)'s cap(A_z, TRAP) <= e^2 G^2 V_M beta exp(-beta Theta(z,TRAP)), so
the Euler factor is e^2, NOT the companion's e. (e)'s C_3 := C_H'' C_up'/c(N,delta)
with C_up' = e G^2 V_M stays the COMPANION's and is not read on this leg. The SUPERSEDED classical reading carried C_H' — the SINGLE
Harnack application — in the same slot. Only the constant differs; both are
beta-free; NO VALUE IN THE EXPONENT MOVES.

WHAT THE WEAK ROUTE DELIVERS THAT THE CLASSICAL ONE DID NOT. The bound holds for
every y in the OPEN ball B_{2rho}(z), hence q.e. on the SOLID closed ball A_z and
not merely on dA_z — the same strengthening (ENTRY-W) supplies on the companion
leg, and the strength the flux/minimum-principle sandwich actually consumes.

SCOPE FENCE. (g) re-routes the (ENTRY) input at the MAIN target TRAP and nothing
else. (REACH-s) of Section 4.1 is a distinct display at a distinct target (Door')
with its own lineage (PIECE DOORREACH-MAXFIX) and is NOT re-routed here.


-----------------------------------------------------------------------
4.2 (h) THE MAIN-LEG OCCUPATION MACHINERY, RE-FOUNDED WEAK AT THE PAIR
        (TRAP, closure(S)) AND THE TRIPLE (A_z, closure(S), TRAP)
-----------------------------------------------------------------------

[PROV for the whole subsection: Section 2.2 (WFF-1)/(WFF-2)/(WFF-3) and its
RE-PROVED IDENTITIES block, each stated for a PAIR of disjoint compacts and
INSTANTIATED here at the main pair ; Section 2.5's (V2ID) three ingredients,
(POLAR-OPEN), (MV-t) and the operative lineage (DE-CS-0), likewise instantiated ;
Section 2.3's import row (N9)/IMP-6 ; Section 4.2(a)(b), (RATIO-W) and (PTW-W)
stated at ARBITRARY pairwise disjoint compacts ; Section 4.2(g) for the triple's
hypothesis rows and for the solid-ball h <= 1/2 ; the landed numerator, floor and
denominator rows carried at their landed values, (CAP-UP-GATE) and (GATE-LOWER)
Section 3.1, (CAP-LOW*-H1) Section 3.3, (MU-TRAP) [PX:9084-9085] ; the SUPERSEDED
classical originals (EQ-OCC), (FLUX-ID'), (SANDWICH), (RATIO*), (PTW*) are
[PX:9028-9058], recorded and NOT consumed ; cures XE-7 F1 at its stated minimum
strength, and carries XE-7 F3's second eta at the main ratio]

WHY THIS SUBSECTION EXISTS, IN ONE SENTENCE. Subsection (g) re-routes the
main-leg ENTRY RATIO and therefore delivers the sandwich HYPOTHESIS at solid-ball
strength, but it does NOT deliver the OCCUPATION IDENTITIES that (TRAPOCC-UNIF)
consumes; those were landed on the classical route - Green's second identity, a
surface measure and a normal at dTRAP, and the assertion "By (G4) and the choice
of beta_*, A_z, S, TRAP are pairwise disjoint compacts with smooth boundaries and
B_{2rho}(z) subset Omega" [PX:9045], which is FALSE at the grounding set because
closure(S) is a max-norm CUBE - so this subsection instantiates the Section-2 weak
framework at the main pair and the main triple, proves the main-target analogues
of (EQ-OCC), (FLUX-ID'), the measure sandwich and the pointwise step, and
rederives (TRAPOCC-UNIF).

NOTHING PRINTED MOVES. Same horizon and integrand; the START SET is the narrowed Door inter R_0^* per (DOOR-CASE1) - the ratio-only full-domain statement is separate and unchanged, same horizon, same
indicator, same beta^{2N}, same exponent. ONE beta-free constant changes lineage,
C_H' -> C_H'' inside C_4 - the SAME move (g) already makes inside C_3^main and the
same shape XE-7 F2 prescribes for C_5.

MIRROR STATEMENT, ONCE: this subsection is the EXACT MIRROR of the companion
route Section 2.2 already carries and XE-6/XE-7 already adjudicated. Every row it
reads is a row stated there for the PAIR structure; what is new is the INSTANCE,
which the corpus never formed.

(h.1) THE OBJECT LINE AND THE HYPOTHESIS ROWS, ONCE.

(MAIN-SUB) OBJECT LINE:
     Y := TRAP;  Y' := closure(S) = THE KILLING PLATE, the CLOSED max-norm ball
     B^max_{delta/4}(g*);  z as in CASE 1 of (c), A_z := closed B_rho(z),
     rho = 1/beta;  G := M \ closure(S);
     Omega_main   := M \ (TRAP u closure(S));
     Omega''_main := M \ (A_z u closure(S) u TRAP).

HYPOTHESIS ROWS, EACH CHECKED AT THE MAIN PAIR/TRIPLE. This row block is the
instantiation the frozen record never performed.
  (M1) Y, Y' COMPACT AND DISJOINT - HOLDS. TRAP is compact: LEMMA TRAP-EXIST
       realizes the declared sandwich as TRAP := { f_s <= r } with f_s in
       C^inf(M) and r in R, a closed subset of the compact M, as 4.2(g)(i)
       records. closure(S) is compact, a closed max-norm ball in M, per
       (PLATE-SUB) and 4.2(g)(i). closure(S) inter TRAP = empty by 4.2(g)(ii),
       through the CLOSURE ROW (AM-R5-21) and (G4). NO boundary regularity of Y
       and NO boundary regularity of Y' enters.
  (M2) A_z COMPACT AND DISJOINT FROM BOTH - HOLDS at the CASE-1 quantifier:
       dist(y, closure(S)) >= 2rho and dist(y, TRAP) >= 2rho for every y in
       B_{2rho}(z), the two separations 4.2(g)(ii) establishes from the CASE-1
       clause dist(z,S) >= 4rho and from (G4')'s 4rho-width form.
  (M3) REGULAR DIRICHLET FORM AND ASSOCIATED HUNT PROCESS - HOLDS, and it is
       target-blind: (D, H^1(M)) is a regular Dirichlet form on L^2(M, mu) (M
       compact smooth; w = (1/beta) e^{-beta E_eps} smooth, bounded above and
       below away from 0; mu = e^{-beta E_eps} dx smooth strictly positive), and
       the associated Hunt process is the standing diffusion by ROW SR-PE1.2
       reversibility div(w grad u) = mu L u. THIS IS (WFF-1)'s HYPOTHESIS ROW,
       quoted at its Section-2.2 site and read here unchanged.
  (M4) 1_Y in L^2(M, mu) - HOLDS: 1_TRAP is Borel, bounded by 1, and mu(M) is
       finite, M being compact and mu smooth.
  (M5) POSITIVE CAPACITY AT THE CONSUMED INSTANCES - HOLDS, and it is stated
       because (WFF-1)/(RATIO-W) are over-quantified without it. cap(A_z,
       closure(S)) >= c(N,delta) beta^{-2N} exp(-beta(Theta(z,S) + eta)) > 0 by
       (CAP-LOW*-H1). cap(TRAP, closure(S)) > 0 because dTRAP = { f_s = r } is a
       NONEMPTY regular level set (LEMMA TRAP-EXIST (S4), under T-12's
       nonemptiness/properness row), so TRAP contains a closed ball, and the
       (CAP-LOW*-H1) Thomson-tube construction run from that ball to closure(S)
       is a strictly positive lower bound; capacity monotonicity in the first
       argument then gives the claim. Monotonicity is the only other property of
       capacity read anywhere below.
  (M6) FINITENESS OF THE OCCUPATION POTENTIAL - HOLDS:
       v(x) := E_x[ int_0^{H_S} 1_TRAP(X_t) dt ] <= E_x[H_S] < infinity by
       positive Harris recurrence on the compact elliptic M [PX:9023, THE
       FINITENESS CLAUSE OF THAT ROW ONLY - its Calderon-Zygmund / Sobolev
       "v in C^{1,alpha} up to dS and dTRAP" clause is HISTORICAL and is read at
       NO step of (h)].
  (M7) SMOOTHNESS OF dTRAP IS AVAILABLE AND IS NOT CONSUMED. LEMMA TRAP-EXIST
       delivers dTRAP = { f_s = r }, a nonempty smooth hypersurface. THE WEAK
       ROUTE READS NONE OF IT; (h.8) enumerates by name what is not read. It is
       recorded because the SUPERSEDED classical route needed it and because
       recording it is what makes the two routes comparable - exactly as
       4.2(g)(iii) records it for the ratio.
  (M8) THRESHOLDS. beta >= beta_S4 := max(2/c_plate, 8/delta) for (h.2);
       beta >= beta_W for (h.5); beta >= beta_1 for the (h.3) hypothesis;
       beta >= beta_* for (M2); and beta >= beta_door := 8G/c_plate for the
       (DOOR-CASE1) containment of (h.6). ONE NEW THRESHOLD IS INTRODUCED BY
       THIS BLOCK - beta_door, minted at (DOOR-CASE1) and COLLECTED at the
       S7.2 ledger [XE-8 F1 residual 1's cure]; every other entry is already
       in the S7.2 ledger and is read here at its existing entry.
       beta_S4 IS READ AS A SUFFICIENT VALUE ONLY FOR (h.2)'s OWN STEPS: the
       main-pair steps of (h.2) consume no c_plate-specific geometry (c_plate is a
       companion separation constant); any beta at or above the ledger entry
       serves, and reusing the ledger entry avoids minting a redundant symbol.
       BUT (MAIN-V2ID) IS NOT LICENSED BY beta_S4 ALONE [XE-8 F1 residual 4]:
       its hypothesis rows include (M1), whose disjointness TRAP inter
       closure(S) = empty is obtained through (G4') of Section 1.1 and therefore
       through beta_*. NO DOMINATION beta_S4 >= beta_* IS PROVED OR CLAIMED here
       or anywhere in this document. Accordingly (MAIN-V2ID) is stated at
            beta >= max( beta_S4 , beta_* ),
       both legs already collected in the Section 7.2 ledger, both beta-free.
       Enlarging a threshold only shrinks the range over which a row is asserted:
       NO EXPONENT, NO PREFACTOR AND NO RATE MOVES, and the full asymptotic chain
       imposes both legs anyway.

PX-ANCHOR CONVENTION FOR THIS 4.2(h) BLOCK, SCOPED: this block was authored
against the POST-banner (physical) frozen file, so its PX:n numerals are
physical (pre-banner value + 4), UNLIKE the rest of this document (see the
Section-8 convention note). Resolution is by named tag in every citation; the
numeral is a convenience anchor with the offset stated here once.

(h.2) (MAIN-V2ID): THE MAIN OCCUPATION POTENTIAL IS THE (WFF-3)-AT-THE-MAIN-PAIR
      SOLUTION.

(WFF-3)@MAIN THE WEAK EQUATION FOR v AT THE MAIN PAIR. v^main in H^1(M) is the
unique element with v^main = 0 q.e. on closure(S) and
     D(v^main, f) = int_M f 1_TRAP dmu   for every f in H^1(M) with f = 0 q.e.
                                         on closure(S).
(Weak form of "L v = -1_TRAP on M \ closure(S)" via div(w grad v) = mu L v;
existence and uniqueness by the same Dirichlet principle (WFF-1) runs; bounded by
(M6).) SINGLE VINTAGE: the plate substitution applies TWICE in this row - to the
defining condition and to the test class - and both halves are load-bearing at
different places, the TEST-CLASS half at (h.3) and the DEFINING-CONDITION half at
(DE-CS-0)@MAIN.
[PROV: Section 2.2 (WFF-3), stated at the pair structure with the CURE-XE4-2 v3
plate substitution, INSTANTIATED at Y = TRAP ; rows (M1)(M3)(M4)(M6)]

(MAIN-V2ID) IDENTIFICATION OF THE MAIN-PAIR OCCUPATION POTENTIAL. With
G := M \ closure(S), P := closure(S), Y = TRAP, and v^main the unique solution of
(WFF-3)@MAIN, assume the standing threshold beta >= max( beta_S4 , beta_* )
[XE-8 F1 residual 4: beta_S4 for (h.2)'s own steps, beta_* because (M1)'s
disjointness TRAP inter closure(S) = empty is obtained through (G4') of Section
1.1; no domination between the two is proved, so the max is stated rather than
asserted away]. Then:
  (a)  v^main(x) = E_x[ int_0^{H_{closure(S)}} 1_TRAP(X_t) dt ]
                 = E_x[ int_0^{H_S} 1_TRAP(X_t) dt ]
                 = v(x)                                    for q.e. x in M;
  (b)  the SAME identity holds at EVERY point x of the OPEN set G, with v^main
       read as its C^{0,alpha}_loc(G) version v~;
  (c)  for x in closure(S): v(x) = 0 pointwise by (PLATE-REG), and v^main~ = 0
       q.e. on closure(S) by membership in F_G. NO pointwise identity on
       closure(S) is claimed, and none is consumed.
THE THREE INGREDIENTS, NAMED, WITH THE ROW EACH READS AT Y = TRAP:
 (i)  Steps A-D produce a variational object Lebesgue-a.e. equal to the
      probabilistic occupation potential, via q.e. equality plus (POLAR-OPEN),
      "if N subset M has Cap(N) = 0 then mu(N) = 0 and Leb(N) = 0; consequently
      no set of zero capacity contains a nonempty open set". ROWS READ: (M1),
      (M3), (M4). The construction reads the pair (Y, closure(S)) and no property
      of Y beyond compactness, disjointness and 1_Y in L^2.
 (ii) INTERIOR De Giorgi-Nash-Moser regularity gives v^main a CONTINUOUS version
      v~ on G - a statement about the VARIATIONAL object only, proved from the
      weak formulation it satisfies BY CONSTRUCTION. ROW READ: the right side
      f |-> int_M f 1_TRAP dmu is represented by the bounded density 1_TRAP,
      which is what the interior estimate needs; the boundary of the target is
      not an argument of an INTERIOR estimate.
 (iii) THE SMALL-TIME MEAN-VALUE IDENTITY, MIRRORED WITH ITS PROVENANCE:
      (MV-t)@MAIN  For every z in M and every t > 0,
           v(z) = E_z[ int_0^{t ^ H_P} 1_TRAP(X_s) ds ]
                  + E_z[ 1_{t < H_P} v(X_t) ].
      Letting t -> 0 gives the pointwise identity at EVERY z in G. ROWS READ: the
      MARKOV PROPERTY AT A DETERMINISTIC TIME and the landed transition-density
      row SR-DENS, which lets the a.e.-defined v~ replace the probabilistic
      integrand inside E_z[ . (X_t) ] with zero error. CONTINUITY OF THE
      PROBABILISTIC SIDE IS AN OUTPUT OF THIS ARGUMENT, NOT AN INPUT. The
      identity is a decomposition of the time integral at t ^ H_P and is blind to
      which Borel set the indicator names; Y = TRAP enters only through 1_Y.
 (h4) H_{closure(S)} = H_S q.e. is (PLATE-REG)(h4) - the SAME row 4.2(g) reads at
      its first line - and it is what makes the second equality of (a) an
      identity rather than a substitution.
WHAT (MAIN-V2ID) DOES NOT CONSUME: not (WFF-1)'s CONCLUSION; not (WFF-2); not
(SANDWICHw)@MAIN; not (ENTRY); not any probabilistic-to-PDE identification; not
the historical clause "v solves L v = -1_TRAP on M \ S, v = 0 on S, v in
C^{1,alpha} up to dS and dTRAP" of [PX:9023], which (MAIN-V2ID) OUTPUTS the weak
instance of and never inputs. It consumes only (WFF-1)'s HYPOTHESIS ROW (M3),
together with (M1), (M4) and (M6).
[PROV: Section 2.5 (V2ID), deliverable (a)(b)(c) with (E0) (POLAR-OPEN), (E3)
(MV-t) and (E5-a)(E5-b)(E5-c), INSTANTIATED at Y = TRAP ; (PLATE-REG)(h4) as read
at 4.2(g) ; this is the object T-15's fence declared absent, and the fence is
updated there]

(DE-CS-0)@MAIN THE OPERATIVE LINEAGE AT THE MAIN PAIR, STATED ONCE. Wherever a
display below needs the plate component of a flux measure to die, the authority
is the DEFINING condition of (WFF-3)@MAIN together with the finite-energy /
no-polar-charge row - NOT any pointwise evaluation of a variational object on
closure(S):
  (R0) WHICH OBJECT. v^main, the unique (WFF-3)@MAIN solution at the pair
       (TRAP, closure(S)). It is NOT read as the probabilistic occupation; the
       bridge between the two is (MAIN-V2ID) and it is NOT consumed by this step.
  (R1) DEFINING CONDITION. v^main = 0 q.e. on closure(S), i.e. there is
       N subset closure(S) with Cap(N) = 0 such that the quasi-continuous version
       of v^main vanishes at every point of closure(S) \ N. HYPOTHESIS ROW: this
       is a DEFINING condition of the object, imposed by the plate substitution
       and consumed as a hypothesis; it is not derived from a statement about S.
  (R3) NO POLAR CHARGE. The flux measures of (WFF-2) have finite energy and
       charge no set of zero capacity, so e_{closure(S)}(N) = 0.
  DISPLAYED STEP:
       int v^main de_{closure(S)}
         = int_{closure(S)} v^main de_{closure(S)}
         = int_{closure(S) \ N} v^main de_{closure(S)}
           + int_N v^main de_{closure(S)}
         = 0 + 0 = 0,
  the first term because the integrand vanishes identically on closure(S) \ N by
  (R1), the second because the integrating measure gives N mass zero by (R3).
  WHAT IS NOT USED: no value of v^main at any individual point of closure(S); no
  pointwise-vanishing statement; no probabilistic object of any kind; no stopping
  time, no sigma-field, no Markov property, NO INDEPENDENCE; no fine continuity
  and no regular-boundary-point attainment.
[PROV: Section 2.5's operative lineage (DE-CS-0), stated there ONCE for the pair
structure, read here at the main pair ; XE-6 C2 RECORD]

(h.3) THE WEAK MAIN IDENTITIES.

THE TWO POTENTIALS AND THEIR (WFF-2) MEASURES. Let
     h   := h_{TRAP, closure(S)}          - the SAME object 4.2(g) bounds,
     h_z := h_{A_z, closure(S) u TRAP},
both (WFF-1) equilibrium potentials at rows (M1)(M2)(M3). (WFF-2) gives
     T_h     = e - e_{closure(S)}^{pair},   e >= 0 carried by TRAP,
     T_{h_z} = e_z - e_D - e_{closure(S)},  e_z >= 0 carried by A_z,
                                            e_D >= 0 carried by TRAP,
with the NOTATION MATCH of Section 2.2 read at Y' = closure(S):
     cap(TRAP, closure(S)) = D(h) = T_h(h) = e(TRAP),
     e_z(A_z) = cap(A_z, closure(S) u TRAP).
All four measures have finite energy and charge no set of zero capacity, so they
integrate quasi-continuous functions unambiguously.
NO SURFACE INTEGRAL, NO NORMAL DERIVATIVE, NO SMOOTH dTRAP, NO SMOOTH
d(closure(S)).
[PROV: Section 2.2 (WFF-1) and (WFF-2), including the probabilistically proved
positivity and the landed three-set split, INSTANTIATED at (TRAP, closure(S)) and
at (A_z, closure(S), TRAP) ; rows (M1)(M2)(M3)(M5)]

  (EQ-OCCw)@MAIN   int_TRAP v^main de = mu(TRAP),
                   i.e. E_nu[ v^main ] = mu(TRAP) / cap(TRAP, closure(S)),
                   nu := e / cap(TRAP, closure(S)), a probability measure by (M5).
PROOF, TWO LINES, BOTH INSIDE THE FORM. Test (WFF-3)@MAIN with f := h.
  ADMISSIBILITY: h in H^1(M) by (WFF-1) and h = 0 q.e. on closure(S) by the
  (WFF-1) class - this is the TEST-CLASS half of the plate substitution.
  RIGHT SIDE: int_M h 1_TRAP dmu = mu(TRAP), because h = 1 q.e. on TRAP and q.e.
  implies mu-a.e. by (POLAR-OPEN).
  LEFT SIDE: D(v^main, h) = D(h, v^main) = T_h(v^main)
             = int_TRAP v^main de - int v^main de_{closure(S)}^{pair}
             = int_TRAP v^main de - 0, the second term by (DE-CS-0)@MAIN.
  Equate the two sides.
[PROV: Section 2.2 (EQ-OCC-2w), the same two lines at the new pair, INSTANTIATED ;
symmetry of D ; (POLAR-OPEN) Section 2.5 ; (DE-CS-0)@MAIN ; superseded classical
original (EQ-OCC) [PX:9032-9039], recorded and not consumed]

  (FLUX-ID'w)@MAIN   int_{A_z} v^main de_z = int_TRAP v^main de_D.
PROOF. Test (WFF-3)@MAIN with f := h_z.
  ADMISSIBILITY: h_z in H^1(M) and h_z = 0 q.e. on closure(S) u TRAP, hence q.e.
  on closure(S).
  RIGHT SIDE: int_M h_z 1_TRAP dmu = 0, because h_z = 0 q.e. on TRAP and q.e.
  implies mu-a.e. by (POLAR-OPEN).
  LEFT SIDE: D(v^main, h_z) = T_{h_z}(v^main)
             = int_{A_z} v^main de_z - int_TRAP v^main de_D
               - int v^main de_{closure(S)}, the last term 0 by (DE-CS-0)@MAIN.
  Equate.
THIS IS THE WEAK REPLACEMENT OF [PX:9047-9048]: the classical step obtained the
A_z contribution from "L v = 0 inside A_z" through Green's second identity on
Omega''; the weak step obtains the SAME cancellation from the right side of the
tested equation, and reads no boundary of A_z, of closure(S) or of TRAP.
[PROV: Section 2.2 (FLUX-ID'w), INSTANTIATED ; superseded classical original
(FLUX-ID') [PX:9047-9048], recorded and not consumed]

  (FLUX-CONSw)@MAIN  e_z(A_z) = e_D(TRAP) + e_{closure(S)}(closure(S))
                              >= e_D(TRAP),   unconditionally.
PROOF. f = 1 in (WFF-2) for h_z: 1 in H^1(M) since M is compact, and
D(h_z, 1) = 0, so T_{h_z}(1) = 0.
[PROV: Section 2.2 (FLUX-CONSw), INSTANTIATED]

  (SANDWICHw)@MAIN   e_D <= 2 e   as measures on TRAP,
                     under the hypothesis 1 - 2h >= 0 q.e. ON THE SOLID CLOSED
                     BALL A_z, h := h_{TRAP, closure(S)}.

HYPOTHESIS SOURCE, ONE SENTENCE, AND IT IS 4.2(g)'s. The main-leg display of
4.2(g) holds "for every y in the OPEN ball B_{2rho}(z), hence q.e. on the SOLID
closed ball A_z and not merely on dA_z", and its CONSEQUENCE line gives h <= 1/2
there for every beta >= beta_1; that is exactly 1 - 2h >= 0 q.e. on A_z. THE
SOLID-BALL HYPOTHESIS IS THEREFORE MET DIRECTLY, WITH NO EXTENSION STEP AND NO
MAXIMUM-PRINCIPLE PASSAGE FROM dA_z. This is the one thing XE-7 F1 says the
(RATIO-W)/solid-ball bound CAN supply, and it is the only thing it is used for.

PROOF, STEP 1 - THE WEAK MINIMUM PRINCIPLE, the companion's step at the main
triple. Put V := M \ (A_z u closure(S)) and
     u := 2 (1 - h) - h_z .
u is L-harmonic on V \ TRAP = Omega''_main, and u >= 0 q.e. on M \ Omega''_main:
on A_z, h_z = 1 q.e. so u = 1 - 2h >= 0 q.e. by the hypothesis; on closure(S),
h = 0 q.e. and h_z = 0 q.e. so u = 2; on TRAP, h = 1 q.e. and h_z = 0 q.e. so
u = 0. Hence u^- in H^1_0(Omega''_main) and 0 = D(u, u^-) = -D(u^-, u^-) forces
u^- = 0, i.e. u >= 0 q.e. on M. (Elementary weak minimum principle; it replaces
the C^0(closure) framing of [PX:9050] at this one step and imports nothing.)

PROOF, STEP 2 - THE MEASURE READING, DISPLAYED. By bilinearity and D(1, .) = 0,
     T_u = -2 T_h - T_{h_z}
         = -2 e + 2 e_{closure(S)}^{pair} - e_z + e_D + e_{closure(S)} ,
so, the four measures other than e and e_D being carried by A_z and closure(S),
     T_u restricted to TRAP  =  e_D - 2 e .
Let f in H^1(M) with f >= 0 and f = 0 q.e. on A_z u closure(S), and for s > 0 put
     phi_s := ( s f - u )^+ .
Then phi_s in H^1(M) by (N9)(a); phi_s = 0 q.e. on A_z u closure(S), where f = 0
and u >= 0; and phi_s = s f q.e. on TRAP, where u = 0. Since T_u is a signed
Radon measure carried by A_z u closure(S) u TRAP with finite-energy components,
it integrates the quasi-continuous phi_s unambiguously and
     D(u, phi_s) = T_u(phi_s) = s ( e_D - 2 e )(f) .
On the other hand (N9)(a) gives grad phi_s = 1_{{ s f > u }} ( s grad f - grad u )
a.e., so
     D(u, phi_s) = s int_{{ s f > u }} w <grad u, grad f>
                     - int_{{ s f > u }} w |grad u|^2 .
Dividing by s, for EVERY s > 0,
     ( e_D - 2 e )(f) = A_s - B_s ,
     A_s := int_{{ s f > u }} w <grad u, grad f> ,
     B_s := (1/s) int_{{ s f > u }} w |grad u|^2   >=  0 .
As s -> 0+, 1_{{ s f > u }} -> 1_{{u = 0} inter {f > 0}} a.e., and grad u = 0
a.e. on the level set {u = 0} by (N9)(b); hence A_s -> 0 by dominated convergence
with the L^1 majorant w |grad u| |grad f|. The left side does not depend on s.
Therefore B_s -> -( e_D - 2 e )(f), and B_s >= 0 for every s forces
     ( e_D - 2 e )(f) <= 0  for every such f,  i.e.  e_D <= 2 e on TRAP.
DIRECTION CHECK: the conclusion is an UPPER bound on e_D, which is the direction
(h.4) consumes.
CLASSICAL FACTS READ IN STEP 2, NAMED: (N9)/IMP-6 clauses (a) and (b) of Section
2.3 - the Stampacchia gradient identity for the positive part and the vanishing
of the gradient on a level set - and dominated convergence. NOT READ: any normal
derivative, any Hopf-type boundary-point lemma, any surface measure, any
C^0(closure) framing, any regularity of dTRAP, of dA_z or of d(closure(S)).
CONSUMER-WALK NOTE, so the import ledger stays checkable: this is a READ SITE of
(N9)/IMP-6 clauses (a) and (b), NAMED - the instruction is EXECUTED, not pending -
and it joins the (N9)/IMP-6 consumer walk of Section 2.3 alongside its (W-NUM)
site and its 4.2(e) site.
[PROV: Section 2.2 (SANDWICHw), STEP 1 verbatim in shape at the main triple ;
STEP 2 displayed here because the main leg is where the measure reading is
consumed, and it reads only (N9)/IMP-6, already declared at Section 2.3 ; the
q.e.-vanishing input at the main pair is (WFF-3)@MAIN's DEFINING CONDITION via
(DE-CS-0)@MAIN - no separate (v3.2)-analogue display is needed or asserted ;
superseded classical original (SANDWICH) [PX:9050-9051], recorded and not
consumed]

(h.4) (RATIO*w)@MAIN - THE WEAK THREE-SET OCCUPATION RATIO.

  (RATIO*w)@MAIN   E_{nu_z}[ v^main ]
                     = ( int_TRAP v^main de_D ) / cap(A_z, closure(S) u TRAP)
                    <= 2 mu(TRAP) / cap(A_z, closure(S)) ,
                   nu_z := e_z / e_z(A_z), a probability measure carried by the
                   COMPACT A_z.
DERIVATION, EACH STEP NAMED.
  E_{nu_z}[ v^main ]
     =  ( int_{A_z} v^main de_z ) / e_z(A_z)                     [definition]
     =  ( int_TRAP v^main de_D ) / cap(A_z, closure(S) u TRAP)
                              [(FLUX-ID'w)@MAIN + the (WFF-2) notation match
                               e_z(A_z) = cap(A_z, closure(S) u TRAP)]
    <=  2 ( int_TRAP v^main de ) / cap(A_z, closure(S) u TRAP)
                              [(SANDWICHw)@MAIN, integrated against the
                               NONNEGATIVE quasi-continuous v^main;
                               nonnegativity q.e. from (MAIN-V2ID)(a)]
     =  2 mu(TRAP) / cap(A_z, closure(S) u TRAP)          [(EQ-OCCw)@MAIN]
    <=  2 mu(TRAP) / cap(A_z, closure(S))
                              [capacity monotonicity: enlarging the second set
                               shrinks the admissible class K(A, B), so
                               cap(A_z, closure(S) u TRAP) >= cap(A_z,
                               closure(S)); both are positive by (M5)]
DIRECTION CHECK. Both inequalities point the conservative way: the sandwich
raises the numerator by the factor 2, and the monotonicity lowers the denominator
to the capacity (CAP-LOW*-H1) bounds below. (RATIO*w)@MAIN is an UPPER bound on
E_{nu_z}[v^main], which is what the consumer needs.
RELATION TO THE SUPERSEDED FORM. (RATIO*w)@MAIN is [PX:9054-9055]'s (RATIO*) with
(a) the smooth-boundary hypothesis row DELETED, not weakened; (b) the boundary
flux integrals over dA_z and dTRAP replaced by the Riesz masses of (WFF-2) on A_z
and TRAP; (c) nu_z carried by A_z instead of dA_z. NO VALUE, NO CONSTANT AND NO
EXPONENT DIFFERS.
[PROV: (FLUX-ID'w)@MAIN, (SANDWICHw)@MAIN, (EQ-OCCw)@MAIN of (h.3) ; capacity
monotonicity, the only target-agnostic row of the classical list, carried
unchanged ; superseded original (RATIO*) [PX:9054-9055]]

(h.5) (PTW-W)@MAIN - THE POINTWISE STEP, CITED AND NOT RE-PROVED.

  (PTW-W)@MAIN   For every y in B_{2rho}(z) and every beta >= beta_W:
                    v^main(y) <= C_H'' inf_{A_y} v^main
                              <= C_H'' E_{nu_y}[ v^main ],
                 C_H'' := C(n, e^{4G})^8, BETA-FREE.
This is Section 4.2(b)'s CHAINED HARNACK, read at v^main. HYPOTHESIS ROWS, EACH
CHECKED HERE: a NONNEGATIVE weak solution on the domain B_{2rho}(z) - HOLDS,
since 1_TRAP = 0 on B_{2rho}(z) by (M2), so D(v^main, f) = 0 for every f in
C_c^inf(B_{2rho}(z)), and v^main >= 0 q.e. by (MAIN-V2ID)(a), bounded by (M6);
the estimate is interior on a ball whose double lies in the domain - this is the
row that fails at a single application and forces the chain, and the geometry is
the SAME landed 4rho separation, target-blind; constant depending on the
dimension n and the coefficient bounds - HOLDS, delivered as C(n, e^{4G}). THE
CHAIN ITSELF - rescaling, p_i := (i/m) x with m := 8, one application of the
named estimate per link, and the beta-free drift bound |b'| <= G from rho = 1/beta
- IS (b)'s AND IS NOT RE-PROVED HERE. The last inequality is (b)'s own last line:
nu_y is a probability measure carried by A_y, so inf_{A_y} v^main <= int v^main
dnu_y.
THE CONSTANT IS C_H'', NOT C_H'. This is the SAME correction (b) forces on the
companion and (g) forces inside C_3^main, and the SAME shape XE-7 F2 prescribes for
C_5: the single-application C_H' of [PX:9057-9058] is not available at the scaled
radius, and the chained C_H'' replaces it in every slot it held on this leg.
[PROV: Section 4.2(b), (PTW-W) and its chain, stated for a nonnegative weak
solution on a domain and read here at v^main ; superseded original (PTW*)
[PX:9057-9058], whose C_H' is withdrawn per PIECE ENTRY-W v2 and XE-7 F2]

(h.6) (TRAPOCC-UNIF) REDERIVED ON THE NEW LINEAGE, AT ITS PRINTED EXPONENT AND
      CONSTANT AND AT ITS NARROWED (POST-REACH, CASE-1) INDEX SET.

TRUNCATION HONESTY FIRST, AND IT IS PATHWISE. H_S ^ T <= H_S pathwise, so
1_{[0, H_S ^ T)}(s) <= 1_{[0, H_S)}(s) for every s and every path, whence
     E_z[ int_0^{H_S ^ T} 1_TRAP ds ]  <=  E_z[ int_0^{H_S} 1_TRAP ds ]  =  v(z).
Killing earlier only removes occupation; the direction is favorable. This step is
pathwise and reads no potential theory.
[PROV: the truncation-honesty step [PX:9019-9021], derived pathwise from R3-ASM's
LEM-LABEL, cited as landed]

THE CHAIN. For z in CASE 1 of (c), by (MAIN-V2ID)(b) at z in G, (PTW-W)@MAIN at
y = z, (RATIO*w)@MAIN, (MU-TRAP) and (CAP-LOW*-H1):

  E_z[ int_0^{H_S ^ T} 1_TRAP ds ]
     <=  v(z)  =  v^main(z)                 [truncation + (MAIN-V2ID)(b)]
     <=  C_H'' E_{nu_z}[ v^main ]           [(PTW-W)@MAIN]
     <=  2 C_H'' mu(TRAP) / cap(A_z, closure(S))
                                            [(RATIO*w)@MAIN]
     <=  C_4 beta^{2N}
         exp( -beta ( m_k + m_1(lambda) - Theta(z,S) - eta
                      - 4G/beta - G/beta ) ) ,                 (TRAPOCC*w)
  C_4 := 2 C_H'' e^{5G} V_M / c(N,delta),  beta-free.

  NUMERATOR, carried unchanged:
    mu(TRAP) <= e^{4G} V_M exp( -beta ( m_k + m_1(lambda) ) )      (MU-TRAP)
  from R3-STRAT's floor E_eps >= m_k + m_1(lambda) on STRAT and the collar
  transfer on TRAP subset { dist(., STRAT) <= 4rho }. NO property of dTRAP enters.
  DENOMINATOR, THE SAME ROW THE COMPANION CONSUMES, read at P = closure(S):
    cap(A_z, closure(S)) >= c(N,delta) beta^{-2N}
                            exp( -beta ( Theta(z,S) + eta ) )    (CAP-LOW*-H1)
  4.2(d)'s wiring sentence is stated once for the whole document and covers this
  instance as written; no second conditionality is introduced.
  CONSERVATIVE CARRY, DECLARED: the frozen display [PX:9090-9091] carries the
  beta-vanishing offsets BOTH inside the exponent and, as e^{4G} and e^{5G},
  inside C_4. That double carry only ENLARGES the right side, so the printed form
  is implied by the honest one; it is reproduced here UNCHANGED so that no
  printed value moves.
[PROV: (MU-TRAP) [PX:9084-9085] ; (CAP-LOW*-H1) Section 3.3 ; the assembly shape
of [PX:9088-9091], with C_H' -> C_H'' and with every classical ingredient
replaced by its (h.3)/(h.5) analogue]

THE LEVEL SLOT. Theta(z,S) is what the capacity denominator can see.
Unconditionally, for z in R_0^* any arc realizing the component's connectivity
gives Theta(z,S) <= S_k + c_H + eta. Substituting into (TRAPOCC*w):

THE QUANTIFIER, NARROWED TO THE SET THE CONSUMER ACTUALLY EVALUATES [XE-8 F1
residual 1]. (TRAPOCC*w) above is proved for z in CASE 1 of (c) - the branch
whose clause is dist(z,S) >= 4/beta - and CASE 2 at P' = closure(S') is NOT
instantiated at the main pair/triple anywhere in (h): there is no (MAIN-V2ID) at
P', and no (EQ-OCCw)@MAIN / (FLUX-ID'w)@MAIN / (FLUX-CONSw)@MAIN /
(SANDWICHw)@MAIN / (RATIO*w)@MAIN / (PTW-W)@MAIN at P'. The sentence of 4.2(g)
that re-runs the ENTRY ratio with P' is a RATIO row and instantiates none of
those. The supremum below is therefore taken over the POST-REACH SET that
Section 5 evaluates, not over R_0^*, and the narrowing is what makes the
quantifier match the proof:

  (DOOR-CASE1) THE POST-REACH SET IS A CASE-1 SUBSET - THE DISTANCE COMPUTATION,
  DISPLAYED RATHER THAN ASSERTED. Let z in Door inter R_0^*. Then
     E_eps(z) = S_k + c_H
  by the landed Door row carried in this document,
     Door := {E_eps = S_k + c_H, w_theta = k, w_phi = 0},
  while on the plate the level sits at or below the plate ceiling m_k + err_A
  - DISPLAYED, not asserted [XE-8-cure checker item 6]: the landed envelope
  "E_eps(x) <= m_k + eps w_k + (L_eps/2) dist(x, G_k)^2 on U (UP-QUAD)"
  (Section 2.1's quote), instantiated on closure(S) (a max-ball of radius
  delta/4 about g* in G_k): dist(x, G_k)^2 <= dist_euc(x, g*)^2 <=
  2N (delta/4)^2 = N delta^2/8, so E_eps <= m_k + eps w_k + L_eps N delta^2/16
  <= m_k + err_A (err_A contains eps w_k + L_eps N delta^2/4 >= the /16 term),
  err_A := c_0 + eps w_k + L_eps N delta^2/4 - THE SAME CEILING from which
  (PLATE-SEP)'s beta-free constant is defined,
     c_plate := (S_k + c_H - m_k) - err_A > 0                    [T-6].
  Hence for every x in closure(S),
     E_eps(z) - E_eps(x)  >=  c_plate ,
  and |grad E_eps| <= G on M by (CONST) of Section 0.5 transfers the level gap to
  a distance exactly as (PLATE-SEP) does:
     dist( z, closure(S) )  >=  c_plate / G  >=  c_plate / (2G) ,
  the halving carried CONSERVATIVELY so the printed form is (PLATE-SEP)'s own
  delivered form and no landed value is strengthened. Therefore
     dist( z, closure(S) )  >=  4/beta   for every beta >= beta_door := 8G/c_plate,
  a beta-free threshold of the beta_plate := 2/c_plate class (c_plate and G are
  beta-free), COLLECTED at Section 7.2 and NOT inferred from any other leg: no
  landed threshold is claimed to dominate it. At the flagship scalars
  c_plate = 1.024350 - err_A with err_A of err class, so the separation is the
  FULL doorway gap divided by 2G while 4/beta vanishes - every z in
  Door inter R_0^* clears the CASE-1 clause with room, and CASE 2 is never
  entered on this leg.
  NOT CLAIMED: that every z in R_0^* is a CASE-1 point. Near-plate points of
  R_0^* are not, A_z may there meet closure(S), and (h) proves nothing at them.
  [PROV: the Door row and tau_lev := inf{ s >= 0 : E_eps(X_s) >= S_k + c_H } as
  carried in Section 0.4 ; (CONST) Section 0.5 ; (PLATE-SEP) Section 2.1 and its
  c_plate, registered at S7.1 T-6 ; the CASE-1 clause of 4.2(c) ; cures XE-8 F1
  residual 1 at the narrowing option the verdict names]

  sup_{z in Door inter R_0^*} E_z[ int_0^{H_S ^ T} 1_TRAP ds ]
     <=  C_4 beta^{2N}
         exp( -beta ( m_k + m_1(lambda) - S_k - c_H - 2 eta - 5G/beta ) )
     =   C_4 beta^{2N}
         exp( -beta ( m_k + m_1(lambda) - S_k - c_H - err ) ) .  (TRAPOCC-UNIF)

SAME HORIZON (H_S ^ T), SAME INDICATOR (1_TRAP), SAME C_4 beta^{2N}, SAME
EXPONENT as the display printed at Section 4.3. THE SUPREMUM IS NARROWED, AND
THAT IS THE ONE PRINTED STRENGTH THAT MOVES [XE-8 F1 residual 1]: the index set
is Door inter R_0^*, the post-reach set, in place of the advertised R_0^*.
Section 4.3's display is narrowed to match, and the Section-5 consumer of STEP 5
is re-worded to consume exactly this supremum and no larger one. What changed
is the lineage of every ingredient and the lineage of one beta-free constant. The
index set is licensed at the consumed instance by LEMMA PE3p.3b exactly: it
delivers X_{tau_lev} in Door inter R_0^*, which IS the narrowed index set of
(TRAPOCC-UNIF) after (DOOR-CASE1); (h) narrows the display's quantifier to
match that licence [XE-8 F1 residual 1].

(h.7) THE err SPLIT FOR THIS LEG (XE-7 F3), OWNED HERE.

TWO eta LOSSES ARE PAID ON THIS LEG, AND BOTH ARE NOW PRINTED:
     eta_den   from the (CAP-LOW*-H1) denominator, whose lower bound carries
               exp( -beta ( Theta(z,S) + eta ) ) and therefore contributes
               exp( +beta eta ) on inversion - the term [PX:9077] and the
               pre-repair 4.2(g) display suppressed;
     eta_lev   from the level bound Theta(z,S) <= S_k + c_H + eta.
THE SPLIT, DISPLAYED:
     err  >=  eta_den + eta_lev + 5G/beta ,
     eta_den = eta_lev = eta = L_eps N delta^2 / 8              (ETA),
     eta_den + eta_lev = L_eps N delta^2 / 4 ,
the 5G/beta being beta-vanishing and contributing NOTHING to the exponent. Both
eta entries are of err class by (ETA), and the collecting site is (SML') of
Section 5.3, "eps w_k + O(N L_eps delta^2) + s + s' < 0.0894771449", where
L_eps N delta^2 / 4 is an O(N L_eps delta^2) entry. NO EXPONENT, NO CONSTANT, NO
beta POWER AND NO RATE MOVES; what moves is the printed accounting, from one eta
to two.
POSITIVITY AT THE CONSUMED CELLS, CARRIED WITH IT: 4.2(g)'s consequence now reads
3 c_H - 2 eta - 6G/beta > 0, i.e. the err-class inequality
L_eps N delta^2 / 4 < 3 c_H = 0.9756497373 at the flagship scalars - of the
(SML') class, satisfied with the same room, and collected at the same site.
SCOPE, STATED SO THE TWO REPAIRS DO NOT COLLIDE: this split is the MAIN-leg carry
only. It does NOT touch the two-leg err aggregation of Section 5.3 - the
"(A-err) + (B-err) = m_1 - err" accounting - which is a distinct defect with a
distinct cure and is not edited by this subsection.
[PROV: (CAP-LOW*-H1) Section 3.3 ; (ETA) Section 0.5 ; (SML') Section 5.3 and
S7.1 T-5 ; XE-7 F3, cured here and at 4.2(g)'s display and consequence]

(h.8) WHAT THIS SUBSECTION DOES NOT CONSUME - AN ENUMERATION BY NAME, NOT AN
      EXHAUSTIVENESS CLAIM.

NOT READ AT ANY STEP OF (h): Green's first identity; Green's second identity; any
surface measure on dA_z, on d(closure(S)) or on dTRAP; any normal or directional
derivative; the sign of an inward normal derivative; any Hopf-type
boundary-point lemma; any exterior sphere or cone condition; any
regular-boundary-point assertion for the Dirichlet problem; any C^0(closure)
framing; Schauder regularity up to dTRAP; the Calderon-Zygmund / Sobolev
C^{1,alpha} clause of [PX:9023]; the assertion "A_z, S, TRAP are pairwise
disjoint compacts with smooth boundaries" [PX:9045 physical; PX:9041 is the PRE-banner coordinate of the same target - the one tagged local exception to this block's all-physical rule (XE-9 item 4)]; the classical
minimum-principle sandwich [PX:9050-9051]; the single-application Harnack
constant C_H'; any independence; any block decomposition; any Palm object; any
fine continuity; any regular-boundary-point attainment on closure(S).
THIS IS AN ENUMERATION BY NAME, and it is falsifiable in the document's own way:
a reader may exhibit a step of (h) that reads a fact appearing in no row of
(h.1), (h.2), (h.3), (h.5) or (h.6). NO EXHAUSTIVENESS IS CLAIMED.
SMOOTHNESS OF dTRAP IS AVAILABLE AND UNUSED, restated once because it is the
thing a reader will look for: LEMMA TRAP-EXIST delivers it, (M7) records it, and
no step above reads it. The weak route needs it nowhere, which is exactly why it
survives the cube-shaped GROUNDING set the classical route could not.

(h.9) THE DEPENDENCY ORDER, AND WHY IT IS ACYCLIC.

  (WFF-1)/(WFF-2) at (M1)-(M3)
     -> (RATIO-W) at (A_y, closure(S), TRAP)              [4.2(g)]
     -> h <= 1/2 q.e. on the SOLID A_z                    [4.2(g) CONSEQUENCE]
     -> (SANDWICHw)@MAIN                                  [(h.3)]
     -> (RATIO*w)@MAIN                                    [(h.4)]
     -> (TRAPOCC*w) and (TRAPOCC-UNIF)                    [(h.6)]
with (WFF-3)@MAIN -> (MAIN-V2ID) -> nonnegativity and the pointwise reading
entering as a SIDE branch that takes no arrow from (SANDWICHw)@MAIN and gives
none to it.
NO CIRCULARITY. 4.2(g)'s h <= 1/2 consumes only (CAP-UP-GATE), (GATE-LOWER),
(CAP-LOW*-H1), (RATIO-W) and (PTW-W) - never (SANDWICH), never (SANDWICHw), never
(SANDWICHw)@MAIN; its own NO CIRCULARITY row states this and is unchanged.
(MAIN-V2ID) consumes only (WFF-1)'s HYPOTHESIS row, never its conclusion. The
forward pointer from Section 2.2's (SANDWICHw) hypothesis-source block to
4.2(e) is the companion's and is untouched by this subsection.
SHARED-ROW HYGIENE: (CORE-DENSITY)/(CLASS-BRIDGE), (CAP-LOW-H1)/(CAP-LOW*-H1) and
(PTW-W) are ONE instance each, cited and not re-derived, by both legs.
SCOPE FENCE. (h) re-founds the OCCUPATION machinery at the MAIN target TRAP and
nothing else. (REACH-s) of Section 4.1 is a distinct display at a distinct target
(Door') with its own lineage and is NOT re-routed here; (TRAPOCC-2-ROUND) of
Section 4.4 runs the companion route end to end and reads nothing from (h).


-----------------------------------------------------------------------
4.3 (TRAPOCC-UNIF) — THE MAIN TARGET
-----------------------------------------------------------------------

  sup_{z in Door inter R_0^*} E_z[ int_0^{H_S ^ T} 1_TRAP ds ]
     <= C_4 beta^{2N} exp( -beta ( m_k + m_1(lambda) - S_k - c_H - err ) ),
                                                            (TRAPOCC-UNIF)
  for beta >= max( beta_door, the collected thresholds of Section 7.2 ).

INDEX SET, STATED AT THE STRENGTH PROVED [XE-8 F1 residual 1]. The supremum is
over the POST-REACH SET Door inter R_0^*, not over R_0^*. That set is a CASE-1
subset by (DOOR-CASE1) of Section 4.2(h.6) - dist(z, closure(S)) >= c_plate/(2G)
>= 4/beta there, the full doorway gap over 2G against a vanishing 4/beta - and
CASE 1 is the only branch (h) instantiates at the main pair/triple. THE FULL-R_0^*
FORM IS WITHDRAWN, NOT PROVED FALSE: it would need the P' = closure(S') mirror of
(MAIN-V2ID), the main weak identities, (RATIO*w)@MAIN and (PTW-W)@MAIN carried
with (NEARS-ERR), and this document prints none of them. Nothing downstream reads
the withdrawn form: LEMMA PE3p.3b delivers X_{tau_lev} in Door inter R_0^*
exactly, which is the set printed here.

[PROV: LEMMA PE-TRAPOCC Section 6, as amended (main display (TRAPOCC)/
(TRAPOCC-UNIF) PROVED; that piece's checker was REPAIRABLE with one MAJOR on the
COMPANION only, cured by PIECE TRAPOCC-2, checker SOUND) ; index set licensed at
the consumed instance by LEMMA PE3p.3b (AM-R5-26 / CURE-XE4-3 v3, cures XE-4 F3;
three adversarial rounds 2026-07-27, SUSTAINED) ; the (ENTRY) input of that
piece's Section 4 is wired at Section 4.2(g) and the OCCUPATION MACHINERY of that
piece's Sections 3-4 is RE-FOUNDED WEAK at Section 4.2(h) — MAIN-LEG DISPOSAL,
ONE DISPOSAL, NAMED IN SUBSTANCE AT EVERY SITE THAT NAMES THE ROUTE (the sites are enumerated at T-9's binding column; no count or verbatim-identity claim): the main-leg (ENTRY)
input travels (RATIO-W) per 4.2(g), the main-leg occupation identities travel
(EQ-OCCw)@MAIN / (FLUX-ID'w)@MAIN / (FLUX-CONSw)@MAIN / (SANDWICHw)@MAIN /
(RATIO*w)@MAIN / (PTW-W)@MAIN per 4.2(h), and the classical Green /
normal-derivative route over the cube plate is HISTORICAL and is consumed at no
step [PROV: ENTRY-W v2 ; Section 4.2(h)]. THE EARLIER SENTENCE "No weak-vintage
sandwich display at Y = TRAP is asserted here or anywhere in this document" IS
WITHDRAWN AS SUPERSEDED: such a display now exists and is (SANDWICHw)@MAIN of
Section 4.2(h.3), proved from the weak minimum principle plus the (N9)/IMP-6
gradient partition, with its h <= 1/2 q.e. on the SOLID A_z hypothesis supplied
by 4.2(g). The display above is rederived end to end at Section 4.2(h.6) at THIS
printed strength EXCEPT FOR ONE NARROWED QUANTIFIER: same horizon H_S ^ T, same
indicator 1_TRAP, same C_4 beta^{2N}, same exponent, and the supremum taken over
the post-reach set Door inter R_0^* rather than over R_0^* [XE-8 F1 residual 1;
the containment is (DOOR-CASE1) at 4.2(h.6)]; the only symbol whose lineage moves
is C_4, which reads C_H'' where the frozen constant read C_H' ; cures XE-7 F1 and
carries XE-8 F1 residual 1 at the narrowing option]

THE LEVEL SLOT. Theta(z,S) is what the capacity denominator can see.
Unconditionally, for z in R_0^* any arc realizing the component's connectivity
gives Theta(z,S) <= S_k + c_H + eta, which is the bound the display carries.
The z-pointwise refinement replacing S_k + c_H by E_eps(z) is (TRAPOCC*) under
the typed row (H-DESC) — NOT CONSUMED HERE, and the schedule closes without it:
(TRAPOCC-UNIF) is exactly the factor Section 5 multiplies against (REACH-s).

(H-CONN) DISCHARGED AT THE CONSUMED INSTANCE — THE STATEMENT.

LEMMA PE3p.3b (COMPONENT MEMBERSHIP AT THE POST-REACH START).
  Fix eta > 0. For every start z in closure(S^+) and every random time T' <= L,
       P_z-a.s. on { tau_lev < T' } :   X_{tau_lev} in Door inter R_0^*.
NO INJECTIVITY CONDITION AND NO CONDITION ON THE STANDING delta IS USED. NO
INDEPENDENCE IS USED OR CLAIMED ANYWHERE IN THIS LEMMA.

REMARK (SCOPE), carried because Section 5 rides it. The proof uses only T' <= L
and z in closure(S^+). It therefore covers, without change: the dS^+ starts of
(REACH-s); the closure(S) starts of the assembled row (closure(S) subset
closure(S^+), the max-norm balls of radii delta/4 and delta/2 about g*); and the
termini T = min(D(0), L), H_S ^ T, H_S ^ L. In the level variable: for any
theta <= S_k + c_H and tau_theta := inf{ s >= 0 : E_eps(X_s) >= theta }, the
identical proof gives X_{tau_theta} in {E_eps = theta} inter R_0^* on
{tau_theta < T'} — in particular the theta_2 anchoring is covered and needs no
new lemma.

CONSEQUENCE. (TRAPOCC-UNIF)'s supremum over Door inter R_0^* is evaluated
exactly at the post-reach start X_{tau_lev}, which lies in that set by this
lemma [narrowed per XE-8 F1 residual 1]. (T2) H-CONN is DISCHARGED at the one instance the
schedule consumes. The GENERAL row R_0 = R_0^* is NOT proved and is NOT
CONSUMED. [TYPED -> S7: (T2) H-CONN, general form]

THE EXIT READING — AUTHORITY, THREE LINES [AM-R5-26(d)].
(1) The terminus L is read as the first EXIT from the open sector Sec_k, on
    lane-minmig-proofs-v1.md's OWN definition of tau_change^theta as
    inf{ t >= 0 : w_theta(X_t) != k } — that file's definition, not an import,
    so nothing crosses the lane boundary.
(2) THE AUTHORITY IS MM's OWN CONSUMPTION COHERENCE: MM derives
    tau_change^theta through the round decomposition with terminus L_i
    ("tau_change^theta <= sigma_N = sum_{i=1}^N D_i", the Wald chain, and M4's
    Wald arithmetic) and consumes PROD-EXCURSION at termini T' <= L; under an
    ENTRY reading tau_change^theta would exceed L_N by an amount MM bounds
    nowhere and MM's own (c.2)/(c.3) would lose their upper half. The exit
    reading is FORCED in-file.
(3) The external COORDINATION [23]:408-415 obligation is a LOWER-bound
    obligation on the post-gate transmission event, which MM discharges by
    CONSTRUCTING the entry event; it concerns the transmission leg, NOT the
    terminus semantics, so the two coexist. NOTHING IS EXPORTED; the single
    residual, RESIDUAL-XE4-3-SECTORENTRY, is consumer-side and binds no display
    in either lane.

ERR LEDGER FOR THIS DISPLAY (each loss O(delta^2) + O(h) + eps-class, or
beta-vanishing): eta FROZEN at err class, eta := L_eps N delta^2/8, NEVER sent
to 0 — so the (Theta + eta)-near-optimal arc has length <= Ell_max(N,delta,eps)
as (T3) requires and c(N,delta) is honest; the exponent is unchanged because eta
is inside err. The transfer/tube/ramp offsets 4G/beta, 4G/beta, G/beta, 2/beta
all multiply beta to give the beta-free constants e^{4G}, e^{5G}, e^2 inside
C_4, and contribute NOTHING to the exponent. poly(beta) = beta^{2N} is allowed
outright by the deliverable's shape and is absorbed once, in Section 5.3.
C_H'' — the CHAINED Harnack of Section 4.2(b), which the weak route of 4.2(g) and
4.2(h) puts in the slot the single-application C_H' held, so that
C_4 := 2 C_H'' e^{5G} V_M / c(N,delta) (Section 4.2(h.6)); both beta-free — the
factor 2 is now (SANDWICHw)@MAIN of Section 4.2(h.3), a WEAK-vintage measure
inequality e_D <= 2 e on TRAP, proved from the weak minimum principle and the
(N9)/IMP-6 gradient partition, whose h <= 1/2 q.e. ON THE SOLID BALL A_z
hypothesis is supplied by 4.2(g) and not by the classical (ENTRY); the classical
flux/minimum-principle sandwich over the cube plate [PX:9050-9051, PHYSICAL
(post-banner) coordinates - a NAMED EXCEPTION to the pre-banner default of
Section 8.1; the SAME bytes are cited pre-banner as PX:9046-9047 at S7.1 T-9,
and the tag, not the numeral, is what resolves] is the HISTORICAL record and is
consumed at no step. TWO eta LOSSES ARE INSIDE err AND
BOTH ARE PRINTED (XE-7 F3): eta_den from the (CAP-LOW*-H1) denominator and
eta_lev from Theta(z,S) <= S_k + c_H + eta, so eta_den + eta_lev =
L_eps N delta^2/4, collected at (SML') per Section 4.2(h.7). C_up, c(N,delta):
all beta-free.

-----------------------------------------------------------------------
4.4 (TRAPOCC-2-ROUND) — THE COMPANION AT COLLAR STARTS
-----------------------------------------------------------------------

[PROV: PIECE TRAPOCC-2 Section 6 (checker SOUND), superseding PE-TRAPOCC
Section 7's unrestricted (TRAPOCC-2*) and Section 8's "reach x (TRAPOCC-2*)"
composition per AM-R5-19(a) ; target retyped to the CLOSED TRAP_2^cl by PIECE
TRAPOCC-3 (cures XE-3 F2), display value UNCHANGED ; the (ENTRY) input travels
the ENVELOPE lineage PIECE TRAPOCC-4 (cures XE-4 F1, checker SOUND) and is
consumed in its final weak form (ENTRY-W) of Section 4.2 — the MAIN-target lineage
PIECE TRAP-LICENSE/TRAPOCC-5 belongs to the main leg and is wired at Section
4.2(g), not here]

WHAT IS SUPERSEDED, NAMED ONCE. The unrestricted (TRAPOCC-2*) is NOT proved:
it holds only in REGIME A, Theta(z,S) <= theta_2 - c_0 with c_0 :=
L_eps N delta^2/4 beta-free; the unrestricted form is exactly the typed gap
(C1) DOOR-SUP and is plausibly false at the corpus's unclassified above-band
structure. Likewise the composition "reach x (TRAPOCC-2*)" is SUPERSEDED: it
evaluated (TRAPOCC-2*) at the post-reach start, i.e. Regime B, where it is not
proved. Neither superseded form is carried below.

THE REGIME-A HINGE AT COLLAR STARTS, UNCONDITIONAL. From the (SEG) identity —
"|| z + s v - g* ||_max = (1 - s/ell(z)) * (delta/2)", an identity, so the
straight max-metric segment [z, g*] stays in the collar — together with
(UP-QUAD) as corrected by AM-R5-15 ("on the max-norm collar
S^+ = B_{delta/2}(g*), dist_euc(x,g*)^2 <= 2N (delta/2)^2 = N delta^2 / 2, so
(UP-QUAD) gives the quadratic cost L_eps N delta^2 / 4 — NOT /16"), the segment
is an admissible competitor for Theta(z,S) and
   Theta(z,S) <= m_k + eps w_k + L_eps N delta^2/4,
   UNCONDITIONALLY (no H-DESC, no H-CONN).
Since S_k + c_H - m_k = 1.024350 at the flagship point while
c_0 + eps w_k + L_eps N delta^2/4 is of err class, Regime A applies at every
collar start for the corpus delta/eps ranges. This is also (MARGIN-CONS) of
Section 4.2(f).

THE DISPLAY.

  (TRAPOCC-2-ROUND)  sup_{z in S^+} E_z[ int_0^{H_S ^ T} 1_{TRAP_2}(X_s) ds ]
     <= C_5 beta^{2N} exp( -beta ( S_k + c_H - m_k - eps w_k
                                   - L_eps N delta^2/4 - err ) ),
  C_5 := 2 C_H'' e^{1+G} V_M / c(N,delta), beta-free.
  THE CONSTANT IS THE CHAINED ONE, NOT THE SINGLE-BALL ONE. The TRAPOCC-2
  Regime-A pointwise step is one of the OVER-RADIUS uses of the named Harnack
  estimate that Section 4.2(b) repairs: at the scaled radius a single application
  would need a ball whose double lies in the domain, and only the landed 4rho
  separation is available, so the estimate is CHAINED and the beta-free constant
  rises from C_H' to C_H'' := C(n, e^{4G})^8. The withdrawn C_H' is NOT reprinted
  here. Enlarging a beta-free prefactor moves no exponent, no power of beta, no
  start set and no rate; it enlarges T_row and nothing else.
  [PROV: PIECE ENTRY-W v2, the chained-Harnack repair ("the only cost of the
  chain relative to a single application is the constant, from C_H' to
  C_H'' = C(n, e^{4G})^8") together with its propagation ledger row stating that
  TRAPOCC-2's Regime-A (PTW*) READS with (PTW-W) ; carried at Section 4.2(b)
  (PTW-W) above ; XE-7 F2]

THE EXPONENT IS VERBATIM THE EXPONENT OF (REACH-s) (before the s allowance);
hence (TRAPOCC-2-ROUND) IS the coupled companion product "reach x
occupation-from-doorway", delivered in ONE step, with the companion factor
appearing as the poly(beta) = beta^{2N} it was budgeted to be.

CONSUMPTION RULE, STATED TO PREVENT DOUBLE COUNTING: the reach factor must NOT
be applied again to (TRAPOCC-2-ROUND). Section 5.2 consumes this prohibition in
full. (The per-window/(P-SUB) count clause that travelled with the rule in its
source is DECLINED by the assembly — see Section 5.2, where the one-excursion
reading makes it redundant, and where dropping a factor 1/p_sub >= 1 is shown to
tighten, never to weaken.)

ROW CHECK, CARRIED. The row's requirement is
"<= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))), T_row beta-free", and
   1.024350 - 0.162608 = 0.861742 > 0
with the remaining loss of err class only; beta^{2N} absorbs into the strictly
positive margin as sup_b b^{2N} e^{-b s}. The w_phi = 0 companion clears with
the full doorway margin, now by a proof.

WHAT IS DIAGNOSTIC AND NOT CONSUMED, recorded so no reader re-litigates: the
direction display (DIR) and its side condition (C4) DOOR-ARC are diagnostic and
are consumed NOWHERE in (TRAPOCC-2*) or (TRAPOCC-2-ROUND); (FLUX-CONS)/(FLUX-SUP)
belong to the Regime-B route and are likewise not consumed here; (H-DESC) is not
needed at collar starts, where the level bound above is proved outright.

=======================================================================
5. THE COVER AND THE ASSEMBLY
=======================================================================

[PROV for the whole section: PIECE E2-ASSEMBLY v2 ; internal checker verdict
SOUND ("none touches an exponent, a constant, an index set or the row's
strength") ; all eight findings adopted as OPERATIVE by AM-R5-25 ; the (T2)
H-CONN entry of its conditional set STRUCK by CURE-XE4-3]
ADDITIVELY (XE-7 nonblocking residual 5): displays in this section may carry
their own short [PROV] tags naming the same target; where a display carries no
individual tag, THIS section banner is its provenance. No per-display totality
is claimed; the target for every display of this section is the one named in
the banner above.

-----------------------------------------------------------------------
5.1 LEMMA E2.1 (COVER)
-----------------------------------------------------------------------

THE LANDED FLOOR-SET CONSTRUCTION, QUOTED WITH ITS CLAUSES:
  STRAT := (union over nonzero realizable j of {w_theta=k, w_phi=j})
             union ({w_theta=k} inter Delta_phi);
  TRAP  := a set with STRAT subset {dist(.,STRAT) <= 2rho} subset TRAP
             subset {dist(.,STRAT) <= 4rho};
  TRAP_2 := { E_eps >= theta_2, w_phi = 0 }, theta_2 a Sard-regular value in
             [S_k + c_H - 1/beta, S_k + c_H];   rho := 1/beta.
BOTH CLAUSES OF STRAT AND THE w_theta = k RESTRICTION ARE LOAD-BEARING: the
second clause is what covers the gate transit (times on Delta_phi, where w_phi
is undefined, hence neither 0 nor nonzero), and dropping w_theta = k would
enlarge TRAP across theta-sectors and invalidate the winding-k floor the display
consumes. Per PIECE TRAPOCC-3 the companion target is read CLOSED, TRAP_2^cl,
with the display value unchanged.

LEMMA E2.1 (COVER). Fix a round-type interval [0, T') with T' <= L, read from
the shifted origin. Then, up to TWO sets of times of ZERO Lebesgue measure a.s.
(the Delta_theta trace and the Delta_phi trace),

   { s in [0,T') : X_s not in R_0 }
        subset  { s : X_s in TRAP_2 }  union  { s : X_s in TRAP }.      (COV)
[PROV: E2-ASSEMBLY v2, LEMMA E2.1 (COVER), both STRAT clauses and both null
traces ; Lemma PE3p.3 for the theta-label row ; AM-R5-25(c) for COV-SCOPE]

PROOF (four row citations; nothing new).
(1) THETA-LABEL. For s < T' <= L the path has not crossed into a different open
theta-sector and the sectors are OPEN, so w_theta(X_s) = k off the Delta_theta
trace — Lemma PE3p.3, verbatim: "up to a set of times of ZERO Lebesgue measure
a.s. (the Delta_theta trace), every s in [0, T) with X_s not in R_0 satisfies
tau_lev <= s". Hence, off that trace and off Delta_phi,
   (M \ R_0) inter {w_theta = k}
     = {E_eps > S_k + c_H, w_phi = 0} union ({w_theta = k} \ {w_phi = 0}),
and the second term IS the landed STRAT.
(2) FIRST PIECE. theta_2 <= S_k + c_H, so {E_eps > S_k + c_H} subset
{E_eps >= theta_2}; with w_phi = 0 this lies inside TRAP_2. The direction is
CONSERVATIVE (the cover set is larger).
(3) SECOND PIECE. STRAT subset TRAP by the quoted construction. Entry into
{w_phi != 0} is only through the gate.
GATE ROW, VERBATIM: "The w_phi = 0 stratum is DYNAMICALLY CLOSED at band levels:
crossing Delta_phi needs E_eps >= m_k + 2 lambda > m_k + 2 kappa >= S_k + 4 c_H
(c_H ledger, M2-PIN strict), above the band top."
CONSUMED AT NON-STRICT STRENGTH ONLY. The chain used is
   m_k + 2 lambda  >=  m_k + 2 kappa  >=  S_k + 4 c_H ,
and the cover needs only Gate >= S_k + 4 c_H > S_k + c_H — a margin of 3 c_H.
THE STRICT MIDDLE CLAUSE IS NOT CONSUMED: it FAILS at this document's own
flagship cell lambda = kappa = 1, where m_k + 2 lambda = m_k + 2 kappa. The
landed PE3p.3 case (c) itself uses the non-strict chain, and the corpus lands
the non-strict form with "EQUALITY at lambda = kappa". With the (G3) collar
transfer this yields (G4): R_0 inter TRAP = empty and dist(z, TRAP) > 2rho for
every z in R_0.
(4) THE TWO NULL TRACES.
  Delta_theta: PE3p.3's own trace clause, above.
  Delta_phi: the landed null-trace row, verbatim — AM-R4-1: "the transition
  density p_t(x, .) EXISTS (its strict positivity is irrelevant here) — so
  P(X_u in Delta_theta) = integral over a Lebesgue-NULL set of an L^1 density
  = 0 for every u > 0, and by Fubini E[ integral 1_{Delta_theta}(X_s) ds ] = 0";
  AM-R4-2 places the SAME mechanism on Delta_phi INSIDE a statement: "the
  round's outside-R_0 occupation is contained in its B_k occupation UP TO the
  Delta_phi trace {w_phi undefined}, which is occupied for ZERO TIME almost
  surely — by AM-R4-1's mechanism verbatim (density existence +
  Leb(Delta_phi) = 0 + Fubini). All downstream consumers of LEM-LABEL use
  occupation EXPECTATIONS, for which a zero-measure time set is invisible."
  CLASSICAL FACTS NAMED, WITH HYPOTHESIS ROWS: existence of a transition density
  for the standing SDE — HOLDS (landed existence row; positivity NOT used);
  Leb(Delta_theta) = Leb(Delta_phi) = 0 — HOLDS (the label sets are Lebesgue-
  null); Fubini-Tonelli for the non-negative product-measurable integrand
  (s, omega) -> 1_Delta(X_s(omega)) — HOLDS (non-negativity, sigma-finiteness).
  Both traces are therefore invisible to every display of Section 5.2, all of
  which are occupation EXPECTATIONS.
  TYPED NOTE: on the landed STRAT the Delta_phi trace is ALSO covered
  set-theoretically (clause (ii) of STRAT), so the Delta_phi null row is a
  SECOND, INDEPENDENT cover of the same times, not a load-bearer.  QED

COV-SCOPE, STATED (an in-piece reading, displayed rather than waved). Lemma
PE3p.3 is landed with "Let x in S". The theta-label argument of its proof uses
only s < T' <= L, the openness of the theta-sectors, and the round-start
property w_theta = k AT the start — so (COV) is stated above for any round-type
interval with T' <= L, including the interval of the z-started round of Section
5.2. This is a scope reading of the landed proof, not a new estimate.
(AM-R5-25(c): the earlier phrasing "no property of the start" is WITHDRAWN; the
start property consumed is w_theta = k, which is landed.)

UNREACHABLE REMAINDER — PATHWISE SCOPE SENTENCE (no probability). TRAP may
contain points the round's path never visits. For any such subset A the
occupation int_0^{T'} 1_A(X_s) ds is identically 0 on every path that never
enters A — a pathwise identity, asserted for no measure and requiring none.
(COV) is an inclusion of TIME SETS along each path; every downstream inequality
inherits its direction.

-----------------------------------------------------------------------
5.2 (RED'') — ONE EXCURSION, AND THE HORIZON IDENTITY
-----------------------------------------------------------------------

THE OBJECT. u(x) is the round's expected outside-R_0 occupation from the start
x; W(z) := E_z[ int_0^{H_S ^ L} 1_{M\R_0}(X_s) ds ].

CLAUSE (E1) — COLLAR LEMMA, DOMAIN EXTENSION TO closure(S) (consumed, hence
displayed). Lemma PE3p.2(iii) COLLAR LEMMA is landed "for every x in S,
u(x) = E_x[ W( X_{theta^+(0)} ) ], W(z) := E_z[ int_0^{H_S wedge L}
1_{M\R_0}(X_s) ds ] ... i.e. the pre-collar-exit stretch contributes NOTHING".
EXTENSION to x in closure(S): a start on the delta/4 sphere lies in the OPEN S^+
(delta/4 < delta/2), so by path continuity theta^+(0) > 0 and the same proof
runs verbatim; on [0, theta^+(0)] the path stays in closure(S^+) subset R_0
THROUGH the exit instant, so 1_{M\R_0} = 0 there and the step is EXACT on the
closed interval. Labels on closure(S^+) are (k, 0), so no theta-label change is
lost in the shift. THIS IS AN IN-PIECE STEP, DISPLAYED, NOT A LANDED QUANTIFIER.

STEP 1 (collar). By (E1), for every x in closure(S): u(x) = E_x[W(X_{theta^+(0)})].

STEP 2 (theta^+(0) bridge). The strong Markov property at the (F_s)-stopping
time theta^+(0), applied to the NON-NEGATIVE occupation functional rather than
to an indicator, gives
   sup_{x in closure(S)} u(x)  <=  sup_{z in dS^+} W(z).
NO INDEPENDENCE IS CLAIMED: the conditioning field is the pre-theta^+(0) path
field, the functional is post-theta^+(0), and the only fact used is the
strong-Markov equality of conditional laws.

STEP 3 (THE HORIZON IDENTITY — carried at its stronger, landed strength per
AM-R5-25(e)).
  (HOR-a) FOR EVERY START: since {s >= theta^+(0)} is a SUBSET of {s >= 0},
    D(0) >= H_S by definition alone, hence
       H_S ^ T = min(H_S, D(0), L) = min(H_S, L) = H_S ^ L .
    No path property whatsoever is used.
  (HOR-b) AT z in dS^+: S^+ is OPEN and z is on its boundary, so z is NOT in
    S^+, hence theta^+(0) = 0 deterministically, D(0) = H_S, and the z-round's
    terminus is T_z := min(D(0), L) = min(H_S, L) = H_S ^ L. Therefore
       H_S ^ T_z = H_S ^ L = T_z .
[PROV: E2-ASSEMBLY v2, the horizon identity (HOR-a)/(HOR-b), carried at its
stronger landed strength per AM-R5-25(e)]
Consequently ONE application of each display of STEP 5 covers the ENTIRE round:
the occupation integral int_0^{H_S ^ T} counts every doorway visit and every
R_0 exit and re-entry before the S-return. NO WINDOW COUNT EXISTS in this
reading, and none is formed.

STEP 4 (cover). Apply (COV) inside W(z) on [0, T_z), T_z <= L (COV-SCOPE):
   W(z) <= E_z[ int_0^{H_S ^ T} 1_{TRAP_2} ds ] + E_z[ int_0^{H_S ^ T} 1_TRAP ds ].

CLAUSE (E2) — (TRAPOCC-2-ROUND) INDEX-SET EXTENSION TO closure(S^+), HENCE TO
dS^+ (consumed, hence displayed). The display of Section 4.4 is landed as a sup
over the OPEN ball, and dS^+ is NOT a subset of S^+. The extension is an
INSTANTIATION of the landed Regime-A display, which is landed "for every z in
R_0 with Theta(z,S) <= theta_2 - c_0. Unconditional in Theta(z,S)":
  (a) MEMBERSHIP: dS^+ subset R_0 by the CLOSURE ROW (AM-R5-21:
      closure(S^+) subset R_0; in particular dS^+ subset R_0).
  (b) LEVEL AT THE SPHERE: (SEG) is stated AT ||z - g*||_max = delta/2 itself
      and is an IDENTITY, not an estimate; both endpoints lie in the closed
      collar, so the whole straight segment lies in it; (UP-QUAD) as corrected
      by AM-R5-15 is NON-STRICT on the closed collar. Hence the Section 4.4
      level bound Theta(z,S) <= m_k + eps w_k + L_eps N delta^2/4 holds AT the
      sphere, "UNCONDITIONALLY (no H-DESC, no H-CONN)".
  (c) REGIME: the displayed margin is unchanged — S_k + c_H - m_k = 1.024350 at
      the flagship point while c_0 + eps w_k + L_eps N delta^2/4 is of err class
      — so Theta(z,S) <= theta_2 - c_0 and Regime A applies at sphere starts
      exactly as at collar starts. (Attribution per AM-R5-25(d): this margin
      sentence belongs to TRAPOCC-2 Section 6.)
  A second, independent route by continuity of z -> v_2(z) is RECORDED and NOT
  load-bearing; route (a)-(c) needs no regularity input and is the one consumed.

STEP 5 (the two coupled displays, one application each).
  leg TRAP_2:  E_z[ int_0^{H_S ^ T} 1_{TRAP_2} ds ]
                  <= C_5 beta^{2N} exp( -beta( S_k + c_H - m_k - eps w_k
                                               - L_eps N delta^2/4 - err ) )
                  [(TRAPOCC-2-ROUND), Section 4.4, at z in dS^+ by (E2)];
  leg TRAP:    E_z[ int_0^{H_S ^ T} 1_TRAP ds ]
                  <= [ sup_{z in dS^+} P_z(tau_lev < T) ]
                     . [ sup_{z' in Door inter R_0^*}
                             E_{z'}[ int_0^{H_S ^ T} 1_TRAP ds ] ]
                  <= C_s C_4 beta^{2N} exp( -beta( m_1(lambda) - eps w_k
                                                   - L_eps N delta^2/4 - s - err ) )
                  [(REACH-s) of Section 4.1 x (TRAPOCC-UNIF) of Section 4.3].
  The reach display is landed with index set dS^+ exactly, so the TRAP leg needs
  no extension; the strong-Markov composition is at tau_lev and is PER ROUND, and
  its inner index set is Door inter R_0^*, which is EXACTLY what LEMMA PE3p.3b
  (Section 4.3) delivers: P_z-a.s. on { tau_lev < T' }, X_{tau_lev} lies in
  Door inter R_0^*. THE MATCH IS EXACT AND IS THE REASON THE NARROWING COSTS
  NOTHING [XE-8 F1 residual 1]: the restart point is a Door point by the lemma,
  Door inter R_0^* is a CASE-1 set by (DOOR-CASE1) of Section 4.2(h.6), and
  (TRAPOCC-UNIF) is proved on precisely that set. NO LARGER SUPREMUM IS READ
  HERE OR ANYWHERE ELSE IN SECTION 5; the withdrawn full-R_0^* form has no
  consumer.
[PROV: E2-ASSEMBLY v2 STEP 5, the two coupled displays ; leg TRAP_2 is
(TRAPOCC-2-ROUND) of Section 4.4, read with its C_H''-vintage C_5 ; leg TRAP is
(REACH-s) of Section 4.1 composed ONCE with (TRAPOCC-UNIF) of Section 4.3 ; the
index-set extension is clause (E2)(a)-(c) above ; AM-R5-25(d)]

THEREFORE

  (RED'')  sup_{x in closure(S)} u(x)
             <=  sup_{z in dS^+} { E_z[ int_0^{H_S ^ T} 1_{TRAP_2} ds ]
                                 + E_z[ int_0^{H_S ^ T} 1_TRAP ds ] } ,

with NO 1/p_sub factor and NO per-block substitution.
[PROV: E2-ASSEMBLY v2 (RED'') ; the collar clause (E1) and STEP 2's strong Markov
at theta^+(0) are displayed in place above ; AM-R5-25(b) for the GAP-PE3P-BLOCK
bypass wording]

WHAT THIS DELETES, RECORDED. (i) (P-SUB) and its AM-R5-16 admission EXIT the
load-bearing set of THIS row (they remain load-bearing for the R5a round-count
elsewhere; nothing is withdrawn from them here). (ii) GAP-PE3P-BLOCK is
BYPASSED — the route needing a bound on B_bar := sup_{z in R_0} (...) is
SUPERSEDED, not discharged; NO CONSUMER MAY READ B_bar AS BOUNDED. Per
AM-R5-25(b) this row reads in the corpus register's own terms: the chain
GAP-PE3P-BLOCK -> B-DWELL -> GAP-PE-TRAPOCC, DISCHARGED at consumed strength
(target TRAP_2^cl per TRAPOCC-3), with B_bar recorded as the WRONG MARGINAL,
not an owed strength. (iii) Lemma PE3p.5 (BLOCK RENEWAL) is NOT CONSUMED.
(iv) The (SML')/Gamma(h) objection is MOOT: with no 1/p_sub in the chain there
is no Gamma(h) + gamma_2 eps^2 loss to carry. (v) T_row IMPROVES: the factor
c(delta,h)^{-1} leaves the constant.

TRUNCATION HONESTY. T only truncates: T_i = min(D(sigma_{i-1}), L_i) <=
D(sigma_{i-1}), one-way, and it is DERIVED (Lemma PE3p.2), not assumed. All
integrands are non-negative, so no integrability hypothesis is needed and
(RED'') is valid even if the round never terminates.

CONSUMPTION RULES, RESTATED TO PREVENT DOUBLE COUNTING.
  CR-1 (TRAP_2 leg): the reach factor must NOT be applied again to
  (TRAPOCC-2-ROUND) — the display already IS reach x occupation. THIS
  PROHIBITION IS CONSUMED IN FULL. Its companion count clause (the
  per-window/(P-SUB) composition) is DECLINED, and the licence to decline it is
  (HOR): one application covers the whole round, so dropping a factor
  1/p_sub >= 1 tightens the bound rather than weakening it.
  CR-2 (TRAP leg): the reach factor is applied EXACTLY ONCE, at tau_lev, as
  PE-TRAPOCC Section 8 states, read s-parametric.

-----------------------------------------------------------------------
5.3 THE BUDGET — EVERY ABSORPTION DISPLAYED
-----------------------------------------------------------------------

TARGET (row): "<= T_row(eps, delta) exp(-beta(c_H/2 - err(delta))), T_row
beta-free"; c_H = (m_k + 2 kappa - S_k)/4 on the active branch. Flagship cell
N = 10, kappa = 1, lambda = 1: S_k = 2.60896, m_k = g(10) = 1.90983,
c_H = 0.32522, c_H/2 = 0.162608.

  LEG            EXPONENT DELIVERED                    REQUIRED   MARGIN
  ------------------------------------------------------------------------
  TRAP_2         S_k + c_H - m_k - eps w_k             c_H/2      (MRG) =
  (w_phi = 0     - L_eps N delta^2/4 - err                        (7/8)(S_k-m_k)
   doorway)      = 1.024350 - err  (flagship)          0.162608   + kappa/4
                                                                  = 0.861742
  ------------------------------------------------------------------------
  TRAP           m_1(lambda) - eps w_k                 c_H/2      m_1 - c_H/2 =
  (w_phi != 0    - L_eps N delta^2/4 - s - err                     g(N)(lambda
   strata)       [reach exponent + (TRAPOCC-UNIF)                  - 1/8)
                  exponent, the two S_k + c_H and                  + (S_k-2)/8
                  m_k terms cancel identically]                    > 0
  ------------------------------------------------------------------------

ADJ-2 identity, verbatim: "m_1 - c_H/2 = lambda g(N) - (1/8)( g(N) + 2 - S_k )
= g(N)( lambda - 1/8 ) + ( S_k - 2 )/8." with "Both summands are STRICTLY
POSITIVE for every N>=10, lambda>=1". Verified sample margins, ON THE TRAP LEG
ONLY: 1.7472217667 / 1.0425473031 / 1.6742434887 / 0.0894771449 at the four
cells (10,1+) / (18,1.05) / (46,4) / (200,1.0001). (MRG) is LAMBDA-FREE and
INCREASING in N, so N = 10 is the worst TRAP_2 cell. THE TWO FAMILIES ARE NOT
INTERCHANGEABLE: the ADJ-2 cells sit on the TRAP leg, (MRG) = 0.861742 on the
TRAP_2 leg.

THE TWO-LEG CANCELLATION IS AN IDENTITY AT ZERO LOSS, NOT A NUMERICAL
COINCIDENCE; THE LOSSES ARE AGGREGATED, NOT ABSORBED INTO ONE SYMBOL:
   A := S_k + c_H - m_k ,   B := m_k + m_1 - S_k - c_H ,   A + B = m_1 (EXACT),
   err_tot := err_A + err_B   (both of err class, one per leg),
   so  (A - err_A) + (B - err_B) = m_1 - err_tot .
Two losses are paid on the two legs and BOTH are carried; the err symbol is never
rebound to cover two payments.
[PROV: PIECE E2-ASSEMBLY v2 (A3), restated at zero loss with the two losses named
separately ; XE-7 F4]

ABSORPTIONS, EACH DISPLAYED.
 (i) s (Section 4.1). Arbitrary FIXED s > 0 of err class; "s <= L_eps N
     delta^2/4 suffices for the corpus ranges", C_s beta-free. DIRECTION: s is a
     LOSS.
 (ii) THE SURVIVING BETA POWER — ONE ABSORPTION. The reach factor is consumed
     as the s-parametric display, which is BETA-FREE: its beta^{2N+1} has
     ALREADY been paid, once, as the loss s. The two occupation displays carry
     beta^{2N} each. Hence BOTH legs carry exactly beta^{2N} and nothing more
     (TRAP_2: C_5 beta^{2N}; TRAP: C_s . C_4 beta^{2N}). Pick s' > 0 of err
     class strictly inside the margin and absorb ONCE:
       beta^{2N} e^{-beta(Margin)} = [ beta^{2N} e^{-beta s'} ] e^{-beta(Margin - s')}
         <= K_abs(N,s') e^{-beta(Margin - s')},
       K_abs(N,s') := sup_{b>0} b^{2N} e^{-b s'} = ( 2N / (e s') )^{2N} .
     CLASSICAL FACT, NAMED: elementary calculus on b -> b^{2N} e^{-b s'}, single
     interior maximum at b = 2N/s'. HYPOTHESIS ROWS: s' > 0 fixed — HOLDS;
     2N finite — HOLDS. NO DOUBLE PAYMENT: s pays the reach's power, s' pays the
     occupation's power, and no leg carries beta^{4N+1}. The supremum is
     EXHIBITED in closed form, not asserted.
     [PROV: E2-ASSEMBLY v2 (A3), the one-power absorption ; K_abs(N,s') exhibited
     by elementary calculus and recomputed independently]
 (iii) 1/p_sub — NOT INCURRED. The one-excursion reading of Section 5.2 forms no
     block count, so this cost, its Gamma(h) = O(h) = O(delta) term, and the
     constant c(delta,h)^{-1} do not enter T_row at all.
 (iv) eta. FROZEN at err class, eta := L_eps N delta^2/8 (AM-R5-27 re-freeze),
     never sent to 0.
 (v) collar /4 constant (AM-R5-15): "on the max-norm collar
     S^+ = B_{delta/2}(g*), dist_euc(x,g*)^2 <= 2N (delta/2)^2 = N delta^2 / 2,
     so (UP-QUAD) gives the quadratic cost L_eps N delta^2 / 4 — NOT /16".
     Used in BOTH legs, same sign, and NON-STRICT, which is what licenses
     (E2)(b) at the sphere.
 (vi) c_0 = L_eps N delta^2/4 (AM-R5-19(b)): the Regime-A hinge
     m_k + eps w_k + (1/2) L_eps N delta^2 + 1/beta <= S_k + c_H, an inequality
     against the flagship margin 1.024350, holding for beta >= beta_2.

T_row, BETA-FREE, AS A PRODUCT OF NAMED BETA-FREE CONSTANTS:
   T_row(eps, delta) := ( C_5(eps,delta) + C_s(eps,delta) . C_4(eps,delta) )
                        . K_abs(N, s') ,
   with C_5 READ AT ITS CHAINED-HARNACK VINTAGE
   C_5 = 2 C_H'' e^{1+G} V_M / c(N,delta),  C_H'' := C(n, e^{4G})^8 — the SAME
   symbol Sections 4.2(b) and 4.4 carry, and NOT the withdrawn single-ball C_H'.
 C_5 — the TRAPOCC-2 Section 6 constant, carried at that vintage:
   C_5 := 2 C_H'' e^{1+G} V_M / c(N,delta), every constituent beta-free in the
   PE-TRAPOCC err ledger. The source's printed "2 C_H' e^{1+G} V_M / c(N,delta)"
   is the SUPERSEDED single-ball form and is not carried: the TRAPOCC-2 Regime-A
   pointwise step is one of the over-radius uses of the named Harnack estimate
   that Section 4.2(b) repairs by chaining, so its beta-free constant is C_H''.
   The substitution ENLARGES T_row and moves no exponent, no power of beta, no
   start set and no rate.
 [PROV: PIECE ENTRY-W v2, the chained-Harnack repair ("the only cost of the chain
   relative to a single application is the constant, from C_H' to
   C_H'' = C(n, e^{4G})^8") and its propagation ledger row stating that
   TRAPOCC-2's Regime-A (PTW*) READS with (PTW-W) ; Section 4.2(b) (PTW-W) and
   Section 4.4 (TRAPOCC-2-ROUND) above ; XE-7 F2. This tag is also the
   per-display provenance of the T_row product, per Section 5's per-display rule]
 C_s — Section 4.1, beta-free for each fixed s > 0.
 C_4 — the (TRAPOCC-UNIF) constant, Section 4.3.
 K_abs — exhibited above. NO RESIDUAL BETA POWER SURVIVES.

THE OPERATIVE SMALLNESS CONDITION:  Margin - s' - err_tot > 0,
where err_tot := err_A + err_B is the AGGREGATE of the two legs' err-class losses
(the plural "err-class losses" the landed row already speaks of, named here as a
single scalar so that no one err symbol is asked to cover two payments).
TIGHTEST CELL, EXHIBITED (AM-R5-25(g)):

   eps w_k + O(N L_eps delta^2) + s + s' < 0.0894771449            (SML')

at (N, lambda) = (200, 1.0001) in the stratum regime, where
eps w_k = eps g(200) = 0.004934 — the condition holds with roughly 18x room at
the worst cell; at the flagship cell it clears against 0.861742, where
eps g(10) = 0.095492. (SML') carries NO Gamma(h) term because the chain incurs
no 1/p_sub. R4c 8.3's N-free sufficient condition eps < kappa/(4 g(10)) =
0.1309017 at kappa = 1 — NUMERAL CORRECTED, 1/(4 g(10)) = 0.130901699...; the
inherited 0.130906 is a stale transcription of the immediate target and is not
carried, the frozen appendix having already recorded 0.1309017 [XE-7 MINOR] —
and the design scale eps = 0.05 are the operative anchors. (SML') is a
NUMERICAL condition on (eps, delta, s, s'), not a proof gap.
[TYPED -> S7: (SML')]

-----------------------------------------------------------------------
5.4 THE QUANTIFIER WALK TO (COND*), AND THE TWO ROWS
-----------------------------------------------------------------------

W1 (BOREL IN THE START). "The occupation functional integral_0^{T} 1_{M\R_0}
(X_s) ds is a non-negative Borel functional of the POST-sigma_{i-1} path alone
(T is read from the shifted origin), so u is a Borel function of the start point
alone" [Lemma PE3p.1].

W2 (CONDITIONAL IDENTITY AT EVERY ADMISSIBLE ROUND-START SIGMA-FIELD). "For
every i >= 1, on O_R5a, E( integral_{sigma_{i-1}}^{T_i} 1_{M \ R_0}(X_s) ds |
F_{sigma_{i-1}} ) = u( X_{sigma_{i-1}} ) a.s." — by the strong-Markov template.
NO INDEPENDENCE IS CLAIMED: the conditioning field F_{sigma_{i-1}} is the
pre-sigma_{i-1} path field, the functional is post-sigma_{i-1}, and the only
fact used is the strong-Markov equality of conditional laws. This is the CLOSED
half of DELTA-PE1-ENTRANCE, landed.

W3 (UNIFORMITY). Lemma PE3p.1's equivalence: the row "holds at strength
T_row exp(-beta(c_H/2 - err)) for EVERY admissible round-start field and EVERY
F_{sigma_{i-1}}-measurable start in S IF AND ONLY IF sup_{x in S} u(x) <=
T_row(eps,delta) exp( -beta( c_H/2 - err(delta) ) ). (COND*)"
[PROV: E2-ASSEMBLY v2 W3 / Lemma PE3p.1's equivalence, quoted verbatim]
DOMAIN, STATED WITHOUT ANY CONTAINMENT CLAIM BETWEEN dS^+ AND closure(S) — the
two sets are DISJOINT and no inclusion between them is used or needed. Per
AM-R5-23(3) the owed domain READS closure(S) (the delta/4 sphere), since the
round starts X_{sigma_{i-1}} = D(sigma_{i-2}) land there. (RED'') delivers the
sup over closure(S) by the BRIDGE, not by an index-set inclusion: clause (E1)
extends the collar lemma to starts x in closure(S) subset S^+ subset R_0, and
STEP 2's strong Markov at theta^+(0) carries each such start to a dS^+ start,
where STEPS 3-5 quantify. THE HARDER BOUNDARY DOMAIN IS DELIVERED, NOT DODGED.

W4 ((COND*) LANDS). (RED'') of Section 5.2 with the budget of Section 5.3:
   sup_{x in closure(S)} u(x)  <=  T_row(eps,delta) exp(-beta(c_H/2 - err(delta))),
   T_row beta-free, as displayed.
[PROV: E2-ASSEMBLY v2 W4 ; (RED'') Section 5.2 with the budget of Section 5.3]

W5 (COMPANION ROW, AT ITS TYPED STRENGTH, VERBATIM). "COMPANION ROW
PROD-EXCURSION-COND (added 2026-07-21, R5b of the migration campaign): the
conditional-uniform form - the SAME expected-time bound conditional on every
admissible round-start sigma-field, a.s., uniform over round starts in the base
ball." DISCHARGED by W2 + W4 via the IF-AND-ONLY-IF of W3, subject to the
register of Section 7.

W6 (PARENT AS COROLLARY). "the expected time per renewal round spent OUTSIDE
R_0, before the excursion either re-enters {E_eps <= S_k + c_H, w_phi = 0} or
changes the theta-label, is <= T_row(eps, delta) exp(-beta(c_H/2 -
err(delta))), T_row beta-free". W2 gives the conditional expectation as
u(X_{sigma_{i-1}}); W4 bounds u by a DETERMINISTIC SCALAR on the whole start
domain; therefore for any admissible round-start law nu carried by closure(S),

   E_nu[ int_{sigma_{i-1}}^{T_i} 1_{M\R_0} ds ] = E_nu[ u(X_{sigma_{i-1}}) ]
       <= T_row exp(-beta(c_H/2 - err)),
[PROV: E2-ASSEMBLY v2 W6, the parent row quoted verbatim ; tower property only,
with its hypothesis rows displayed]

by the TOWER PROPERTY alone (classical fact, named; hypothesis rows: the
integrand is non-negative and F_{sigma_{i-1}}-conditionally integrable — HOLDS,
both by W1/W2). No entrance law is evaluated, no Palm average is formed: a
constant integrates to itself.

-----------------------------------------------------------------------
5.5 RELEASE FENCE
-----------------------------------------------------------------------

THE ROW FLIP ITSELF — the lane-lp canon edit at the ROW PROD-EXCURSION(N,k) /
COMPANION ROW PROD-EXCURSION-COND block of lane-lp-product-saddle-v1.md — IS
NOT EXECUTED BY THIS DOCUMENT. Both rows are quoted VERBATIM above and are NOT
edited. This document delivers the mathematics and the register; it does not
touch canon. The flip waits for the final external review, per the discipline
the MIN-MIG arc established. B-DWELL remains DISCHARGED-PENDING; nothing is
released here.

## 6. CAMPAIGN SIBLINGS, NOT CONSUMED BY THE ROW

This section records the two bodies of E2-campaign work that stand **beside** the live row rather than inside it: the delayed-cycle (Palm) foundation, and the `sigma_0` state. Nothing in Sections 1-5 reads either. They are printed here so the register in Section 7 is read against a complete map, and so no later reader mistakes an adjacent adjudicated result for a load-bearing input.

---

### 6.1 The delayed-cycle foundation, as cured

**The object and its exact stopping times.** The foundation's cycle object is `OBJECT-PE1-DEL`, the *delayed* S-return cycle generated by the epoch recursion `T_0 := D(0)`, `T_{n+1} := D(T_n)`, with the exact stopping objects

```
theta^+(t) = inf{ s >= t : X_s not in S^+ }
D(t)       = inf{ u >= theta^+(t) : X_u in S }
```

The plain S-return object `OBJECT-PE1` is **withdrawn**: `POST-SR-PE1-DEL RE-POINTING AUDIT` struck it at `R3-ASM` Section 1 (`O3` STRUCK, `O4` promoted to the sole cycle object) and at `R3-SOJ` (`O3` withdrawn, `O2` promoted). Four objects, not five.
[PROV: PIECE SR-PE1-DEL / POST-SR-PE1-DEL RE-POINTING AUDIT + AM-R5-20 ; XE-1 F1 cure landed -> XE-2 F1.3 pre-cured by AM-R5-20]

**CURE-XE2-F1a — the epoch set redefined on `closure(S)`.** The XE-2 F1 defect was that the epoch set as first written was *empty*: with `(E1)+(E2)` replaced by the single clause `X_t in S`, no epoch qualifies, because `X_{D(T_n)}` sits on the max-norm sphere of radius `delta/4` about `g*`. The cured, intrinsic (shift-covariant) form, carried verbatim:

```
E := { t : (E1) X_t in closure(S) ;
           (E2) t is a right-accumulation point of { u : X_u in S }, i.e.
                for every h > 0 there is u in [t, t+h) with X_u in S ;
           (E3) there exists s < t with X_s not in S^+ and
                X_u not in S for all u in (s,t) }
```

```
E(shift_r X) = E(X) - r .                                    (SHIFT-COV)
```

with the piece's membership rule, verbatim: *"MEMBERSHIP DISCIPLINE FOR THE WHOLE PIECE: epochs live on closure(S), NOT in S; every membership hypothesis consumed below is therefore stated on closure(S) or on S^+ (closure(S) subset S^+)."*
[PROV: CURE-XE2-F1a (the epoch set, redefined on closure(S)) ; XE-2 finding 1 cure landed, adopted under AM-R5-23 ; XE-3 F1.1 PASS]

**`LEMMA EQV` and its supersession by `LEMMA ENUM` (single vintage).** `CURE-XE2-F1a`'s `LEMMA EQV` states: *for `t > T_0`: `t in E` iff `t = D(T_m)` for some `m >= 0`*. The **operative** enumeration, however, is `E-MEAS`'s `LEMMA ENUM` (exact countable enumeration; no side condition):

```
E = { D(r) : r in Q } intersect R          (LEMMA ENUM; exact, pathwise)
```

which holds for **every continuous path**, both inclusions, with no probability and no local finiteness, and from which measurability of `N(B)` follows for every Borel `B` — so no monotone-class or Dynkin extension is consumed. The `E-MEAS` checker recorded that the *pre-cure* `EQV` (the `SR-PE1-DEL` form, whose proof asserted `X_{T_m} in S`) is unsound for the redefined object and is superseded by `LEMMA ENUM`; per the one-vintage rule this document carries `LEMMA ENUM` as the enumeration and `EQV` only in its `CURE-XE2-F1a` form.
[PROV: E-MEAS (point-process measurability of the redefined E) ; XE-2 finding 1 / internal checker finding 3 adopted -> XE-3 F1.1 PASS]

**`E-MEAS` (b) — the point-process fact.** `({shift_r}, P, N)` is a **stationary simple point process** with intensity `lambda_S^{del} = E[ N([0,1]) ]`. `(E1)` is a closed condition on `X_t`; `(E2)` reduces to rationals by continuity of `X` and openness of `S`; `(E3)` — a *closed* inner condition, for which the naive rational reduction fails — is handled by `LEMMA ENUM`.
[PROV: E-MEAS ; XE-2 finding 1 cure -> XE-3 F1.1 PASS]

**`CURE-XE2-F1b` — finite intensity.** Finiteness `lambda_S^{del} < infinity` is delivered by geometric trials through rows `(FLOOR)`/`(COUNT)`/`(RUN)`, replacing the pre-cure route; row `(R4)` (local finiteness, `Lemma LF`) is restated on **bounded windows** per `AM-R5-18(b)`, and `(R5)` (finite positive intensity) is met via `Lemma SPACE`. The spacing constant `c_*` carries `GAP-PE1D-NORM` as a **cosmetic** typed item: only the *finiteness* of `G_* := sup_{S^+} |grad E_eps|_2` is load-bearing; if the max-vs-Euclidean bookkeeping is not closed, the numerical value of `c_*` changes by a factor `<= sqrt(2N)` and positivity, `(INTENS)` and every downstream display are unaffected. [TYPED -> S7: GAP-PE1D-NORM]
[PROV: CURE-XE2-F1b (finite positive intensity by geometric trials) + SR-PE1-DEL Section 4 ; XE-2 finding 2 cure landed -> XE-3 F1 PASS]

**`CURE-XE3-A` — non-circular positivity.** Carried verbatim in its operative parts:

```
CLAIM. lambda_S^{del} > 0.
```

proved with **no Palm object**, consuming only the stationary point-process structure of `E-MEAS (b)`, `LEMMA ENUM`/`EQV`, and the ambient finiteness chain of `(INT-DEL-UP)`: if `lambda_S^{del} = 0` then stationarity gives `E[N([n,n+1])] = 0` for every integer `n >= 0`, hence `N([n,n+1]) = 0` a.s. for each `n` (a nonnegative integer-valued variable with zero mean), and **by countable additivity over `n`**, `N([0,infinity)) = 0` a.s.; but `T_0 = D(0)` is in `E` by `LEMMA ENUM` (superset direction, `r = 0`) and `D(0) < infinity` a.s., since under the stationary law `E[D(0)] <= sup_{x in M} E_x[D(0)] = C_* < infinity` by `(INT-DEL-UP)`, whose chain is **ambient** (`(R3-SOJ.a)`'s `S^+` extension plus the Harris return row `SR-PE1.2`/`SR-PE1.3`, both entrance-law-free). Contradiction. The ordering sentence, verbatim:

> *"ORDERING SENTENCE (the non-circularity, stated once): the admission order is now (i) (FLOOR)/(COUNT)/(RUN) give lambda_S^{del} < infinity; (ii) CURE-XE3-A gives lambda_S^{del} > 0; (iii) row (R5) is MET and the Palm calculus (PALM-INV-DEL)/(INT-DEL) is admitted; (iv) only then do Palm means E_Palm^{del}[.] appear. The superseded sentence at both intensity sites carries its in-place note. The sharpening lambda_S^{del} <= 1/c_* via (PALM-INV-DEL) remains downstream and consistent (1/c_* <= 3 + 4/c_*)."*

[PROV: CURE-XE3-A (non-circular positive intensity) ; XE-3 finding 1 cure landed -> XE-4 "CURE-XE3-A PASS"]

**Named classical facts of the foundation, with their hypothesis rows.** The Palm/cycle calculus is consumed as a **named import**, not reproduced: Asmussen, *Applied Probability and Queues*, Ch. VI Thm 1.2 and Sec. VI.3 (the **delayed, wide-sense** case); Baccelli–Brémaud, *Elements of Queueing Theory*, Ch. 1 (Palm probabilities); Thorisson, *Coupling, Stationarity, and Regeneration*, Ch. 8-10. Hypothesis rows as re-cited by the re-pointing audit: `(R1) = SR-PE1.1`, `(R2) = SR-PE1.2` (reversibility `div(w grad u) = mu L u`), `SR-PE1.3` **replaced** by `(INT-DEL) + (INTENS)`, `(R4)` local finiteness (`Lemma LF`, bounded windows, `AM-R5-18(b)`), `(R5)` finite positive intensity (`Lemma SPACE` + `CURE-XE2-F1b` + `CURE-XE3-A`), `(R6)` the two-sided cycle bound `1/C_* <= lambda_S^{del} <= 1/c_*`.
**No independence is claimed anywhere in this foundation.** Positivity runs on stationarity plus countable additivity; finiteness runs on geometric trials and compactness; the Palm identities are admitted only after `(R5)` is met.
[PROV: SR-PE1-DEL Section 5 as re-cited by POST-SR-PE1-DEL RE-POINTING AUDIT ; XE-1 F1 -> XE-2 F1 cures -> XE-3 F1.1 PASS]

**Scope of the foundation.** It supports **PE.2-class deliverables only** — the cycle-averaged occupation identities `(KAC-OCC-DEL)`, `(KAC-RATIO-DEL)`, `(PALM-INV-DEL)`, `(INT-DEL)` on `OBJECT-PE1-DEL`. `DELTA-PE1-ENTRANCE` and `GAP-ASM-ENTRANCE` remain **open** on the Palm side, now read against `rho_S^{Palm,del}`; per `E2-ASSEMBLY` they are *"open only for the Palm legs' own record, which the row no longer rides (D1)."*

---

### 6.2 The live row chain is Palm-free

Two independently adjudicated facts, both **PASS**, establish it.

**(i) The zero-grep fact.** `POST-SR-PE1-DEL RE-POINTING AUDIT`, verbatim:

> *"VERIFIED CLEAN (no re-pointing needed, positive evidence not assumption). A grep for Palm / OBJECT-PE1 / R3-SOJ / KAC / plain over PX:8313-8512 (PE-DOORREACH), PX:8860-9224 (B-DWELL + PE-TRAPOCC) and PX:9589-9868 (DOORREACH-MAXFIX) returns ZERO hits. These three live pieces consume no Palm object, no cycle occupation and no R3-SOJ export; their stopping objects are H_S, tau_lev, T = min(D(0), L) and the tube exit."*

The audit's own grade is recorded with it: `clean = false` means *"the artifact is internally inconsistent as read"*, **not** *"a proof is broken"* — 27 re-pointing rows, every load-bearing one a **naming** defect, *"No exponent, constant or prefactor moves anywhere in the table."*
[PROV: POST-SR-PE1-DEL RE-POINTING AUDIT (verbatim record) ; landed with AM-R5-20 ; XE-2 F1.3 "pre-cured by AM-R5-20"]

**(ii) `E2-ASSEMBLY` design claim `(D1)`**, carried verbatim:

> *"(D1) PALM-FREE LIVE CHAIN: the (A2) chain consumes NO Palm object, no cycle occupation, no R3-SOJ/R3-ASM export - the SR-PE1-DEL layer and the R3 Palm legs are consumed by the row ONLY as historical/cross-check (the post-SR-PE1-DEL audit already verified zero grep hits on the B-DWELL pieces; the assembly must preserve that). If any step smuggles a Palm average - FLAG IT, the design is wrong there."*

Landed grade: **`DESIGN CLAIM (D1) - PALM-FREE LIVE CHAIN: PROVED`**. The v2 internal checker confirmed it independently: *"Every enumerated input is a supremum/infimum over deterministic start sets or a strong-Markov identity at a named (F_t)-stopping time: (P-SUB) is an inf, the reach is a sup over dS^+, (TRAPOCC-UNIF)/(TRAPOCC-2-ROUND) are sups over R_0^*/S^+. [READS post-XE-8: the (TRAPOCC-UNIF) sup is over Door inter R_0^* per (DOOR-CASE1); the quote is the checker's verbatim record at the pre-narrowing vintage] No Palm entrance law, no cycle average, no R3-SOJ/R3-ASM export appears."* The `mu = e^{-beta E_eps} dx` usage inside `TRAPOCC`/`TRAPOCC-2` is a **weight in the `(EQ-OCC)`/capacity identities, not an occupation average**.
[PROV: PIECE E2-ASSEMBLY v2 (the composition) ; XE-3 "E2-ASSEMBLY v2 landed (checker SOUND; block-free, Palm-free, (P-SUB)-free chain)"]

**Consequence for this document.** Sections 1-5 read the foundation **nowhere**. The foundation is a sibling deliverable at PE.2 class; the row's inputs are suprema/infima over deterministic start sets and strong-Markov identities at named `(F_t^xi)`-stopping times.

---

### 6.3 The `sigma_0` state

**The honest condition is `GAP-LP-RECUR`, at `A6` strength.** Carried verbatim from `lane-minmig-proofs-v1.md`, the `R5a` typed-gap row (the copy `SIGMA0-DECLAIM v2` quotes in full, with `§` rendered as `S`):

> *"GAP-LP-RECUR (E[sigma_0] finiteness - the initial-delay term; interface to sibling piece R5b). The Wald bound (WALD) carries the initial-delay term E_q[sigma_0] additively. S2 proves sigma_0 is A.S. finite from arbitrary q in U (RELAX + M5 chain + L1' at order-one probability). It does NOT prove E_q[sigma_0] < infinity, which is a strictly stronger quantitative recurrence statement. Exact interface consumed from R5b / GAP-LP-RECUR: an arbitrary-q expected ground-ball hitting-time bound with beta^{-1} log E_q[sigma_0] <= S_k - m_k + o_delta(1) (or E_q[sigma_0] beta-free), so that the initial-delay term does not dominate the round-sum term D_bar/p in the limsup rate reading. Named exactly: the arbitrary-start expected hitting time of the base ball S from q, at the order-of-limits of S7. This is the GAP-LP-RECUR row the register honestly lists REOPENED (verdict line 102; [34]). Until R5b furnishes it, the LP.5(c) upper limsup is conditional on GAP-LP-RECUR at exactly this strength."*

The display it governs, verbatim:

```
E_q[tau] <= E_q[sigma_0] + E[N] . D_bar <= E_q[sigma_0] + D_bar / p.     (WALD)
```

`LEAD AMENDMENT A6` fixes **which** of `R5a`'s two candidate interface forms is operative, verbatim:

> *"Of R5a's two candidate GAP-LP-RECUR interface forms, THE SECOND is adopted as THE interface: the sigma_0 expectation must carry the ROUND-SUM rate (beta^-1 log E_q[sigma_0] bounded by the D_bar/p rate, S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 + err), not the bare S_k - m_k form - otherwise in the regime S_k/kappa < w_k the initial-delay term would dominate the display."*

**This is the single vintage: `A6`'s round-sum form.** [TYPED -> S7: GAP-LP-RECUR @ A6 strength]
[PROV: lane-minmig-proofs-v1.md r5a typed gaps + LEAD AMENDMENT A6 ; restored by PIECE SIGMA0-DECLAIM v2 ; XE-6 Section 4 "de-claim principle PASS"]

**It does not bind this row.** `E2-ASSEMBLY`'s NOT-CONSUMED ledger, verbatim: *"GAP-LP-RECUR / E_q[sigma_0] and QUANTITATIVE-CYCLE-LENGTH-DEL (the chain contains no return-time, no round-length expectation, and now no renewal count at all)."* `GAP-LP-RECUR` binds the `LP.5(c)` **upper limsup only**.
[PROV: PIECE E2-ASSEMBLY v2, NOT CONSUMED, VERIFIED ledger ; XE-3 checker SOUND]

**`SIGMA0-EXC` — the delivered min-object partial.** What the campaign actually delivered on `sigma_0` is one **typed, expectation-shaped external row**, not a discharge. Its exact shape, as carried from `CURE-XE4-4 v3` Part 3: conditioning field `F_0 = F_{kappa_0}`; start domain `D_k(eps)` **with no claimed containment in `closure(S)`**; index `i = 0`; expectation shape an **additive time budget, not a probability floor**; an explicit *"NOT AN INSTANCE OF PROD-EXCURSION-COND"* clause; and its window stated with the stopping objects named exactly as in `(DOM-0)` —

```
integral_0^{min(D(0), L_0)} ,   D(0) = sigma_0 ,
                                L_0 = the route-(x) time of the sigma_0 scaffold
```

with two tiers, verbatim:

```
(TIER-A6)      <= T_sig exp( beta( Gamma(h) + gamma_2 eps^2 + err(delta) ) ),
               T_sig beta-free
(TIER-DISPLAY) <= T_row exp( -beta( c_H/2 - err(delta) ) )
```

`(TIER-A6)` is what *"all the A6 interface and the Wald/limsup displays consume"*; `(TIER-DISPLAY)` is the strictly stronger form. `SIGMA0-EXC` is **TYPED, NOT DISCHARGED**, and its consumed-by clause is *"R6b S5 (the second summand of MM:4246) ONLY"*. That landed clause is `(TIER-DISPLAY)`'s; `AM-R5-27(c4)`'s live-consumer reconciliation splits the row **by tier** and finds `(TIER-DISPLAY)` dormant and `(TIER-A6)`'s consumers **live** — carried as T-20, RECORD not landed. [TYPED -> S7: SIGMA0-EXC]
[PROV: CURE-XE4-4 v3 Part 3 (ROW SIGMA0-EXC) ; XE-5 "CURE-XE4-4 ordinary i>=1 retype PASS but sigma_0 full-release tail remains typed/uncontrolled" -> XE-6 cores PASS]

**The `R6b` fix-in-passing overclaim is WITHDRAWN.** `PIECE SIGMA0-DECLAIM v2`, verbatim:

> *"PIECE CURE-XE5-4 v2 - THE R6b S5 'FIX IN PASSING' IS WITHDRAWN (dispositions XE-5 Finding 4 by DE-CLAIM, not by estimate; restores the landed conditionality at MM:3163 that was never validly superseded)."*

and the instrument itself, verbatim: *"A DE-CLAIM has none of these costs. It estimates nothing, sweeps nothing, retypes no object, and amends no amendment. It deletes one overclaimed display and lets the corpus fall back to a conditionality it already carried in its own bytes. That is the whole of v2."* XE-6 adjudicated the instrument: **`4. SIGMA0-DECLAIM v2: de-claim principle PASS; landed propagation FAIL; (c4) BLOCKING for the package/full upper`**.
[PROV: PIECE SIGMA0-DECLAIM v2 ; XE-5 finding 4 cure landed ; XE-6 Section 4 "de-claim principle PASS"]

**No branch map.** The `{L_0 < D(0)}` branch reduction is **not** carried: with `(WALD)` un-retyped its right-hand side carries the **full** `E_q[sigma_0]` over all of `Omega`, and `GAP-LP-RECUR`'s named object is the arbitrary-start expected hitting time of `S` from `q`, not a branch restriction; XE-6's `(c4)` record additionally establishes that no `i = 0` instance of the `L_i` recursion exists (`L_i` is defined only for `i >= 1` and only at a start in `S`; `sigma_{-1}` does not exist). Per `AM-R5-28`, this document prints the `GAP-LP-RECUR` conditionality **once**, at the single surviving upper display, scopes `SIGMA0-EXC` as the min-object partial, and carries **no branch map**.
[PROV: XE-6 RECORD (c4) the sigma_0 MM sweep + AM-R5-28 "WHAT THE CONSOLIDATION CONSUMES" ; XE-6 (c4) BLOCKING for package/full upper]

**What else `AM-R5-27(c4)` names, and where it lives — the honest split.** `(c4)` is a **seven-item** sweep, carried verbatim: *"SIGMA0-DECLAIM: MM Section 11 (a third live derivation of the A6 interface - sweep it with the same withdrawal instrument); the Section-4 branch map's four defects; the two standing register clauses that still cite SIGMA0-EXC as consumed; MM:2520-2522's GAP-LP-RECUR conditionality note; the MM:4260/4264/4268 anchor trio; (DOM-0)/N26's status adjudication; MM:2527's positivity instance."* **Three** of the seven are executed by this document in its own terms, above: the branch map deleted rather than demoted; the `GAP-LP-RECUR` conditionality printed once; `SIGMA0-EXC` scoped as the min-object partial. The remaining **four** are edits to bytes this document does not own — `lane-minmig-proofs-v1.md`'s Section 11 and its register lines, and the **frozen** `PX` register (§8.1) — and none of them is executed here. They are carried as **TYPED rows binding `LP.5(c)` only**: the `MM` Section-11 conditionality (**T-19**, whose governed span `MM:2494-2539` also contains `(c4)`'s seventh item, `MM:2527`'s positivity instance); the `SIGMA0-EXC` live-consumer reconciliation (**T-20**); the `MM:4260/4264/4268` anchor trio (**T-21**); `(DOM-0)`/`N26`'s status adjudication (**T-22**). **None of the four binds any display of §§1-5** — the live chain contains no `sigma_0` object at all — and none is claimed landed.
[PROV: AM-R5-27(c4) verbatim + XE-6 RECORD (c4) items (2)-(5) ; XE-6 Section 4 "de-claim principle PASS but c4 propagation BLOCKING for package/full LP.5 upper" ; landed as RECORD, not as operative edits, per the XE-6 propagation-round header]

*Out of scope here:* `R5a`'s sibling typed row `GAP-PE-COND` (PROD-EXCURSION at conditional strength) lives on the `lane-minmig` side and is not adjudicated by this document; the entrance-side obligation it names is what `(COND*)` closes in Section 5, and its Palm-leg twin `DELTA-PE1-ENTRANCE` stays with the foundation of §6.1.

---

## 7. THE HONEST REGISTER

**This register ENUMERATES ITS ROWS BY NAME**, each with exact strength and where it binds; **its authority is that enumeration, and it makes no quantified claim of exhaustiveness over the consolidated chain.** What is claimed is forward closure — §§1-6 tag into this table and stop — plus the addition this signing makes: blocks A-D are joined by **block E**, which carries `XE-7`'s `F2`-`F5` dispositions as rows `T-26`-`T-29` and names `XE-7`'s six nonblocking exactness residuals with their sites. **THIS SENTENCE WAS BYTE-FALSE AT THE `XE-8` PRINT AND IS MADE TRUE BY THIS SIGNING, NOT DEFENDED.** `XE-8`, verbatim: *"Mechanical search finds no T-26, T-27, T-28, or T-29 row"*, so *"COORDINATION [96]'s statement that 'blocks A-E ... stand' is false against the landed bytes."* Block E is **written and inserted below**, immediately after block D's `T-25`; its four rows carry `XE-8`'s adjudication of `F2`-`F5` (**all four PASS**), its residual list carries `XE-8`'s grades for the six `XE-7` nonblocking residuals (**five PASS, one FAIL — the `PX`-anchor convention, cured at §8.1 by this signing**), and `XE-8`'s own four `F1` residuals are dispositioned by name at `T-9` and at their body sites. **No count of block E is asserted beyond the rows named in it.** That addition closes the omission `XE-7` recorded, verbatim: *"F2--F5 are not correctly represented as conditions/dispositions in Section 7; consequently its completeness claim is false at signing."* **The former "every typed condition" claim is WITHDRAWN and replaced by the enumeration above: the register is complete BY NAME over what `XE-7` raised, and asserts nothing beyond that list.** **Tag closure, claimed only after the grep:** every inline `[TYPED -> S7: X]` tag of Sections 0-6 has **exactly one** row below; the correspondence was closed by a grep for the tag string over all three section blocks at authoring time. **THE REVERSE DIRECTION IS CLAIMED ONLY WHERE THE GREP CLOSES IT.** Most rows are also tagged in the body or named at their site, but three are not, and the earlier two-way wording is **withdrawn** for them: `T-3` (`(T4) H-INJ`) and `T-4` (`H-SEP`) are **inherited standing geometric conditions** whose names occur nowhere in Sections 0-6 — they reach this document through the `PE-DOORREACH` scale choice and the tube rows of §§3.3/3.4, which read `beta_*^{DR}`, and they are **register-only entries**; `T-9` is named at §§8.3/8.4 rather than at the §3.2/§4.3/§5.2 sites it *formerly* declared binding, and after the §4.2(h) cure it declares **no** binding site at all — it is retained as a RECORD row so those pointers still resolve. Forward closure is what the grep proves and forward closure is what is asserted (`AM-R5-28`: *"inventories are grep-closed at authoring time"*). Where a tag and the NOT-CONSUMED ledger of §7.3 disagreed, the disagreement is **adjudicated** in block D below and the ledger reads the adjudication: **a thing is typed-consumed XOR not-consumed, never both.**

### 7.1 Typed conditions

**A. CONDITIONS ON DISPLAYS CARRIED HERE.**

| # | Condition | Exact strength (verbatim where quoted) | Where it binds | Provenance |
|---|---|---|---|---|
| **T-1** | `GAP-LP-RECUR` **@ A6 strength** | `beta^-1 log E_q[sigma_0]` bounded by the **round-sum** rate `S_k - m_k + eps(S_k/kappa - w_k) + C eps^2 + err` (A6's *second* form; the bare `S_k - m_k` form is withdrawn). Named object: *"the arbitrary-start expected hitting time of the base ball S from q, at the order-of-limits of S7."* Status: **REOPENED / not discharged.** | **`LP.5(c)` upper limsup ONLY.** **NOT this row** — `E2-ASSEMBLY` NOT-CONSUMED: *"the chain contains no return-time, no round-length expectation, and now no renewal count at all."* | MM `r5a` typed gaps + `LEAD AMENDMENT A6`; restored by `SIGMA0-DECLAIM v2` [PROV: SIGMA0-DECLAIM v2 ; XE-5 F4 cure -> XE-6 S4 de-claim principle PASS] **`E5` RECORD 2026-08-02 - EXTERNALLY SIGNED SOUND (XE-14, 2026-08-02).** The status **REOPENED / not discharged** stated in this row STANDS for the FULL `E_q[D(0)]` expectation and is NOT withdrawn by this record. E5 (P1 draft `lane-e5-gaplprecur-v1.md`) delivers the row at **DISCHARGED-AT-THE-MIN-OBJECT AT RATE STRENGTH (EXTERNALLY SIGNED, XE-14)**: the object is `E_q[D(0) ^ L_0]`, not `E_q[D(0)]`; the tier is `(TIER-A6-RATE)` with E5's own prefactor `P_E5(beta) := P(beta) + C_E5 beta^{2N}` and the rate-inertness row `beta^-1 log P_E5(beta) -> 0`, which is exactly the `beta^-1 log` reading `LEAD AMENDMENT A6`'s adopted ROUND-SUM form asks for. The full `D(0)` **expectation** goes **typed-unconsumed**; its **a.s. finiteness** stays **consumed** and is landed in `lane-minmig-proofs-v1.md`'s R5a round-object section, verbatim *"Each S-return time is therefore a.s. finite from anywhere in U"*. **E5 SUPPLIES THE MIN-OBJECT ANALOGUE ONLY**: `MM` Section 11's two displays, which read `E_q[sigma_0]` as printed, are NOT re-pointed and NOT withdrawn, and they stand under their own conditionality markers; **no E5 patch lands at `MM` Section 11**. **NOT FLIPPED HERE.** The A6 fences - `lane-minmig-proofs-v1.md`'s status-surface fence clause and its `GAP-LP-RECUR` register entry, and `lane-lp-product-saddle-v1.md`'s `Theorem LP.5` XE-8 RELEASE FENCE - stand VERBATIM; the fence comes off only at E5's external signature, never before. |
| **T-2** | `SIGMA0-EXC` | External, expectation-shaped, **DISCHARGED AT `(TIER-A6-RATE)`, BY THAT NAME (XE-14 SOUND, 2026-08-02; delivered by `lane-e5-gaplprecur-v1.md`)** [the head is FLIPPED at the XE-14 boundary; the original typing stands below as this row's record]. Field `F_0 = F_{kappa_0}`; start domain `D_k(eps)`, **no** claimed containment in `closure(S)`; index `i = 0`; window `integral_0^{min(D(0), L_0)}`, `D(0) = sigma_0`; additive time budget, not a probability floor; *"NOT AN INSTANCE OF PROD-EXCURSION-COND"*. Tiers: `(TIER-A6) <= T_sig exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta)))`, `T_sig` beta-free; `(TIER-DISPLAY) <= T_row exp(-beta(c_H/2 - err(delta)))`. | Landed clause: *"R6b S5 (the second summand of MM:4246) **ONLY**"* — **not this row**. That clause is `(TIER-DISPLAY)`'s and is **reconciled by tier** in the `(c4)` record (T-20): `(TIER-DISPLAY)` dormant, `(TIER-A6)` live at the `LP.5(c)`-side consumers. The reconciliation is RECORD, not landed; either way, **not this row**. | `CURE-XE4-4 v3` Part 3 [PROV: CURE-XE4-4 v3 ; XE-5 CURE-XE4-4 retype PASS, sigma_0 tail typed -> XE-6 core PASS] **`E5` FLIP EXECUTED 2026-08-02 - EXTERNALLY SIGNED SOUND (XE-14, 2026-08-02).** E5 (P1 draft `lane-e5-gaplprecur-v1.md`) PROVES this row's object - the OFF-`R_0` occupation of `[0, min(D(0), L_0)]` from `q in D_k(eps)`, field `F_0`, index `i = 0` - as its `LEG 2`, via Section 5.2 (RED'')'s `W(z)` under that section's one-application warrant (*"ONE application of each display of STEP 5 covers the ENTIRE round"*), an `(A)`/`(B)` start-set partition at `S^+`, and a descent-arc certificate that types **`(H-DESC)` PROVED ON `D_k(eps)` at `err_desc = 0`** and delivers `q in R_0^*`. **THE FLIP IS AT `(TIER-A6-RATE)`, BY THAT NAME**: `E_q[D(0) ^ L_0] <= P_E5(beta) exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta)))` with **E5's own prefactor** `P_E5(beta) := P(beta) + C_E5 beta^{2N}` - `P(beta) := (T_sub + beta N delta^2/8)/c(delta,h)` being `lane-minmig-proofs-v1.md`'s own `R6b.4` prefactor and `C_E5` beta-free, built from the beta-free `C_5` and `C_4` of this file; `N` is the DIMENSION parameter of `dim M = 2N`, never the first-crossing round index (written `N_x` in E5). **The proved off-`R_0` leg is carried IN the prefactor, not absorbed silently.** `P_E5` is **rate-inert**, `beta^-1 log P_E5(beta) -> 0`. **`(TIER-A6)` WITH `T_sig` BETA-FREE, AS TYPED IN THIS ROW ABOVE, IS NOT CLAIMED AND IS NOT FLIPPED** - refuted by `lane-minmig-proofs-v1.md`'s own `R6b.4` HONEST CORRECTION row, verbatim: *"It is NOT beta-free; but it is RATE-INERT"*. `(TIER-DISPLAY)` stays **DORMANT**, untouched (see T-20). **THREE numerical rows are minted inside the T-6 fence and are NOT discharged**: `c_0 + 1/beta <= S_k + c_H - 2 kappa` **(E5-MARGIN)**; `m_k + m_1(lambda) - S_k - c_H - err > 0` **(E5-TRAPMARGIN)**, at STRICT positivity - the weaker `>= -(Gamma(h) + gamma_2 eps^2 + err(delta))` form is NOT what E5's `LEG 2` and assembly consume and is NOT carried; and `2 kappa > m_k + eps w_k` **(E5-DOMAIN)**, the start domain's own supporting inequality (`lane-lp-product-saddle-v1.md`, M2P's third entry), which is **VERIFIED FAILING at the named flagship `eps = 0.05`** (`2.0000000000 > 2.0053215591` is false) and is carried on the eps-window `eps < 0.0472135955`. **STATUS: EXTERNALLY SIGNED (XE-14 SOUND, 2026-08-02) AT THE NARROW BOUNDARY - the min object at rate strength only; the full `E_q[D(0)]` expectation remains OPEN. The A6 fences - `lane-minmig-proofs-v1.md`'s status-surface fence clause and its `GAP-LP-RECUR` register entry, and `lane-lp-product-saddle-v1.md`'s `Theorem LP.5` XE-8 RELEASE FENCE - stand VERBATIM and are not touched by this record or by the flip.** |
| **T-3** | **(T4) `H-INJ`** | Verbatim: *"delta/2 + 4/beta < inj(T^{2N}), and the geodesic of (G3) minimizing. Inherited from PE-DOORREACH's (H-TUBE), which its checker reduced to exactly 'delta/2 + 1/beta < inj' after the half-radius-disc repair; on the unit-lattice torus inj = 1/2 so delta <= 2/5 suffices.* ***NOT VERIFIED against the lane's standing delta.***" A **standing geometric condition**, not numerically instantiated. | The tube geometry of `PE-TRAPOCC` / `PE-DOORREACH` / `DOORREACH-MAXFIX` as consumed by the `(ENTRY)` leg. | `LEMMA PE-TRAPOCC` typed gaps, carried unchanged through `TRAPOCC-3`/`TRAPOCC-4` [PROV: PE-TRAPOCC (T4) ; XE-4 "remain exactly as TRAPOCC-3 and XE-4 left them" -> XE-5/XE-6 untouched] |
| **T-4** | **(`H-SEP`)** | *"in its N-corrected form `delta^2 < 2(S_k + c_H - m_k - eps w_k)/(N L_eps)`"*; recorded, with `H-INJ`, as *"NOT VERIFIED against the lane's standing delta"*. A **standing geometric condition**, not numerically instantiated. **Flagged, not resolved (not this document's leg):** `PE-DOORREACH`'s own separation row displays `dist(z, Door') > 0`, while `B_{2rho}(z) subset Omega` requires `>= 2rho`; at the TRAP instantiation it is supplied at full strength by `(G4)`/`(G4')`, so `PE-TRAPOCC` is unaffected. | `PE-DOORREACH` Sections 2+5 separation rows, as instantiated at `D_2 := {E_eps >= theta_2}` by `TRAPOCC-4`. | `DOORREACH-MAXFIX` / `PE-TRAPOCC` typed gaps; strength question typed by the `TRAPOCC-5` pass [PROV: TRAPOCC-4 typed gaps (e) ; XE-4 -> XE-5 "TRAPOCC-4 envelope PASS"] |
| **T-5** | **(`SML'`)** | Verbatim: `eps w_k + O(N L_eps delta^2) + s + s' < 0.0894771449`  **(SML')**, *"the tightest-cell numerical condition of (A3), Gamma(h)-free"*. **Worst cell displayed:** the tightest of the four `ADJ-2` sample points, margin **`0.0894771449`**; at the flagship cell the same condition clears against **`0.861742`** with room. Carries **no `Gamma(h)` term** — v2 incurs no `1/p_sub`, so the `O(h) = O(delta)` loss is *not incurred at all* (the v1 checker's MEDIUM is **moot, not patched**). Class: *"A numerical condition on (eps, delta, s, s'), not a proof gap."* Operative anchors: the landed N-free sufficient condition `eps < kappa/(4 g(10)) = 0.1309017` (at `kappa = 1`; `1/(4 g(10)) = 0.130901699...` — the inherited `0.130906` is a **stale transcription**, corrected per `XE-7`'s MINOR, and the operative `eps = 0.05` sits below either numeral, as does the simpler `eps < 1/8` condition) and the design scale `eps = 0.05`. | The `(A3)` leg of the assembly. **Satisfiable** numerical condition. | `E2-ASSEMBLY v2` `(A3)` [PROV: E2-ASSEMBLY v2 ; XE-3 checker SOUND, "(SML') now EXHIBITS its tightest cell" per AM-R5-25(g)] |
| **T-6** | **`c_plate > 0` (and its SIZE at two XE-8 sites)** | `c_plate := (S_k + c_H - m_k) - err_A`, **beta-free**, with `err_A := c_0 + eps w_k + L_eps N delta^2/4`. Its **only** warrant is one landed numerical margin row, verbatim: *"Since S_k + c_H - m_k = 1.024350 at the flagship point while c_0 + eps w_k + L_eps N delta^2/4 is of err class, Regime A applies at every collar start for the corpus delta/eps ranges."* Self-typed: *"This is a satisfiable numerical condition on (eps, delta) at the flagship scalars ... NOT a theorem gap, but NOT instantiated against a standing numerical delta either. TYPED at the same strength as (SML')/(T4)/(H-SEP)."* **Consumption is only the numerical POSITIVITY** — not the Regime-A hypothesis, not the pointwise `dist(z,TRAP_2) >= c_0/G` step, not machinery row 15's margin sentence. **The constant is `c_plate`, never `kappa`** (`kappa` is the standing coupling; this cure asserts nothing about it). | `(PLATE-SEP)` and hence the WFF killing-plate leg. AFTER THE XE-8 CURE, TWO FURTHER SITES, ENUMERATED [amends this fence]: (i) (DOOR-CASE1)'s level-gap-to-distance step at 4.2(h.6) - a dist-class step, brought INSIDE the fence by this amendment; (ii) beta_door := 8G/c_plate (S7.2), whose SIZE, not merely positivity, reads c_plate. The fence now reads all three by name. Delivered display: `dist( closure(S), TRAP_2^cl ) >= c_plate/(2G) > 0`, for every `beta >= beta_plate := 2/c_plate`; `c_plate`, `G`, `beta_plate` all beta-free. In particular `closure(S) inter TRAP_2^cl = empty` for `beta >= beta_plate`. | `CURE-XE4-2 v3` (the WFF killing plate: `closure(S)`) [PROV: CURE-XE4-2 v3 ; XE-5 CAP-LOW*/V2ID BLOCKING -> cured by CAP-LOW-H1 v2 + V2ID v2 ; XE-6 "all four mathematical cores PASS at the stated consumed strengths"] |
| **T-7** | **The `beta`-threshold ledger** (collected; §7.2) | Nothing is claimed below the collected threshold. *"THE CURE IS NOT beta-FREE; IT IS beta-FREE ABOVE TWO DISPLAYED THRESHOLDS ... Below beta_S4 nothing is claimed."* | Every display of the chain that carries a `for beta >= ...` hypothesis row. | §7.2 |
| **T-8** | **The `c1` all-z scope note** | XE-6, verbatim: **`c1  NONBLOCKING for exact E2 consumption; blocking only for broader all-z reuse.`** And: *"Disposition of (c1): the omitted boundary case, missing consumer walk and 9A classification error must be repaired before ENTRY-W is cited as a global all-z theorem. They are nonblocking for the exact E2 interface."* | `ENTRY-W v2`'s **advertised global quantifier** only. The exact `boundary(S^+)` E2 interface consumed here is unaffected. | `ENTRY-W v2` + `AM-R5-27(c1)` [PROV: ENTRY-W v2 ; XE-5 finding 1 cure landed ; XE-6 S1 "core PASS at consumed strength; global wording FAIL; (c1) NONBLOCKING"] |
| **T-9** | **CURED at §4.2(h) — RECORD ROW, NOT A CONDITION.** The MAIN-leg classical `(EQ-OCC)` / `(FLUX-ID')` / `(SANDWICH)` / `(RATIO*)` / `(PTW*)` chain at the plate is **historical**; the live route is `(RATIO-W)` per §4.2(g) for the ratio and the weak main pair/triple machinery of **§4.2(h)** for the occupation identities. The **grounding-set seam of the classical record, from XE-5 F1 and XE-7 F1**, **binds no display of this document**, because no display reads the proof that carries it. | The main-leg `(ENTRY)` input travels `(RATIO-W)` per §4.2(g); the classical sandwich record is historical [PROV: `ENTRY-W v2`]. That historical record is `PE-DOORREACH` Sections 2+5, whose target rows §3.2 states in full: *"(i) closed, compact, disjoint from A_y and from the plate, with a SMOOTH boundary and Schauder regularity up to it; (ii) every boundary point regular for the Dirichlet problem ...; (iii) a surface measure and a normal on the target boundary, for Green's second identity and for the sign of the inward normal derivative; (iv) capacity monotonicity, the only target-agnostic row."* Rows (i)-(iii) are met **at the target `TRAP`** by `LEMMA TRAP-EXIST (S3)`. They are **not** met at the **grounding** set: the landed row reads *"By (G4) and the choice of beta_*, A_z, S, TRAP are pairwise disjoint compacts with smooth boundaries and B_{2rho}(z) subset Omega"* [PX:9041], and `S` is the max-norm ball — a **cube**. That is XE-5 F1's mechanism, on the main leg. The weak route of §2 and `(RATIO-W)` cure it for the **companion only**: XE-6 S1 clears `(RATIO-W)` *"for the consumed triples (A_y,P,D_2)"*, and no instantiation at `(A_y, closure(S), TRAP)` exists **in the corpus** — §4.2(g) instantiates it **in this consolidation**, which is why the route is disposed there and only the residual is booked here. **WHAT CHANGED, AND WHY THIS ROW IS NO LONGER TYPED.** XE-7 F1 graded the seam BLOCKING and specified the cure verbatim: *"instantiate the weak compact-set framework on the main pair/triple; identify the main occupation potential with the weak killed equation at the strength used by finite-energy measures; prove main-target analogues of `EQ-OCC`, `FLUX-ID`, the measure sandwich and the pointwise step; then rederive `TRAPOCC-UNIF`. The existing main `(RATIO-W)`/solid-ball entry bound can supply the sandwich hypothesis, but it cannot replace the sandwich itself."* **§4.2(h) executes exactly that**, at the pair `(TRAP, closure(S))` and the triple `(A_z, closure(S), TRAP)`: `(WFF-3)@MAIN` and `(MAIN-V2ID)` (h.2); `(EQ-OCCw)@MAIN`, `(FLUX-ID'w)@MAIN`, `(FLUX-CONSw)@MAIN`, `(SANDWICHw)@MAIN` (h.3); `(RATIO*w)@MAIN` (h.4); `(PTW-W)@MAIN` (h.5); and the rederivation of `(TRAPOCC-UNIF)` at its printed strength (h.6). The `(RATIO-W)`/solid-ball bound of §4.2(g) supplies the sandwich **hypothesis** `1 - 2h >= 0` q.e. on the SOLID `A_z` and is used for nothing else, exactly as the verdict requires. Because the seam was a property of a **consumed proof** and not a satisfiable parameter condition, it is cured by **replacing the proof**; the weak route reads no boundary regularity of `A_z`, of `closure(S)` or of `TRAP` (§4.2(h.8) enumerates what is not read, by name). **This row is retained as a RECORD so that §7.3, §8.3 and §8.4 still resolve; it is NOT in the T-3/T-4 standing-condition class and it conditions nothing.** **`XE-8` REGISTRATION, CARRIED HERE BECAUSE THIS IS THE `F1` ROW.** `XE-8` graded the §4.2(h) cure a PARTIAL PASS and named four residuals; all four are cured in this signing and none mints a typed condition. **(1) Index-set narrowing.** `(TRAPOCC-UNIF)` is now printed with `sup` over the **post-reach set `Door inter R_0^*`**, not over `R_0^*`; the containment in the CASE-1 branch is the displayed one-line computation `(DOOR-CASE1)` at §4.2(h.6) (`dist(z, closure(S)) >= c_plate/(2G) >= 4/beta` for `beta >= beta_door := 8G/c_plate`), the §4.3 display and the §5.2 STEP-5 consumer are narrowed to match, and the `P' = closure(S')` mirror is **WITHDRAWN, not asserted**. **(2) Prefactor.** The main route now reads the distinct symbol `C_3^main := C_H'' e^2 G^2 V_M / c(N,delta)`, carrying `(CAP-UP-GATE)`'s `e^2`; the companion `C_3` is untouched. **(3) Threshold vintage.** `beta_1 := max(beta_1^hist, beta_1^weak)`, the weak witness displayed at §0.5 and collected at §7.2. **(4) `(MAIN-V2ID)` licence.** Its threshold row reads `beta >= max(beta_S4, beta_*)`, `beta_*` being what `(M1)` consumes through `(G4')`; see T-15. Each is prefactor- or threshold-level and **rate-inert**; no exponent moves and no core is refuted. | **NOWHERE.** *Formerly* the MAIN `(TRAP)` leg: `(ENTRY)` §3.2, the classical `(SANDWICH)` (Gilbarg-Trudinger Thm 8.1 on `Omega'' = M \ (A_z u S u TRAP)`), hence `(TRAPOCC-UNIF)` §4.3 and the `TRAP` leg of §5.2 STEP 5. **Each of those sites now reads §4.2(h) instead:** the occupation identity is `(EQ-OCCw)@MAIN`, the flux identity is `(FLUX-ID'w)@MAIN`, the factor 2 that §4.3's ERR LEDGER carries is `(SANDWICHw)@MAIN`'s weak measure inequality `e_D <= 2 e` on `TRAP`, the ratio is `(RATIO*w)@MAIN`, and the pointwise step is `(PTW-W)@MAIN` with the chained `C_H''`. **NOT** the companion leg (§§4.2/4.4), which runs the weak route end to end, and **not** `(SANDWICHw)` §2.2, whose `h <= 1/2` hypothesis is supplied on the solid ball by `(ENTRY-W)` §4.2(e). | `PE-DOORREACH` Sections 2+5 / `PE-TRAPOCC` Section 5 (5c) as carried at §3.2 [PROV: PX:9041 + PX:9046-9047 (the classical sandwich; **pre-banner** coordinates, the §8.1 default — the SAME bytes appear at §4.3's ERR LEDGER as the **physical** `PX:9050-9051`, and the tag is what resolves both) ; XE-5 F1 cured on the companion leg by ENTRY-W v2 -> XE-6 S1 "core PASS at consumed strength" for `(A_y,P,D_2)` only -> **XE-7 F1 BLOCKING on the main leg -> CURED at §4.2(h)**, the weak framework instantiated at the main pair `(TRAP, closure(S))` and the main triple `(A_z, closure(S), TRAP)`; row demoted from TYPED to RECORD] |

**B. SCOPE AND BOOKKEEPING ROWS TAGGED IN THE BODY.** Each is read by the document; none moves an exponent, a constant or a prefactor.

| # | Condition | Exact strength (verbatim where quoted) | Where it binds | Provenance |
|---|---|---|---|---|
| **T-10** | `SIGMA-FIELD-BOOKKEEPING` | The sigma-field inventory of §0.4 is declared **exhaustively** — `F_{sigma_{i-1}}`, `F_t`, `F_{theta^+(0)}`, `F_{tau_lev}`, and, *"only inside (PLATE-REG)"*, `F_sigma` with `sigma := H_{closure(S)}` together with the canonical-space fields `G_1`, `G_{0+}` — and the declaration is an **inventory claim**, not a theorem: *"THERE IS NO xi_j AND NO SUB-WINDOW FIELD: no block decomposition is used anywhere."* Typed at inventory strength, i.e. falsifiable by exhibiting a conditioning field used at a step and absent from the list. | §0.4, hence every conditioning step of §§2.4, 4, 5. No display's value depends on it; a miss would be a naming defect. | `E2-ASSEMBLY v2` objects block + `CURE-XE4-2 v3 (PLATE-REG)` *"SIGMA-FIELDS USED, EXHAUSTIVELY"* [PROV: AM-R5-26(c)(v) ; SUSTAINED / SOUND per AM-R5-25] |
| **T-11** | `COV-SCOPE` | A **scope reading of a landed proof, not a new estimate**: `Lemma PE3p.3` is landed with *"Let x in S"*, while `(COV)` is stated for any round-type interval with `T' <= L`. The consumed start property is named exactly — *"the theta-label argument of its proof uses only s < T' <= L, the openness of the theta-sectors, and the round-start property w_theta = k AT the start"* — and the earlier phrasing *"no property of the start"* is **WITHDRAWN** (AM-R5-25(c)). | `(COV)` §5.1 and its application inside `W(z)` at §5.2 STEP 4. | `Lemma PE3p.3` (R4c-PE3p body) as registered by `E2-ASSEMBLY v2` [PROV: E2-ASSEMBLY v2 COV-SCOPE + AM-R5-25(c) ; checker SOUND] |
| **T-12** | `TRAP-EXIST-STRAT-NONEMPTY` | `LEMMA TRAP-EXIST` is stated for *"any NONEMPTY subset"* `STRAT subset M` — **no regularity of STRAT is assumed** — and `(S4)` reads *"dTRAP is NONEMPTY, provided TRAP is a proper nonempty subset of M."* The nonemptiness/properness hypothesis is therefore a **standing side condition of the realization**, not a proved fact about the landed `STRAT`. | `(TRAP-DECL)`/`(TRAP-EXIST)` §1.1, hence the target rows of `(CAP-UP-GATE)` §3.1 and of `(ENTRY)` §3.2. Satisfiable; no exponent depends on it. | `PIECE TRAP-LICENSE (TRAPOCC-5)`, `LEMMA TRAP-EXIST` [PROV: TRAP-LICENSE ; checker SOUND, three MEDIUMs adopted in AM-R5-26(b)] |
| **T-13** | `TRAP-EXIST-EDITION-SPOTCHECK` | The named imports of `LEMMA TRAP-EXIST` are cited **by edition and theorem number** — Whitney approximation (Lee ISM 2nd ed., Thm 6.21; Hirsch Ch. 2), Sard (Lee ISM 2nd ed., Thm 6.10; Milnor Ch. 3), regular level set (Lee ISM 2nd ed., Cor 5.14) — and the **edition/number spot-check is not re-executed here**. Each row's hypotheses are checked in place; only the citation coordinates are typed. | §1.1 only. A miscited coordinate would be a naming defect; the facts are standard and the hypothesis rows are displayed. | `PIECE TRAP-LICENSE (TRAPOCC-5)` [PROV: TRAP-LICENSE ; AM-R5-26(b)] |
| **T-14** | **(`G3-CITE`)** — *adjudicated **typed-consumed**, moved OUT of §7.3* | One of the two `TRAPOCC-3`-era typed gaps carried, verbatim, *"exactly as TRAPOCC-3, TRAPOCC-4 and XE-4 left them"*: the **citation surface** of the `(G3)` collar-transfer row. It is carried **unchanged and not re-verified** by this document. **WHY TYPED AND NOT NOT-CONSUMED (the vintage argument):** `(G3)` **is read here** — `(G4')` §1.1 runs *"(G3)'s collar transfer run at radius 8rho"*, and `(GATE-LOWER)` §3.1 opens *"By (G1)+(G2)+(G3)"*. Its sibling `(G3-CORNER)` is read nowhere (T-23), because §2's weak route needs none of `(T3.4)-(T3.5)`; the two were grouped in one ledger line and that grouping was **false for this one**. | `(G4')` §1.1 and `(GATE-LOWER)` §3.1 — both consumed **only as separation / level hypotheses** (the Harnack ball disjointness and the gate lower bound at non-strict strength). No exponent, constant or prefactor depends on the citation. | `TRAPOCC-3` typed gaps as carried at §2.3's import-surface declaration [PROV: XE-6 C3 RECORD, CURE-XE6-c3 EDIT 1 ; XE-4 "remain exactly as TRAPOCC-3, TRAPOCC-4 and XE-4 left them"] |
| **T-15** | `V2ID-MAIN-TARGET-SCOPE` | Verbatim: *"SCOPE: for v_2 at the new pair only; NO claim is made about the MAIN-target object v, whose target is TRAP."* The identification `(V2ID)(a)(b)(c)` is delivered for the **companion** occupation potential and for **no other object**; the earlier `TYPED-PLATE-V2ID` a.e.-equality typing is **RETIRED**, not weakened. | §2.5 and every downstream reading of `v_2`. **The fence is now a PIECE-scope fence, not an absence claim.** `PIECE V2ID v2`'s deliverable remains **companion-only** and nothing reads it at the main target. The main-target identification **now exists** and is a **separate proved object** — `(MAIN-V2ID)`, §4.2(h.2) — obtained by instantiating the SAME three ingredients at `Y = TRAP` instead of `Y = TRAP_2^cl`: `(i)` the Steps A-D q.e. equality plus `(POLAR-OPEN)`, `(ii)` interior De Giorgi-Nash-Moser on `G = M \ closure(S)`, `(iii)` the small-time mean-value identity `(MV-t)@MAIN` plus `SR-DENS`, under the standing threshold **`beta >= max(beta_S4, beta_*)`** — `beta_S4` for `(h.2)`'s own steps and `beta_*` because `(M1)`'s disjointness `TRAP inter closure(S) = empty` travels `(G4')` §1.1, **no domination between the two being proved** [`XE-8` `F1` residual 4] — and consuming only `(WFF-1)`'s **hypothesis** row. §§4.3/5.2 read `v` through `(MAIN-V2ID)`, not through `(V2ID)`. | `PIECE V2ID v2` (`CURE-XE5-2 v2`) [PROV: V2ID v2 ; XE-5 finding 2 cure, both halves SURVIVE, AM-R5-27(b) -> XE-6 core PASS] |
| **T-16** | `CAP-DENOM-SYMBOL` | Conceded once, verbatim: *"this bridge licenses cap_pl(A_z) = cap(A_z, closure(S)); it does NOT license the landed literal symbol cap(A_z, S). Every downstream denominator is read at the plate."* A **symbol-reading obligation**, not an estimate: any consumer that reads the landed literal `cap(A_z, S)` is out of licence. | Every capacity **denominator** of §§3.3, 4.2(d), 4.2(e). The wiring sentence of §4.2(d) is the single site where the reading is stated. | `PIECE CAP-LOW-H1 v2` Section 6 per-symbol direction ledger + R6 shared-row hygiene [PROV: CAP-LOW-H1 v2 ; XE-5 finding 3 cure, AM-R5-27(b) -> XE-6 core PASS] |
| **T-17** | **(`NEARS-ERR`)** | The near-S CASE-2 error term: `(ENTRY-MARGIN)` reads `c_0 - eta - err_S > 0` in CASE 2, with `err_S` the loss incurred by replacing `S` by `S' := B_{delta/8}(g*)`. The landed licence is exactly *"(CAP-LOW*) is unchanged in the exponent because sup_{S} E_eps and sup_{S'} E_eps differ by O(delta^2) inside the same err class. No exponent moves."* — an **err-class** statement, not a numerically instantiated margin. XE-6 grades the CASE-2 shell walk itself as `(c1)`-class: *"the boundary-of-S geometry of the landed reduction needs its own display at the cube"*. | CASE 2 of `(ENTRY-W)` §4.2(c)/(e), at threshold `beta_W'`. CASE 1, the branch the schedule actually consumes at collar and sphere starts, is unaffected. | `ENTRY-W v2` near-S reduction + `AM-R5-27(c1)` [PROV: ENTRY-W v2 ; XE-5 F1 cure landed ; XE-6 S1 "(c1) NONBLOCKING for exact E2 consumption"] |
| **T-18** | `GAP-PE1D-NORM` | **Cosmetic, foundation-side.** Only the *finiteness* of `G_* := sup_{S^+} |grad E_eps|_2` is load-bearing; if the max-vs-Euclidean bookkeeping is not closed, the numerical value of the spacing constant `c_*` changes by a factor `<= sqrt(2N)` and **positivity, `(INTENS)` and every downstream display are unaffected**. | `CURE-XE2-F1b` / `Lemma SPACE` inside §6.1 **only**. **Binds no display of §§1-5**: the live chain is Palm-free by `(D1)` (§6.2). | `CURE-XE2-F1b` + `SR-PE1-DEL` Section 4 [PROV: CURE-XE2-F1b ; XE-2 finding 2 cure landed -> XE-3 F1 PASS] |

**C. THE `AM-R5-27(c4)` ROWS — TYPED, BINDING `LP.5(c)` ONLY.** Four items of the seven-item `(c4)` sweep are **not executed** by this document (§6.3). They are register and lane-file edits, landed as **RECORD, not as operative edits**; each is carried here at its exact strength so the register is not read as complete when it is not. **None binds any display of §§1-5.**

| # | Condition | Exact strength (verbatim where quoted) | Where it binds | Provenance |
|---|---|---|---|---|
| **T-19** | **`MM` Section-11 conditionality** — `(c4)` item 1 (and item 7) | `(c4)`, verbatim: *"MM Section 11 (a third live derivation of the A6 interface - sweep it with the same withdrawal instrument)."* The `(c4)` record's adjudication: **supersession-of-one is NOT AVAILABLE** (`MM:2520-2524` and `MM:2531-2535` *"stand in premise/conclusion relation"*), so the minimal instrument is **one section-governing header note** whose governed span is *"The whole of Section 11, MM:2494-2539, and in particular its two displays: MM:2520-2524 (the A6-interface limsup for E_q[sigma_0]) and MM:2531-2535 (the assembled limsup for E_q[tau_change^theta], i.e. LP.5's upper at this printing)"*, and whose condition is *"Both displays are CONDITIONAL ON GAP-LP-RECUR at the strength typed at MM:3163 as amended by LEAD AMENDMENT A6 (MM:3169-3177), i.e. at A6's adopted ROUND-SUM-rate interface form. Neither display is withdrawn."* One further edit is *"NOT optional and is not a conditionality marker"*: the discharge claim at `MM:2538-2539` (*"no marker rescues a discharge"*). **Status: UNLANDED in MM's bytes.** [RECORD CORRECTION, 2026-08-02, XE-12-cure residual hunt: this label is STALE - the Section-11 governing note and both conditionality markers ARE landed in MM (the block the E5 P2 record notes reference by name). The UNLANDED label is retained as the row's own history; the correction, not the label, is the live reading. No status of any theorem row moves with this note.] Because the note governs `MM:2494-2539` entire, it also governs `(c4)`'s seventh item, **`MM:2527`'s positivity instance**. | `MM` Section 11, i.e. the `LP.5(c)` upper **at that printing**. **Not this row.** | `AM-R5-27(c4)` + XE-6 RECORD (c4) item (2) [PROV: XE-6 RECORD (c4) ; landed as RECORD, not as operative edits ; XE-6 S4 "(c4) BLOCKING for the package/full upper"] |
| **T-20** | **The `SIGMA0-EXC` live-consumer reconciliation** — `(c4)` item 3 | `(c4)`, verbatim: *"the two standing register clauses that still cite SIGMA0-EXC as consumed."* The record's finding: *"'SIGMA0-EXC now has NO LIVE CONSUMER' is WITHDRAWN as byte-false"*, the two standing clauses being `PX:17092-17096` (the row's own tier clause, *"all the A6 interface and the Wald/limsup displays consume"*) and `PX:17337-17342` (`AM-R5-26(e)(i)`, grading `MM:2481` a **CONSUMER** inheriting the typed-line conditionality and `MM:2520-2522` the **DIRECT** consumer). Reconciliation **by tier**: *"(TIER-DISPLAY): NOTHING LIVE. Its only named consumer, the second summand of MM:4246, is WITHDRAWN ... Marked DORMANT, not struck. (TIER-A6): LIVE."* With the two-row fence: *"TWO DISTINCT TYPED ROWS AT TWO DISTINCT SITES; they are not merged, and 'the typed line' is never used to mean both."* The former count claim is **STRUCK** *"and no exclusivity or exhaustiveness replaces it"*. **Status: UNLANDED.** [RECORD CORRECTION, 2026-08-02, XE-12-cure residual hunt: STALE - the SIGMA0-EXC live-consumer reconciliation markers ARE landed in MM (both conditionality-marker blocks); same reading discipline as the T-19 correction. No status moves.] | The `LP.5(c)`-side consumers `MM:2481` and `MM:2520-2522`, and the `PX` register clauses that name them. **Not this row** — see T-2. | `AM-R5-27(c4)` + XE-6 RECORD (c4) item (3) [PROV: XE-6 RECORD (c4) ; RECORD not landed ; XE-6 S4 (c4) BLOCKING] |
| **T-21** | **The `MM:4260 / MM:4264 / MM:4268` anchor trio** — `(c4)` item 5 | `(c4)`, verbatim: *"the MM:4260/4264/4268 anchor trio."* The record: *"All three are R6b register lines in the sigma-zero section. All three are stale after the MM:4246 withdrawal. None is a display; no exponent moves."* Dispositions: at `MM:4260` and `MM:4268` (same text, **distinct anchors**, *"the two register lines must not drift"*) the recorded *"§5 (sigma_0)"* consumption is **WITHDRAWN** with `MM:4246`, while *"the §4 consumption at i >= 1 is UNAFFECTED"*; at `MM:4264`, three stale anchors are re-pointed, one of them carrying an **unresolved** landing check, verbatim: *"the beta-free T_exit assertion is at MM:3320 and is STILL PRESENT in the bytes; MM:4258's claim that it 'is removed' is UNRESOLVED and must be resolved before MM:3316-3328 is treated as neutralized."* **Status: UNLANDED; one sub-item UNRESOLVED, not merely unlanded.** | `MM`'s own register lines for the `LP.5(c)` leg. **No display anywhere; not this row.** | `AM-R5-27(c4)` + XE-6 RECORD (c4) item (4) [PROV: XE-6 RECORD (c4) ; RECORD not landed ; XE-6 S4 (c4) BLOCKING] |
| **T-22** | **`(DOM-0)` / note `N26` status adjudication** — `(c4)` item 6 | `(c4)`, verbatim: *"(DOM-0)/N26's status adjudication."* The record's adjudication is **RE-HOST at `MM:4244`, NOT WITHDRAWN**, on two findings. **FINDING A:** `(DOM-0)` *"IS STILL CONSUMED, at live PX sites that the withdrawal does not touch"* — `PX:17106-17111`, `PX:17121-17126`, `PX:17143`, `PX:17186`, `PX:21303` — so *"a live warrant would be left aimed at struck-through bytes. Withdrawal of N26 is therefore not available."* **FINDING B:** *"N26 WAS NEVER IN MM AT ALL. Grep over lane-minmig-proofs-v1.md for 'DOM-0' and for 'N26' returns ZERO lines."*, which makes `AM-R5-26(e)(v)`'s pointer-alignment sentence *"BYTE-FALSE today"*; the re-host is therefore *"an UNEXECUTED landing whose target must be corrected before it executes."* Narrowing carried with it: *"(DOM-0) is a GRANULARITY receipt ONLY ... It furnishes NO ESTIMATE."* **Status: UNEXECUTED.** | The `i = 0` granularity of the `sigma_0` scaffold, i.e. `SIGMA0-EXC`'s single aggregate. The `i >= 1` warrant is lemma `(DOM)` at `MM:4183` (note `N14`) and is **unaffected** — that is the one `E2-ASSEMBLY` rides, and it is not this row's business. **Not this row.** | `AM-R5-27(c4)` + XE-6 RECORD (c4) item (5) [PROV: XE-6 RECORD (c4) ; RECORD not landed ; XE-6 S4 (c4) BLOCKING] |

**D. TAGGED IN THE BODY, ADJUDICATED NOT CONSUMED.** These three carried an inline tag **and** a §7.3 NOT-CONSUMED entry. The contradiction is resolved **against the tag** in each case, for the reason given; §7.3 stands and the inline tags are to be read as pointers into it, not as typings. (The fourth such collision, `(G3-CITE)`, is resolved the other way — see T-14.)

| # | Item | Adjudication, and why (vintage argument) | Where it would have bound | Provenance |
|---|---|---|---|---|
| **T-23** | **(`G3-CORNER`)** | **NOT CONSUMED.** Vintage: `TRAPOCC-3`'s `(T3.3)-(T3.5)` landed under `AM-R5-24` and are carried at §1.2 **as a record of what is and is not proved** — *"A GLOBAL Lipschitz certificate (uniform interior cone at every boundary point, including multi-bond corners) is NOT claimed."* The very next sentence states why the corner question cannot bind: *"This is why the WEAK route of Section 2 is executed: it needs none of (T3.4)-(T3.5)."* `TRAPOCC-4`'s smooth envelope `D_2` then removed the last route that could have read boundary regularity of `TRAP_2^cl`. **No display in this document reads it.** | The boundary regularity of `TRAP_2^cl` — a route this document does not run. | `TRAPOCC-3 (T3.3)-(T3.5)` + `TRAPOCC-4 (T4.1)-(T4.3)` [PROV: AM-R5-24 + AM-R5-26(a) ; XE-4 "remain exactly as TRAPOCC-3, TRAPOCC-4 and XE-4 left them"] |
| **T-24** | **(`C1`) `DOOR-SUP` / REGIME B** | **NOT CONSUMED.** Vintage: the unrestricted `(TRAPOCC-2*)` **is not carried** (§4.4, *"WHAT IS SUPERSEDED, NAMED ONCE"*): *"the unrestricted form is exactly the typed gap (C1) DOOR-SUP and is plausibly false at the corpus's unclassified above-band structure."* Only the **Regime-A** display is carried, and Regime A is discharged **unconditionally** at every start the schedule consumes — at collar starts by `(MARGIN-CONS)` §4.4 and at sphere starts by `(E2)(a)-(c)` §5.2. `E2-ASSEMBLY v2`'s ledger adds that Regime B is *"now unreachable by ANY reading of the piece, since the only path to a doorway-level R_0 start was v1's block narrative, deleted"*. **Regime B never arises; nothing is claimed there.** | The Regime-B branch of `(TRAPOCC-2*)` / `(ENTRY-COMP)` — never entered. | `TRAPOCC-2` Section 6 + `TRAPOCC-4` Section 3 + `E2-ASSEMBLY v2` NOT-CONSUMED [PROV: AM-R5-19(a) + AM-R5-26(a) ; XE-3 checker SOUND] |
| **T-25** | **(`T2`) `H-CONN`, general form** | **NOT CONSUMED.** Vintage: `CURE-XE4-3 v3` / `AM-R5-26` discharged `H-CONN` **at the consumed instance** by `LEMMA PE3p.3b`, and `E2-ASSEMBLY v2`'s conditional set had its `(T2)` entry **STRUCK** by that cure. §4.3 states both halves at once: *"(T2) H-CONN is DISCHARGED at the one instance the schedule consumes. The GENERAL row R_0 = R_0^* is NOT proved and is NOT CONSUMED."* A general row that is neither proved nor read is **not a condition of this document** — §7.3's entry is the correct register, and the inline tag marks the boundary between the two halves, not a typing. | The general row `R_0 = R_0^*` — proved nowhere, read nowhere. `PE3p.3b` covers every start and terminus §5 rides (§4.3 REMARK (SCOPE)). | `CURE-XE4-3 v3` / `AM-R5-26`, `LEMMA PE3p.3b` [PROV: CURE-XE4-3 v3 ; XE-4 F3 cure landed -> XE-5 "CURE-XE4-3 PASS at consumed exit strength"] |


**E. THE `XE-7` FINDING DISPOSITIONS, AS ADJUDICATED BY `XE-8`.** This block is the one `XE-7` required and `XE-8` found **absent from the bytes**, verbatim: *"Mechanical search finds no T-26, T-27, T-28, or T-29 row."* It is written and inserted here. **These four are RECORD rows, not conditions:** each names a finding, the cure landed for it, and the grade the external verdict gave that cure. **They condition no display.** The one entry that *is* an ordinary condition — `T-29`'s `(RAMP-ADM)` beta-free threshold leg — lives under `T-7` and §7.2 with the rest of the ledger and is **not** duplicated as a condition here. **The block's authority is the enumeration by name below; no count and no exhaustiveness over `XE-7`/`XE-8` is asserted beyond the items named.**

| # | Finding | Exact strength (verbatim where quoted), and the cure as landed | Where it binds | Provenance / grade |
|---|---|---|---|---|
| **T-26** | **`XE-7` `F2`** — the `C_H''` chained-Harnack lineage | `XE-7` required the **chained** constant `C_H'' = C(n, e^{4G})^8` in the slot the **single-application** `C_H'` held, wherever the weak route replaced the classical one. Landed: `(PTW-W)` installs `C_H''`; the live `C_4 := 2 C_H'' e^{5G} V_M / c(N,delta)` and the live `C_5` both read it; both reach STEP 5 and `T_row = (C_5 + C_s C_4) K_abs`. **No live `C_4` or `C_5` definition retains `C_H'`;** `C_H'` survives only in rows explicitly marked SUPERSEDED/HISTORICAL. **beta-free; no exponent and no `beta` power moves.** | **NOWHERE as a condition.** It is a **constant-lineage** record for §§4.2(b), 4.2(h.6), 4.4 and §5.2 STEP 5. | `XE-7` `F2` cure ; **`XE-8`: PASS** — *"The chained constant `C_H''=C(n,e^{4G})^8` is installed in `(PTW-W)` ... No live `C_4` or `C_5` definition retains `C_H'`."* |
| **T-27** | **`XE-7` `F3`** — the two-`eta` accounting on the main leg | `XE-7` required that the `eta` the `(CAP-LOW*-H1)` denominator pays be **printed**, not suppressed. Landed: the denominator `eta` is carried in the operative main ratio of §4.2(g); the level substitution `Theta(z,S) <= S_k + c_H + eta` pays the **second**; the split is displayed once at §4.2(h.7) as `err >= eta_den + eta_lev + 5G/beta` with `eta_den = eta_lev = eta = L_eps N delta^2/8`, hence `eta_den + eta_lev = L_eps N delta^2/4`, an `O(N L_eps delta^2)` entry of `(SML')` (`T-5`). §3.2's stale historical display is **redirected** to that operative reading rather than re-derived. **The positivity carried with it is `3 c_H - 2 eta > 0`,** i.e. `L_eps N delta^2/4 < 3 c_H = 0.9756497373` at the flagship scalars. | **NOWHERE as a new condition.** The err-class inequality it prints is collected at `(SML')` / `T-5`; the accounting moves from one `eta` to two and **no exponent, constant, `beta` power or rate moves.** | `XE-7` `F3` cure ; **`XE-8`: PASS** — *"The denominator eta is printed in the operative main ratio ... and Section 3.2 redirects its stale historical display to that operative reading."* |
| **T-28** | **`XE-7` `F4`** — the zero-loss identity and the aggregate `err_tot` | `XE-7` required the two-leg aggregation to be **exact**. Landed, verbatim as the operative display: `A+B=m_1`, `err_tot=err_A+err_B`, `(A-err_A)+(B-err_B)=m_1-err_tot`. The operative smallness condition reads **`err_tot`**, not a per-leg `err`. **Scope fence, carried so the two `F3`/`F4` repairs do not collide:** §4.2(h.7)'s split is the **MAIN-leg carry only** and does **not** touch this two-leg aggregation, which is a distinct defect with a distinct cure. | **NOWHERE as a condition.** §5.3's assembly arithmetic; the smallness it feeds is `(SML')` / `T-5`. | `XE-7` `F4` cure ; **`XE-8`: PASS** — *"The zero-loss identity and aggregate loss are exact ... The operative smallness condition reads `err_tot`."* |
| **T-29** | **`XE-7` `F5`** — strict ramp-admissibility, `(RAMP-ADM)` | `XE-7` required the `(CAP-UP-GATE)` inclusion `A_z subset {E_eps < a}` to be **derived**, not assumed. Landed: the third `beta_*` leg `1 + (5G+2)/(3 c_H)` is **defined** at §0.5, **derived** there from `(GATE-LOWER)` and the `A_z` level bound, **consumed** at `(CAP-UP-GATE)` §3.1, and **collected** at §7.2 — and it is printed **one above** the required `(5G+2)/(3 c_H)` so the **non-strict** standing hypothesis `beta >= beta_*` delivers the **strict** `3 beta c_H > 5G + 2`. The leg is **COLLECTED, NOT INFERRED:** `max(16/delta, 24G/(3 c_H))` forces only `3 beta c_H >= 24G`, which does **not** dominate `5G+2` for arbitrary positive `G`, and no parameter relation is assumed. **LOW residual carried, not concealed** [`XE-8`]: the wordings *"if and only if"* (§0.5) and *"exactly the inequality"* (§3.1) establish a **sufficient guarantee from the printed estimates**, not necessity for the actual sets. **The direction the proof consumes — the sufficiency — is valid, and it is the only direction read.** | **The threshold entry is NOT here.** `(RAMP-ADM)` is an ordinary beta-free threshold leg and lives under **`T-7`** and **§7.2**, read at **one site only**: `(CAP-UP-GATE)`'s ramp-admissibility inclusion, §3.1. This row is the **finding record**; `T-7`/§7.2 is the condition. | `XE-7` `F5` cure ; **`XE-8`: PASS AT THE CONSUMED IMPLICATION** — *"The strict ramp-admissibility leg ... is defined and derived ..., consumed ..., and collected .... It implies `3 beta c_H>5G+2`"*, with the wording residual graded **LOW** |

**THE SIX `XE-7` NONBLOCKING EXACTNESS RESIDUALS, BY NAME, WITH `XE-8`'s GRADE AND THE SITE.** Each is a **disposition**, not a condition; none binds a display.

1. **Positive-capacity scope.** `(WFF-1)`/`(RATIO-W)` are over-quantified without a positive-capacity row, so the row is **stated at the consumed instances** and proved there: `cap(A_z, closure(S)) > 0` by `(CAP-LOW*-H1)`, and `cap(TRAP, closure(S)) > 0` because `dTRAP = {f_s = r}` is a nonempty regular level set (`LEMMA TRAP-EXIST (S4)`, under `T-12`'s nonemptiness/properness row), so `TRAP` contains a closed ball and the Thomson-tube lower bound plus **capacity monotonicity in the first argument** gives the claim. Site: §4.2(h.1) `(M5)`, with the companion rows at §2 and §4.2. **`XE-8`: PASS.**
2. **Explicit `beta_W' = max(beta_W, 32/delta)`.** The near-`S` CASE-2 chain threshold is carried **at the tagged source's own explicit value** rather than as an unvalued symbol; the `32/delta` leg is the near-`S` radius condition at the halved plate `S' = B_{delta/8}(g*)`. It affects **only the NONCONSUMED near-`S` branch** and carries `(NEARS-ERR)` (`T-17`). Site: §7.2. **`XE-8`: PASS.**
3. **The Sard `-1/beta` loss and the factor `e` in `C_5`.** `theta_2` is Sard-regular in `[S_k + c_H - 1/beta, S_k + c_H]`, so only `theta_2 >= S_k + c_H - 1/beta` is available; `e^{-beta(X - 1/beta)} = e . e^{-beta X}` **exactly**, and the factor `e` is **BOOKED** in the beta-free ledger at `C_5` — the same landed device as the companion numerator's Sard-offset row. **Displayed, not dropped.** Sites: §4.2(f) `(MARGIN-CONS)`, `C_5`'s definition, §5.2 STEP 5. **`XE-8`: PASS.**
4. **The `(10, 1+)` boundary-cell reading.** *"`lambda = kappa = 1`"* is the **boundary of the standing regime, not a point of it** — `M2-PIN` is `lambda > kappa` — so the honest name of the flagship cell is `(10, 1+)` and every scalar listed is the `lambda -> 1+` reading. Carried with it: `(GATE-LOWER)`'s strict middle clause is **NOT CONSUMED**, since it fails exactly at that cell; the chain used is the **non-strict** `m_k + 2 lambda >= m_k + 2 kappa >= S_k + 4 c_H`. Site: §0.7 `(FLAG)` and §3.1 `(GATE-LOWER)`. **`XE-8`: PASS.**
5. **The per-display provenance promise.** The former per-display promise is **honestly weakened to a Section-5 banner default** rather than defended. Site: the §5 banner. **`XE-8`: PASS.**
6. **The `PX`-anchor convention.** **`XE-8`: FAIL** — §4.2(h) declares **physical** post-banner coordinates while §8.1 asserted a **universal** pre-banner reading, and three citations outside §4.2(h) were mixed (§4.3's `PX:9050-9051` physical against `T-9`'s `PX:9046-9047` pre-banner for the **same** target; §3.2's and §4.2(g)'s `PX:9077`, both physical). **CURED BY THIS SIGNING at §8.1:** the universal is **WITHDRAWN**, replaced by a **pre-banner default plus an enumeration by name** of the §4.2(h) block exception and the three stray sites, and each of those three now carries its convention tag **in place**. **Named tags still locate the evidence, so this was provenance exactness, not a mathematical refutation** — and it is the only one of the six graded FAIL.

**`XE-8`'s OWN `F1` RESIDUALS — DISPOSITIONED BY NAME, NO NEW `T`-ROW MINTED.** `XE-8` graded `F1` a **PARTIAL PASS, BLOCKING AT PRINTED STRENGTH**, and confirmed the mechanism itself is not refuted: *"none of the findings ... refutes the weak compact-set route or changes the intended limiting exponent."* The four residuals and where each is cured: **(1) full-`R_0^*` scope** — cured by **narrowing**, not by printing the `P'` mirror: `(TRAPOCC-UNIF)`'s supremum now runs over the post-reach set `Door inter R_0^*`, a CASE-1 subset by the displayed `(DOOR-CASE1)` computation at §4.2(h.6), with §4.3 and the §5.2 STEP-5 consumer narrowed to match and the new beta-free `beta_door := 8G/c_plate` collected at §7.2; registered at **`T-9`**. **(2) the main `C_3`** — cured by the distinct symbol `C_3^main := C_H'' e^2 G^2 V_M / c(N,delta)` at §4.2(e)/(g), the companion `C_3` untouched; registered at **`T-9`**. **(3) `beta_1`'s vintage** — cured by `beta_1 := max(beta_1^hist, beta_1^weak)` with the weak witness displayed at §0.5 and collected at §7.2; registered at **`T-9`**. **(4) `(MAIN-V2ID)`'s licence** — cured by stating `beta >= max(beta_S4, beta_*)` at §4.2(h.1) `(M8)` and §4.2(h.2); registered at **`T-9`** and at **`T-15`**. **All four are prefactor- or threshold-level and rate-inert.** Two further `XE-8` bookkeeping items are cured at their own sites and are **not** register rows: §0.6 `(PE3p.3)`'s stale *"no property of the start"* wording, now aligned with `T-11`'s corrected form; and the `(N9)` consumer walk's enumerated list, which now names the §4.2(h.3) site its own preamble announces.

[PROV: `XE-7` findings `F2`-`F5` and its six nonblocking residuals, at their landed cure sites in this document ; `XE-8-2026-08-01` PER-ITEM ADJUDICATION (`F2` PASS, `F3` PASS, `F4` PASS, `F5` PASS AT THE CONSUMED IMPLICATION), THE SIX XE-7 NONBLOCKING RESIDUALS (1-5 PASS, 6 FAIL), and SECTION 7 — FAIL: BLOCK E IS ABSENT, the omission this block closes ; block written and inserted by this signing]


### 7.2 The collected `beta`-threshold ledger

One list. Every entry is **beta-free**.

```
beta_plate := 2 / c_plate                                (PLATE-SEP), Sections 0.5 / 2.1
beta      >= 8 / delta                                   (v4c); 2rho <= delta/4 with rho := 1/beta
beta_S4   := max( 2/c_plate , 8/delta )                  the collected Section-4 threshold; the
                                                         standing hypothesis of (V2ID), Section 2.5
beta_env  := max( 4G/c_0 , 2/c_0 ),  G := sup_M |grad E_eps| < infinity
                                                         the D_2 row re-check of (ENTRY-COMP),
                                                         Section 3.2 [TRAPOCC-4 Section 3]
beta_1    := max( beta_1^hist , beta_1^weak )            the MAIN-leg h <= 1/2 threshold, at BOTH
                                                         vintages [XE-8 F1 residual 3]. beta_1^hist is
                                                         the historical (ENTRY) threshold on dA_z,
                                                         Section 3.2, on C_H' and ONE eta
                                                         [PE-TRAPOCC Section 5 (5c); landed at PX:9074].
                                                         beta_1^weak is the LIVE weak-route witness of
                                                         Section 0.5: any beta-free value at or above
                                                         which C_3^main e^{6G} beta^{2N+1}
                                                         exp(-beta(3 c_H - 2 eta)) <= 1/2, with
                                                         C_3^main := C_H'' e^2 G^2 V_M / c(N,delta) and
                                                         the TWO-eta margin of Sections 4.2(g)/(h.7);
                                                         it exists and is beta-free because
                                                         3 c_H - 2 eta > 0 is the (SML')-class
                                                         inequality. NO domination between the two is
                                                         claimed; the max is what every consumer reads
beta_door := 8G / c_plate                                the CASE-1 separation threshold of (DOOR-CASE1),
                                                         Section 4.2(h.6): at or above it every
                                                         z in Door inter R_0^* satisfies
                                                         dist(z, closure(S)) >= c_plate/(2G) >= 4/beta,
                                                         which is the CASE-1 clause of Section 4.2(c).
                                                         beta-free (c_plate is T-6's constant, G is
                                                         (CONST)'s); of the beta_plate := 2/c_plate
                                                         class. COLLECTED, NOT INFERRED: no other leg is
                                                         claimed to dominate it [XE-8 F1 residual 1]
beta_2(N,delta,eps)                                      the threshold at which the (ENTRY-W) last line
                                                         becomes <= 1/2 (Section 4.2(e)) and at which
                                                         the Regime-A hinge (C0) holds (Section 0.5,
                                                         AM-R5-19(b)); REQUIRED to additionally
                                                         dominate beta_env (disclosed, not buried)
beta_W    := max( beta_2(N,delta,eps), beta_env, beta_plate, 6G/c_0, 2/c_0 )
                                                         the ENTRY-W chain threshold, CASE 1
                                                         (Sections 4.2(b) and 4.2(e))
beta_W'   := max( beta_W , 32/delta )                    the SAME chain re-run at P' = closure(S') in
                                                         the near-S branch: CASE 2 of (ENTRY-W),
                                                         Sections 4.2(c)/(e), now at the TAGGED SOURCE'S
                                                         OWN EXPLICIT VALUE rather than as an unvalued
                                                         symbol [PROV: PIECE ENTRY-W v2, the CASE-2
                                                         threshold row ; XE-7 nonblocking residual 2].
                                                         Of the beta_W class, beta-free; the 32/delta leg
                                                         is the near-S radius condition at the halved
                                                         plate S' = B_{delta/8}(g*). It affects only the
                                                         NONCONSUMED near-S branch, and it carries the
                                                         (NEARS-ERR) row (T-17)
beta_*    := max( 16/delta , 24G/(3 c_H) , 1 + (5G+2)/(3 c_H) )
beta_*^{DR} := max( 8/delta , (2+G)/(S_k + c_H - A_tube) )   [per (BETA-STAR), S0.5]
                                                         the COLLECTED standing thresholds, TWO SYMBOLS, exactly as (BETA-STAR) S0.5 splits them [per (BETA-STAR), S0.5]; beta_* has THREE legs:
                                                         16/delta and 24G/(3 c_H) are PE-TRAPOCC's (G4),
                                                         consumed by (G4') Section 1.1, by (CAP-UP-GATE)
                                                         Section 3.1 and by the near-S separation of
                                                         Section 4.2(c); 1 + (5G+2)/(3 c_H) is the
                                                         (RAMP-ADM) leg of (BETA-STAR) S0.5, read at ONE
                                                         site only - (CAP-UP-GATE)'s ramp-admissibility
                                                         inclusion A_z subset {E_eps < a}, Section 3.1 -
                                                         and printed one above the required
                                                         (5G+2)/(3 c_H) so that the non-strict
                                                         beta >= beta_* yields 3 beta c_H > 5G+2
                                                         STRICTLY [XE-7 F5; rate-inert]. beta_*^{DR} is the RENAMED alias, read at its OPERATIVE DOORREACH-MAXFIX vintage max(8/delta, (2+G)/(S_k + c_H - A_tube)) [PX:9814] and consumed by the tube rows of Sections 3.3/3.4; the form 2/(S_k + c_H - A_tube) [PX:8367] is
                                                         PE-DOORREACH's own SUPERSEDED predecessor (Section 3.4 SINGLE VINTAGE) and is NOT a ledger line: no ledger line carries the superseded numeral, and the unqualified beta_* is NOT read by the tube rows
                                                         of Sections 3.3/3.4. Landed-implicit domination
                                                         by beta_env is NOT automatic (checker LOW; all
                                                         legs beta-free)
beta      >= max( beta_S4 , beta_* )                     the (MAIN-V2ID) standing threshold, Section
                                                         4.2(h.2): beta_S4 for (h.2)'s own steps and
                                                         beta_* because (M1)'s disjointness
                                                         TRAP inter closure(S) = empty travels (G4'),
                                                         Section 1.1. NOT a new symbol - both legs are
                                                         listed above; the row is here because NO
                                                         DOMINATION beta_S4 >= beta_* is proved
                                                         [XE-8 F1 residual 4]
beta      >= 4 / delta                                   the (MARG) sub-condition rho <= delta/4,
                                                         Section 3.4; DOMINATED by beta_*'s 16/delta leg
                                                         and therefore NOT a separate standing hypothesis
```

**SYMBOL RECONCILIATION, STATED ONCE.** `beta_*` reached this document under **two** landed definitions — `max(16/delta, 24G/(3 c_H))` at §0.5 (`PE-TRAPOCC (G4)`, landed at `PX:9010`) and `max(16/delta, 2/(S_k + c_H - A_tube))` (`PE-DOORREACH`'s own, landed at `PX:8367`) — and **both are consumed**, the first at §§1.1/3.1/4.2(c), the second at the tube rows of §§3.3/3.4. In a single-vintage document one symbol may not denote two scalars, so the symbol is **split by naming, not merged by arithmetic** — exactly and only the scheme of §0.5 `(BETA-STAR)` [per (BETA-STAR), S0.5]: the unqualified `beta_*` is the `(G4)` value `max(16/delta, 24G/(3 c_H))` [`PX:9010`] **enlarged by the `(RAMP-ADM)` leg `1 + (5G+2)/(3 c_H)` collected at §0.5 per `XE-7` `F5` — an enlargement, hence conservative at every site that reads the symbol, and moving no exponent and no prefactor**, and `PE-DOORREACH`'s line is carried as the **distinct symbol** `beta_*^{DR}`, read at its operative `DOORREACH-MAXFIX` vintage `max(8/delta, (2+G)/(S_k + c_H - A_tube))` [`PX:9814`], the `PX:8367` form being its **superseded** predecessor. Both symbols are listed above; **this ledger states no second scheme.** A row wanting one number may read `max(beta_*, beta_*^{DR})`, the same move the `beta_2` note makes below and costing the same nothing: **enlarging a threshold preserves every *"for beta >= beta_*"* row and changes no exponent and no prefactor.** No display's value moves; only the symbol's reading is fixed.

Notes carried with the ledger:
- `beta_plate` arithmetic: `1/beta <= c_plate/2` iff `beta >= 2/c_plate`. `(v4c)` arithmetic: `2rho <= delta/4` iff `beta >= 8/delta` with `rho := 1/beta`. Both survived adversarial attack and are carried forward unchanged.
- Enlarging `beta_2` preserves every *"for beta >= beta_2"* row, including the Regime-A rows; the enlargement changes **no exponent and no prefactor**.
- The thresholds are of the **landed class** (*"for beta >= 2G/c_0"*, *"holding for beta >= beta_2"*) but are **additional standing hypotheses**, not absorbed by any landed threshold — which is why they are collected here, once.
- **COMPLETENESS, claimed only after the grep.** The inventory was closed by a grep for `beta_` and for `beta >=` over **all three section blocks** of this document (Sections 0-3, 4-5, 6-8) at authoring time. Re-run over the ASSEMBLED document after the `XE-8` cures it returns **ten** named thresholds — the tenth being `beta_door := 8G/c_plate`, the `(DOOR-CASE1)` separation threshold introduced at §4.2(h.6) by the `XE-8` `F1` residual-1 narrowing; the pre-`XE-8` count of **nine** is **corrected here, not defended**, exactly as the count of eight was when `beta_*^{DR}` was split off. `beta_1` is **one** named threshold read at its enlarged value `max(beta_1^hist, beta_1^weak)`, and `beta_1^hist` / `beta_1^weak` are its two **witnesses**, not two further rows. The list returns — `beta_plate`, `beta_S4`, `beta_env`, `beta_1`, `beta_2`, `beta_W`, `beta_W'`, `beta_*`, `beta_*^{DR}` and `beta_door` — plus the bare arithmetic conditions `beta >= 8/delta` (`(v4c)`, listed) and `beta >= 4/delta` (dominated, listed). The ninth, `beta_*^{DR}`, is the renamed `PE-DOORREACH` alias introduced at §0.5 `(BETA-STAR)` and consumed at the tube rows of §§3.3/3.4; the authoring-time count of eight predated the split and is **corrected here, not defended**. Every one appears above. `beta >= 2G/c_0` and `beta >= 2/c_plate` occur only as the landed-class citation and as `beta_plate` itself; `24G/(3 c_H)`, `16/delta` and `1 + (5G+2)/(3 c_H)` occur only as legs of `beta_*`, and `(2+G)/(S_k + c_H - A_tube)` occurs only as a leg of `beta_*^{DR}` [per (BETA-STAR), S0.5]; `8/delta` is a SHARED VALUE, not a shared row - it appears as a leg of `beta_*^{DR}`, as a leg of `beta_S4`, and as the bare `(v4c)` condition, all listed above as distinct rows. Further totality claims are intentionally NOT asserted; this ledger's authority is the enumeration by name.
[PROV: CURE-XE4-2 v3 propagation ledger + TRAPOCC-4 disclosure (c) + ENTRY-W v2 thresholds row + PE-TRAPOCC (G4) / PE-DOORREACH's own threshold rows ; XE-5 -> XE-6 cores PASS]

### 7.3 NOT CONSUMED

Carried verbatim from `E2-ASSEMBLY v2`'s ledger, then extended:

> *"NOT CONSUMED, VERIFIED: (T1) H-DESC; (C1) DOOR-SUP / Regime B -- now unreachable by ANY reading of the piece, since the only path to a doorway-level R_0 start was v1's block narrative, deleted; (C2)/(C4); GAP-LP-RECUR / E_q[sigma_0] and QUANTITATIVE-CYCLE-LENGTH-DEL (the chain contains no return-time, no round-length expectation, and now no renewal count at all); every Palm object (D1); Lemma PE3p.5 (BLK)."*

Extended, with the same status:

- **`(G3-CORNER)`** — untouched: *"remain exactly as TRAPOCC-3, TRAPOCC-4 and XE-4 left them."* No display in this document reads it. **Adjudicated NOT CONSUMED at §7.1 T-23.**
- **`(G3-CITE)` is NOT in this ledger.** It was formerly carried in one line with `(G3-CORNER)`, under the same *"No display ... reads either"* clause. That clause is **false for `(G3-CITE)`**: `(G3)` is read at `(G4')` §1.1 and at `(GATE-LOWER)` §3.1. It is therefore **registered TYPED at §7.1 T-14**, and removed from here. A thing is typed-consumed XOR not-consumed; this one is consumed.
- **The future sector-entry transmission** — `RESIDUAL-XE4-3-SECTORENTRY`, and it is the **only** residual of the label-semantics decision: *"consumer-side and binds no display."*
- **Touch-and-return semantics** of the theta-label — decided by `AM-R5-26` / `CURE-XE4-3` on `lane-minmig-proofs-v1.md`'s own definition; **no exported obligation is added**, and no display in this document reads the semantics. (Restated; source `CURE-XE4-3` / `AM-R5-26`.)
- **`(P-SUB)`** — **left the conditional set**; `E2-ASSEMBLY v2` is a `(P-SUB)`-free chain (XE-3).
- **`(T2) H-CONN`** — **not** a typed condition of this document: *"DISCHARGED AT THE CONSUMED INSTANCE by LEMMA PE3p.3b (AM-R5-26)."* The **general** form is **adjudicated NOT CONSUMED at §7.1 T-25**; the inline tag at §4.3 marks the boundary between the discharged instance and the unread general row.
- **`(C1) DOOR-SUP / Regime B`** — as in the quoted ledger; **adjudicated NOT CONSUMED at §7.1 T-24**, with the vintage argument (the unrestricted `(TRAPOCC-2*)` is not carried, and Regime A is discharged unconditionally at every consumed start).
- **Every Palm object** — per `(D1)`, §6.2. `GAP-PE1D-NORM` (§7.1 T-18) lives inside that foundation and likewise binds no display here.
- **`Gamma(h)`, `c(delta,h)^{-1}`, `(BLK)`** — in NOT CONSUMED; this is why `(SML')` carries no `Gamma(h)` term.

**The honest count.** After `CURE-XE4-3`, the conditional set of the `(D2)` row is **two** side conditions — `(T4) H-INJ` / `(H-SEP)` and `(SML')` — plus the three displayed in-piece clauses, plus **no exported obligation**. `c_plate > 0` joins them at the same strength via `CURE-XE4-2 v3`, and `T-8` is a scope note, not a condition on any display consumed here. **That count is the source's count of the `(D2)` row's conditional set, and it is not the size of §7.1.** The register is larger, and deliberately so: it also carries the main-leg route `T-9`, the scope and bookkeeping rows `T-10`-`T-18` that the body tags, the four `AM-R5-27(c4)` rows `T-19`-`T-22` that bind `LP.5(c)` only, the three adjudicated-not-consumed rows `T-23`-`T-25`, and the four `XE-7` finding rows `T-26`-`T-29` of block E — **now present in the bytes, inserted by this signing after `XE-8` found them absent** — all register entries rather than conditions, with one exception named so it is not missed: `T-29`'s `(RAMP-ADM)` leg **is** an ordinary beta-free threshold entry and lives under `T-7` and §7.2 with the rest. Reading §7.1's length as the `(D2)` row's conditional set would misread it in the wrong direction.
[PROV: E2-ASSEMBLY v2 NOT-CONSUMED ledger + CURE-XE4-3 corrected conditional-set rows + CURE-XE4-2 v3 typed gap 1 ; XE-3 checker SOUND -> XE-4 -> XE-6]

---

## 8. PROVENANCE APPENDIX

### 8.1 The frozen-artifact rule

`AM-R5-28`, verbatim:

> *"THIS artifact is thereby FROZEN as the verbatim historical record - no further amendments here except verdict landings; every future edit happens in the consolidated document, where anchors are stable and inventories are grep-closed at authoring time."*

So: **`lane-prodexc-proofs-v1.md` is the verbatim historical record.** It is not edited again except to land a verdict. Every future edit to the E2 chain happens **here**, in `lane-prodexc-v2`, where anchors are stable and inventories are grep-closed at authoring time. The cause is stated in the same amendment: *"MATHEMATICAL CORES CONVERGE IN 1-2 ROUNDS; TEXT PROPAGATION OVER THIS ARTIFACT DIVERGES - each per-site repair generates anchor and inventory defects at roughly the repair rate. The cause is structural, not procedural."*

`XE-7` is redefined by the same amendment: *"it reviews E2-CONSOLIDATED end to end - a reviewable object - with this artifact as the provenance appendix. B-DWELL remains DISCHARGED-PENDING; the lane-lp flip remains blocked; nothing is released by this amendment."*

**`PX:n` COORDINATE CONVENTION, STATED ONCE** [`XE-7` nonblocking residual 6]. The freeze of `lane-prodexc-proofs-v1.md` prepended a banner that shifted every physical line of that file by **`+4`**. The **default** convention of this document is **pre-banner** coordinates: for a citation written pre-banner, the byte `PX:n` names sits at physical line **`n + 4`** of the frozen file. **THE FORMER UNIVERSAL — *"every `PX:n` citation in this document uses pre-banner coordinates, and uses them consistently"* — IS WITHDRAWN AS BYTE-FALSE, AND THE EXCEPTIONS ARE ENUMERATED BY NAME RATHER THAN REPLACED BY A NEW UNIVERSAL** [`XE-8` nonblocking residual 6, graded FAIL, cured here]. **THE NAMED EXCEPTIONS.** **(E1) The whole of §4.2(h).** That block was authored against the **POST-banner (physical)** frozen file and declares so at its own head (*"PX-ANCHOR CONVENTION FOR THIS 4.2(h) BLOCK, SCOPED"*): every `PX:n` numeral inside §4.2(h) is **physical**, i.e. already `pre-banner + 4`, and a reader resolving it physically adds **nothing**. **(E2) Three stray physical citations outside §4.2(h), each tagged at its own site by this signing:** §4.3's ERR-LEDGER `PX:9050-9051` (the classical flux/minimum-principle sandwich over the cube plate — **physical**; the same target reads **pre-banner** `PX:9046-9047` at `T-9`, and the two numerals name the **same bytes** under the two conventions), §3.2 `(ENTRY)`'s `PX:9077` (**physical**), and §4.2(g)'s `PX:9077` (**physical**). **NO FURTHER EXCEPTION IS ASSERTED AND NO EXHAUSTIVENESS IS CLAIMED**; what is claimed is that these are the sites `XE-8` names and that each now carries its convention tag in place. **RESOLUTION IS BY NAMED TAG, NOT BY LINE NUMBER, AND THAT IS WHY THE MIXTURE COSTS NO EVIDENCE.** The citations are **not** rewritten, because rewriting them is exactly the anchor churn `AM-R5-28` froze the artifact to stop — *"each per-site repair generates anchor and inventory defects at roughly the repair rate."* **RESOLUTION IS BY NAMED TAG, NOT BY LINE NUMBER.** Every `PX:n` here travels with its piece and clause name — `PIECE ENTRY-W v2` Section 4B, `LEMMA PE-TRAPOCC (G4)`, `LEMMA PE-DOORREACH`'s threshold row, `PIECE DOORREACH-MAXFIX`'s Step-4 replacement, and so on — and the **name** is what locates the content; the numeral is a convenience anchor carrying a known constant offset. A reader resolving physically adds four; a reader resolving by tag adds nothing. This note states the offset and the convention; it asserts nothing about any individual citation beyond them.

### 8.2 The ten-verdict, zero-cores-refuted line

`LEDGER.md`, row `XE-6`, verbatim: **`lead verification: no core refuted (10th consecutive verdict)`**. Ten external verdicts and four internal propagation rounds; **no mathematical core of this chain has been refuted**. What broke, repeatedly, was execution over the artifact: anchors, inventories, and vintage — which is exactly what the consolidation removes.

### 8.3 Piece -> verdict-trail map

Every piece whose displays this document carries, with the trail wording as the ledger records it.

| Piece carried here | Verdict trail (LEDGER wording, abbreviated to its operative clause) |
|---|---|
| `LEMMA PE-DOORREACH` Sections 2+5 and `LEMMA PE-TRAPOCC` Section 5 — **the MAIN-leg classical RECORD (historical)**: the classical Green / normal-derivative `(SANDWICH)` at `PX:9036-9047`, whose record is stated at §3.2 `(ENTRY)`, §4.3 and the `TRAP` leg of §5.2. the main-leg `(ENTRY)` input travels `(RATIO-W)` per §4.2(g) and this classical sandwich record is historical [PROV: `ENTRY-W v2`]; the residual grounding-set seam is **CURED at §4.2(h)** and `T-9` is retained at §7.1 as a **RECORD** row, not as a typed condition; `PIECE SR-PE1-DEL`; `DOORREACH-MAXFIX`; `AM-R5-15..18` | **XE-1** — *"NOT SOUND at signing; 4/4 BLOCKING confirmed - all in the lead overlays; cures landed: SR-PE1-DEL, DOORREACH-MAXFIX, AM-R5-15..18"* (LEAD-VERIFIED 2026-07-27) |
| `POST-SR-PE1-DEL RE-POINTING AUDIT`; `AM-R5-20` | **XE-2** — *"F1.3 pre-cured by AM-R5-20"* |
| `CURE-XE2-F1a`; `CURE-XE2-F1b`; `E-MEAS`; `AM-R5-21` (closure row); `AM-R5-22` (s-parametric retype); `AM-R5-23` | **XE-2** — *"NOT SOUND at signing; 3/4 cure groups fail: F1 has 3 BLOCKING mechanisms, F2 has 1, F3 PASS, F4 geometry PASS / exact-strength BLOCKING; 5 total BLOCKING; lead two-way verification 5/5 CONFIRMED; cures landed: CURE-XE2-F1a/F1b + E-MEAS, AM-R5-21 (closure row), AM-R5-22 (s-parametric retype), AM-R5-23 ... XE-3 dispatched"* |
| `CURE-XE3-A`; `PIECE TRAPOCC-3` — **the source of §2.2's re-proved identities, `(SANDWICHw)` among them**; its `(ENTRY)` input is **licensed by `TRAPOCC-4`, not by `TRAPOCC-3`** (`PX:13074`) and is supplied at **solid-ball** strength by `(ENTRY-W)` §4.2(e), not by §3.2, which delivers `h <= 1/2` on `dA_z` only (`PX:11766`); `PIECE E2-ASSEMBLY v2`; `AM-R5-24`, `AM-R5-25` | **XE-3** — *"NOT SOUND at signing; F1.1/F1.3/F2/F4 PASS; 2 BLOCKING confirmed two-way; cures landed: CURE-XE3-A (non-circular positivity) + PIECE TRAPOCC-3 (closed target TRAP_2^cl, checker SOUND, display value unchanged); E2-ASSEMBLY v2 landed (checker SOUND; block-free, Palm-free, (P-SUB)-free chain); XE-4 dispatched"* |
| `PIECE TRAPOCC-4`; `PIECE TRAP-LICENSE` (`TRAPOCC-5`); `CURE-XE4-2 v3`; `CURE-XE4-3 v3` (`AM-R5-26`, `LEMMA PE3p.3b`); `CURE-XE4-4 v3` (`ROW SIGMA0-EXC`); `AM-R5-26` umbrella | **XE-4** — *"NOT SOUND at signing; CURE-XE3-A PASS; 4 BLOCKING: TRAPOCC-3 ENTRY weak-route gap, open-S/compact WFF mismatch, live H-CONN plus stale B-DWELL register, sigma_0 consumer outside closure(S); B-DWELL/row flip BLOCKED; lead two-way verification 4/4 CONFIRMED; cures landed: TRAPOCC-4 + TRAP-LICENSE (both internal-checker SOUND) + CURE-XE4-2/3/4 v3 (3 adversarial rounds each; mathematics sustained; residuals disposed/TYPED per AM-R5-26); XE-5 dispatched"* |
| `PIECE ENTRY-W v2`; `PIECE V2ID v2`; `PIECE CAP-LOW-H1 v2`; `PIECE SIGMA0-DECLAIM v2`; `AM-R5-27` (eta re-freeze `(a)`; residuals `(c1)-(c4)`) | **XE-5** — *"NOT SOUND at signing; TRAPOCC-4 envelope PASS but cube-plate RATIO BLOCKING; TRAP-LICENSE PASS; CURE-XE4-2 FAIL: CAP-LOW* H1/Lipschitz bridge + TYPED-PLATE-V2ID BLOCKING; CURE-XE4-3 PASS at consumed exit strength; CURE-XE4-4 ordinary i>=1 retype PASS but sigma_0 full-release tail remains typed/uncontrolled; B-DWELL/ordinary row flip BLOCKED; lead two-way verification 4/4 CONFIRMED; cures landed: ENTRY-W + V2ID + CAP-LOW-H1 + SIGMA0-DECLAIM (all four cores adversarially recomputed twice, sustained; eta re-freeze AM-R5-27(a); bookkeeping residuals TYPED (c1)-(c4)); XE-6 dispatched"* |
| The four cores as carried here; `(c1)` scope note (§7 T-8); the de-claim principle (§6.3); the `(c4)` RECORD items carried as §7.1 T-19..T-22; `AM-R5-28` | **XE-6** — *"NOT SOUND at signing; all four mathematical cores PASS at the stated consumed strengths; eta re-freeze PASS; c1 global quantifier FAIL but NONBLOCKING for exact boundary(S+) E2 use; c2 BLOCKING load-bearing v2a lineage; c3 BLOCKING false exhaustive import ledger; SIGMA0 de-claim principle PASS but c4 propagation BLOCKING for package/full LP.5 upper; B-DWELL remains DISCHARGED-PENDING, E2 not released, lane-lp flip NOT AUTHORIZED; lead verification: no core refuted (10th consecutive verdict); propagation round's cores verified, executions broken on anchors - the overlay method is EXHAUSTED; AM-R5-28 CONSOLIDATION PIVOT: E2-CONSOLIDATED (lane-prodexc-v2) is the next deliverable, XE-7 redefined to review it; flip stays blocked"* |
| The `lane-minmig` rows this document cites (`(WALD)`, `GAP-LP-RECUR`, `A6`) | **XM-R16** — *"DISCHARGE-SOUND; lead two-way verification complete - gatetest 23/23, selftests, both guards, dry-run 60/60 reproduced on the lead machine; release authorized"* (LEAD-VERIFIED 2026-07-26) |

**TWO MAP LINES CARRY A ROUTE CORRECTION, AND THEY ARE THE TWO THAT NEEDED IT.** The `XE-1` line now names the pieces that carry the **main-leg** classical RECORD (historical), because the register types it (`T-9`) and a map that did not name its source would leave the register pointing at nothing. The `XE-3` line now records that `(SANDWICHw)`'s `(ENTRY)` input is licensed **downstream** of `TRAPOCC-3` — by `TRAPOCC-4`, at solid-ball strength through `(ENTRY-W)` §4.2(e) — so that no reader walks from §2.2 back to §3.2, which supplies the hypothesis on `dA_z` only. Neither correction moves a value, a constant or an exponent; both are naming.

### 8.4 Per-item dispositions carried into this document

- **XE-6 `(c1)`** — carried as a **scope note** (§7 T-8), not as a condition on any consumed display.
- **XE-6 `(c2)`** (v2a lineage) and **`(c3)`** (the import ledger) — these are **artifact-propagation** defects of the frozen record: a lineage retarget and an exhaustiveness claim over sites in a multi-vintage file. They **die with the method** (`AM-R5-28`: *"in a single-vintage document there are no stale siblings to miss"*). This document states each import row **once, at its single site, with its hypothesis rows**, so neither a lineage retarget nor an exhaustive-import ledger is required of it.
- **XE-6 `(c4)`** — **partially executed, and the split is named.** `AM-R5-27(c4)` is a seven-item sweep. **Three** items are executed here in this document's own terms: the `GAP-LP-RECUR` conditionality is printed **once**, at the single surviving upper display; `SIGMA0-EXC` is scoped as the **min-object partial**; and **no branch map** is carried (deleted, not demoted — the refutation is conceded at §6.3). **Four** are **not** executed here, because they are edits to `lane-minmig-proofs-v1.md`'s bytes and to the **frozen** `PX` register (§8.1), which this document does not own: the `MM` Section-11 governing conditionality (which also governs `(c4)`'s seventh item, `MM:2527`'s positivity instance, since that line lies inside the governed span `MM:2494-2539`); the `SIGMA0-EXC` live-consumer reconciliation; the `MM:4260/4264/4268` anchor trio; and `(DOM-0)`/`N26`'s status adjudication. Those four are carried as **TYPED rows `T-19`-`T-22`, binding `LP.5(c)` only, at the exact strengths the `(c4)` record states** — one of them, the `MM:3320` `T_exit` landing check, **UNRESOLVED** rather than merely unlanded. **`(c4)` is therefore NOT fully dispositioned by this document, and nothing here claims otherwise:** XE-6's grade — *"SIGMA0 de-claim principle PASS but c4 propagation BLOCKING for package/full LP.5 upper"* — stands unchanged. What this document does claim is narrower and is what the register shows: **no item of `(c4)` binds any display of §§1-5**, since the live chain carries no `sigma_0` object at all.
- **XE-5 F1, the plate seam** — cured on the **companion** leg (`ENTRY-W v2`, §4.2, at the consumed triples `(A_y,P,D_2)`); on the **main** leg the `(ENTRY)` input travels `(RATIO-W)` per §4.2(g); the classical sandwich record is historical [PROV: `ENTRY-W v2`]. The **grounding-set seam** that historical record left behind — the cube-shaped `S` at the sandwich — was graded BLOCKING by **XE-7 F1** and is **CURED at §4.2(h)**, which instantiates the weak framework at the main pair `(TRAP, closure(S))` and the main triple `(A_z, closure(S), TRAP)`, proves `(MAIN-V2ID)`, `(EQ-OCCw)@MAIN`, `(FLUX-ID'w)@MAIN`, `(FLUX-CONSw)@MAIN`, `(SANDWICHw)@MAIN`, `(RATIO*w)@MAIN` and `(PTW-W)@MAIN`, and rederives `(TRAPOCC-UNIF)` at its printed strength. `T-9` is retained as a **RECORD** row, not as a typed condition and not as an open seam. Named here so the map (§8.3), the register (§7.1) and the body agree.
- **B-DWELL** — remains `DISCHARGED-PENDING`. **The `lane-lp` row flip remains blocked. This document releases nothing.**