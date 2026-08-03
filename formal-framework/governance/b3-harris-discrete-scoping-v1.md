# B3 — discrete-time Harris/HLM scoping spike (2026-07-10)

```text
scope canonico = the B3 spike record: the statement set's pre-typed
  outcome grid + the correspondence table to the corpus's CONTINUOUS
  displays + the transposition rationale.
deliverable = lean/HarrisDiscrete.lean (BLUEPRINT / STATEMENTS ONLY /
  every proof sorry - ZERO assurance rungs; NOT a canonical file;
  excluded from verify.py's sweep by design).
contract = attack-roadmap-v1 B3: cap 1/2 session, statements only,
  pre-typed outcomes. The SH.1-discrete spike remains CUT (abstract-
  kernel telescoping certifies nothing about the SDE-generated kernel);
  THIS spike targets the abstract HLM theorem, where the abstraction IS
  the theorem and the corpus pins its hypotheses separately.
```

## Headline

THE STATEMENT SET TYPECHECKS: all 5 statements + 5 local definitions
compile against pinned mathlib (v4.32.0-rc1 / 360da6fa) with EXIT 0 and
only the intended sorry warnings, using ONLY local definitions on top of
mathlib's kernel API. F4 §4.3's supply audit is CONFIRMED at the pin:
`ProbabilityTheory.Kernel` + `IsMarkovKernel` + composition + measure
`bind` + `SignedMeasure.totalVariation` suffice to STATE discrete-time
geometric Harris. No Harris-type theorem exists in mathlib (or, per F4,
any proof assistant) - the statement layer of a first-in-kind result is
now on disk.

## Outcome grid (pre-typed: feasible-now / needs-X / boundary)

```text
STATEMENT                        OUTCOME        NOTE
iterK (n-step kernel iterate)    FEASIBLE-NOW   local recursion over ∘ₖ;
                                                Markov instance inherits
                                                by induction (compiled)
Invariant (mu.bind kappa = mu)   FEASIBLE-NOW   H3's mu P_t = mu at the
                                                skeleton; local def
DriftRow (integrated H3-C)       FEASIBLE-NOW   Bochner integral vs
                                                kernel measure states
                                                directly
MinorizationRow (H3-D verbatim)  FEASIBLE-NOW   `eps • nu <= kappa x` via
                                                the measure order - the
                                                cleanest row of all
wdist (weighted TV)              NEEDS-X        X = the DEFINITIONAL FORK:
                                                stated in INTEGRAL form
                                                (lintegral of W against
                                                |mu - nu|'s TV measure);
                                                the corpus displays the
                                                DUAL SUP form; the duality
                                                is UNPROVED - a named
                                                faithfulness surface
S1 invariant_iterK               FEASIBLE-NOW   proof est. trivial
                                                (bind associativity)
S2 drift_iterate (Part-G G3)     FEASIBLE-NOW   proof est. easy
                                                (induction + integral
                                                monotonicity)
S3 sa_transfer (S/A lemma)       FEASIBLE-NOW   pointwise algebra; proof
                                                est. trivial
S4 harris_geometric (HLM-TV)     NEEDS-X        statement compiles;
                                                the PROOF is the F4
                                                6-18-PM package. X named:
                                                (1) wdist duality, (2) the
                                                Hairer-Mattingly weighted-
                                                contraction lemma, (3)
                                                existence via Krylov-
                                                Bogolyubov or the coupling
                                                construction. hlevel (the
                                                sublevel-inside-C row) is
                                                the transposition of the
                                                b-vs-level smallness -
                                                flag: the exact constant
                                                2b/(1-gamma) is a DESIGN
                                                CHOICE, not a corpus
                                                display
S5 readout_convergence (HLM-R)   FEASIBLE-NOW   stated AGAINST S4's
                                                conclusion shape (honest
                                                layering); the integral
                                                wdist form pays here: the
                                                domination direction needs
                                                NO duality
BOUNDARY (recorded, not attempted):
  - the continuous-time reduction P_t -> t_0-skeleton (F4: "adds work")
  - ANY tie of the abstract kernel to the SDE-generated P_{t_0} (the
    exact ground on which SH.1-discrete was CUT)
  - H3-E formulation choices beyond DE Part E's pinned strong-
    aperiodicity-from-minorization reading
  - the subgeometric lane HLM-A
```

## Correspondence table (Lean -> corpus continuous display)

```text
LEAN                       CORPUS DISPLAY                    TRANSPOSITION
iterK kappa n              P_t semigroup                     t = n t_0 sample
Invariant                  mu P_t = mu (H3)                  at the skeleton
DriftRow gamma b           L W <= -a W + b 1_C (H3-C) via    gamma = e^{-a t_0};
                             the integrated Part-G G3 form     the INTEGRATED
                             E_q[W(q_t)] <= e^{-at} W +        form is the
                             (b/a)(1-e^{-at})                  faithful discrete
                                                               anchor
MinorizationRow            H3-D-SMALL(C, t_0, eps, nu):      VERBATIM (the
                             P_{t_0}(q,.) >= eps nu on C       corpus's own
                                                               sampled-time form)
wdist                      ||.||_W weighted TV               INTEGRAL form;
                                                               dual-sup fork
                                                               RECORDED
S2                         Part G Lemma G Step G3            geometric series
S3                         S/A Lyapunov transfer lemma       coefficient algebra
                             (theorem-package)                 discretized
S4                         HLM Theorem Schema conclusion     M, r existence-only
                             ||P_t(x,.) - mu||_W <=            (corpus: "not
                             M W(x) e^{-lambda t}               computed"); r =
                                                               e^{-lambda t_0}
S5                         HLM-R readout consequence         verbatim shape
```

TRANSPOSITION CAVEAT (binding): the corpus's engine is CONTINUOUS-TIME
ONLY; no discrete display exists in the corpus. This table IS the
faithfulness surface. Blind back-translation lens run per the B0
standing rule; its caveats are appended below.

## What the spike buys

- The F4 Tier-1 bet is DE-RISKED at the statement layer: the full
  discrete Harris package is a proof campaign away (est. 3 named
  needs-X items + two easy statements), with zero missing-library
  blockers at the pin.
- The statement set is an INPUT to any future decision to run the
  6-18-PM package (NOT booked; out of the current horizon - the fleet
  multiplier's applicability to a novel-mathematics build is untested
  and F4's estimates run low 1.5-3x).

## Blind-lens appendix (run per the standing B0 rule; 4 statement-level
## fixes APPLIED before landing - a blueprint's statements are editable)

FIXES APPLIED (lens finding -> hardening, all recompiled EXIT 0):
1. sa_transfer was CONTENTLESS (pointwise addition; eta-hypotheses
   unused; the payoff unstated) -> conclusion now asserts the combined
   coefficient is nonnegative AND < 1 (the transfer lemma's actual
   content: drift survives the kick still-contractive).
2. readout_convergence oversold (assumed-bound manipulation; M < inf /
   r < 1 not required; "convergence" in the name) -> restated as
   readout_domination_transfer, the PRIMITIVE duality-direction lemma
   |mu1(R) - mu2(R)| <= CR * wdist; HLM-R = one-line composition with S4.
3. DriftRow under-specified (Lean's Bochner integral = 0 on
   non-integrable integrands -> the bare inequality can hold vacuously)
   -> Integrable W (kappa x) folded INTO the row (textbook form).
4. hlevel sat NON-STRICTLY at the Hairer-Mattingly critical constant
   2b/(1-gamma) -> parametrized: R with 2b/(1-gamma) < R, C containing
   {W <= R} (the strict margin IS the contraction slack).

RESIDUAL CAVEATS (recorded, statements correct as-is):
- Consistency envelope: W >= 1 + Markov + drift force b >= 1 - gamma;
  the b-small corner of the stated scope is EMPTY (vacuously true
  there), gamma = 0 forces C = univ (pure Doeblin), C = empty is
  inconsistent. The honest non-vacuous domain is b >= 1-gamma.
- MinorizationRow's eps lives in R>=0-inf: eps = inf is unsatisfiable-
  not-strong (with Markov kappa + probability nu, nonempty C forces
  eps <= 1 implicitly).
- wdist clips negative W via ofReal (harmless under W >= 1, present in
  the bare def); all convergence claims are ENNReal inequalities whose
  force rides on the M < top and r < 1 clauses (present in S4).
- Uniqueness in S4 is class-restricted to probability measures
  (sigma-finite invariant measures out of scope - standard).
- iterK's recursion applies kappa FIRST then the n-fold iterate
  (immaterial for powers of one kernel; relevant to proof unfolding).
- No standard-Borel/countably-generated hypotheses anywhere: fine for
  the statement layer; the S4 proof's coupling construction may need
  them (add to the needs-X list if the package is ever run).


## L1 fleet outcome (roadmap v3, 2026-07-19)

```text
PROVED (sorry-free, standard axioms, statements byte-frozen):
  S1 invariant_iterK              - invariance passes to every iterate
  S2 drift_iterate                - the quantitative drift row iterates:
                                    int W d(iterK n x) <= gamma^n W x
                                    + b/(1-gamma) (lintegral induction
                                    with exact geometric partial sums,
                                    then the geom_sum closing bound)
  S3 sa_transfer                  - the S+A two-row transfer with the
                                    composite contraction constant
  S5 readout_domination_transfer  - readout domination passes through
OPEN (the one remaining sorry):
  S4 harris_geometric - MATHLIB-BOUNDARY obstruction, recorded: the
    invariant-probability EXISTENCE wall (no Krylov-Bogolyubov without
    TopologicalSpace/BorelSpace on the bare MeasurableSpace; no
    weighted-TV CompleteSpace on Measure/ProbabilityMeasure for the
    Hairer-Mattingly ContractingWith route; the CompleteLattice lfp/gfp
    route yields only 0 and top). Behind it, the one-step weighted-TV
    contraction lemma is also absent. This is a LIBRARY boundary, not
    a mathematical one; routes forward: (a) add TopologicalSpace
    hypotheses to a VARIANT statement (would break the frozen
    statement - new statement, new row), (b) upstream mathlib work,
    (c) leave S4 as the honest open pin. Option (c) taken for now.
```
