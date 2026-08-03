# Lane-R6 Reflection Parity v1 (information honesty for every N >= 3)

Status:

```text
Lane-R6 Reflection Parity v1 = R6 FOR EVERY N >= 3 / NO PHYSICS CLAIMS
  / NO AGENCY CLAIMS
campaign = gate-v12 (single artifact); resolves M4.1's last typed-open
  qualifier ("R6 for 3 <= N <= 9: OPEN") and extends the composed R6
  discharge below N = 10
method = REFLECTION PARITY: a symmetry argument consuming three
  certified ingredients only - (i) w integer off the closed null Delta
  with principal-branch bonds, sectors open, e_k in Sigma_k (corpus
  loop facts: CANON-THEOREMS Part 4, T1; source
  lane-c-sector-pair-declaration-and-barrier-lemma-v1.md); (ii) evenness of every bond
  energy (cos even); (iii) smooth strictly positive densities of the
  named invariant measures (declarations M0/M3a/M2a/MC)
anti-quantization firewall = BINDING
assurance = L-A1 (gate-v12 dual-lens wave 2026-07-04: 2/2 / PARTIAL L-A4 (2026-07-05 campaign #5: the parity core machine-checked in Lean 4 - J reflection-invariant, windSum flips off Delta, Haar volume reflection-preserved, sectors nonempty+open, and the R6 KILL no_measurable_readout_recovers_winding sorry-free, standard-axioms-only, VOLUME form AND, campaign #8 2026-07-10, the RHO_BETA TRANSFER machine-checked (no_measurable_readout_recovers_winding_rhoBeta: uniformly positive Gibbs density => volume << rho_beta, every real beta; unnormalized form, a.e.-equivalent to the corpus's normalized rho_beta); lean/LaneCT1.lean campaigns #5 + #8 sections)
  PASS-WITH-FINDINGS, ZERO FATAL, ZERO MAJOR - six MINORs, all
  presentation/citation, all applied: canon pointer -> Part 4 T1;
  the 2w = 0 step correctly attributed; rho_E density cited at the
  point of use; P.4 measures declared; fragility note corrected to
  measure-level (survives corpus skew - wave catch); both lenses
  independently re-derived P.3 and confirmed it, incl. the N = 3
  extreme case and the null-set escape routes)
assurance = L-A2f GRANTED (phase C-7 dual-lens Opus blind wave
  2026-07-04, verbatim-quote brief - C-6 lesson applied, ZERO
  brief-compression findings: 2/2 PASS-WITH-FINDINGS, ZERO FATAL,
  ZERO MAJOR; three phrasing MINORs, all applied (integrality
  parenthetical re-attributed - only w != 0 on positive mass is
  needed; the J-on-Delta half-clause; vocabulary transparency note,
  no change); skew-survival adjudication 2/2 YES-SURVIVES: the
  theorems quantify only over (rho*, w, J) - drift is not an input;
  see governance/c7-la2f-wave-record-v1.md)
assurance target = L-A3 human reader / Lean / cross-provider L-A2
  (operator gates)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED / M5 layer = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Declared objects

```text
R : T^N -> T^N,  R(theta) = -theta  (coordinatewise negation);
    a smooth involutive diffeomorphism preserving Lebesgue measure
    (|det DR| = 1).
R_2 : T^N x T^N -> T^N x T^N,  R_2(theta, phi) = (-theta, -phi)
    (the DOUBLE reflection; same properties).
```

Quoted corpus facts consumed (ground truth, cited not reproved):
w is an integer-valued function off the closed null antipodal set
Delta, computed from the principal-branch bonds `d_i in (-pi, pi)`
(off Delta no bond equals pi); the sectors `Sigma_k = {w = k}` are
open; `e_k in Sigma_k` (bonds `2 pi k/N`); the named invariant
measures - rho ~ exp(-beta J), every member's rho_c ~ exp(-beta h(J)),
the coupled rho_E ~ exp(-beta E_eps), the composed rho_c ~
exp(-beta E_c) - all have smooth strictly positive densities on their
tori (compactness + smoothness of the energies).

## Lemma P.1 (bond and winding parity)

Delta is R-invariant: a bond of `R(theta)` equals `-d_i mod 2 pi`, and
`d_i = pi <=> -d_i = pi (mod 2 pi)`; so `R(Delta) = Delta` and R maps
the off-Delta set to itself.  Off Delta each bond `d_i` lies in the
OPEN symmetric interval `(-pi, pi)`, so `-d_i in (-pi, pi)` IS the
principal-branch bond of `R(theta)` (no wrap-around is possible off
Delta), giving

```text
w(R theta) = (1/2pi) sum_i (-d_i) = -w(theta)      off Delta,
J_mu(R theta) = mu sum_i (1 - cos(-d_i)) = J_mu(theta)   everywhere
```

(cos is even and depends only on the bond mod 2 pi, so the J identity
holds on Delta as well).  On the pair, under R_2: both factors' bonds negate, so
`w_theta -> -w_theta`, `w_phi -> -w_phi`, `J_kappa` and `J_lambda` are
invariant, and the coupling `W = sum_i (1 - cos(d_i - e_i))` is
invariant since the transformed principal representatives satisfy
`d_i' = -d_i (mod 2 pi)` and `e_i' = -e_i (mod 2 pi)`, hence
`d_i' - e_i' = -(d_i - e_i) (mod 2 pi)`, and cos is even and
2 pi-periodic (so the identity holds on the antipodal set as well;
X6 cross-provider repair 2026-07-18 - the previous wording used the
real-number negation, valid only off Delta).
Hence `E_eps o R_2 = E_eps` and, for every g in G(b, eta),
`E_c o R_2 = E_c` (h reshapes a reflection-invariant scalar).  QED.

## Lemma P.2 (measure parity)

Any probability on T^N whose density is a measurable function of
J alone - in particular rho ~ exp(-beta J) and EVERY class member's
rho_c ~ exp(-beta h(J)) - is R-invariant: change of variables with
`|det DR| = 1` and `J o R = J`.  Likewise any probability on
`T^N x T^N` whose density is a measurable function of a
R_2-invariant energy - the coupled rho_E and the composed rho_c of
every (eps, g) - is R_2-invariant (Lemma P.1).  QED.

## Theorem P.3 (R6 information honesty, single factor, EVERY N >= 3)

Let `N >= 3` and let rho* be ANY R-invariant probability on T^N with
a strictly positive density (in particular: rho, and every member's
rho_c).  Then there is NO measurable `phi` with `phi(J(theta)) =
w(theta)` for rho*-a.e. theta.

Proof.  Suppose such phi exists; let `A = {theta off Delta :
w(theta) = phi(J(theta))}`, so `rho*(A) = 1` (Delta is null).  Since
rho* is R-invariant and R is an involution, `rho*(R(A)) = 1`; the set
`B = A intersect R(A)` (off Delta, which is R-invariant and null) has
`rho*(B) = 1`.  For theta in B: theta in A gives `w(theta) =
phi(J(theta))`; also `R theta in A` (theta in R(A)), which gives
`w(R theta) = phi(J(R theta)) = phi(J(theta))` (Lemma P.1, J even).
By the winding parity (Lemma P.1), `w(R theta) = -w(theta)`.  Hence
`w(theta) = -w(theta)`, so `2 w(theta) = 0` and `w = 0` on B, i.e.
`w = 0` rho*-a.e. (the argument needs only that w is nonzero on a
positive-mass set; on Sigma_1 it happens to equal the integer 1).  But `Sigma_1` is open and nonempty (`e_1 in
Sigma_1`; its bonds `2 pi/N` lie in `(-pi, pi)` for every N >= 3) and
rho* has a strictly positive density, so `rho*(Sigma_1) > 0` while
`w = 1` there.  Contradiction.  QED.

Remark (stronger form, recorded not exploited): the argument used only
`Y o R = Y` for the readout `Y = J`; it excludes sigma(Y)-measurability
of w for EVERY readout Y invariant under R, with respect to EVERY
R-invariant rho* of positive density.

## Theorem P.4 (coupled and composed pairs, EVERY N >= 3, every eps, every g)

On `T^N x T^N`, for the label `ell = w_theta` and the readout
`Y = J_kappa(theta)`: no measurable phi satisfies `phi(J_kappa) =
w_theta` a.e. with respect to the coupled rho_E (any eps >= 0) or the
composed rho_c (any eps >= 0, any g in G(b, eta)).

Proof.  Identical parity argument with R_2 in place of R:
`J_kappa o R_2 = J_kappa` and `w_theta o R_2 = -w_theta` (Lemma P.1);
rho_E and rho_c are R_2-invariant (Lemma P.2); the sector cylinder
`Sigma_1 x T^N` is open nonempty and carries positive mass (strictly
positive density: for rho_E, the M2a declaration's explicit density
form `rho_E = Z^-1 exp(-beta E_eps)`; for the composed rho_c, the
composed-R2 density bridge of MC.6, already recorded).  The contradiction forces `w_theta = 0` a.e. with respect to rho_E
(every eps) and to the composed rho_c (every eps, g), against the
positive mass of `Sigma_1 x T^N` under each.  QED.

## Corollaries (integration targets, applied at closeout)

```text
C-A  M4.1's R6 row: HOLDS FOR EVERY N >= 3 (Y = J; the class's
     control potential g(J), added contribution g(J), gain g'(J) are
     sigma(J)-measurable by construction - the amended wording - and
     w is not sigma(J)-measurable by Theorem P.3).  The typed-open
     row "R6 for 3 <= N <= 9" RESOLVES: not measurable.  For every
     N >= 3 the certified stack is a CERTIFIED REGIME PACKAGE in the
     full sense R1-R6 (domain families as typed per N: {A_k, k
     admissible}, = {A_0} for N <= 9).
C-B  MC.6's R6 leg: the non-measurability conclusion extends to
     every N >= 3 (Theorem P.4).  Prior certified R6 discharges used
     a window method requiring N >= 10; that method's product-transfer
     bridge is certified in the v18 product-gate record (and its Lean
     seal), NOT by this artifact's quoted certificates (X6
     cross-provider repair 2026-07-18: the previous wording
     overclaimed this row's own record).
C-C  M3a.5 (window method, N >= 10): prior discharges stand as
     certified; no finer window-localization statement is adjudicated
     by THIS artifact.  (The sub-barrier window (m_k, 2 kappa) is the
     label tower's certified ladder interval - see the label-tower
     records; the parity argument does not deliver localization.  X6
     cross-provider repair 2026-07-18.)
```

## Honest Boundary (recorded, not claimed)

```text
The parity argument is a SYMMETRY argument AT THE MEASURE LEVEL: it
  consumes the reflection-invariance of the INVARIANT DENSITY and dies
  under modifications whose invariant density is not
  reflection-invariant (tilted potentials, asymmetric couplings).
  WAVE CATCH (corpus lens): the corpus skew classes (Lane-S, M1) keep
  the SAME rho_beta ~ exp(-beta J), which IS parity-invariant - the
  argument SURVIVES every corpus skew class; the fragile hypothesis is
  the measure's parity, not the drift's.  The window method's
  hypotheses (critical-value structure + positive density on
  (m_k, 2 kappa)) are insensitive to the density's parity.
  COMPLEMENTARY, both kept; neither is claimed robust beyond its
  typed hypotheses.
No change to admissibility or C1-SUB (small-N domain families remain
  {A_0}); no new persistence/pinning content; no sharpness; no
  numeric constants.  The stronger sigma(Y)-form of P.3 is recorded
  as a remark only.
```

## False Inference Firewall

```text
w not sigma(J)-measurable => hidden variables / quantization :
  BLOCKED (named blocked inference; anti-quantization firewall)
parity/reflection => physical symmetry claim : BLOCKED (R is a
  coordinate map on a mathematical torus)
R6 all-N => package rows R1-R5 strengthened : BLOCKED (unchanged,
  as typed per N)
anything here => agency : BLOCKED (w is an integer label)
```

## Verdict

```text
Lane-R6 Reflection Parity v1 = R6 FOR EVERY N >= 3 (L-A1)
gate-v12 build = COMPLETE (wave integrated)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = dual-lens L-A1 wave, then
  governance/gate-v12-campaign-closeout-v1.md
```
