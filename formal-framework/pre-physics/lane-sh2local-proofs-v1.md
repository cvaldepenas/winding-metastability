# SH.2'-LOCAL v2 — the assembled proofs (Stage C record, XF-corrected)

```text
status = ASSEMBLED 2026-07-19 from the Stage-C fleet records (drafts
  adversarially checked in-fleet: L1 SOUND, L1' SOUND, L2 REPAIRABLE
  with both repairs applied) + the XF cold-review corrections applied
  as MARKED AMENDMENTS below each proof (the drafts are preserved as
  produced; amendments carry their source).
grade = REPAIRABLE-CORRECTED pending Stage D-2 (one cold pass over
  THIS document). K6 remains CONDITIONAL until that pass returns
  SOUND across all three.
  FINAL (2026-07-20, post D-2 + A4/A5 + migration + delta-check):
  ALL THREE SOUND; the C-1/K6 conditional LIFTED. The adjudication
  trail and final stamp live in lane-sh (X3 STATUS banner + the
  DELTA-CHECK stamp). The pending wording above is the stage-time
  record, preserved as produced.
provenance = fleet runs wf_30505856 (L1', L2) + wf_886f057c (L1);
  checker verdicts recorded in lane-sh Stage-C block; XF corrections
  from verdicts/XF-2026-07-19.md section (b).
```

## XF AMENDMENTS (apply to the proofs below; source: XF section (b))

```text
A1 (L2 chain count): consecutive ground centers at intrinsic distance
   <= h/2 (not h), so a point of B_{h/2}(y_j) has d_G(pi(x), y_{j+1})
   <= h; the hop count is ceil(2 D_G / h). The corollary survives:
   n(eta) beta-free, c(eta) exp(-beta eta), beta_0(eta) = O(eta^-2).
A2 (L1' density): the local drift contributes an additional
   O(beta h^2) term (it vanishes ON G but not on the ball); carried
   into C_2, absorbed under the floor beta h^2 >= B.
A3 (thresholds): no beta_0 independent of all positive h exists; the
   diffusive floor beta >= B / h^2 is NECESSARY (XF confirms; the L1
   draft's declared floor stands, now known sharp in kind).
```

## STAGE D-2 ADJUDICATION (lead, 2026-07-20) + AMENDMENTS A4-A5

```text
Cold pass (independent, criterion pre-registered): L1 SOUND
(mechanism verified end-to-end; the symmetry-Jensen/cosh identity
genuinely avoids the endpoint-density defect), L2 SOUND (the
Chebyshev projection step verified numerically over 200k random
configurations; A1's h/2 spacing meets L1's reach exactly), L1'
REPAIRABLE - and the C-1 lift DENIED, correctly, on two grounds:
  (i)  L1' Step 5 consumed the half-time input at B_{rho/2} with its
       constant asserted-not-derived (the fleet draft's own declared
       gap; amendments A1-A3 did not touch it);
  (ii) INDEPENDENT: the K6 consumers (SH.3 Step 4, SH.4) still
       invoke the refuted global lemma - lifting requires their
       MIGRATION to the local route, not just these three proofs.
K6 REMAINS CONDITIONAL. The path to lift: A4 + A5 below (mechanical,
lead-authored per the reviewer's named routes) -> consumer migration
in lane-sh -> one delta-check of exactly those pieces.
[That path was WALKED to completion the same day: A4 + A5 below,
the in-lane migration in lane-sh, delta-check 5/5 PASS - lift
GRANTED; see the header FINAL line. XH later surfaced the
cross-lane LP.5 consumer, typed in lane-lp as LP-MIN-MIG.]
```

A4 (repairs (i); route = the reviewer's first named option): Step 5
of L1' is REWRITTEN to consume L1's PROVEN display (b) (horizon 1/2,
landing B_rho(y), constant C_1(1/2) = 1 + L/4 + L^2/48, derived in
L1 section 5(b)) instead of the undelivered B_{rho/2} form. Leg 2's
Chapman-Kolmogorov then starts from an arbitrary point of B_rho(y)
rather than B_{rho/2}(y): the Gaussian comparison distance grows
from (3/2) rho to 2 rho, so the leg-2 exponent constant worsens from
a_1 to a_1' = a_1 + 7/8 (the (2 rho)^2 - ((3/2) rho)^2 = (7/4) rho^2
increment over the 2 t sigma^2 denominator at t = 1/2, rho <= h).
Net: C_2' = C_1(1/2) + a_1' - same (delta^2 + h^2) shape, worse
beta-free constant, NO new inputs consumed. All downstream uses of
C_2 read C_2'.

A5 (repairs the reviewer's F3 interface gap): the landing event of
leg 1 is REPLACED by its corridor-qualified form - L1's proof
already establishes {X_{1/2} in B_rho(y)} INTERSECT {the path stayed
in T_{r0}(G)} at the same cost (the Gronwall/bootstrap step forces
the corridor on the whole small-ball event; dropping the corridor
conjunct was a weakening for display simplicity). Leg 2 then runs
inside the tube; the final minorization is stated as the
FREE-density form p_1(x, .) >= c beta^{n/2}
exp(-beta C_2'(delta^2+h^2)) Leb|_{B_rho(y)} [delta-check
2026-07-20: the earlier "tube-killed" wording overstated - the
proof bounds the FREE density, which is ALL the SH.3 consumer
needs (average-to-inf uses only X_1's law; SH.4 treats premature
exit as success; the [1,T+1] collar is carried independently by
SH.3 Step 3). The one-line localization (restrict the leg-2
bridge to T_{r0}, cost factor <= 2, exit prob already computed in
Step 3) is available if a future consumer demands the killed form
- none does today].

## L1 — THE HOP (event bound; fleet-checked SOUND)

## Lemma L1 (HOP — event probability, all constants explicit)

**Statement.** Let $dX_t=-\nabla E(X_t)\,dt+\sigma\,dW_t$, $\sigma:=\sqrt{2/\beta}$, on the compact flat torus $M$ ($n:=\dim M$), $W$ a standard $n$-dim Brownian motion. Let $G\subset M$ be a smooth compact translation-subgroup orbit of critical points, $E|_G=e_0$, and in the tube $T_{r_0}(G)$ ($r_0<\tfrac14\operatorname{inj}(M)$) suppose $E-e_0\ge\tfrac{c_\perp}{2}\operatorname{dist}(\cdot,G)^2$ and $|\nabla E|\le L\operatorname{dist}(\cdot,G)$. Then with

$$C_1:=\tfrac12+\tfrac L4+\tfrac{L^2}{24},\qquad c_0:=\Big(\tfrac2\pi\Big)^{n}\exp\!\Big(-\tfrac{n\pi^2 e^{2L}}{4}\Big),\qquad \beta_0:=\tfrac{256}{r_0^{2}},$$

for every $\beta\ge\beta_0$, every $x$ with $d:=\operatorname{dist}(x,G)\le\delta\le r_0/4$, every $y\in G$ with $d_G(\pi(x),y)\le h\le r_0/4$, and $\rho:=\min(h,r_0/8)$:

$$P_x\big(X_1\in B_\rho(y)\big)\ \ge\ c_0\,\exp\!\big(-\beta\,C_1(\delta^2+h^2)\big),$$

subject to the diffusive floor $\beta\rho^2\ge1$ (automatic when $h\ge r_0/8$; see honest_gaps for $h<\beta^{-1/2}$).

---

### 0. Setting and standing constants

Work on the universal cover on the tube; flatness makes the lift a local isometry and every displacement here has diameter $\le r_0<\operatorname{inj}(M)$, so the lift is injective and torus geometry is Euclidean.

**One regularity constant.** Set $L:=\sup_{T_{r_0}(G)}\|\nabla^2E\|_{\mathrm{op}}$ (the sealed-Hessian-layer bound). Since $G$ is critical, $\nabla E=0$ on $G$, so for $z\in T_{r_0}(G)$, $|\nabla E(z)|=|\nabla E(z)-\nabla E(\pi z)|\le L\,\operatorname{dist}(z,G)$ — this **is** the growth hypothesis — and $\nabla E$ is $L$-Lipschitz on the tube (used in §4). One constant discharges both roles.

**Derived $c_\perp\le L$.** Along a unit-speed transverse geodesic $\gamma$ from $G$, $g(s):=E(\gamma(s))-e_0$ has $g(0)=g'(0)=0$ (critical) and $|g'(s)|\le|\nabla E|\le Ls$, so $\tfrac{c_\perp}{2}s^2\le g(s)\le\tfrac L2 s^2$, giving $c_\perp\le L$. Hence any $c_\perp$-expression is dominated by the $L$-expression below; $c_\perp$ is otherwise only the admissibility guarantor (single-valued projection $\pi$, nondegenerate transverse minimum) and does not enter $C_1$ (§6).

**Flat Fermi coordinates (from flatness + translation-orbit; cf. L3).** Write $z=(a,b)$, $a$ tangent to $G$, $b$ normal; then $\operatorname{dist}(z,G)=|b|$ **exactly**, $\pi(z)=(a,0)$, intrinsic $G$-geodesics are straight $a$-lines, and $d_G(\pi x,y)=|a_1-a_0|$. Put $x\leftrightarrow(a_0,b_0)$, $|b_0|=d\le\delta$; $y\leftrightarrow(a_1,0)$, $|a_1-a_0|\le h$. Norms are the max-norm on lifted coordinates (corpus convention).

---

### 1. Girsanov theorem (exact) and Novikov for this SDE

Let $u:[0,\tau]\to\mathbb R^n$ be **deterministic**, measurable, $\int_0^\tau|u_t|^2dt<\infty$. Define
$$Z_\tau:=\exp\!\Big(\sigma^{-1}\!\int_0^\tau\!\langle u_t,dW_t\rangle-\tfrac12\sigma^{-2}\!\int_0^\tau\!|u_t|^2dt\Big).$$
**Novikov.** $E^{P}\exp\!\big(\tfrac12\sigma^{-2}\!\int_0^\tau|u_t|^2dt\big)=\exp\!\big(\tfrac12\sigma^{-2}\!\int_0^\tau|u_t|^2dt\big)=e^{\beta S(\tau)}<\infty$ (deterministic; here $\tfrac12\sigma^{-2}=\tfrac\beta4$, $S(\tau):=\tfrac14\int_0^\tau|u_t|^2dt$). So $(Z_t)$ is a true $P$-martingale, $E^P Z_\tau=1$, and $Q:=Z_\tau\!\cdot\!P$ is a probability on $\mathcal F_\tau$. Under $Q$, $\tilde W_t:=W_t-\sigma^{-1}\!\int_0^t u_s ds$ is a standard BM and $dX_t=(-\nabla E(X_t)+u_t)\,dt+\sigma\,d\tilde W_t$. For any $A\in\mathcal F_\tau$, substituting $dW=d\tilde W+\sigma^{-1}u\,dt$,
$$P_x(A)=E^{Q}\big[\mathbf 1_A Z_\tau^{-1}\big]=e^{-\beta S(\tau)}\,E^{Q}\Big[\mathbf 1_A\exp\!\big(-\sigma^{-1}\!\int_0^\tau\!\langle u_t,d\tilde W_t\rangle\big)\Big].\qquad(\dagger)$$

---

### 2. The two-leg control path (horizon $\tau$)

Choose $u_t:=\phi'(t)+\nabla E(\phi(t))$ so that $\phi$ is the $Q$-mean path (its cost is $S(\tau)=\tfrac14\int|\phi'+\nabla E(\phi)|^2$, the mandated functional). Two legs:

- **Leg (i)** $t\in[0,\tau/2]$ — transverse relaxation toward $\pi(x)$: $\phi(t)=(a_0,(1-2t/\tau)b_0)$. Then $|\phi'|=2d/\tau$, and $\operatorname{dist}(\phi(t),G)=(1-2t/\tau)d\le d$, so **on the corridor** $|\nabla E(\phi(t))|\le L(1-2t/\tau)d$ (corridor radius carried).
- **Leg (ii)** $t\in[\tau/2,\tau]$ — tangential slide to $y$: $\phi(t)=(a_0+(2t/\tau-1)(a_1-a_0),0)$. Speed $|\phi'|=2|a_1-a_0|/\tau\le 2h/\tau$; $\phi(t)\in G$ so $\nabla E(\phi)=0$ exactly. $\phi(\tau)=y$.

Hence $|u_t|\le \tfrac{2d}\tau+L(1-2t/\tau)d$ on leg (i), $|u_t|\le \tfrac{2h}\tau$ on leg (ii).

---

### 3. The parametrized action bound (derived once)

$$S(\tau)=\tfrac14\!\int_0^\tau\!|u_t|^2dt\le \tfrac14\Big[\underbrace{\tfrac{2d^2}\tau+Ld^2+\tfrac{\tau L^2d^2}{6}}_{\text{leg (i)}}+\underbrace{\tfrac{2h^2}\tau}_{\text{leg (ii)}}\Big]=\frac{d^2}{2\tau}+\frac{Ld^2}{4}+\frac{\tau L^2d^2}{24}+\frac{h^2}{2\tau}.$$

With $d\le\delta$, writing $A(\tau):=\tfrac1{2\tau}+\tfrac L4+\tfrac{\tau L^2}{24}$ and $B(\tau):=\tfrac1{2\tau}$:

$$\boxed{\,S(\tau)\ \le\ A(\tau)\,\delta^2+B(\tau)\,h^2\,},\qquad A(\tau)\ge B(\tau)\ \text{(gap }=\tfrac L4+\tfrac{\tau L^2}{24}\ge0).$$

(Leg (i) integral verified symbolically: $d^2(L^2\tau^2/6+L\tau+2)/\tau$; leg (ii): $2h^2/\tau$.)

---

### 4. Tube estimate → master bound

Let $R_t:=X_t-\phi(t)$ (lifted). Under $Q$, using $u_t-\phi'(t)=\nabla E(\phi(t))$,
$$dR_t=-\big[\nabla E(\phi(t)+R_t)-\nabla E(\phi(t))\big]dt+\sigma\,d\tilde W_t,\qquad R_0=0.$$
**Corridor bootstrap (carries the radius at this step).** Let $\theta:=\inf\{t:\operatorname{dist}(X_t,G)>r_0\}\wedge\tau$. On $[0,\theta]$ both $\phi_t$ and $X_t=\phi_t+R_t$ lie in $T_{r_0}(G)$, so the $L$-Lipschitz bound applies: $|R_t|\le L\!\int_0^t|R_s|ds+\sigma\sup_{s\le t}|\tilde W_s|$, and Gronwall gives $\sup_{[0,\theta]}|R_t|\le\sigma e^{L\tau}\sup_{[0,\theta]}|\tilde W_t|$. The amplification $e^{L\tau}$ **is** the corridor factor.

Fix $\epsilon:=\rho\,\sigma^{-1}e^{-L\tau}$ and the event $G_\epsilon:=\{\sup_{[0,\tau]}|\tilde W_t|\le\epsilon\}$. On $G_\epsilon\cap\{[0,\theta]\}$, $\sup|R_t|\le\sigma e^{L\tau}\epsilon=\rho$, so $\operatorname{dist}(X_t,G)\le\operatorname{dist}(\phi_t,G)+|R_t|\le\delta+\rho\le \tfrac{r_0}4+\tfrac{r_0}8=\tfrac{3r_0}8<r_0$; the boundary is never reached, so $\theta=\tau$. Thus on $G_\epsilon$: $|R_\tau|\le\rho$ (i.e. $X_\tau\in B_\rho(y)$) **and** the path stays in the corridor $T_{3r_0/8}(G)$. Hence $\mathbf 1_{G_\epsilon}\le\mathbf 1_A$ pathwise, $A:=\{X_\tau\in B_\rho(y),\,\text{corridor}\}$.

**Symmetry–Jensen (no endpoint-density claim).** In $(\dagger)$ with $A\supseteq G_\epsilon$: the Wiener integral $\int_0^\tau\langle u,d\tilde W\rangle$ is an odd functional of the $Q$-BM $\tilde W$, while $G_\epsilon$ is invariant under $\tilde W\mapsto-\tilde W$ (which preserves $Q$). Averaging the two signs,
$$E^{Q}\big[\mathbf 1_{G_\epsilon}e^{-\sigma^{-1}\!\int\langle u,d\tilde W\rangle}\big]=E^{Q}\big[\mathbf 1_{G_\epsilon}\cosh(\sigma^{-1}\!\textstyle\int\langle u,d\tilde W\rangle)\big]\ge Q(G_\epsilon).$$
**Small-ball (max-norm, exact).** Coordinates independent: $Q(G_\epsilon)=\prod_{i=1}^n Q(\sup_{[0,\tau]}|\tilde W^i|\le\epsilon)\ge(\tfrac2\pi)^n\exp(-\tfrac{n\pi^2\tau}{8\epsilon^2})$, from the Dirichlet series $Q(\sup|W^1|\le\epsilon)=\tfrac4\pi e^{-\pi^2\tau/8\epsilon^2}-\tfrac{4}{3\pi}e^{-9\pi^2\tau/8\epsilon^2}+\cdots\ge\tfrac{8}{3\pi}e^{-\pi^2\tau/8\epsilon^2}\ge\tfrac2\pi e^{-\pi^2\tau/8\epsilon^2}$ (alternating, terms decreasing). With $\epsilon^2=\rho^2(\beta/2)e^{-2L\tau}$, $\tfrac{n\pi^2\tau}{8\epsilon^2}=\tfrac{n\pi^2\tau e^{2L\tau}}{4\beta\rho^2}$. Combining with $(\dagger)$:

$$\boxed{\,P_x\big(X_\tau\in B_\rho(y),\ \text{corridor}\big)\ \ge\ \Big(\tfrac2\pi\Big)^{n}\exp\!\Big(-\beta\,S(\tau)-\tfrac{n\pi^2\tau e^{2L\tau}}{4\beta\rho^2}\Big)\,}\qquad(\star)$$

valid for **all** $\beta>0$, with $S(\tau)\le A(\tau)\delta^2+B(\tau)h^2$.

**Absorbing the small-ball term.** When $\beta\rho^2\ge1$, the second exponent is $\le\tfrac{n\pi^2\tau e^{2L\tau}}{4}$, a $\beta$-free constant folded into the prefactor. Set $c_0(\tau):=(\tfrac2\pi)^n e^{-n\pi^2\tau e^{2L\tau}/4}$ and $C_1(\tau):=A(\tau)$ (dominates $B(\tau)$). Then $\beta S(\tau)\le\beta C_1(\tau)(\delta^2+h^2)$ gives
$$P_x\big(X_\tau\in B_\rho(y)\big)\ \ge\ c_0(\tau)\,\exp\!\big(-\beta\,C_1(\tau)(\delta^2+h^2)\big).\qquad(\star\star)$$
The floor $\beta\rho^2\ge1$ is automatic when $\rho=r_0/8$ (then $\beta\rho^2=\beta r_0^2/64\ge\beta_0 r_0^2/64\ge1$).

---

### 5. The three consumer displays

**(a) Base, $\tau=1$, $\rho=\min(h,r_0/8)$.** $A(1)=\tfrac12+\tfrac L4+\tfrac{L^2}{24}$, $B(1)=\tfrac12$. From $(\star\star)$:
```text
P_x( X_1 in B_rho(y) ) >= c_0 exp( -beta C_1 (delta^2 + h^2) ),
  C_1 = 1/2 + L/4 + L^2/24,   c_0 = (2/pi)^n exp( -n pi^2 e^{2L}/4 ),
  beta_0 = 64/r0^2   (floor beta rho^2 >= 1).
```

**(b) Horizon-1/2 (proved directly at $\tau=1/2$; no diffusive self-similarity).** Each leg has duration $1/4$; leg-(ii) speed $2h/\tau=4h$ (doubled). Plug $\tau=\tfrac12$ into §3: $S(\tfrac12)\le(1+\tfrac L4+\tfrac{L^2}{48})\delta^2+1\cdot h^2$ — the $h^2$ coefficient is $B(\tfrac12)=1=2B(1)$ (doubled), the $\delta^2$ constant absorbed. From $(\star\star)$:
```text
P_x( X_{1/2} in B_rho(y) ) >= c_0(1/2) exp( -beta C_1(1/2) (delta^2 + h^2) ),
  C_1(1/2) = 1 + L/4 + L^2/48   ( > C_1(1): compressing the hop costs more action ),
  c_0(1/2) = (2/pi)^n exp( -n pi^2 e^{L}/8 ).
```

**(c) Landing form (L2 restarts hops on this), $\tau=1$, target $\rho'=h/2\le r_0/8$.** The action (hence $C_1$) is unchanged by shrinking the target; only the small-ball term changes: $\tfrac{n\pi^2 e^{2L}}{4\beta(h/2)^2}=\tfrac{n\pi^2 e^{2L}}{\beta h^2}$, absorbed under $\beta h^2\ge4$:
```text
P_x( X_1 in B_{h/2}(y) ) >= c_0 exp( -beta C_1 (delta^2 + h^2) ),
  same C_1 = 1/2 + L/4 + L^2/24,  same c_0 = (2/pi)^n exp( -n pi^2 e^{2L}/4 ),
  beta_0 = 256/r0^2   (makes beta h^2 >= 4 automatic at hop scale h >= r0/8).
```
Same $(c_0,C_1)$ as (a): this is exactly why L2 can chain — the restart hypothesis and the exponent coincide.

---

### 6. $C_1$ as an explicit formula

$$C_1=C_1(1)=\tfrac12+\tfrac L4+\tfrac{L^2}{24}\ \ (\text{base/landing}),\qquad C_1(1/2)=1+\tfrac L4+\tfrac{L^2}{48}.$$

General horizon: $C_1(\tau)=A(\tau)=\dfrac{1}{2\tau}+\dfrac{L}{4}+\dfrac{\tau L^2}{24}$. Dependence on the mandated variables: **explicit in $L$**; $\dim M=n$ enters $c_0$; $r_0$ enters $\beta_0=256/r_0^2$; $c_\perp$ enters only tube admissibility and the bound $c_\perp\le L$ — it does **not** appear in $C_1$, because a probability lower bound uses only the drift **upper** bound $L$ (§ honest_gaps). Consistency with Stage-A: $C_1(\tau)$ is finite and $\beta$-free (P1); the additive $\delta^2+h^2$ form has no cross-term (P2); the corridor tube has width $\sim\sigma\propto\beta^{-1/2}$ (P3). $\blacksquare$

### Constants (summary)
```text
sigma = sqrt(2/beta);  n = dim M;  L = sup_{T_r0(G)} ||Hess E||_op ( |grad E| <= L dist, grad E L-Lipschitz )
c_perp <= L (derived);  corridor = T_{3r0/8}(G);  epsilon = rho sigma^{-1} e^{-L tau}
S(tau) <= A(tau) delta^2 + B(tau) h^2,  A(tau)=1/(2tau)+L/4+tau L^2/24,  B(tau)=1/(2tau)
MASTER (all beta): P >= (2/pi)^n exp( -beta S(tau) - n pi^2 tau e^{2L tau}/(4 beta rho^2) )
C_1 = 1/2 + L/4 + L^2/24;  c_0 = (2/pi)^n exp(-n pi^2 e^{2L}/4);  beta_0 = 256/r0^2;  floor beta rho^2 >= 1
```

## L1' — THE DENSITY UPGRADE (fleet-checked SOUND)

# Lemma L1' (DENSITY UPGRADE — the small-set minorization)

*Executes SH.2'-LOCAL v2, the density leg. Kills X3 Finding-2 defect 2 (endpoint density
not inherited from the increment) by relating the true endpoint density to the driftless
Gaussian through the EXACT Girsanov Radon–Nikodym factor and bounding that factor — never
by equating increment density with endpoint density.*

## Setting (recalled, self-contained)

`dX = -grad E dt + sqrt(2/beta) dW` on the compact flat manifold `M = R^n / Lambda`
(`n = dim M`; `M = T^N` or `T^N x T^N`), generator `L_beta = (1/beta) Delta - grad E . grad`.
`E` is smooth and `Lambda`-periodic on the lift `R^n`; `G` is a smooth compact connected
translation-subgroup orbit of critical points, `E|_G = e_0`. In the tube
`T_{r0}(G) := { dist(.,G) < r0 }`:

```text
E - e_0 >= (c_perp/2) dist(.,G)^2 ,        |grad E| <= L dist(.,G) .        (TUBE)
```

Distances and balls are read in the geodesic metric of `M`, which equals the Euclidean
metric on the lift below the injectivity radius; assume `r0 <= inj(M)/4` (so every
`B_r(y)`, `r <= r0`, lifts isometrically and geodesic distance = principal-lift Euclidean
distance there). `pi(x)` = a nearest point of `G` to `x`. Standing global bounds from
smoothness + compactness of `M`:

```text
L_0  := sup_M |grad E|          (< infinity)
M_2  := sup_M |Delta E|         (< infinity)
C_+  := sup_{T_{r0}(G)} ||Hess E||   (< infinity; the UPPER transverse Hessian bound)
```

`C_+` gives the matching upper energy bound in the tube: for `u in T_{r0}(G)` with nearest
point `u_0 in G`, Taylor along the segment (`grad E(u_0) = 0`) yields
`E(u) - e_0 = (1/2) Hess E(xi)(u-u_0, u-u_0)`, hence

```text
E(u) - e_0 <= (C_+/2) dist(u,G)^2      on T_{r0}(G).                        (TUBE+)
```

(`L1'` consumes `C_+`, `L`, `L_0`, `M_2`; it does NOT consume the lower constant `c_perp`,
which is an `L1`/coercivity ingredient. Recorded for honesty.)

## Statement

Assume **L1 in its half-time form** (justified in Step 0): there are `beta_0, c_0 > 0`,
`C_1 < infinity` (depending only on `r0, L, c_perp, n`) such that for all `beta >= beta_0`,
every `x` with `delta := dist(x,G) <= r0/4`, every `y in G` with
`h := d_G(pi(x), y) <= r0/4`, and `rho := min(h, r0/8)`,

```text
P_x( X_{1/2} in B_{rho/2}(y) )  >=  c_0 exp( -beta C_1 (delta^2 + h^2) ) .   (L1-half)
```

**Claim.** There are `c_0' > 0`, `C_2 < infinity` (both explicit — Constants table) and
`beta_2 >= beta_0` such that for every `beta >= beta_2` and all such `x, y`, the time-1
transition density `p_1(x, .)` of `X` (w.r.t. the volume measure `Leb`) obeys the small-set
minorization

```text
p_1(x, .)  >=  c_0' beta^{n/2} exp( -beta C_2 (delta^2 + h^2) ) . Leb|_{B_rho(y)}   (L1')
```

as measures on `M`; equivalently
`P_x(X_1 in S) >= c_0' beta^{n/2} exp(-beta C_2 (delta^2+h^2)) Leb(S)` for every Borel
`S subset B_rho(y)`.

## Imports consumed (flagged; see the imports list for hypothesis-match status)

- **SR-SH1** (corpus-named): for `L_beta` with `E` smooth on compact smooth `M`, the
  semigroup has a jointly continuous, strictly positive transition density `p_t(x,y)`
  (`t > 0`) w.r.t. `Leb`, and the Chapman–Kolmogorov identity holds pointwise. Used in
  Steps 1 and 5.
- **Method of images on the quotient** `M = R^n/Lambda` (textbook): the `M`-density is the
  `Lambda`-periodization of the lifted `R^n`-density; all summands are positive. Used in
  Step 1.
- **Cameron–Martin–Girsanov + Doob bridge disintegration** (textbook; Novikov trivial,
  `|b| <= L_0`). Used in Steps 2–4. This is the engine that does defect 2 RIGHT.
- **Aronson two-sided Gaussian bounds / Levi parametrix** (classical family): cited for the
  SHAPE and prefactor of the short-time density and to place Step 4 under a named theorem;
  its black-box lower CONSTANT is *not* beta-uniform for `O(1)` drift, so it is not used as
  a black box — Steps 2–4 re-derive the beta-uniform constant. See Remark C for exactly
  what a packaged import would have to supply.

## Proof

### Step 0 — the half-time instance of L1 (the time change)

`L1` as certified in `SH.2'-LOCAL v2` lands in `B_rho(y)` at time `1` at cost
`exp(-beta C_1 (delta^2+h^2))`. Its route is a Girsanov/Freidlin–Wentzell control-cost
bound: `P_x(X_T in B_r(y)) >= c exp(-beta A_T(x,y))`, where `A_T(x,y)` is the action of the
two-leg control `phi` — transverse relaxation toward `pi(x)` then a tangential slide to `y`
— under the cost functional `(beta/4) int_0^T |phi' + grad E(phi)|^2 dt`. For a maneuver of
transverse size `delta` and tangential size `h` executed over horizon `T`, the kinetic part
of the action scales as `O((delta^2 + h^2)/T)` and the potential part as
`O((delta+h)^2 T)` (in the corridor `grad E(phi) = O(delta+h)` by TUBE); hence for any fixed
`T in [1/2, 1]` and target radius `r in [rho/2, rho]`,

```text
A_T(x,y) <= C_1(T,r) (delta^2 + h^2) ,   C_1(T,r) explicit, beta-free.
```

Taking `(T,r) = (1/2, rho/2)` gives (L1-half). This is `L1` re-read at a fixed shorter
horizon, not a new lemma: only the explicit constant changes (`C_1 <- C_1(1/2, rho/2)`,
`c_0` absorbing the radius change). No diffusive self-similarity is invoked (there is none:
`X_{t/2}` solves a different SDE, drift `(1/2)grad E`, inverse-temperature `2beta`), so the
justification is the horizon-flexibility of `L1`'s action, quoted from `L1`'s proof. We
consume (L1-half) as given and do not re-derive `C_1` here (honest_gaps 1).

### Step 1 — reduction to the flat lift and the driftless Gaussian

Fix `y in G`; let `tilde y` be a lift, `tilde x, tilde z, tilde w` principal lifts. `E`
lifts to a `Lambda`-periodic `tilde E` on `R^n`; the drift `-grad tilde E` is
`Lambda`-equivariant, so the lifted diffusion `d tilde X = -grad tilde E dt + sqrt(2/beta) dW`
projects to `X`, and by the method of images (SR-SH1 supplies the summable positive density)

```text
p_t(z,w) = sum_{k in Lambda} tilde p_t( tilde z, tilde w + k )  >=  tilde p_t( tilde z, tilde w ) ,   (IMG)
```

dropping all but the principal term (every term `> 0`). It therefore suffices to lower-bound
the lifted `R^n` density `tilde p_t`. Let `g_t` be the DRIFTLESS `R^n` heat kernel for
`sqrt(2/beta) dW` (diffusivity `sigma^2 = 2/beta`):

```text
g_t(a,b) = (beta/(4 pi t))^{n/2} exp( -beta |a-b|^2/(4t) ) .                (GAUSS)
```

`(GAUSS)` is exact; it is the frozen-coefficient parametrix seed for `L_beta`
(`det(sigma^2 I)^{-1/2} = beta^{n/2}`), which fixes the beta-scaling: **prefactor**
`= beta^{n/2}(4 pi t)^{-n/2}` (= inverse diffusive-cell volume `(t/beta)^{n/2}` up to
constants), **exponent** `= beta |a-b|^2/(4t)` (= `|a-b|^2/(2 sigma^2 t)`).

### Step 2 — the exact Girsanov ground-state transform

Let `P^0` be the law of the driftless lifted process from `tilde z` and `P` the law of
`tilde X` from `tilde z`. With `b = -grad tilde E`, `sigma^{-2} = beta/2`, Girsanov (valid:
`|theta|^2 = sigma^{-2}|b|^2 <= (beta/2)L_0^2` bounded, Novikov trivial) gives

```text
(dP/dP^0)_t = exp( (beta/2) int_0^t b . dX  -  (beta/4) int_0^t |b|^2 ds ) .
```

Itô on `tilde E` (`d tilde E = grad tilde E . dX + (1/beta) Delta tilde E ds`) turns the
stochastic integral into a boundary term:
`int_0^t b . dX = -( tilde E(X_t) - tilde E(X_0) ) + (1/beta) int_0^t Delta tilde E ds`, so

```text
D_t := (dP/dP^0)_t
     = exp( -(beta/2)( E(X_t) - E(X_0) )  +  (1/2) int_0^t Delta E(X_s) ds
            -  (beta/4) int_0^t |grad E(X_s)|^2 ds ) .                       (RN)
```

Doob bridge disintegration (SR-SH1 gives continuity, so the a.e. identity is pointwise): for
all `w`,

```text
tilde p_t( tilde z, tilde w )
   =  g_t( tilde z, tilde w ) . E^{0,br}_{ tilde z -> tilde w }[ D_t ] ,     (BRIDGE)
```

the expectation over the driftless Gaussian bridge from `tilde z` to `tilde w` in time `t`.
**This is the correct relationship between the increment (Gaussian) density and the true
nonlinear endpoint density: they differ by the factor `E^{br}[D_t]`, which we now bound —
NOT by equality (the X3 defect-2 error).**

### Step 3 — survival of the Gaussian lower bound under the drift (the crux)

Fix `t = 1/2`, `tilde z in B_{rho/2}(tilde y)`, `tilde w in B_rho(tilde y)`, `rho <= r0/8`.
On the event `X_0 = tilde z`, `X_t = tilde w` the endpoint terms in `(RN)` are
deterministic; the `Delta E` term is bounded pathwise. So

```text
E^{0,br}[D_t] = exp( -(beta/2)(E(w)-E(z)) )
              . E^{0,br}[ exp( (1/2) int_0^t Delta E ds - (beta/4) int_0^t |grad E|^2 ds ) ] .
```

Bound the three pieces.

**(F2) Endpoint energy.** `E(z) >= e_0`; by (TUBE+), `E(w) - e_0 <= (C_+/2) dist(w,G)^2
<= (C_+/2) rho^2`. Hence

```text
exp( -(beta/2)(E(w)-E(z)) )  >=  exp( -(C_+/4) beta rho^2 ) .
```

**(F3a) Laplacian.** `|Delta E| <= M_2` pathwise, `t = 1/2`, so
`exp((1/2) int_0^t Delta E ds) >= exp(-M_2/4)` (beta-free).

**(F3b) Gradient — where the drift could have killed the bound.** Write the bridge as
`X_s = straight_s + xi_s`, `straight_s` the segment `tilde z -> tilde w` (which lies within
`rho` of `tilde y` by convexity), `xi_s` the driftless Gaussian bridge excursion
(per-coordinate `Var(xi_s^i) = (2/beta) s(t-s)/t <= t/(2beta)`). Then
`dist(X_s, tilde G) <= |X_s - tilde y| <= rho + |xi_s|`. Split by the tube; outside the tube
(`dist >= r0`) forces `|xi_s| >= r0 - rho >= 7r0/8`:

```text
int_0^t |grad E(X_s)|^2 ds
   <=  L^2 int_0^t (rho + |xi_s|)^2 ds  +  L_0^2 int_0^t 1[ |xi_s| >= 7r0/8 ] ds
   <=  2 L^2 rho^2 t  +  2 L^2 int_0^t |xi_s|^2 ds  +  L_0^2 int_0^t 1[ |xi_s| >= 7r0/8 ] ds .
```

Take `E^{0,br}` (bridge law). Two computed facts (verified symbolically):

```text
E[ int_0^t |xi_s|^2 ds ] = n t^2/(3 beta)            ( = n/(12 beta) at t=1/2 ) ,
P( |xi_s| >= 7r0/8 )      <= 2n exp( -(49 r0^2/(64 n)) beta/t )   (per-coord Gaussian tail).
```

Therefore, multiplying by `beta/4` and setting `t = 1/2`:

```text
(beta/4) E[ int_0^t |grad E|^2 ds ]
   <=  (L^2/4) beta rho^2   +   (L^2 n/24)   +   (beta/4) L_0^2 t . 2n exp( -c beta ) ,
      c := 49 r0^2/(32 n) > 0 (beta-free).
```

The last term `-> 0` as `beta -> infinity`; pick `beta_1 = beta_1(n, r0, L_0)` so it is
`<= 1` for `beta >= beta_1`. The **decisive structure**: the drift cost has a **beta-LINEAR**
part `(L^2/4) beta rho^2` (from the straight segment's proximity to `G`, size `rho`) and a
**beta-FREE** part `L^2 n/24 + 1` (from the diffusive excursion, whose variance carries
`1/beta`). There is **no `O(beta) . O(1)` term**: such a term would appear only for a segment
staying an `O(1)` distance from `G`, where `|grad E| = O(1)` — precisely NOT our regime,
because both endpoints sit in `B_rho(y)` with `rho = O(h) <= r0/8`. By Jensen
(`E[e^{-Y}] >= e^{-E[Y]}`, `Y >= 0`):

```text
E^{0,br}[ exp( -(beta/4) int_0^t |grad E|^2 ds ) ]  >=  exp( -(L^2/4) beta rho^2 - L^2 n/24 - 1 ) .
```

### Step 4 — the short-time uniformly-elliptic lower bound (the Aronson-form leg)

Combine `(GAUSS)` at `t = 1/2` (`g_{1/2}(z,w) = (beta/(2pi))^{n/2} exp(-beta|z-w|^2/2)`,
`|z-w| <= rho/2 + rho = 3rho/2`, so `exp(-beta|z-w|^2/2) >= exp(-(9/8) beta rho^2)`) with
(F2), (F3a), (F3b) via `(BRIDGE)` and `(IMG)`:

```text
p_{1/2}(z,w)  >=  tilde p_{1/2}(tilde z, tilde w)
   >=  (2pi)^{-n/2} beta^{n/2} exp(-(9/8) beta rho^2)      [g]
       . exp(-(C_+/4) beta rho^2)                          [F2]
       . exp(-M_2/4)                                       [F3a]
       . exp(-(L^2/4) beta rho^2 - L^2 n/24 - 1)           [F3b]
   =  a_0 beta^{n/2} exp( -a_1 beta rho^2 ) ,
```

with

```text
a_0 := (2pi)^{-n/2} exp( -M_2/4 - L^2 n/24 - 1 )   (>0, beta-free, explicit) ,
a_1 := 9/8 + C_+/4 + L^2/4                          (>0, beta-free, explicit) .   (ARONSON-LEG)
```

This is exactly the design's imported form `p_t(z,w) >= a_0 beta^{n/2} exp(-a_1 beta d(z,w)^2)`
for `t = 1/2` — but **with `a_0, a_1` derived and beta-uniform**, valid uniformly over
`z in B_{rho/2}(y)`, `w in B_rho(y)`. (It holds for every `t in [1/4,1/2]` with `t`-adjusted
explicit constants; we use `t = 1/2`.) Since `rho = min(h, r0/8) <= h`:

```text
inf_{ z in B_{rho/2}(y) } p_{1/2}(z, w)  >=  a_0 beta^{n/2} exp( -a_1 beta h^2 )   (for all w in B_rho(y)).   (LEG*)
```

### Step 5 — Chapman–Kolmogorov composition and the minorization

By SR-SH1, Chapman–Kolmogorov holds pointwise:

```text
p_1(x, w) = int_M p_{1/2}(x, z) p_{1/2}(z, w) dz
         >= int_{ B_{rho/2}(y) } p_{1/2}(x, z) p_{1/2}(z, w) dz     (integrand >= 0)
         >= ( inf_{ z in B_{rho/2}(y) } p_{1/2}(z,w) ) . int_{ B_{rho/2}(y) } p_{1/2}(x, z) dz
         =  ( inf_{ z in B_{rho/2}(y) } p_{1/2}(z,w) ) . P_x( X_{1/2} in B_{rho/2}(y) ) .
```

Insert (L1-half) and (LEG*): for every `w in B_rho(y)`,

```text
p_1(x, w) >= [ a_0 beta^{n/2} exp(-a_1 beta h^2) ] . [ c_0 exp(-beta C_1 (delta^2+h^2)) ]
          =  c_0 a_0 beta^{n/2} exp( -beta ( C_1 (delta^2+h^2) + a_1 h^2 ) )
          >= c_0' beta^{n/2} exp( -beta C_2 (delta^2 + h^2) ) ,
```

using `C_1(delta^2+h^2) + a_1 h^2 <= (C_1 + a_1)(delta^2+h^2)`. Set

```text
c_0' := c_0 a_0 ,      C_2 := C_1 + a_1 = C_1 + 9/8 + C_+/4 + L^2/4 ,
beta_2 := max( beta_0, beta_1 ) .
```

The bound is pointwise on `B_rho(y)`, hence as measures
`p_1(x, .) >= c_0' beta^{n/2} exp(-beta C_2(delta^2+h^2)) Leb|_{B_rho(y)}`. QED.

## Constants table

```text
symbol   meaning                                          status
------   ------------------------------------------------ ---------------------------------
n        dim M                                            explicit (given)
r0       tube radius; assume r0 <= inj(M)/4               given
c_perp   lower transverse coercivity (TUBE)               given; NOT consumed by L1'
L        tube gradient-Lipschitz slope, |grad E|<=L dist  given
L_0      sup_M |grad E|                                   named, finite (smooth, compact)
M_2      sup_M |Delta E|                                  named, finite
C_+      sup_{T_{r0}(G)} ||Hess E||  (upper Hessian)      named, finite; gives (TUBE+)
c_0,C_1  L1 half-time constants (dep. r0,L,c_perp,n)      ASSUMED (Step 0), not re-derived
beta_0   L1 threshold                                     assumed
c        49 r0^2/(32 n)  (bridge tail rate, t=1/2)        explicit, >0, beta-free
beta_1   least beta with (beta/2) n L_0^2 e^{-c beta}<=1  explicit fn of (n,r0,L_0)
a_0      (2pi)^{-n/2} exp(-M_2/4 - L^2 n/24 - 1)          DERIVED, explicit, >0, beta-free
a_1      9/8 + C_+/4 + L^2/4                              DERIVED, explicit, >0, beta-free
c_0'     c_0 a_0                                          explicit
C_2      C_1 + 9/8 + C_+/4 + L^2/4                        explicit
beta_2   max(beta_0, beta_1)                              explicit
```

Only `beta^{n/2}` (prefactor) and `beta` (exponent) carry `beta`; `a_0, a_1, c_0', C_2` are
beta-free. That is the precise diffusive-scale beta-dependence.

## Remarks

**A. How defect 2 is killed (increment density ≠ endpoint density).** The endpoint density
`p_1(x, w)` is a nonlinear functional of the driving path; we never set it equal to a
Gaussian increment density. Instead `(BRIDGE)` gives the EXACT ratio to the driftless
Gaussian, `E^{br}[D_t]`, and Step 3 bounds that ratio below. The bound is honest because it
is the ground-state (Doob `h`-transform) representation `(RN)`, whose only stochastic
ingredient is the bounded functional `int |grad E|^2` of a driftless bridge.

**B. Why the drift survives at scale `1/beta`.** The Girsanov cost is
`(beta/2)(E(w)-E(z)) + (beta/4) int |grad E|^2`. In the tube, `E - e_0 = O(dist^2)` and
`|grad E| = O(dist)`, so along a bridge pinned within `rho` of `G` both pieces are
`O(beta rho^2) = O(beta h^2)` (beta-linear, → exponent `C_2 h^2`) plus a diffusive-excursion
remainder `O(1)` (beta-free, → prefactor `a_0`). Global boundedness `|grad E| <= L_0` alone
would give the useless `exp(-(beta/4)L_0^2 t) = exp(-O(beta))`; the operative fact is
drift SMALLNESS in the tube. The design's phrase "uniform BECAUSE the drift is bounded" is
therefore imprecise: uniformity comes from `|grad E| <= L dist(.,G)` inside the tube, not
from `|grad E| <= L_0` on `M`. The counterexample of X3 Finding 2 (tangential BM to `(0,pi)`,
cost `pi^2/4`) is respected — it concerns an `O(1)` tangential displacement `h`, giving
`exp(-beta O(h^2))` with `h = O(1)`, i.e. genuinely exponentially small, fully consistent
with `(L1')`; `(L1')` only claims the `O(delta^2 + h^2)` rate for the small `h <= r0/4` it is
stated for, and buys tangential flatness with TIME downstream in `L2`, never in one step.

**C. What a black-box Aronson/parametrix import would and would not give.** Aronson/Levi
supplies the Gaussian SHAPE and the `beta^{n/2}(4pi t)^{-n/2}` prefactor (frozen at
`det(sigma^2 I)^{-1/2}`) for free. It does NOT hand over a beta-uniform lower CONSTANT: the
classical lower constant degrades like `exp(-C ||b||_infty^2 t / sigma^2) = exp(-C L_0^2 t beta/2)`
for `O(1)` drift over unit time. A packaged import sufficient to quote Step 4 as a one-liner
would have to be: *"short-time Gaussian lower bound for `(1/beta)Delta - grad E . grad` with
`|grad E| <= L dist(.,G)` in a tube, with lower constant `a_0 beta^{n/2}`,
`a_1` beta-free, for endpoints in the tube"* — i.e. a LOCALIZED small-drift Aronson bound. We
did not locate such a packaged theorem with matching hypotheses, so we supplied it by the
Girsanov reduction (Steps 2–4). No unverified black-box constant enters `(L1')`.

**D. Consistency with the Stage-A probe** (`sh2local_probe_results.json`). The driftless leg
`(GAUSS)` reproduces the probe's `P(tangential >= s) ~ exp(-beta s^2/4)`: at unit time the
tangential exponent coefficient is `1/(4t) = 1/4`, beta-free, matching the probe's
`rate_pred = s^2/4` and the design's `C_1 -> 1/4` (P1). The additive `C_2(delta^2 + h^2)`
form with no cross term matches P2 (off-`G` starts shift the rate `< 2%`, "conservative, no
cross-term"). The bridge excursion is `O(beta^{-1/2})` (Step 3, `Var(xi) <= t/(2beta)`),
matching P3's `trans_rms ~ 1/sqrt(beta)` (`0.82/0.58/0.41` at `beta = 10/20/40`). The probe's
"deep tail `beta s^2/4 > ~5` out of MC reach" is the regime where `(L1')`'s lower bound is a
genuine large-`beta` statement.

**E. Interface.** `(L1')` is the ONLY place in SH.2'-LOCAL v2 where a density is claimed;
`L2` (chain) consumes it with matched radii `rho = h` and `S subset B_h(y)`, and `L4`
(SH3-TOL) consumes the resulting minorization constant `c_0' beta^{n/2} exp(-beta C_2(...))`.
`(L1')` supplies the `beta^{n/2}` prefactor those rows expect.

## L2 — THE CHAIN (fleet-checked REPAIRABLE; repairs + A1 applied)

## Lemma L2 (THE CHAIN)

### Statement (restated)

Setting and constants are those of SH.2'-LOCAL v2. `M` is the compact flat manifold, `|.|` the max norm on the lift (Standing Data), `G` the diagonal translation-subgroup circle orbit, `d_G` the intrinsic (path) distance on `G`, `pi` the nearest-point projection onto `G` in the tube `T_{r0}(G)`. Import as given:

- **L1 (HOP).** There are `beta_0, c_0 > 0`, `C_1 < infinity` (functions of `r0, L, c_perp, dim M` only) with: for all `beta >= beta_0`, every `x` with `d := dist(x,G) <= delta <= r0/4`, every `y in G` with `d_G(pi(x), y) <= h <= r0/4`,
  `P_x( X_1 in B_rho(y) ) >= c_0 exp( -beta C_1 (delta^2 + h^2) )`, `rho := min(h, r0/8)`.
- **L3 (ORBIT GEOMETRY).** `G` is a smooth closed geodesic circle; in the max norm its intrinsic diameter is `D_G = pi`; `G` is totally geodesic and `T_{r0}(G)` is 1-quasiconvex (project–slide–unproject within factor 2).

Fix a hop scale `0 < h <= r0/8`. Let `x` satisfy `dist(x,G) <= h`, put `y_0 := pi(x)`, and let `y in G` be any target. Then for `beta >= beta_0` (and `beta >= beta_0(h)` where the landing-concentration input L1‑LAND below is invoked), with `n := ceil(D_G / sigma)` hops on the geodesic chain of Step 1,

```text
P_x( X_n in B_h(y) )  >=  c_0^n exp( -2 beta C_1 n h^2 )
                      >=  exp( -2 beta C_1 D_G h - (D_G/sigma) log(1/c_0) ).
```

Here `sigma` is the hop spacing. The task's `n = ceil(D_G/h)` is the spacing `sigma = h`; the airtight spacing (Step 4) is `sigma = h/2`, i.e. `n = ceil(2 D_G/h)` — same functional form, `n` larger by a factor 2 (see Honest Gap 2).

**Corollary.** For every `eta > 0` set (with `D_G = pi`)

```text
h(eta) := min{ r0/8 , eta / (6 C_1 D_G) },   n(eta) := ceil( 2 D_G / h(eta) ),   c(eta) := c_0^{ n(eta) }.
```

Then `n(eta), c(eta)` are `beta`-free, `n(eta) = O(1/eta)`, and for `beta >= beta_0(eta)`, every `x` with `dist(x,G) <= h(eta)` and every `y in G`,

```text
P_x( X_{n(eta)} in B_{h(eta)}(y) )  >=  c(eta) exp( -beta eta ).
```

Tangential displacement to any point of `G` is therefore sub-exponential in `beta` at `O(1)` time. The X3 counterexample is respected: at ONE step the tangential cost `pi^2/4` is real; flatness is bought with the hop count `n(eta)`, never with one step.

---

### Proof

#### Step 0 — conventions and metric coherence

L1's tangential input `d_G(pi(x), y)`, L3's diameter `D_G`, and Standing Data's `|.|` are one metric system: `d_G` is the path metric of `G` read in the max norm, and on the totally geodesic `G` it agrees with the ambient max-norm distance for points within the injectivity radius, so `d_G(a,b) <= D_G = pi` for all `a,b in G`. All balls `B_r(.)` are max-norm balls; `dist(.,G)` is the max-norm distance to `G`.

#### Step 1 — the geodesic net exists with `d_G(y_j, y_{j+1}) <= sigma <= h` (kills X3 defect 3)

`G` is a metric circle of circumference `2 D_G = 2 pi` (its length in the max norm is `2 pi`; Step 0). Hence between `y_0` and any target `y` there is a minimizing arc `gamma: [0, ell] -> G` parametrized by arc length, `gamma(0) = y_0`, `gamma(ell) = y`, `ell = d_G(y_0, y) <= D_G` — this is elementary for a circle (no Hopf–Rinow, no compactness argument). Put

```text
n := ceil( D_G / sigma ),    y_j := gamma( j * ell / n ),   j = 0, 1, ..., n,
```

with `y_n = gamma(ell) = y`. Since `n >= ell/sigma`, consecutive arc gaps satisfy

```text
d_G(y_j, y_{j+1}) <= ell / n <= sigma <= h.
```

The count is `n = ceil(D_G/sigma)`, controlled EXACTLY by the intrinsic diameter `D_G` (a metric quantity from L3), not by an abstract finite-`epsilon`-net existence — this is precisely the linear chain-complexity bound X3 found missing. The same `n` serves every target `y` because `ell <= D_G` for all `y in G` (pad the arc with repeated nodes if `ell < D_G`; the bound only improves).

#### Step 2 — the time-1 skeleton, its kernel, and the Markov composition (explicit)

The SDE `dX = -grad E dt + sqrt(2/beta) dW` is autonomous, hence a time-homogeneous Markov process; by SR-SH1 its time-`t` law has a jointly continuous strictly positive density `p_t(.,.)` w.r.t. volume for `t > 0`. Define the **time-1 skeleton** `X_k := X(k)`, `k in {0,1,2,...}`, a discrete-time time-homogeneous Markov chain with **transition kernel**

```text
K(x, A) := P_1(x, A) = integral_A p_1(x, z) dz    (A Borel).
```

Let `F_k := sigma(X_s : 0 <= s <= k)` (equivalently `sigma(X_0, ..., X_k)` restricted to the skeleton). The **Markov property** in kernel form is: for every Borel `A` and every `k`,

```text
P_x( X_{k+1} in A | F_k ) = K(X_k, A) = P_{X_k}( X_1 in A )    a.s.
```

Define the chain events (conditioning on the CONCENTRATION ball `B_{theta h}` of Step 4, `theta = 1/2`)

```text
E_j := { X_j in B_{theta h}(y_j) },   j = 1, ..., n.
```

By the tower property and the Markov identity, pulling out the last factor,

```text
P_x( E_1 ∩ ... ∩ E_n )
   = E_x[ 1_{E_1 ∩ ... ∩ E_{n-1}} * P_x( X_n in B_{theta h}(y_n) | F_{n-1} ) ]
   = E_x[ 1_{E_1 ∩ ... ∩ E_{n-1}} * K( X_{n-1}, B_{theta h}(y_n) ) ].            (2.1)
```

The single-step lower bound `K(X_{n-1}, B_{theta h}(y_n)) >= q` (a constant, Step 5) is proved to hold pointwise on the event `E_1 ∩ ... ∩ E_{n-1}` in Steps 3–4. Granting it, (2.1) gives `P_x(∩_{j=1}^n E_j) >= q * P_x(∩_{j=1}^{n-1} E_j)`, and descending the same identity to `j = 1` (with `X_0 = x`, `E_0` = the start hypothesis),

```text
P_x( E_1 ∩ ... ∩ E_n ) >= q^n.                                                   (2.2)
```

Finally `E_n = { X_n in B_{theta h}(y_n) } ⊂ { X_n in B_h(y) }` (as `theta h <= h` and `y_n = y`), so `P_x(X_n in B_h(y)) >= P_x(∩_{j=1}^n E_j) >= q^n`.

#### Step 3 — transverse restart: `delta_j := dist(X_j, G) <= theta h <= h <= r0/4` (kills X3 defect 4, transverse component)

On `E_j`, `X_j in B_{theta h}(y_j)` with `y_j in G`, so `dist(X_j, G) <= |X_j - y_j| <= theta h`. Thus the L1 start-hypothesis `d := dist(X_j,G) <= delta` holds with the choice `delta = delta_j := theta h <= h <= r0/8 <= r0/4`. The landing radius from the PREVIOUS hop equals the ball we condition on, so the transverse radius does not grow across hops — the matched-radius closure. This is the airtight core of the defect-4 repair: "land in `B_{theta h}`, restart at transverse distance `<= theta h`."

#### Step 4 — tangential restart: `d_G(pi(X_j), y_{j+1}) <= h` (the radius bookkeeping made explicit; the flagged input)

We need L1's second hypothesis, `d_G(pi(X_j), y_{j+1}) <= h`, at every hop. By the triangle inequality on `G`,

```text
d_G(pi(X_j), y_{j+1}) <= d_G(pi(X_j), y_j) + d_G(y_j, y_{j+1}) <= d_G(pi(X_j), y_j) + sigma.   (4.1)
```

**Projection-slack bound (exact, elementary).** Write `X_j = y_j + v` on the lift, `y_j = t_j (1,...,1)` (up to the fixed offset), tangent direction `u = (1,...,1)`, `|u| = 1`. The nearest point of `G` minimizes `w -> max_i |v_i - w|`, attained at the Chebyshev center `w* = (max_i v_i + min_i v_i)/2`, and `d_G(pi(X_j), y_j) = |w*|`. Hence, with `|v| = |X_j - y_j| <= theta h`,

```text
d_G(pi(X_j), y_j) = |w*| <= (|max_i v_i| + |min_i v_i|)/2 <= |v| <= theta h,          (4.2)
and moreover  |w*| + dist(X_j,G) = |max+min|/2 + (max-min)/2 <= |v| <= theta h.
```

So the tangential-slack constant is `C_geo = 1` (consistent with, and sharper than, L3's quasiconvexity factor `<= 2`). Combining (4.1)–(4.2) with `sigma = theta h`,

```text
d_G(pi(X_j), y_{j+1}) <= theta h + sigma = theta h + theta h = 2 theta h = h    (theta = 1/2).  (4.3)
```

Thus the L1 tangential hypothesis holds at reach `h` with equality at worst, and (with Step 3) `X_j` satisfies BOTH L1 hypotheses relative to `y_{j+1}`.

**Where the concentration is used (honest).** Bound (4.2) needs `X_j in B_{theta h}(y_j)` with `theta = 1/2`, i.e. the landing conditioned in Step 2 must sit in the HALF-reach ball, not merely in the full `B_h(y_j)` that L1's stated conclusion delivers. This is the input

- **L1-LAND (landing concentration).** Under L1's hypotheses at reach `h`, `P_x( X_1 in B_{h/2}(y) ) >= c_0 exp(-beta C_1(delta^2 + h^2))` (same cost as L1).

L1-LAND is delivered by L1's route — the Girsanov control path terminates at `y` and the endpoint fluctuation is `O(1/sqrt(beta))`, so `dist(X_1, G)` and `d_G(pi(X_1), y)` are both `<= h/2` once `beta >= beta_0(h)`; probe P3 (`trans_rms ~ 1/sqrt(beta)`, values `0.82/0.58/0.41` at `beta = 10/20/40`) is exactly this concentration. It is NOT certified by L1's bare containment in `B_h(y)`, which permits slack up to `h` (saturated by a purely tangential displacement `v = (h,...,h)`, where (4.2) is an equality). See Honest Gap 1. Below the `r0/8` cap L1 ties landing radius `= reach`; without L1-LAND the tangential restart cannot leave room for a positive spacing `sigma`, and the composition step (2.1) is not licensed on the full conditioning ball.

#### Step 5 — the uniform per-hop bound and assembly

On `E_1 ∩ ... ∩ E_j`, `X_j` meets both L1 hypotheses w.r.t. `y_{j+1}` with `delta_j <= theta h <= h` (Step 3) and reach `h` (Step 4). L1-LAND gives

```text
K( X_j, B_{theta h}(y_{j+1}) ) >= c_0 exp( -beta C_1 ( delta_j^2 + h^2 ) )
                               >= c_0 exp( -beta C_1 ( h^2 + h^2 ) ) = c_0 exp( -2 beta C_1 h^2 ) =: q,   (5.1)
```

uniformly, since `delta_j^2 <= h^2` only RAISES the probability. The start `X_0 = x` (with `dist(x,G) <= h`, `pi(x) = y_0`, `d_G(pi(x), y_1) = d_G(y_0,y_1) <= sigma <= h`) gives `K(x, B_{theta h}(y_1)) >= q` likewise. Feeding (5.1) into (2.2),

```text
P_x( X_n in B_h(y) ) >= P_x( E_1 ∩ ... ∩ E_n ) >= q^n = c_0^n exp( -2 beta C_1 n h^2 ).             (5.2)
```

For the second display of the Statement, `n = ceil(D_G/sigma) <= D_G/sigma + 1`, so `n h^2 <= (D_G/sigma) h^2 + h^2` and `c_0^n = exp(-n log(1/c_0))`; with `sigma = h` (idealized) `n h^2 <= D_G h + h^2` gives `2 beta C_1 n h^2 <= 2 beta C_1 D_G h + 2 beta C_1 h^2` and the stated `exp(-2 beta C_1 D_G h - (D_G/h) log(1/c_0))` up to the `O(h^2)` term absorbed for `h` small.

#### Step 6 — the corollary (explicit `n(eta)`, `c(eta)`)

Use the airtight spacing `sigma = h/2`, `n = ceil(2 D_G / h)`. Since `h <= r0/8 < pi = D_G`,

```text
2 C_1 n h^2 <= 2 C_1 ( 2 D_G/h + 1 ) h^2 = 2 C_1 ( 2 D_G h + h^2 ) <= 2 C_1 * 3 D_G h = 6 C_1 D_G h.   (6.1)
```

Given `eta > 0`, choose `h(eta) := min{ r0/8, eta / (6 C_1 D_G) }`; then `6 C_1 D_G h(eta) <= eta`, so by (6.1) the `beta`-linear exponent obeys `2 C_1 n h(eta)^2 <= eta`, whence `exp(-2 beta C_1 n h(eta)^2) >= exp(-beta eta)`. With `n(eta) := ceil(2 D_G/h(eta))` and `c(eta) := c_0^{n(eta)}`, (5.2) yields, for all `y in G` and every `x` with `dist(x,G) <= h(eta)`, for `beta >= beta_0(eta)`,

```text
P_x( X_{n(eta)} in B_{h(eta)}(y) ) >= c_0^{n(eta)} exp( -2 beta C_1 n(eta) h(eta)^2 ) >= c(eta) exp( -beta eta ).
```

`n(eta), c(eta)` depend only on `eta` and the fixed constants (`beta`-free). For small `eta`, `h(eta) = eta/(6 C_1 D_G)`, so `n(eta) = ceil(2 D_G/h(eta)) = ceil(12 C_1 D_G^2 / eta) = O(1/eta)` (numerically `n(eta) eta -> ~30` at `C_1 = 1/4`, `D_G = pi`), matching the design's `n(eta) = O(1/eta)`. QED (modulo Honest Gaps 1–2).

---

### Constants table

```text
symbol       meaning                                  value / bound                         source
r0           tube radius                              fixed; hops use h <= r0/8             L1 / SH.2'-LOCAL setting
c_0, C_1     L1 hop prefactor / cost constant         c_0 > 0; C_1 < infinity, -> 1/4       L1 (given); C_1 asymptote from probe P1
beta_0       L1 validity threshold                    finite                                L1 (given)
D_G          intrinsic diameter of G (max norm)       pi  (circle orbit)                    L3 (given, cited)
h            hop scale                                0 < h <= r0/8                         chosen
sigma        hop spacing                              airtight h/2 ; idealized h            Step 4 (h/2) ; task (h)
theta        landing-concentration fraction           1/2                                   L1-LAND (Step 4)
C_geo        tangential-slack constant                1  (<= 2 by L3 quasiconvexity)        Step 4, eq. (4.2), Chebyshev center
n            hop count                                ceil(D_G/sigma): ceil(2D_G/h) airtight; ceil(D_G/h) idealized   Step 1
delta_j      transverse distance at hop j             <= theta h <= h <= r0/4               Step 3
q            uniform per-hop lower bound              c_0 exp(-2 beta C_1 h^2)              Step 5, eq. (5.1)
h(eta)       corollary hop scale                      min{ r0/8, eta/(6 C_1 D_G) }         Step 6
n(eta)       corollary hop count                      ceil( 2 D_G / h(eta) ) = O(1/eta)    Step 6
c(eta)       corollary prefactor                      c_0^{ n(eta) }  (beta-free, > 0)     Step 6
```

All constants are explicit or named-and-bounded; none is left symbolic without a bound.

### Remarks

**R1 — numerics consistency.** Per-hop tangential cost `exp(-beta C_1 h^2)` reproduces the probe's law `P(tangential >= s) ~ exp(-beta s^2/4)` at displacement `s = h` with `C_1 -> 1/4` (probe P1: empirical rates `0.171/0.142/0.123` at `beta = 10/20/40` decreasing toward `s^2/4 = 0.09`; the residual gap is the `1/beta` prefactor, `beta`-uniform limit). The additive `delta_j^2 + h^2` in (5.1) matches P2 (off-`G` starts `delta = 0/0.1/0.2` shift the rate `< 2%`, no cross-term — additive form conservative). The concentration input L1-LAND (Step 4) is exactly P3 (`trans_rms ~ 1/sqrt(beta)`).

**R2 — defect map discharge.** Defect 3 (chain count): Step 1, `n = ceil(D_G/sigma)` from the intrinsic diameter `D_G = pi`, no compactness. Defect 4 (iteration closure): Step 3 closes the transverse radius (matched, non-growing); Step 4 closes the tangential radius conditionally on L1-LAND. Defects 1 (corridor factor) and 2 (endpoint density) are internal to L1/L1' and imported, not re-opened here.

**R3 — interface to SH.3 (SH3-TOL).** The corollary output has the form `c(eta) exp(-beta eta)` with `c(eta)` `beta`-free and `eta > 0` arbitrary — precisely the minorization constant SH.3's rho-average step must tolerate (L4 / typed condition SH3-TOL), replacing the FALSE `beta`-free global constant. Whether SH.3 discharges SH3-TOL is verified at the SH.3 rerun, not here.

**R4 — honest boundary.** Exponential order only; `c_0, C_1, c(eta)` carry no prefactor claim. The bound is a lower bound on a hitting/containment probability of the time-1 skeleton; no exit-time, spectral, or interpretive content is asserted. Skew families are excluded (no detailed balance). The result is conditional on L1-LAND (Honest Gap 1) and on the spacing accounting (Honest Gap 2).
