# L-A3 Reader Packet v1 — PUBLIC RELEASE (math-v2.0)

```text
STATUS = PUBLIC RELEASE, 2026-08-03.  This supersedes the working
  version's INTERNAL-ONLY status: the four-profile external panel
  (XE-15..XE-18) adjudicated this packet FIT FOR RELEASE AS THE
  PROGRAM'S READER DOCUMENT, and the operator took the distribution
  decision by ordering publication of the program repository.
PURPOSE = give a strong mathematical reader the minimal self-contained
  path to AUDIT the certified core of this research program, plus the
  specific questions we ask them to attack.
HONESTY = every claim below carries its true verification status.  The
  single most important disclosure: ALL verification to date is by AI
  systems (described in Section 8).  No human has yet checked any
  proof in this corpus.  Closing that gap is this packet's purpose.
NO PHYSICS CLAIMS / NO AGENCY CLAIMS (see Section 6).
```

## 1. What this is, and what we ask of you

This corpus is a body of rigorous mathematics — theorems about
diffusions on tori — built and adversarially verified by AI agents
under a governance protocol designed to catch errors before they
propagate.  The protocol has teeth (Section 8 describes it, including
the errors it caught in its own lead), but it has a ceiling: every
verifier so far is a machine.  You are being asked to be the first
human rung.

We ask you to ATTACK, not admire: Exhibit A carries a complete proof
checkable in one sitting; Exhibit B proves its two geometric lemmas
completely and names exactly which two corpus facts close the
persistence rate (nothing silently deferred); the rest of the packet
states the main results with exact hypotheses and tells you where
every proof lives.  Section 7 lists the specific attacks we could not
run on ourselves.

## 2. The object

Fix an integer `N >= 3`.  On the torus `T^N` (configurations
`theta = (theta_1, ..., theta_N)`, indices cyclic mod N), define the
BONDS `d_i = theta_{i+1} - theta_i`, each read in the principal branch
`(-pi, pi]`, and the energy

```text
J_mu(theta) = mu * sum_{i=1..N} (1 - cos(d_i)),    mu > 0.
```

Let `Delta` = the ANTIPODAL SET, where some bond equals `pi`.  It is
closed and Lebesgue-null.  Off `Delta` every bond lies in the OPEN
interval `(-pi, pi)`, and since the bonds sum to `0 mod 2pi` around
the cycle, the integer

```text
w(theta) = (1/2pi) * sum_i d_i     (the WINDING)
```

is well defined and locally constant off `Delta`.  The SECTORS
`Sigma_k = {w = k}` are open; changing sector forces passing through
`Delta`.  The equidistributed point `e_k` (all bonds `2 pi k/N`) lies
in `Sigma_k` whenever `|k| < N/2`; its energy is

```text
m_k(mu) = N mu (1 - gamma_k),   gamma_k = cos(2 pi k/N).
```

Two structural facts drive everything:

```text
BARRIER:   J_mu >= 2 mu on Delta   (a bond at pi contributes
           mu(1 - cos pi) = 2 mu; all terms are nonnegative).
SUB-BARRIER CONDITION C1-SUB(k):  m_k(mu) < 2 mu, equivalently
           gamma_k > 1 - 2/N.  For k = 0 always (m_0 = 0).  For
           k != 0 it FIRST holds at N = 10 (k = 1): for
           3 <= N <= 9 no nonzero winding has sub-barrier energy.
```

DYNAMICS.  The passive process is the reversible diffusion on `T^N`
with generator `L = beta^{-1} Laplacian - grad J . grad` (inverse
temperature `beta > 0`); its unique invariant probability is
`rho = Z^{-1} exp(-beta J)`, a smooth strictly positive density.  All
persistence statements below are certified LOWER BOUNDS on exit times
in the low-temperature regime, in the two standard forms:
`liminf_{beta} beta^{-1} log E_q[tau_exit] >= r(q)` and
`P_q( label constant on [0, exp(beta(r(q) - delta))] ) -> 1`, for
every `delta > 0`.

The corpus builds its layers on this object, each certified
separately (assurance map in Section 8):

```text
M0/M1  single loop: basin (domain) persistence + skew/state-dependent
       drifts  (a non-sharp lower bound on label persistence; the
       SHARP sector rate is the label tower below)
M2     two coupled loops (labeled factor + reference factor)
M3     a maintenance (feedback) class acting on the scalar readout J
MC/M4  the composition of the coupled pair and the maintenance class
       + a typed "regime package" (skew is NOT part of the
       composition; the composed block is reversible-only)
MR     symmetric maintenance: BOTH factors maintained (the
       composition's other half)
WC     the coupling class: the specific coupling becomes one member
       of an axiom-defined class
SH     sharpness: the certified DOMAIN-exit rates become TRUE rates
LS/LT/LP  the LABEL TOWER: the true rate of TOPOLOGICAL persistence
       (a SECTOR change, not a domain exit) - the barrier is a
       one-bond SADDLE strictly above the domain cap; the saddle-scale
       rate S_k - m_k has a solid LOWER bound, and its matching
       UPPER side (two-sidedness) is DISCHARGED for the single
       loop (LS-MIN-MIG - the migration campaign, XM-R16-authorized)
       and DISCHARGED for the coupled product as well (the excursion
       rows PROD-EXCURSION + PROD-EXCURSION-COND, XE-11 2026-08-02;
       LP-MIN-MIG discharged).  Exactly ONE named condition survives
BENEATH THAT UPPER, and it bites only its PACKAGE/FULL form (the
program's full done-criterion has three items - Section 3 and
Addendum 2.1);
       and it bites only the PACKAGE/FULL form of the coupled upper:
       see Section 3 and Addendum 2.1
```

## 3. The certified package, in one page

The program's central object is a NORMAL FORM — a typed row set
R1-R6 + RE — and the theorem that one concrete stack instantiates all
of it.  Informally (exact row texts live in the M4 artifact):

```text
R1  state-space facts: label w integer off a null set, sectors open,
    barrier structure as in Section 2.
R2  at least two label values carry positive mass under the
    invariant probability (non-triviality), and every domain in the
    declared family carries positive mass.
R3  persistence: certified exit-time lower bounds with explicit rate
    r(q) = (barrier level) - (energy of q), in both certified forms.
R4  contrast: a declared reference readout decorrelates at an exact
    rate INDEPENDENT of the label's persistence (the two horizons
    separate as beta -> infinity).
R5  maintenance: a declared class C(b) of feedback modifications
    (budget b) such that (i) NO HARM: no member's certified rate ever
    drops below passive; (ii) STRICT GAIN: some member achieves
    certified rate >= r(q) + gain(b) with explicit gain(b) > 0 (in
    the certified instance below, EVERY member gains the full budget
    2b in the typed deep region); (iii)
    NON-INTERFERENCE: the R4 contrast certificate is UNCHANGED under
    every member.
R6  information honesty: the class is parameterized through a scalar
    readout Y; its control potential, its ADDED energy contribution,
    and its gain are sigma(Y)-measurable, and the label ell is NOT
    sigma(Y)-measurable (no measurable phi with phi(Y) = ell a.e.) -
    the class's own information channel cannot recover the label it
    protects.  (Here the label ell IS the winding w and the readout Y
    specializes to J_kappa; Exhibit A's phi(J) = w is exactly the
    Y = J instance.)
RE  embedding: all of the above survives coupling to a second declared
    factor, across the coupling family, with the second factor's
    contrast certificate coupling-independent.
```

MAIN RESULT (as typed; N >= 3 throughout).  The stack
(single loop with domains `{A_k : k admissible}`; the bond-coupled
pair `E_eps = J_kappa + J_lambda + eps W`, `W = sum_i (1 - cos(d_i -
e_i))`, where `e_i` are the SECOND factor's bonds - corpus notation,
NOT the equidistributed points `e_k` of Section 2; the feedback class
`G(b, eta)` acting on `J_kappa`: smooth monotone `g` with `|g| <= b`,
`g = -b` on `(-inf, 2 kappa - eta]`, `g = +b` from `2 kappa` on, and
`h = id + g`) satisfies
ALL rows simultaneously, with these typed hypotheses and ranges:

```text
M2-PIN  lambda > kappa (reference stiffness dominates) - passive rows.
MC-PIN  lambda > kappa + b (the maintenance budget EATS reference
        dominance) - composed rows.
Coupling ranges: pinning and joint discharge hold for eps in
        [0, epsilon_0) resp. [0, min(epsilon_0, epsilon_0^c)) with
        SYMBOLIC (not numeric) thresholds; beyond, rows are typed
        assumptions, not theorems.
Domain families per N: {A_k : k admissible with C1-SUB(k)} - for
        3 <= N <= 9 this is {A_0} alone (see Section 2).
```

COMPLETION ADDENDA (the obra's completed form, through the label
tower, 2026-07-05).  Three further certified layers absorb the
stack's remaining design asymmetries (a fourth, the label tower,
follows them):

```text
SYMMETRIC MAINTENANCE (MR): feedback classes on BOTH factors' own
  readouts.  New typed pin MR-PIN: lambda > kappa + b_theta - b_phi
  - the reference budget BUYS BACK dominance (the one-sided pin is
  the b_phi = 0 slice).  The labeled deep rate is b_phi-FREE; both
  flat-mode readouts stay exactly Brownian under both controls; the
  honest price is typed (a transition-zone dip, bounded by 2 b_phi,
  existing only under an explicit zone-width condition).
THE COUPLING CLASS (WC): the ENUMERATED coupled certificate chain
  (barriers, criticality, Hessian floors, pinning, rates, forgetting,
  comparison and information legs; member-dependent side facts
  itemized in the lane) holds for EVERY coupling satisfying six
  axioms (rotation invariance; W >= 0;
  W = 0 on the aligned ground; aligned criticality; aligned PSD at
  the working alignments only; named dominating bounds) - the
  specific coupling is one verified member, a second verified member
  shows the class is strictly larger, and an optional parity axiom
  gates only the all-N information-honesty legs (members without it
  keep the N >= 10 window-method leg).
SHARPNESS (SH): a TWO-SIDED law - for every REVERSIBLE working
  family (skew families excluded: non-reversible, typed open), the
  true exponential rate of the DOMAIN-exit time equals cap - ground,
  INDEPENDENT of the starting point on strict sublevels; the
  certified rates are exactly sharp at the ground.  Proved by a
  reversal route (path-space detailed balance turns downhill
  tracking into uphill tube estimates; no Girsanov; two classical
  facts - heat-kernel detailed balance and a compact-uniform
  Freidlin-Wentzell lower bound - consumed as named external inputs
  with hypothesis rows).  THE LABEL'S OWN persistence time DOMINATES
  the domain-exit time; the SH law does not reach it, and the
  analysis between those levels is the LABEL TOWER below.
```

THE LABEL TOWER (LS/LT/LP, 2026-07-05 - the obra's deepest layer,
the true rate of TOPOLOGICAL persistence).  A sector change is not
a domain exit: it must cross `Delta`, and the CHEAPEST crossing is
NOT the null antipodal floor but a ONE-BOND SADDLE.

```text
THE BARRIER (LS): for the single loop, the label-change barrier is
  the one-bond saddle SP_k (bonds (pi - a_k, a_k, ..., a_k),
  a_k = (2 pi k - pi)/(N - 2)) at level S_k, giving the LADDER
  m_k < 2 kappa < L_k < S_k (the domain cap 2 kappa sits STRICTLY
  BELOW the label barrier).  THE LABEL LAW: the true
  exponential rate of the sector-change time is S_k - m_k,
  q-independent; the saddle-scale LOWER bound is UNCONDITIONAL for
  k = 1, N >= 10, and the matching UPPER (two-sidedness) is
  DISCHARGED (LS-MIN-MIG: the migration campaign - 8 fleet rounds +
  the external review arc; release authorized by XM-R16).  Sample: at
  N = 10 the label rate ~ 0.70 kappa vs the domain-exit rate
  ~ 0.09 kappa - the label OUTLIVES its energy domain
  exponentially: leaving the basin is cheap, changing the topology
  is what costs.  Proof engine: an ABSOLUTE-BOND RIDGE LAW
  (J >= phi_k(M_abs) pointwise, elementary, consuming C1-SUB) whose
  maximum is S_k, plus a far-branch crossing lemma and a valley
  lemma; the off-Delta winding-1 criticals are classified as
  exactly the attractor and SP_1.
CONTROLLED (LT): under the maintenance class, the label rate
  is h(S_k) - h(m_k) (two-sided via lane-lt T7; LS-MIN-MIG
  discharged, XM-R16-authorized);
  since S_k > 2 kappa ALWAYS, maintenance buys
  UP TO 2b of true TOPOLOGICAL persistence (EXACTLY 2b in the deep
  region) - an eight-item transfer audit shows the feedback
  reshapes levels by h without moving the flow lines.
COUPLED PRODUCT (LP): for the coupled pair the saddle-level lower
  bound is a THEOREM (rate >= S_k - m_k - eps w_k - C eps^2), and
  the O(eps) label window is TWO-SIDED - the excursion rows
  PROD-EXCURSION + PROD-EXCURSION-COND are DISCHARGED (XE-11,
  2026-08-02; LP-MIN-MIG discharged).  The PACKAGE/FULL form of that
  upper rode a second named row underneath the excursion pair:
  GAP-LP-RECUR at A6 strength, the arbitrary-start expected hitting
  time of the renewal's base ball (equivalently, the expected INITIAL
  DELAY before the first round starts).  That row is now DISCHARGED
  AT THE MIN OBJECT AT RATE STRENGTH (XE-14, 2026-08-02): what is
  proved is E_q[D(0) ^ L_0] - the initial delay STOPPED at the
  crossing, which is the object the renewal consumer's Wald inequality
  needs ONCE RESTATED. E5 supplies that restatement; the corpus's
  PRINTED consumer displays still read the full expectation and were
  deliberately NOT re-pointed - which is precisely what the A6 fence
  guards. On {L_0 < D(0)} the restated consumer's clock has already
  stopped and no round begins.  THE HONEST RESIDUE, stated exactly: the FULL
  E_q[D(0)] expectation stays TYPED-UNCONSUMED (its a.s. finiteness
  is proved and consumed; its expectation is not), and the
  package/full upper KEEPS its A6 fence VERBATIM - the fence now
  guards exactly that full-expectation reading and nothing else.  No
  fence was removed.  The
  engine is a TUBE TRICK - the tube of the product saddle torus
  self-excludes above the cap. [X3 CORRECTION 2026-07-19: the former
  clause "not critical for the perturbed energy" was FALSE - Z IS
  E_eps-critical at EVERY eps (equal sines; first-order and level
  Lean-sealed, campaign #22), at exact level S_k + eps S_k/kappa,
  with index 1 preserved under M2-PIN per X3's inertia derivation
  (scalar cores Lean-sealed; the mode decomposition itself is prose -
  machine boundary stated honestly, X5/S3 repair). The tube trick never consumed the false clause (it
  uses E_eps >= E_0); the saddle is not "bypassed, never analyzed" -
  it is LOCATED and analyzed: it never moves.]  Open, typed: the
  composed/symmetric rerun (PROD-TRANSFER), k >= 2 (admissible from
  N = 40), and skew label sharpness.  The high-energy / doubly-wound
  stratum is NO LONGER a typed-open row - the excursion rows over it
  are discharged - but read the discharge exactly: it is of the
  EXCURSION SHAPE (an additive expected-time budget per round), NOT a
  strengthening to a probability floor.  The G_{k,j} pinning tori in
  that stratum are real traps at which no bare floor holds, and the
  stratum's critical structure above the band stays geometrically
  unclassified; nothing in the coupled upper reads that
  classification.
```

Sample certified displays (exact statements in the provenance map):

```text
maintenance rate (single factor, member g, deep region
  J(q) <= 2 kappa - eta):   h(2 kappa) - h(J(q)) = 2 kappa - J(q) + 2b
  where h = id + g  (passive rate + the FULL budget; and never below
  passive anywhere: h(2 kappa) - h(J(q)) >= 2 kappa - J(q)).
  The identity closes from the class definition: in the deep region
  g(J(q)) = -b while g(2 kappa) = +b, so the h-increment is the
  passive increment plus exactly 2b; no-harm from g monotone.
contrast (reference factor, EVERY coupling strength, every budget):
  E_q[ e^{i Phi_phi(t)} ] = e^{i Phi_phi(q)} e^{-N t / beta}
  (exact identity; Phi_phi = the reference factor's total phase - the
  subscript names the factor, not a function - an exactly Brownian
  mode with variance rate 2N/beta, hence characteristic-function
  decay exp(-N t/beta); zero equilibrium mean by rotation symmetry)
the two-sided law (domain-exit; every family, strict sublevels):
  lim beta^-1 log E_q[ tau_D ] = cap - ground   (q-independent;
  e.g. passive single loop: 2 kappa - m_k)
the label law (sector change; single loop, k = 1, N >= 10):
  lim beta^-1 log E_q[ tau_change ] = S_k - m_k   (passive;
  q-independent) and h(S_k) - h(m_k) under maintenance (controlled;
  = S_k - m_k + 2b in the deep region) - two-sided (LS-MIN-MIG
  discharged, XM-R16-authorized).  The barrier level S_k is
  the one-bond saddle, strictly above the domain cap 2 kappa.
```

## 4. Exhibit A — the reflection-parity theorem (complete proof)

Chosen because: one page, load-bearing (it discharges R6 for EVERY
N >= 3), and maximally attackable.

Define `R : T^N -> T^N`, `R(theta) = -theta` — a smooth involutive
diffeomorphism preserving Lebesgue measure (`|det DR| = 1`).

LEMMA A.1.  `Delta` is R-invariant: a bond of `R(theta)` equals
`-d_i mod 2pi`, and `d_i = pi <=> -d_i = pi (mod 2pi)`.  Off `Delta`
each bond lies in the OPEN interval `(-pi, pi)`, so `-d_i` IS the
principal-branch bond of `R(theta)` (no wrap-around), giving
`w(R theta) = -w(theta)` off `Delta`, while `J_mu(R theta) =
J_mu(theta)` everywhere (cos is even and depends only on the bond
mod 2pi).

LEMMA A.2.  Any probability on `T^N` whose density is a measurable
function of `J` alone — in particular `rho ~ exp(-beta J)` and every
maintenance member's `rho_c ~ exp(-beta h(J))` — is R-invariant
(change of variables; `|det DR| = 1`; `J o R = J`).

THEOREM A.3.  Let `N >= 3` and let `rho*` be ANY R-invariant
probability on `T^N` with a strictly positive density.  Then there is
NO measurable `phi` with `phi(J(theta)) = w(theta)` for rho*-a.e.
theta.

Proof.  Suppose such `phi` exists; let `A = {theta off Delta :
w(theta) = phi(J(theta))}`, so `rho*(A) = 1` (`Delta` is null).
Since `rho*` is R-invariant and R is an involution, `rho*(R(A)) = 1`;
the set `B = A intersect R(A)` (off `Delta`, which is R-invariant and
null) has `rho*(B) = 1`.  For `theta in B`: `theta in A` gives
`w(theta) = phi(J(theta))`; also `R theta in A` (since
`theta in R(A)`), which gives `w(R theta) = phi(J(R theta)) =
phi(J(theta))` (Lemma A.1, J even).  By the winding parity
(Lemma A.1), `w(R theta) = -w(theta)`.  Hence `w(theta) = -w(theta)`,
so `2 w(theta) = 0` and `w = 0` on B, i.e. `w = 0` rho*-a.e. (the
argument needs only that w is nonzero on a positive-mass set; on
`Sigma_1` it happens to equal the integer 1).  But `Sigma_1` is open
and nonempty (`e_1 in Sigma_1`; its bonds `2pi/N` lie in `(-pi, pi)`
for every `N >= 3`) and `rho*` has a strictly positive density, so
`rho*(Sigma_1) > 0` while `w = 1` there.  Contradiction.  QED.

The same argument with the DOUBLE reflection `R_2(theta, phi) =
(-theta, -phi)` extends the conclusion to the coupled and composed
pairs - label `w_theta`, readout `J_kappa` - at every coupling
strength and every budget.  SKETCH (full proof = Theorem P.4 of the
corpus parity artifact): R_2 negates BOTH factors' bonds, so the
coupling `W` is invariant (`(-d_i) - (-e_i) = -(d_i - e_i)`, cos
even) and both pair energies are R_2-invariant; the second half of
the corpus measure-parity lemma (any density that is a measurable
function of an R_2-invariant energy is R_2-invariant) plus the
certified strictly positive density forms of the coupled and
composed measures supply the measure premises; the sector cylinder
`Sigma_1 x T^N` carries positive mass.

Complementarity note: an earlier, independent proof (the "window
method") derives the same non-measurability for `N >= 10` from the
critical-value structure on the energy window `(m_k, 2 kappa)`; it
localizes WHERE measurability fails, which the parity argument does
not, and it does not need the density's reflection-invariance.  Both
proofs are retained in the corpus.

## 5. Exhibit B — barrier and confinement (complete proof)

The geometric spine of every persistence statement.

LEMMA B.1 (barrier).  `J_mu >= 2 mu` on `Delta`.
Proof.  On `Delta` some bond `d_i = pi`, contributing
`mu(1 - cos pi) = 2 mu`; every other term is nonnegative.  QED.

LEMMA B.2 (sector confinement).  Every connected subset of
`{J_mu < 2 mu}` carries a constant winding.
Proof.  `{J_mu < 2 mu}` misses `Delta` (Lemma B.1), and off `Delta`
the bonds vary continuously in the open interval `(-pi, pi)`, so the
integer `w` is continuous, hence locally constant; on a connected set
it is constant.  QED.

LEMMA B.3 (ground levels).  On the component `A_k` of
`{J_kappa < 2 kappa}` containing `e_k` (nonempty exactly under
C1-SUB(k)), the energy attains its minimum `m_k` precisely on the
rotation circle `C_k = {all bonds equal 2 pi k/N}`.
[Proof in the corpus: critical-point classification on the sector;
includes the fact that `Crit(J)` misses the level `2 kappa` — with a
separate direct argument at N = 4, where the generic branch argument
degenerates — and the winding-0 level law: winding-0 critical values
are 0 (constants) or strictly above `2 mu`.]

WHAT IS AND IS NOT PROVED HERE: B.1 and B.2 are complete above.  The
passage from this geometry to the certified R3 rate `r(q) = 2 kappa -
J(q)` on `A_k` is NOT derived in this packet: it consumes exactly two
corpus facts - Lemma B.3, and a reversible-action lower bound of
Freidlin-Wentzell type (stated and applied in the P0 persistence
artifacts; provenance map, Section 8) - which together say that to
leave the DOMAIN `A_k = {J < 2 kappa}` the process must reach level
`2 kappa` from level `J(q)`, at exponential cost in beta.  (Leaving
the SECTOR - a winding change - is a strictly harder event at the
one-bond saddle level `S_k > 2 kappa`; that is the label tower,
Section 3, and rides the SAME reversible-action lower bound at the
higher barrier.)  Every persistence display in Section 3 is this
mechanism, run with the appropriate energy (J, h(J), E_eps, or the
composed E_c = h(J_kappa) + J_lambda + eps W) above the appropriate
barrier (2 kappa or 2 kappa + b for a DOMAIN exit; the one-bond
saddle S_k for a LABEL change).  Q7 below invites attack on exactly
this passage.

## 6. What is NOT claimed

```text
NO PHYSICS: T^N is a mathematical torus; "energy", "drift",
  "temperature" are standard names for terms of a generator.  Nothing
  here models a physical system, and a binding internal firewall
  blocks quantization/hidden-variable readings of the measurability
  results.
NO AGENCY/SEMANTICS: the rows assert CERTIFICATES (measure-theoretic
  and pathwise facts), not meaning.  Words like "maintenance",
  "information honesty", "label" are declared row NAMES.  An
  interpretation layer exists as a PROPOSED, UNRATIFIED charter,
  deliberately outside this packet's scope.
TYPED LIMITS: the rate constants are SYMBOLIC except where the
  numerical instantiation pass landed them.  At the flagship cell
  (N, kappa, lambda) = (10, 1, 1+) the CELL SCALARS are verified
  numerics - m_k, S_k, c_H, w_k, the door and margin levels and the
  binding coupling cap reproduce the corpus's own printed values
  to 10 decimal places (one further cap at its source's own 7) - while everything depending on the unlanded
  analytic constants (the gradient/Hessian bounds G and L, hence
  L_eps; the injectivity radius; the volume and capacity constants)
  stays symbolic and CONDITIONAL.  The instantiation pass classifies
  its enumerated rows 10 VERIFIED / 47 CONDITIONAL /
  9 TYPED-UNVERIFIABLE / 2 REPORTED (2026-08-02; Addendum 2.1).
  A READER INSTANTIATING THIS CORPUS MUST NOT SILENTLY USE
  eps = 0.05: the flagship's DESIGN NAME violates the pinning row's
  third-entry cap (2 kappa - m_k)/w_k = 0.0472135955, and the
  adjudicated, verified instantiation point is eps = 0.045.  The
  design name is carried as a TYPED row against its own printings; no
  corpus-wide renumbering has been performed.
  Coupling thresholds epsilon_0, epsilon_0^c symbolic, small-coupling
  only;
  sharpness reaches the tau_D two-sided law (SH) and the LABEL
  TOWER (LS/LT/LP) - beyond those, no upper bounds; no prefactors,
  no spectral claims; the row set R1-R6 is a
  DESIGN CHOICE, not claimed canonical or exhaustive; domain families
  for 3 <= N <= 9 reduce to {A_0}; the one-sided composed package maintains the labeled factor only;
  the symmetric family (MR) maintains BOTH factors, with
  cross-readout sensing and phi-label persistence typed open; the
  contrast/forgetting certificates concern the SINGLE flat-mode
  readout only - no mixing claim for any factor block; the
  forgetting leg is a single-readout identity, not reference-factor
  mixing or maintenance.  The SH sharp law is for the DOMAIN-exit
  time; LABEL sharpness is a SEPARATE result (the label tower:
  saddle-scale S_k - m_k, TWO-SIDED for the passive and controlled
  single loops, k = 1, N >= 10 (LS-MIN-MIG discharged,
  XM-R16-authorized); coupled product TWO-SIDED on the O(eps) window
  (the excursion rows DISCHARGED, XE-11; LP-MIN-MIG discharged), with
  the PACKAGE/FULL form of that upper still fenced on exactly ONE
  reading - the FULL initial-delay expectation E_q[D(0)],
  GAP-LP-RECUR @ A6, which stays verbatim; the MIN-OBJECT form
  E_q[D(0) ^ L_0] that the RESTATED Wald consumer reads is
  DISCHARGED at rate strength, XE-14 2026-08-02) - with the
  composed/symmetric rerun (PROD-TRANSFER), k >= 2, and skew label
  sharpness all typed open, not claimed.  The coupling class axioms
  are SUFFICIENT only - necessity is nowhere claimed.
```

## 7. The attacks we ask of you

```text
Q1  Exhibit A, full depth: the branch bookkeeping at +-pi; the a.e.
    set algebra; any escape via null sets or the definition of w.
    (Two independent machine audits re-derived it, and its R6 kill is
    now Lean machine-checked - campaign #5, with the rho_beta
    transfer campaign #8; be the first hostile human.)
Q2  Exhibit B: check B.1-B.2 as stated; then, in the corpus, the
    critical-level exclusion at N = 4 (a known subtlety our process
    caught once already - is the repaired argument right?).
Q3  Is R6's formalization of "the readout channel cannot recover the
    label" (no measurable phi with phi(Y) = ell a.e.) the right
    notion, or is it too weak (e.g. should it be quantitative -
    mutual-information-style - to carry its name honestly)?
Q4  The R3/R5 displays: is the quantifier structure of the two
    certified forms (liminf expectation form; probability form) sound
    as stated, and is "certified rate" honestly distinguished from
    "true rate" throughout?
Q5  The row set R1-R6+RE as a DESIGN: what is missing or redundant in
    the skeleton itself?
Q6  Process attack: Section 8 + the Addendum describe an AI-only
    protocol now spanning TWO architectures (a cross-provider axis
    added precisely to break same-family correlation - zero
    machine-checked-content falsity found there to date).  Where
    would you still expect correlated blind spots that BOTH
    architectures share, and which corpus claims would you re-derive
    first on that basis?
Q7  The geometry-to-rate passage (Exhibit B): the reversible-action
    (Freidlin-Wentzell-type) lower bound as stated and applied in the
    P0 persistence artifacts - is the bound's statement sound, and is
    its application to the h-reshaped and coupled energies legitimate
    as typed?  (This is the one step every persistence display rides
    on and the packet does not prove.)  EXACT POINTERS [added at the
    XE-15 navigation repair; canon location updated at the public
    release]: the P0 persistence artifacts live in the program's
    working canon under the P0 block (P0.2 / P0.2b / P0.4; the
    Freidlin-Wentzell ROUGH exit lower bound, probability and
    expectation forms) - the canon layer is internal (see
    EXPORT-MANIFEST.md in the public repository); the FW statement as
    consumed is quoted in Exhibit B below, and the external source
    dossier that discharged the FW sources is
    governance/cross-provider/verdicts/X4-2026-07-19.md.
Q8  The sharpness upper bound (rebuilt once after a FAIL wave and
    repaired again under blind audit): the reversal route -
    path-space detailed balance, the flow-tracking and near-ground
    displacement lemmas, the stationary sandwich, the renewal
    chain.  Attack the probabilistic joints; the corpus records
    exactly which defects its own audits found and repaired there.
Q10 The MIGRATION PIECES (2026-07-20/21;
    pre-physics/lane-minmig-proofs-v1.md - the corpus's newest proofs
    until the 2026-08 campaigns of Q12, and still among its least
    audited):
    the continuous FLOORS round object (one terminus, delayed-return
    convention, attempt containment by explicit horizon), the retry
    scaffold on it, and the high-orbit splice (corner transmission
    at (pi, pi, 0, ...) configurations). These survived the
    migration campaign's full fleet-and-external review arc (live
    counts in cross-provider/LEDGER.md - hardcoded counts here
    went stale twice) but NO human eye. Attack the
    round object's terminus definition and the corner-transmission
    event first - they are where machine review found defects
    longest.

Q11 The Lean STATEMENT-FAITHFULNESS gap: L-A4 machine-checks 170
    statements, but a machine-checked proof raises only what its
    STATEMENT encodes. Pick five Lean signatures at random
    (lean/*.lean), back-translate them into plain mathematics
    WITHOUT reading the correspondence tables, and compare against
    the prose rows they claim to mechanize (then check
    governance/lean-correspondence-tables-v1.md). Any narrowing you
    find that the tables do not declare is a real finding.

Q12 The INITIAL-DELAY CERTIFICATE (the corpus's newest proof,
    2026-08-02; pre-physics/lane-e5-gaplprecur-v1.md).  It bounds the
    coupled renewal's initial delay at RATE strength on the STOPPED
    object E_q[D(0) ^ L_0], and it is the last analytic step under
    the coupled upper.  Three joints.  (a) THE STOPPING is where the
    claim gets its strength: the split
    E_q[D(0) ^ L_0] = LEG 1 + LEG 2 (in-domain and off-domain
    occupation of the SAME window) must be exact - no double count,
    no drop - and the consumer's Wald restatement must read only the
    stopped object.  Does some site still read the full E_q[D(0)]?
    (b) LEG 1 rides a pathwise DOMINATION, not an identity: the
    landed round-phase charge dominates the in-domain occupation
    because the recovery-phase time is provably OUTSIDE the domain.
    Check that the phase partition covers the whole window and that
    the domination direction is the one the bound needs.  (c) The
    descent-arc certificate that types the connectivity row PROVED on
    the start domain at ZERO error: is the exhibited arc admissible
    in the competitor class that row quantifies over?  Note what is
    NOT claimed: the prefactor is honestly NOT beta-free
    (P_E5(beta) = P(beta) + C_E5 beta^{2N}); the claim is only that
    it is RATE-INERT, beta^{-1} log P_E5 -> 0.  Attack that reading
    too - is rate-inertness enough for every consumer, or does some
    display need the prefactor itself?

Q9  The LABEL TOWER (LS/LT/LP - the corpus's most-
    rebuilt analysis, a four-wave arc with FATALs caught in the
    lead's own repairs).  Two independent geometric claims carry
    it: (a) the label barrier IS the one-bond saddle S_k, not the
    antipodal floor - attack the ridge law J >= phi_k(M_abs) and
    the classification of off-Delta winding-1 criticals as exactly
    {attractor, SP_1}; (b) the product TUBE TRICK - post-X3 corrected reading: the
    saddle circle Z = SP_k x C_0 IS E_eps-critical at EVERY
    coupling (exact level Lean-sealed, campaign #22); the tube
    argument works by LEVEL self-exclusion above the cap
    (E_eps >= E_0 >= S_k - C r^2), never by noncriticality. Is the
    level self-exclusion airtight, and is the cone route (the exact linear side
    coordinate, the gamma_c Lyapunov cone, the time-tau chains)
    a valid replacement for the flow claims it stands in for?
```

## 8. Provenance and assurance map (what "certified" means here)

Assurance rungs: `L-A0` = lead-written; `L-A1` = adversarial audit
by fresh AI agents (same model family as the lead, repo access,
structured verdicts) - DUAL independent lenses from gate-v8 onward,
a SINGLE fresh auditor for the earlier foundational blocks; `L-A2f` =
BLIND audit by a DIFFERENT model reading a self-contained brief only
(no repo access) - dual lenses from phase C-2 onward, a single blind
auditor for the earliest passes; `L-A2x` = the CROSS-PROVIDER axis: a
SECOND AI ARCHITECTURE (a different vendor's model family, NOT the
lead's) reviewing across five arcs (X0-X9C incl. the calibration pair; XF; the XH arc's 4 passes; the XM migration arc through XM-R16; and the XE arc, XE-1..XE-14, carrying the two 2026-08-02 campaigns - live review count in cross-provider/LEDGER.md)
after a passed calibration gate - ZERO mathematical falsity found in
machine-checked content at any pass (see the Addendum); `L-A4` =
Lean 4 / mathlib MACHINE-CHECKED, sorry-free (170/170 lemmas across 26
campaigns as of 2026-07-21; standard axioms only; raises only the
mechanized file's own statements); `L-A3` = you.  Every artifact below
is at L-A1 + L-A2f in this qualified sense, many additionally at L-A2x
and/or L-A4 (the per-block audit records in the governance directory
plus lean/README give the exact rung and multiplicity of every pass).
The core disclosure is UNCHANGED: no HUMAN has yet checked any proof.
The protocol's track record on itself: multiple MAJOR catches,
several CONVERGENT (found independently by both lenses of one wave):
an invalid level bound (caught twice independently), a range
overclaim (both lenses), a measurability non sequitur (both lenses),
and an invalid stability-proof step (single auditor) - all caught
pre-canon, none survived to this packet.  DISCLOSED DELIBERATELY:
EVERY new-analysis layer - the coupling class, sharpness, each
of the three label-tower storeys, and the initial-delay certificate -
FAILED its first adversarial wave outright, SIX for six: a class
axiom that excluded its own
motivating example, a missed consumption point, a circular
composition, an object slip re-attaching a theorem to the wrong
quantity, a saddle-crossing invalid at fixed distance, a band that
omitted a winding restriction and admitted a pinning trap - and, most
recently, an initial-delay design whose promised bound shape was
REFUTED BY THE CORPUS'S OWN honest correction before a line of it was
drafted (the adversarial DESIGN-check, run ahead of drafting, returned
NOT SOUND AS DESIGNED with four blocking repairs, every one named from
landed bytes) - each rebuilt and re-audited blind.
The label tower's product storey
took the LONGEST arc - four waves - with FATALs found
in the LEAD'S OWN repairs by a later verification wave, and one
auditor claim REFUTED by the lead by direct computation (auditor
verdicts are inputs, not authority - the protocol cuts both ways).
We consider this six-for-six record the strongest evidence in
this packet that the verification protocol measures something real;
the wave records name every defect.
Every finding by any auditor is re-verified by the lead against the
source before integration; auditor verdicts are inputs, not
authority.

```text
Object + sector/barrier structure ... canon Part 4 (T1); source
  lane-c-sector-pair-declaration-and-barrier-lemma-v1.md
Persistence machinery (R3 forms) .... canon Parts 4-5; P0 pinning
  artifacts (attractor + rates)
Coupled pair (M2, RE rows) .......... canon Part 7 (M2a/M2b/M2c +
  pinning M2P); lane-m2-*.md
Maintenance class (M3, R5 rows) ..... canon Part 8 (M3a/M3b);
  lane-m3-*.md
Regime package + composition ........ canon Part 9 (M4, MC);
  lane-m4-regime-rows-v1.md, lane-mc-maintained-coupled-pair-v1.md
Parity theorem (Exhibit A) .......... canon Part 9 (gate-v12 block);
  lane-r6-reflection-parity-all-n-v1.md
Symmetric maintenance (MR) .......... canon (gate-v13 block);
  lane-mr-symmetric-maintenance-v1.md
The coupling class (WC) ............. canon (gate-v14 block);
  lane-wc-coupling-class-v1.md
Sharpness (SH, [MACH-UP]) ........... canon (gate-v15 block);
  lane-sh-sharpness-v1.md
Label barrier + two-sided law (LS) .. canon (gate-v16 block);
  lane-ls-label-sharpness-v1.md
Controlled label law (LT) ........... canon (gate-v17 block);
  lane-lt-label-tower-v1.md
Coupled product saddle (LP) ......... canon (gate-v18 block);
  lane-lp-product-saddle-v1.md
Migration pieces (LS/LP-MIN-MIG) .... pre-physics/
  lane-minmig-proofs-v1.md
Excursion-row discharge (Addendum 2.1) pre-physics/
  lane-prodexc-v2.md - the SINGLE-VINTAGE statement of record; the
  historical appendix lane-prodexc-proofs-v1.md is FROZEN
Initial-delay min object (Add. 2.1) . pre-physics/
  lane-e5-gaplprecur-v1.md
Numerical instantiation (Add. 2.1) .. pre-physics/
  e6-instantiation-table-v1.md; the repo-root scripts/e6_instantiation.py and
  scripts/e6_adjudication.py; runlogs in pre-physics/e6-runlogs/
External verdicts (every arc) ....... governance/cross-provider/
  verdicts/ + LEDGER.md (the live counts; do not trust any count
  hardcoded elsewhere)
Assurance records (all waves) ....... governance/ wave records +
  campaign closeouts, gates v5-v18 + phases C-1..C-7
```

END OF PACKET.  Nothing in this document is published, submitted, or
public; it exists so that one human reader, chosen deliberately, can
try to break what the machines could not.

## Addendum 2026-07-21 — the certified-core state

This addendum refreshes the packet past the state it was last written to (2026-07-05, the label-tower completion). Three things changed: a single organizing statement was drafted (the Master Theorem, G0, 2026-07-19); the Lean track reached 170/170; and a second AI architecture had by then reviewed the corpus across ~20 items. The Section-8 disclosure is UNCHANGED and still governs: all verification to date is by AI systems, and no human has yet checked any proof. Nothing here is published. [Section 2.1 below extends this addendum through 2026-08-02, when the two campaigns it describes closed.]

### 1. The organizing statement — the Master Theorem (G0)

The program now has one composite goal object (`governance/master-theorem-v1.md`): four parts, each pinned to sealed items, each remaining condition named INSIDE the statement.

- **PART I (EXISTENCE + EXHAUSTIVE CLASSIFICATION).** The winding sectors are nonempty open classes; the label is integer and locally constant off the antipodal set; the slice-critical configurations are EXHAUSTIVELY classified — ground + one-hot saddle for w = 1 (N >= 5), ground only for w = 0, the mirrored pair for w = -1, the sharp C1-SUB endpoints at k = 1, 2, 3, the ladder m_k < 2 kappa < L_k < S_k, and the antipodal parity floor. **Part I is now UNCONDITIONAL and machine-checked end-to-end**: Lean campaign #24 (general-k enumeration — the naive ground-or-saddle dichotomy is FALSE at k >= 2, with a 2-hot family sealed as counterexample), #25 (the `hclimb` hypothesis DISCHARGED via the strictly increasing E_p ladder), and #26 (the composition `winding_k_energy_isolates_ground_saddle_unconditional` — no residual hypothesis).
- **PART II (READOUT OPACITY).** No measurable function of the energy readout recovers the label — sealed at the volume form and for every Gibbs density, transferred to the coupled products, stable under the recorded skew classes. This is Exhibit A; its R6 kill is Lean-sealed (campaign #5, with the rho_beta transfer #8).
- **PART III (QUANTIFIED PERSISTENCE).** Label changes are barrier-gated (ridge law + band = deterministic floor); exit-time LOWER bounds hold with the compact-attractor Freidlin-Wentzell sources pinned (X4); the DOMAIN-EXIT upper/sharp law is UNCONDITIONAL on the verified local route (C-1 RESOLVED 2026-07-20); the LABEL uppers are DISCHARGED (LS-MIN-MIG - the migration campaign, XM-R16-authorized) and the COUPLED upper HOLDS - the excursion rows PROD-EXCURSION + PROD-EXCURSION-COND are DISCHARGED (the E2 campaign; E2-CONSOLIDATED = lane-prodexc-v2.md; XE-11-authorized 2026-08-02; eleven external verdicts across the XE-1..XE-11 arc, zero cores refuted; LP-MIN-MIG discharged); the package/full LP.5(c) UPPER additionally rode GAP-LP-RECUR @ A6, and THAT row is now DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14-authorized 2026-08-02; delivered by lane-e5-gaplprecur-v1.md), with the companion row SIGMA0-EXC flipped to DISCHARGED at (TIER-A6-RATE) by that name. The proved object is the STOPPED initial delay E_q[D(0) ^ L_0]; the FULL E_q[D(0)] expectation stays typed-unconsumed and the A6 fence stands VERBATIM over exactly that full-expectation reading (no fence was removed); the discrete-kernel backbone is sealed 4/5 (C-2, below).
- **PART IV (COUPLING + MAINTENANCE STABILITY).** The label structure survives coupling and maintenance: the product shell is strict; the product saddle is LOCATED and critical at EVERY coupling with exact level and index (the X3 correction, Lean campaign #22); the pinning-tori census is sealed through the band top; the maintenance classes transfer level and criticality.

The done-criterion is this statement holding with its remaining conditions enumerated, and as of 2026-08-02 that enumeration is THREE items:

1. **C-2**, the Lean library pin (below).
2. **The A6 fence, for the FULL-EXPECTATION reading of the package/full LP.5(c) upper ONLY.** Everything else beneath that upper is discharged: the excursion rows PROD-EXCURSION and PROD-EXCURSION-COND (XE-11-authorized 2026-08-02); the migration rows LS-MIN-MIG and LP-MIN-MIG (XM-R16); and the initial delay at the MIN OBJECT at rate strength (XE-14). What the fence still guards is the single reading `E_q[D(0)]` over all of the sample space, as opposed to the stopped `E_q[D(0) ^ L_0]` the consumer reads.
3. **The standing PARAMETER rows, as classified by the E6 instantiation table** (`pre-physics/e6-instantiation-table-v1.md`): 10 VERIFIED / 47 CONDITIONAL / 9 TYPED-UNVERIFIABLE / 2 REPORTED, with the F-1 adjudication pinning the instantiation point at **eps = 0.045** — not the flagship's design NAME 0.05, which the table verifies FAILING against the pinning row's third-entry cap 0.0472135955. The table's classification is a PRE-XE-14 vintage: two of its nine TYPED-UNVERIFIABLE rows are SIGMA0-EXC and GAP-LP-RECUR, both since moved by XE-14 at the signed boundary (the table's Section 7.5 records the movement); what stands as parameter debt is the 47-row CONDITIONAL class and the remaining seven typed rows.

The four parts otherwise stand AS SCOPED; the standing typed-open inventory remains as named rows (PROD-TRANSFER reruns, k >= 2 coupled laws, skew families - non-reversible, excluded by the reversibility route - the MR cross-readout row, the near-boundary layer). None is hidden debt; each is a named row with its home.

### 2. The two-architecture verification record

Two independent AI axes now sit beneath the L-A3 (human) rung this packet asks you to become.

**Internal fleet (same model family as the lead).** L-A0 lead-written -> L-A1 fresh-AI adversarial audit (dual lenses from gate-v8) -> L-A2f blind audit by a different model on a self-contained brief -> L-A4 Lean 4 / mathlib machine-checking. The Lean track is **170/170 lemmas machine-checked sorry-free across 26 campaigns** (toolchain lean4 v4.32.0-rc1, mathlib 360da6fa66c1; every theorem reports `[propext, Classical.choice, Quot.sound]` only; `verify.py` + the repro kit reconstruct the sweep on a fresh machine). Track record on itself, with counts, not adjectives: every new-analysis layer — the coupling class, sharpness, each of the three label-tower storeys, and the initial-delay certificate — FAILED its first adversarial wave and was rebuilt and re-audited blind (six for six); the product storey took four waves, with FATALs found in the lead's own repairs by a later wave, and one auditor claim refuted by the lead by direct computation.

**External cross-provider axis (a second AI architecture — a different vendor's model family, not the lead's).** After a calibration gate PASSED 2026-07-18 (a known-outcome brief: the external axis recovered both planted findings, produced zero false positives, caught two real certificate-overrun findings the same-family wave had missed, and reproduced the Lean sweep byte-identically), this axis reviewed five arcs — X0-X9, X9B/X9C, XF, the XH arc (four passes XH -> XH-R -> XH-R2 -> XH-R3, closing the master-rate-display roof), the XM arc (XM through XM-R16 - the migration review arc; the flips (a 'flip' = the bookkeeping pass that rewrites a conditional row's status across every consumer file, run only after the condition is discharged AND externally re-reviewed) ran under XM-R16's authorization), and the XE arc (XE-1 through XE-14, carrying the two 2026-08-02 campaigns of Section 2.1). **The honest headline, stated at the right scope: across every external pass, ZERO mathematical falsity was ever found in MACHINE-CHECKED (Lean) content; and in prose, exactly ONE genuine mathematical correction against SEALED corpus content (X3 Finding 1, a prose/record premise, repaired, re-verified, and then Lean-sealed as campaign #22) among findings otherwise of composition/status class.** The 2026-08 campaigns did produce mathematical findings — notably XE-12's blocking object substitution in a PRE-SIGNATURE draft — but every one of those was against work still inside its gate, which is the gate doing its job; none was against sealed content, and each is recorded in Section 2.1. Every external finding was repaired and re-verified before any status moved.

The found-and-fixed record is the STRONGEST evidence in this packet that the protocol measures something real:
- **X3 Finding 1** — the corpus's standing premise "the product saddle Z is not critical for eps > 0" was FALSE: Z IS E_eps-critical at EVERY coupling (exact level S_k + eps S_k/kappa; index 1 under M2-PIN). This is the one genuine MATHEMATICAL correction the external axis produced against sealed content. It was a prose/record premise, not machine-checked content; no consumer had used the false clause (the tube trick uses E_eps >= E_0); it STRENGTHENED the corpus (the saddle is located and never moves) and was then Lean-sealed as campaign #22.
- **X3 Finding 2 / X5 S4 (convergent)** — SH.2'(b)'s global minorization was refuted (a T^2 tangential-cost counterexample). The domain-exit sharpness bound was DOWNGRADED to conditional; the local repair (SH.2'-LOCAL v2) was designed, externally cold-reviewed (XF), Lean-staged, and C-1 was then lifted 2026-07-20.
- **X6/X1 calibration, X2 statement-faithfulness back-translation, X4 Freidlin-Wentzell source dossier (which discharged the K1 obligation), X7 numerics reproduction, X9/X9B/X9C charter re-reviews** — every finding was record, wording, or scoping, each repaired same-day.

### 2.1 The two campaigns of 2026-08-02 — what closed, and at what strength

Fourteen external verdicts stand across the two campaigns, at the STRICT primary-campaign taxonomy: eleven are E2's (the XE-1..XE-11 arc) and three are E5's (XE-12/XE-13/XE-14), with zero mathematical cores refuted in either. Five further signatures (XM-R12..XM-R16) belong primarily to the E1/MIN-MIG campaign and merely overlapped E2's window; the legacy figures 'sixteen', 'nineteen' and 'twenty-one' conflated them and are RETIRED (the canonical counted-set table, mechanically generated: governance/verdict-census-v1.md; live rows in governance/cross-provider/LEDGER.md). E5's arc additionally consumed two INTERNAL adversarial passes - the design check that returned NOT SOUND AS DESIGNED before a line was drafted, and the draft check - which are not external signatures and are not counted.

**WHAT WAS OPEN going in.** The coupled product's O(eps) label window had a proved LOWER bound and an upper side resting on two named rows. (i) THE EXCURSION PAIR — PROD-EXCURSION and its conditional-uniform companion PROD-EXCURSION-COND — an expected-time budget for the part of each renewal round spent OUTSIDE the working region. (ii) GAP-LP-RECUR @ A6 — the arbitrary-start expected hitting time of the renewal's base ball, i.e. the INITIAL DELAY before the first round begins, which the Wald bound carries additively. Both were typed contracts consumed but not proved.

**E2 — the excursion pair: DISCHARGED (XE-11; eleven external verdicts, XE-1..XE-11).** The campaign ran from 2026-07-21 to 2026-08-02 through a KAC-ratio collapse, a coupled dwell accounting whose gate term cancels at m_1(lambda), a re-founding of the delayed cycle, and a boundary-free weak machinery (compact plates, rough targets) that removed the boundary-regularity seam an earlier wave had exposed. The statement of record is a SINGLE-VINTAGE consolidation (`lane-prodexc-v2.md`); the historical appendix is frozen. Read the strength exactly: the discharge is of the EXCURSION SHAPE — an additive expected-time budget per round, at the conditional-uniform strength for round-start fields with starts in the closed base ball, the parent row as corollary. It is NOT a strengthening to a probability floor, and the pinning tori in the high-energy stratum remain real traps at which no such floor holds. Along the way one earlier red-flag reading — that the row fails beyond N ~ 14 — was itself WITHDRAWN as an aggregate/per-round conflation (see the honest opens, item 2).

**E5 — the initial delay: DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14, 2026-08-02).** The move that made it provable is a change of object. The Wald consumer's clock stops at the crossing; on the event that the crossing precedes the first return, no round ever starts. So the object the RESTATED Wald consumer reads is the STOPPED delay (the printed displays keep the full expectation, under the fence) `E_q[D(0) ^ L_0]`, not `E_q[D(0)]`. On that object the certificate splits the window into in-domain and off-domain occupation; the in-domain leg is bounded by a pathwise DOMINATION against the landed round-phase charge (the recovery phase is provably off-domain, so no in-domain time hides there), and the off-domain leg is literally the excursion functional E2 had just discharged, once a descent-arc certificate types the connectivity row PROVED on the start domain at zero error. The delivered bound is
`E_q[D(0) ^ L_0] <= P_E5(beta) exp(beta(Gamma(h) + gamma_2 eps^2 + err(delta)))`
with `P_E5(beta) = P(beta) + C_E5 beta^{2N}`. The prefactor is honestly NOT beta-free — a beta-free form is REFUTED by the corpus's own correction, and no such claim is made — but it is RATE-INERT (`beta^{-1} log P_E5 -> 0`), which is exactly what the limsup consumers read. The companion row SIGMA0-EXC is flipped DISCHARGED at `(TIER-A6-RATE)`, by that name; the strictly stronger tiers are not claimed. The arc: an adversarial DESIGN-check before any drafting (NOT SOUND AS DESIGNED, four blocking repairs, all named from landed bytes) -> draft -> two internal check-and-cure rounds -> XE-12 (one BLOCKING: a tube around the wrong critical orbit) -> cure -> XE-13 (mathematics PASS, record blockers) -> record cure -> XE-14 SOUND.

**E6 — the numerical instantiation (externally PASS at XE-12).** A fail-closed pass over the enumerated standing rows at the flagship cell: 21/21 asserted cell scalars reproduce the corpus's own printed values (twenty at 10 decimal places, one at its source's 7), and the enumerated rows classify 10 VERIFIED / 47 CONDITIONAL / 9 TYPED-UNVERIFIABLE / 2 REPORTED. The pass invents no numeral: every conditional row prints its closed form with the missing symbols NAMED, and the missing inputs are led by two analytic constants (a gradient bound and a Hessian bound) that have no landed numeral anywhere. Its sharpest output is FINDING F-1, adjudicated the same day: the flagship's design NAME `eps = 0.05` VIOLATES the pinning row's third-entry cap `(2 kappa - m_k)/w_k = 0.0472135955`, and the verified instantiation point is **eps = 0.045**, at which every sub-cap consumer — including the initial-delay certificate's own start domain — passes with margin. The design name is carried as a typed row against its printings; the corpus-wide renumbering is deferred, so a reader instantiating from the printed displays must not silently use 0.05.

**WHAT HONESTLY REMAINS.** Three things, all named. (1) The FULL-EXPECTATION reading: `E_q[D(0)]` over all of the sample space stays typed-unconsumed — its a.s. finiteness is proved and consumed, its expectation is not — and the A6 fence stands VERBATIM over exactly that reading and the package/full upper it conditions. The signing verdict authorized ZERO fence removals and the fence bytes were verified byte-identical after the flip. (2) C-2, the Lean library pin. (3) The standing parameter rows as E6 classifies them, with the eps = 0.045 adjudication. Everything else beneath the coupled upper is discharged.

### 3. The state ledger: discharged history AND the live opens, marked
    (a cold reader asked for the separation - XE-15 P2; the LIVE tags
    below are the actual open conditions, everything else is history)

1. [DISCHARGED - history] **The migration rows (LS-MIN-MIG, LP-MIN-MIG) are DISCHARGED** (the migration campaign: 8 fleet rounds; the external review arc XM through XM-R16; release authorized by XM-R16). The label laws are TWO-SIDED at the saddle scale at flagship scope; the coupled upper's excursion rows PROD-EXCURSION + PROD-EXCURSION-COND are DISCHARGED (XE-11, 2026-08-02); and the last analytic row beneath them, GAP-LP-RECUR @ A6, is DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14, 2026-08-02). What remains on the package/full upper is ONE READING, not one row — the full initial-delay expectation `E_q[D(0)]`, still under its A6 fence verbatim — plus C-2 and the standing parameter rows per E6.
2. [DISCHARGED - history] **PROD-EXCURSION — the excursion row the E2 campaign closed.** DESIGNED (renewal-reward route) and then ADJUDICATED (E2 phase 1, 2026-07-21): an earlier red-flag reading — that the row fails beyond N ~ 14 — was itself WITHDRAWN as an aggregate/per-round conflation (the exact double-count class the design's own review had named): the row as typed is PER-ROUND, its honest per-round trap exponent is m_1(lambda), and the closed-form identity m_1 - c_H/2 = g(N)(lambda - 1/8) + (S_k - 2)/8 > 0 shows it is refuted NOWHERE on the flagship range (checker-verified to ~1e-16; the window theorem and scans remain true statements about the AGGREGATE display). The row and its companion are DISCHARGED (the E2 constructive campaign, 2026-07-21..2026-08-02: the KAC-RATIO collapse, the B-DWELL coupled accounting, the weak boundary-free machinery, E2-CONSOLIDATED as the single-vintage statement; XE-11-authorized; eleven external verdicts across the XE-1..XE-11 arc, zero mathematical cores refuted) — on the whole flagship range, no window hypothesis, at the excursion shape and not at a probability floor. The found-withdrawn-recorded cycle here is itself part of the verification record.
3. [LIVE] **C-2 — the Lean library pin.** `harris_geometric` (S4, the discrete-time Harris/HLM 5th leg) is OPEN at the mathlib boundary: invariant-measure existence is not constructible at the pin (no topology on the bare MeasurableSpace for Krylov-Bogolyubov; no weighted-TV completeness for the fixed-point route). The discrete-kernel backbone is sealed 4/5; the obstruction and a variant route are recorded; it is off G0's critical path (the done-criterion enumerates it) and falls only if a consumer demands it or the pin moves.
4. [DISCHARGED - history] **The label laws' upper halves are DISCHARGED**, tracking (1): the migration rows flipped under XM-R16's authorization; the single-loop and controlled two-sidedness stands; and the coupled window's own conditionality is gone — the excursion pair discharged (item 2) and the initial delay discharged at the min object (item 5). The only surviving conditionality on that side is the package/full form's full-expectation reading.
5. [LIVE residue] **GAP-LP-RECUR — the initial delay, and the exact residue.** DISCHARGED AT THE MIN OBJECT AT RATE STRENGTH (XE-14, 2026-08-02; `lane-e5-gaplprecur-v1.md`; Addendum 2.1), with SIGMA0-EXC flipped at `(TIER-A6-RATE)` by that name. Stated so it cannot be over-read: the proved object is `E_q[D(0) ^ L_0]`, the delay STOPPED at the crossing; the FULL `E_q[D(0)]` expectation goes TYPED-UNCONSUMED (its a.s. finiteness remains proved and consumed); the prefactor is rate-inert, not beta-free, and the beta-free tier is explicitly NOT claimed; and the A6 fence on the package/full LP.5(c) upper is PRESERVED VERBATIM — the signature removed no fence, and the fence now guards exactly the full-expectation reading and nothing else.
6. [LIVE - conditional class] **The standing parameter rows — now classified, not merely named.** The E6 instantiation pass (`pre-physics/e6-instantiation-table-v1.md`, externally PASS at XE-12) is fail-closed by construction: 21/21 asserted cell scalars reproduce the corpus's printed values, and the enumerated conditions come out 10 VERIFIED / 47 CONDITIONAL / 9 TYPED-UNVERIFIABLE / 2 REPORTED, every conditional row printing its closed form with the missing symbols NAMED and no numeral invented. Two constants (a gradient bound and a Hessian bound, hence the perturbed Lipschitz constant) gate most of the conditional class - the rest turn on the geometric constants Section 6 names and have no landed numeral anywhere. The pass's own finding F-1 is adjudicated: the instantiation point is **eps = 0.045**; the flagship's design NAME 0.05 violates the pinning cap 0.0472135955 and is carried as a typed row against its printings, with the corpus-wide renumbering deferred. A reader instantiating from the printed displays must not silently use 0.05. The table's classification is a PRE-XE-14 vintage: two of its nine TYPED-UNVERIFIABLE rows are SIGMA0-EXC and GAP-LP-RECUR, both since moved by XE-14 at the signed boundary (the table's Section 7.5 records the movement); what stands as parameter debt is the 47-row CONDITIONAL class and the remaining seven typed rows.

END OF ADDENDUM.
