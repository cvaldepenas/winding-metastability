# Lane-M2 Attractor Pinning Small Coupling v1

Status:

```text
Lane-M2 Attractor Pinning Small Coupling v1 = M2P-PINNED / THE M2-ATTR
  ROW IS A THEOREM FOR epsilon IN [0, epsilon_0) UNDER M2-PIN AND
  C1-SUB(k), epsilon_0 > 0 SYMBOLIC / NO PHYSICS CLAIMS
campaign = gate-v8 (single artifact); uses M2a/M2b (gate-v7, L-A2f), the
  factor level analyses (P0 + C-1, L-A2f), and the winding-0 level law
  (M2b Standing Data, L-A2f)
constants policy = SYMBOLIC-ONLY (house doctrine): epsilon_0 is proven
  positive with an explicit symbolic formula; its numeric value is NOT
  computed and NOT claimed
large-epsilon regime = NOT CLAIMED (typed tail)
anti-quantization firewall = BINDING
assurance now = L-A1 (gate-v8 dual-lens wave 2026-07-03: both lenses
  independently caught the SAME MAJOR - the Delta_theta closure
  borderline (cap alone left J_kappa = 2 kappa, J_lambda = 0 open;
  repaired with the single-pi-bond precision); honest note adjudicated
  (redundant entry removed, M2-SUB entry now load-bearing); hypothesis
  headers declared; covering and invariance citations added; all
  findings integrated)
assurance now ALSO = L-A2f (phase C-3 dual-lens Opus blind wave
  2026-07-03: 2/2 CONFIRM, GRANT - zero errors/overclaims; the repaired
  Delta_theta exclusion re-attacked and UPHELD by independent analytic
  minimization; Hessian and bounds verified numerically; the Corollary 6
  interface handoff closed by the granting authority against the
  C-2-audited SR-M2 row; brief = governance/c3-la2f-brief-gate-v8-surface-v1.md;
  record = governance/c3-la2f-wave-record-v1.md)
assurance target = L-A3 (operator gate)
candidate selection = CLOSED / packet freeze = CLOSED / physics = CLOSED
core = SEALED / publication = CLOSED
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
```

## Standing Data (from the M2 surface, all L-A2f)

The coupled pair (M2a): `E_eps = J_kappa(theta) + J_lambda(phi) +
eps W(theta, phi)`, `W = sum_i (1 - cos(d_i - e_i))`, `0 <= W <= 2N`;
M2-PIN (`lambda > kappa` strict) and M2-SUB(k, eps)
(`M_k(eps) = (kappa + eps) N (1 - cos(2 pi k/N)) < 2 kappa`) as typed in
M2b; `D_k(eps)` = the component of `{E_eps < 2 kappa}` containing
`G_k = C_k^theta x C_0^phi`; the confinement facts (M2b.1(i), whose
proof used only `all terms >= 0` and the barrier bounds - valid verbatim
for every eps): the theta-marginal of D_k(eps) lies in A_k^kappa and
`w_phi = 0` on D_k(eps).  Factor facts: `gamma_k = cos(2 pi k/N) >
1 - 2/N >= 1/3` under C1-SUB(k); winding-k critical points of J_kappa
with level <= 2 kappa lie exactly on C_k (P0 + the C-1 level analysis:
p >= 1 forces level > 2 kappa); the winding-0 level law for J_lambda
(constants, or level strictly above 2 lambda).  Notation: `B` = the bond
incidence operator (`(B x)_i = x_{i+1} - x_i`), `|B x|^2 = x^T L_N x`,
`L_N = 2I - S - S^T` with eigenvalues `mu_m = 2 - 2 cos(2 pi m/N)`,
kernel span(1), `mu_1 = 2 - 2 cos(2 pi/N) > 0`, `||L_N||_op <= 4`.

## Lemma M2P.1 (G_k is EXACTLY critical for every eps >= 0)

On G_k all theta-bonds equal `2 pi k/N`, all phi-bonds equal 0, hence
all differences `u_i = d_i - e_i` equal `2 pi k/N`.  The criticality
equations are the constancy of the two sine-chains
(`kappa sin d_i + eps sin u_i` and `lambda sin e_i - eps sin u_i` across
i, from the per-coordinate derivatives), and constant bond values make
every chain constant.  So `grad E_eps = 0` on G_k for every eps, and
`E_eps(G_k) = M_k(eps)`.  (More generally every doubly equidistributed
orbit `G_{k,l}` is critical for every eps; inside D_k(eps) only l = 0
is possible by the confinement fact `w_phi = 0`.)  QED.

## Lemma M2P.2 (uniform Morse-Bott nondegeneracy at G_k, under C1-SUB(k))

At any point of G_k the Hessian of E_eps, as a quadratic form on
increments `(dtheta, dphi)`, is

```text
Q_eps(dtheta, dphi) = kappa gamma_k |B dtheta|^2 + lambda |B dphi|^2
                      + eps gamma_k |B(dtheta - dphi)|^2
```

(each energy term contributes its curvature `cos(bond value)` times the
squared bond increment; on G_k the theta-bonds and the differences sit
at `2 pi k/N` with curvature `gamma_k`, the phi-bonds at 0 with
curvature 1).  All three terms are PSD (`gamma_k > 0` under C1-SUB(k), Standing Data); the kernel of
the SUM is the intersection `{B dtheta = 0} intersect {B dphi = 0}` of
the kernels of the two eps-FREE terms (the third term then vanishes
automatically), i.e. `span{(1, 0), (0, 1)}` = exactly the tangent plane
of the orbit G_k.  Transverse floor, UNIFORM in eps >= 0:

```text
Q_eps >= Q_0 >= c_1 |(dtheta, dphi)_transverse|^2,
c_1 := min(kappa gamma_k, lambda) mu_1   (EXPLICIT),
```

since `|B x|^2 >= mu_1 |x_perp|^2`.  So G_k is a nondegenerate
(Morse-Bott) critical 2-torus with transverse floor c_1 for EVERY eps.
(c_1 is the floor AT points of G_k; Theorem M2P.5's tube step degrades
it to (3/4) c_1 over the r_1-tube via continuity - the two floors are
distinct on purpose; C-3 note.)  QED.

## Lemma M2P.3 (the eps-free envelope and its exact critical set, under M2-PIN and C1-SUB(k))

Since `eps W >= 0`, `E_eps >= E_0` pointwise, so for every eps:

```text
D_k(eps)  subset  S_k := { J_kappa + J_lambda < 2 kappa,
                           w_theta = k, w_phi = 0 },
```

a FIXED (eps-independent) open set whose closure is compact and
contained in `{J_kappa + J_lambda <= 2 kappa}` with the same winding
pair.  The closure misses both Delta sets (MAJOR repair at the gate-v8
wave - the cap alone left the borderline open): on Delta_phi,
`J_lambda >= 2 lambda > 2 kappa` contradicts the cap
`J_lambda <= 2 kappa`; on Delta_theta, `J_kappa > 2 kappa` STRICTLY -
level exactly 2 kappa would force exactly one theta-pi-bond with all
other theta-bonds zero (two or more pi-bonds give `J_kappa >= 4 kappa`),
but bonds `(pi, 0, ..., 0)` sum to `pi != 0 mod 2 pi`, violating the
cyclic identity - so the cap `J_kappa <= 2 kappa` excludes Delta_theta.
Windings therefore extend to the closure by local constancy and
adherence.  Moreover

```text
Crit(E_0) intersect closure(S_k) = G_k   EXACTLY:
```

E_0 splits, so critical points are pairs of factor-critical points; the
theta-part has winding k and `J_kappa <= 2 kappa`, hence lies on C_k
(winding-k critical points with p >= 1 have level STRICTLY above
2 kappa by the C-1 level analysis, and p = 0 gives C_k at level m_k);
the phi-part has winding 0 and `J_lambda <= 2 kappa - m_k <= 2 kappa <
2 lambda` (non-strict middle step: k = 0 has m_0 = 0; the FINAL
strictness comes from M2-PIN and is what excludes the above-2-lambda
branch of the level law), hence is a constant configuration.
QED.

## Lemma M2P.4 (explicit perturbation bounds)

```text
sup_X |grad W| <= 2 sqrt(2N)        (Euclidean norm, sup over T^{2N};
  each coordinate derivative is a
  difference of two sines, |.| <= 2; 2N coordinates)
||Hess W||_op <= 8                  (the quadratic form is
  sum_i cos(u_i) (d(d_i) - d(e_i))^2, bounded in absolute value by
  sum_i |B dtheta_i - B dphi_i|^2 <= 2(|B dtheta|^2 + |B dphi|^2)
  <= 2 ||L_N|| (|dtheta|^2 + |dphi|^2) <= 8 |(dtheta, dphi)|^2)
```

QED (crude, explicit, all that is needed).

## Theorem M2P.5 (epsilon-pinning of M2-ATTR, small coupling)

Assume M2-PIN and C1-SUB(k).  There exists `epsilon_0 > 0` - with the
explicit symbolic formula below - such that for every
`eps in [0, epsilon_0)` (noting M2-SUB(k, eps) holds in this range by
continuity of M_k, shrinking epsilon_0 if needed to keep
`M_k(eps) < 2 kappa`):

```text
Crit(E_eps) intersect closure(D_k(eps)) = G_k,  and  M2-ATTR(k, eps)
HOLDS: G_k is the unique internal attractor of D_k(eps), with closure
attraction and no rest point on the boundary.
```

Construction of epsilon_0.  By Lemma M2P.2 and continuity of Hess E_0,
choose a tube radius `r_1 > 0` such that the transverse Hessian of E_0
stays `>= (3/4) c_1` on the closed tube `U_1` = { points within
distance r_1 of G_k } (r_1 SYMBOLIC: a modulus-of-continuity radius).
By Lemma M2P.3 and compactness, `c_0 := inf { |grad E_0| :
closure(S_k) minus interior(U_1) } > 0` (SYMBOLIC: the infimum of a
positive continuous function on a compact set that misses the zero set
G_k).  Set

```text
epsilon_0 := min( c_0 / (2 sqrt(2N)),   c_1 / 32,
                  (2 kappa - m_k) / (N (1 - gamma_k)) )
(the third entry is the exact M2-SUB continuity bound - M_k(eps) <
2 kappa iff eps < (2 kappa - m_k)/(N(1 - gamma_k)) [X3 repair 2026-07-19: at k = 0, gamma_0 = 1 - this entry is OMITTED from the min (piecewise; the prose '+infinity' reading made real-valued)] - vacuous (+infinity)
at k = 0, where M_0(eps) = 0 for every eps; a previously listed
tube-avoidance entry was adjudicated REDUNDANT at the gate-v8 wave and
removed, see the honest note).
```

Proof.
STEP 1 (no critical points outside the tube): on
`closure(S_k) minus interior(U_1)`, `|grad E_eps| >= c_0 - eps ||grad
W||_infty >= c_0 - eps 2 sqrt(2N) > 0` for `eps < c_0/(2 sqrt(2N))`
(Lemma M2P.4); and `closure(D_k(eps)) subset closure(S_k)` (Lemma
M2P.3; the boundary of D_k(eps) lies at level `E_eps = 2 kappa`, hence
`E_0 <= 2 kappa`, and carries the winding pair (k, 0) by adherence, off
both Delta sets as in M2b.1(iii)).
STEP 2 (no critical points in the punctured tube): the T^2 action is by
translations along the CONSTANT vector fields (1, 0), (0, 1); E_eps is
invariant, so `grad E_eps` is everywhere orthogonal to both, i.e. lies
in the fixed subspace `1-perp x 1-perp`.  Through each point of G_k take
the affine slice in that subspace, of radius r_1; on the slice the
restricted Hessian is `>= (3/4) c_1 - eps ||Hess W|| >= (3/4) c_1 -
8 eps >= c_1/2` for `eps <= c_1/32` (Lemmas M2P.2/M2P.4 and the tube
choice).  For a slice point `x != 0`:
`<grad E_eps(x), x> = <grad E_eps(x) - grad E_eps(0), x> = int_0^1
<Hess E_eps(t x) x, x> dt >= (c_1/2) |x|^2 > 0` (grad E_eps(0) = 0 by
Lemma M2P.1; the segment stays in the tube), so `grad E_eps(x) != 0`.
The translated slices cover U_1 (G_k is the T^2-orbit of a single
point, an affine subtorus with CONSTANT tangent span{(1,0),(0,1)}; a
nearest point y of G_k to any x in U_1 satisfies `x - y in 1-perp x
1-perp` on the minimizing lift, with `|x - y| <= r_1`, placing x on the
slice through y), and criticality is translation-equivariant, so the
only critical points in U_1 lie on G_k.
STEP 3 (min attainment and stability): E_eps on closure(D_k(eps))
attains its minimum; the boundary sits at level 2 kappa while
`E_eps(G_k) = M_k(eps) < 2 kappa`, so the minimum is interior, hence
critical, hence on G_k (Steps 1-2): `E_eps >= M_k(eps)` on D_k(eps)
with equality exactly on G_k.  LaSalle plus the W_eta sublevel-
neighborhood argument (P0.4 repaired form, applied verbatim with the
critical set G_k) give unique internal attraction and Lyapunov
stability.
STEP 4 (boundary and closure attraction): boundary points lie in
`closure(S_k) minus G_k` (their level is `E_eps = 2 kappa > M_k(eps)`,
so they are off G_k), and Steps 1-2 JOINTLY give `|grad E_eps| > 0`
everywhere on `closure(D_k(eps)) minus G_k` (Step 1 off the tube
interior, Step 2 inside the tube) - so boundary points are
non-critical, with no tube-avoidance clause needed.  The closure of
D_k(eps) is positively invariant (flow continuity + positive
invariance of the open set, as in M2b.1); at a non-critical boundary
point the strict descent `dE_eps/dt = -|grad E_eps|^2 < 0` pushes into
`{E_eps < 2 kappa}`, and a closure point of D_k(eps) inside the open
sublevel set lies in D_k(eps) (open component argument) - every
trajectory from the closure enters D_k(eps) and converges to G_k.  QED.

Honest note (adjudicated at the gate-v8 wave): the originally listed
tube-avoidance entry of epsilon_0 was CONFIRMED redundant - Steps 1-2
jointly cover the boundary, and its inline justification was a non
sequitur (E_0 above M_k(0) does not place a point outside the tube).
It was removed from the formula.  Arithmetic interplay recorded by the
wave: that entry, `(2 kappa - M_k(0))/(2N)`, always IMPLIES the M2-SUB
continuity bound (under C1-SUB(k), `1 - gamma_k <= 2` gives
`(2 kappa - m_k)/(2N) <= (2 kappa - m_k)/(N(1 - gamma_k))`), so with it
gone the M2-SUB entry is load-bearing and is kept as the third entry.

## Corollary M2P.6 (the M2 rung completes in the small-coupling regime)

For `eps in [0, epsilon_0)`, under M2-PIN and C1-SUB(k), the
conditional theorems M2b.2 and M2c.1 (persistence leg) hold
UNCONDITIONALLY: on the coupled pair, the topological label w_theta
persists to `exp(beta (2 kappa - E_eps(q) - delta))` from every
`q in D_k(eps)`, while the reference flat-mode readout forgets at the
exact rate N/beta - both legs now theorems.  QED (substitute M2P.5 for
the assumed row in SR-M2).

## What M2P Does And Does Not Establish

```text
established = M2-ATTR(k, eps) is a THEOREM for eps in [0, epsilon_0)
  UNDER M2-PIN AND C1-SUB(k),
  epsilon_0 > 0 with an explicit SYMBOLIC formula (min of a compactness
  floor over the explicit perturbation bounds, a Hessian-floor ratio,
  and margin terms); the M2 separation theorem is unconditional in that
  range
NOT established = any numeric value of epsilon_0; the large-eps regime
  (the true threshold where G_k stops being the unique attractor is not
  located); sharpness of anything; the symmetric orientation
  (kappa > lambda)
```

## False Inference Firewall

```text
small-coupling theorem => all-eps persistence : BLOCKED (range typed)
epsilon_0 formula => numeric threshold : BLOCKED (symbolic constants)
rung complete => M3 opened : BLOCKED (own gate)
anything here => physics : BLOCKED
```

## Verdict

```text
Lane-M2 Attractor Pinning Small Coupling v1 = M2P-PINNED
row M2-ATTR(k, eps) = THEOREM on [0, epsilon_0) (upgrade to be applied
  to the schema and separation artifacts at gate-v8 integration)
active next macro = (this campaign CLOSED - the live macro is
  delegated to ACTIVE-STATE.md)
expected next output = dual-lens L-A1 wave, then
  governance/gate-v8-campaign-closeout-v1.md
```
