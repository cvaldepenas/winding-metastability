# Lane-M2 Coupled Pair Declaration v1

Status:

```text
Lane-M2 Coupled Pair Declaration v1 = M2a-PINNED / COUPLED TWO-LOOP PAIR
  DECLARED + INVARIANCE + DOUBLE SYMMETRY + EXACT FLAT MODES AT EVERY
  COUPLING / NO PHYSICS CLAIMS
campaign = gate-v7 stage M2a; builds on the Lane-C pair (both factors)
persistence under coupling (M2b) = NOT CLAIMED HERE
separation (M2c) = NOT CLAIMED HERE
skew extensions / asymmetric sizes / general couplings = NOT IN SCOPE
factor vocabulary only (labeled factor / reference factor are STATEMENT
  choices; no agency vocabulary)
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v7 wave 2026-07-03: zero substantive errors;
  barrier parenthetical completed, circle-lift qualifier and Lebesgue
  clause added; all findings integrated)
assurance now ALSO = L-A2f (phase C-2 dual-lens Opus blind wave
  2026-07-03: 2/2 CONFIRM, GRANT - zero errors/overclaims/brief-defects;
  brief = governance/c2-la2f-brief-gate-v7-surface-v1.md; record =
  governance/c2-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## The Pair (declared)

```text
state space X = T^N x T^N, N >= 3, points (theta, phi)
bonds d_i = theta_{i+1} - theta_i,  e_i = phi_{i+1} - phi_i (indices mod N)
energy (kappa, lambda > 0; coupling epsilon >= 0):
  E(theta, phi) = sum_i [ kappa (1 - cos d_i) + lambda (1 - cos e_i)
                          + epsilon (1 - cos(d_i - e_i)) ]
  smooth, E >= 0 (every term is >= 0), min E = 0 exactly on the doubly
  aligned constants {theta = a 1, phi = b 1} - the bond triple (d, e)
  = (0, 0) minimizes each term; for the global minimum note the coupling
  term also vanishes on d_i = e_i, but the kappa and lambda terms force
  d_i = e_i = 0
target law rho_E = Z^-1 exp(-beta E); Z < infinity (compact)
generator (REVERSIBLE - skew is out of scope):
  L f = beta^-1 rho_E^-1 div(rho_E grad f)
    = beta^-1 Laplacian f - <grad E, grad f>   on T^{2N}
wellposedness + core + uniqueness = the named standard family (smooth
  coefficients, compact connected T^{2N}, diffusion beta^-1 I uniformly
  nondegenerate - the generator has no other second-order structure)
```

## Lemma M2a.1 (invariance)

`int L f drho_E = beta^-1 int div(rho_E grad f) dtheta dphi = 0` for all
smooth f (divergence theorem on the closed manifold); by the named core
and uniqueness inputs, rho_E is THE invariant probability measure, for
every value of epsilon.  QED.

## Lemma M2a.2 (double rotation symmetry, every epsilon)

E depends on (theta, phi) only through the bonds `(d_i, e_i)`, and both
bond families are invariant under the two INDEPENDENT global rotations
`theta -> theta + c 1` and `phi -> phi + c' 1`.  Hence, identically on X
and for every epsilon:

```text
sum_i dE/dtheta_i = 0     and     sum_i dE/dphi_i = 0,
```

and rho_E is invariant under the T^2 action (the translations also
preserve the Lebesgue reference measure on T^{2N}).  Proof: the coupling term
depends on `d_i - e_i`, which is unchanged by each rotation separately;
differentiate the invariance in c and c'.  QED.

## Theorem M2a.3 (topology transfer, both factors, and barrier positivity)

The winding `w_theta` (of the theta-factor) is defined off
`Delta_theta x T^N` and the winding `w_phi` off `T^N x Delta_phi`; all
T1.1 facts hold per factor (integer values, admissible range, local
constancy, open sector cylinders `Sigma_k^theta x T^N` etc.), since these
are state-space facts on each factor.  Barrier positivity:

```text
E >= 2 kappa   on Delta_theta x T^N   (the kappa term of the pi-bond
  contributes kappa(1 - cos pi) = 2 kappa; ALL remaining terms - the
  other kappa terms and every lambda and epsilon term - are >= 0)
E >= 2 lambda  on T^N x Delta_phi     (symmetrically)
```

Sector purity: every connected component of `{E < 2 kappa}` misses
`Delta_theta x T^N`, so `w_theta` is constant on it; every component of
`{E < 2 lambda}` misses `T^N x Delta_phi`, so `w_phi` is constant there.
Changing the theta-sector along a continuous path forces a passage
through `Delta_theta x T^N`, i.e. through energy `>= 2 kappa` (and
symmetrically for phi with `2 lambda`).  Path continuity holds for every
epsilon (wellposedness row).  QED (per-factor T1 arguments verbatim; the
barrier lines are the one-term bounds displayed).

## Theorem M2a.4 (exact flat modes at EVERY coupling strength)

Let `Phi_theta = sum_i theta_i mod 2 pi` and `Phi_phi = sum_i phi_i mod
2 pi`.  Under the coupled SDE, for every epsilon >= 0:

```text
d Phi_theta = sqrt(2 N beta^-1) dB_theta
d Phi_phi   = sqrt(2 N beta^-1) dB_phi
```

with B_theta, B_phi INDEPENDENT standard scalar Brownian motions (the
displays are for the lifts: both total phases are autonomous Brownian
motions ON THE CIRCLE) - the coupling, however strong, never enters the
flat modes.  Consequently, for the specific
flat-mode readout `F_phi = exp(i Phi_phi)` (and symmetrically for
F_theta), for every starting point q and every epsilon:

```text
E_q[ F_phi(t) ] = exp(i Phi_phi(q)) exp(-N t / beta),
int F_phi drho_E = 0,
```

the second by the phi-rotation invariance of rho_E (M2a.2; the readout
gains the factor `exp(i N c')` under the rotation).

Proof.  The drift of Phi_theta is `-sum_i dE/dtheta_i = 0` identically
(M2a.2), and symmetrically for Phi_phi; the noise aggregates
`<1, dW_theta>` and `<1, dW_phi>` are scalar Gaussian martingales with
quadratic variation `N dt` each, built from DISJOINT coordinate sets of
the driving 2N-dimensional Brownian motion, hence independent; scaling by
`sqrt(2 beta^-1)` gives variance rate `2N/beta` for each, and Levy's
characterization identifies them as independent Brownian motions.  The
decorrelation display is `E[exp(i sigma B_t)] = exp(-sigma^2 t/2)` with
`sigma^2 = 2N/beta`.  QED.

## What M2a Does And Does Not Establish

```text
established = the coupled family is well-posed with THE invariant measure
  rho_E for every epsilon; both factor topologies and barriers transfer;
  both flat modes are EXACTLY Brownian at every coupling strength, with
  exact decorrelation of the specific flat-mode readouts
NOT established = any persistence statement under coupling (M2b); any
  separation statement (M2c); any mixing claim for a factor BLOCK (only
  the flat-mode readouts decorrelate exactly - nothing is claimed for
  other observables); any skew or asymmetric extension
```

## False Inference Firewall

```text
flat-mode decorrelation => the phi-factor mixes fast : BLOCKED (one readout)
double symmetry => factor roles are intrinsic : BLOCKED (statement choices)
barrier positivity => exit times are long : BLOCKED (that is M2b)
coupled pair => any agency/physics reading : BLOCKED (firewall)
```

## Verdict

```text
Lane-M2 Coupled Pair Declaration v1 = M2a-PINNED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = pre-physics/lane-m2-persistence-schema-v1.md
```
