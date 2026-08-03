# X4 FW / detailed-balance invocation sites (prepared 2026-07-11; re-verify + complete at dispatch)

(freshness RE-VERIFIED by the lead 2026-07-19: the invocation sites
list stands; NOTE - X5/S1 sharpened the target: the FW imports lack
a pin to a theorem covering compact Morse-Bott attractors with
beta-dependent drift - hunt EXACTLY that hypothesis match first.)

Task: per site, check the cited theorem's hypothesis set against the
corpus's usage (variant, domain, uniformity, family). Sites (file +
locus + variant):
```text
SR-SH1 -> lane-sh-sharpness-v1.md (SR rows; consumed SH.1 proof, SH.3 Step 3)
SR-SH2 -> lane-sh-sharpness-v1.md (SR rows; consumed SH.5, K = closure(B_delta(G)))
SR-SH2 reuse at higher caps -> lane-ls-label-sharpness-v1.md (~line 426);
  lane-lt-label-tower-v1.md (~line 268); lane-lp-product-saddle-v1.md (~lines 53, 408)
SR-T2 expectation form -> lane-c-exit-time-lower-bound-v1.md (SR-T2 ~line 51; applied Thm T2 ~line 108)
SR-T2 probability form -> lane-c-sector-persistence-readout-theorem-v1.md (~line 32)
SR-M1 limit-drift FW -> lane-m1-state-dependent-exit-robustness-v1.md (~line 94)
SR-S2 non-gradient FW -> lane-s-skew-exit-time-robustness-v1.md (~line 94)
SR-M2 -> lane-m2-persistence-schema-v1.md (~lines 160, 196); SR rows in lane-m3-maintenance-theorem-v1.md
```
Per site record: exact variant invoked (expectation vs probability;
gradient vs limit-drift vs non-gradient; pointwise vs compact-uniform),
domain/compact K, hypothesis rows claimed, family (skew fenced out).
Line numbers are approximate anchors - grep the row labels.
