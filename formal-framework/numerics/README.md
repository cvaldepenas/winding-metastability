# numerics/ — B2 bounded numerics harness (falsification + SDE probes)

```text
status = BUILT 2026-07-10 (roadmap B2, standing Lane-B go; ratified
  attack-roadmap-v1). Two bounded modules + WC member checks.
type = HEURISTIC / SUPPORTING EVIDENCE ONLY. No assurance rung, ever.
  A numeric STANDS is bounded-search evidence; a FINDING is a numeric
  event to re-verify by hand and route through the standing wave cadence.
  Machine-sealed displays are NEVER re-checked as targets (they anchor
  qcore.self_test as display-to-code correspondence checks only).
scope firewall = the false-inference firewall of lane-lp applies verbatim:
  numeric checks != proof; moderate-beta slopes != beta->inf rates
  (extrapolation caveat named in every SDE result); anything != physics.
```

## Modules

- `qcore.py` — shared geometry/energy core. Every function names the
  display it implements (J, bonds, winding, m_k, a_k, S_k, phi_k, grad_J,
  ground/saddle configs). `self_test()` cross-checks the CODE against
  machine-sealed anchors (C1-SUB endpoints, ladder upper rung, saddle
  identity, P0.1 criticality of ground/saddle, T1.1(i) integrality) —
  that validates the implementation, not the theorems.
- `falsify.py` — B2a optimization counterexample search, PRIORITIZED
  queue (v19/v20 load-bearing first: PROD-SHELL sweep incl. the OPEN
  k>=2 typed row, c_H ledger, transversal-Hessian constants calibration,
  LP.1 band/floor feedstock, W* bounds + slice identity, G_{k,j} trap
  census; then unsealed v16-v18 rows: L_k rungs, RANGE, ridge r-vacuity,
  LS.2c valley criticals, LP.1' shell floor).
- `sde.py` — B2b single-chain Euler-Maruyama harness (T^N): exit-time
  beta-slopes vs the ladder gap, pinning occupancy, J-excursion census.
- `sde_product.py` — B2b coupled-pair probe (T^N x T^N, E_eps = J_kappa +
  J_lambda + eps W*): THE ROW PROD-EXCURSION probe (expected outside-time
  per renewal round vs exp(-beta c_H/2); doorway/gate census; G_{k,1}
  trap watch) + the exact flat-mode forgetting rate N/beta (two-sided).
- `wc.py` — B2c WC-class fresh-member falsification (difference subclass
  W_v; axiom checklist (A1)-(A6); enumerated-conclusion checks C1-C5, C7;
  the (A2)-shield heuristic probe).
- `results/` — JSON run records. Determinism via FIXED IN-CODE seeds
  (X7 correction: falsify/WC records do not embed seeds and product
  records embed them only partially - the code constants are the seed
  record).

## Beta-regime honesty (SDE)

At N = 10 the band/doorway structure is visible only once the thermal
energy (2N-2)/(2 beta) sits below the relevant gap: the coupled excursion
probe runs at beta ~ 10-16, the single-chain exit slopes at beta ~ 6-10.
Everything is MODERATE-beta supporting evidence; the corpus rows are
beta -> infinity statements. Slopes reported with the caveat attached.

## To reproduce

python 3.10+ with numpy + scipy. From this directory:
`python qcore.py` (self-test), `python falsify.py`, `python wc.py`,
`python sde_product.py`, `python sde.py` (add `--quick` for smoke runs).
All seeds deterministic; JSON lands in `results/`.

## Findings protocol

FINDING verdicts route through the standing wave cadence (attack-roadmap
B2): re-verify by hand, classify (code bug / reference-value drift /
display break), then land the correction in the owning artifact. The
2026-07-10 build run's findings and their classifications live in
`results/` + the B2 results note (`../governance/b2-numerics-results-v1.md`).
