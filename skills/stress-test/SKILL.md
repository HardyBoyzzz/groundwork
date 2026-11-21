---
name: stress-test
description: Audit an idea or spec for blind spots, failure modes, untestable claims, and missing edge cases before writing code. Supports Idea Stress-Testing (pre-mortems, value traps, retention risks) and Spec Auditing (testability, caching contracts, failure recovery).
---

# Stress-Test (Advanced)

Audit an idea or a spec before it drives issues or code. Read-only with respect to the codebase: report findings, challenge weak assumptions, and harden the concept.

## Step 1: Detect Mode

Pick the audit mode based on the target artifact:
- **Mode A: Idea Stress-Test** — Target is an `idea_<name>.md`, task brief, or conceptual proposal.
- **Mode B: Spec Audit** — Target is a spec-class artifact (`blueprint_project.md`, `blueprint_<name>.md`, `prd_<name>.md`).

---

## Mode A: Idea Stress-Test Checks

Run these 6 strategic stress-test lenses against the idea:

1. **The Pre-Mortem (6 Months Later):** Fast-forward 6 months. The product launched, but users churned or the creator abandoned it. Identify the top 3–4 specific failure modes that killed it.
2. **Value Trap & False Precision Risk:** Challenge mechanical scoring, naive algorithms, or oversimplified rules that could produce misleading outcomes or destroy user credibility.
3. **Retention & Stagnation Trap:** Probe the repeat-use loop. Does the screen look identical on Day 3 as Day 1? If data changes slowly (e.g. megacaps or quarterly filings), why would anyone return daily?
4. **External Dependency Brittleness:** Scrutinize upstream providers, free API limits, scraping fragility, and platform risk. What breaks when a provider rate-limits or changes its headers?
5. **The "Why Not Just..." Substitute Check:** Challenge differentiation against existing substitutes (free tools, spreadsheets, default platforms). Why will users actually switch and stay?
6. **Hardening Recommendations:** Produce concrete, tactical solutions for each identified trap (e.g., sector-relative benchmarks, dynamic momentum toggles, snapshot fallbacks, disclaimer framing).

---

## Mode B: Spec Audit Checks

Audit engineering and product specs against these 7 execution checks (cite spec sections and relevant code):

1. **Testability:** Every success criterion has a concrete verification method that an agent or human can execute. Flag vague adjectives ("fast", "seamless", "robust") without measurable thresholds.
2. **Completeness:** Verification, NFRs, assumptions, milestones, and data contracts are explicitly present. Missing sections are findings, not blanks to fill silently.
3. **Data Contract & Caching Architecture:** Does the spec specify data freshness tolerances, caching layers (ISR, stale-while-revalidate, edge cache), and rate-limit defenses?
4. **Failure Modes & Fallback Boundaries:** Does the spec define graceful degradation for upstream API throttles, timeouts, missing/N/A metrics, and invalid user inputs without crashing?
5. **Sealed Rabbit Holes:** Are deceptively complex traps explicitly identified and walled off from v1?
6. **Trade-Off Fidelity:** Does the architecture strictly honor the user's priority order (e.g., Zero Cost > Time to Market > Freshness > Polish)?
7. **Consistency & Code Grounding:** Verify claims against actual files, schemas, and routes. Mark each claim **confirmed** (with file:symbol) or **contradicted** (with evidence).

---

## Report

Write `spec_review_<name>.md` (for specs) or `idea_review_<name>.md` (for ideas) per [shared/planning-config.md](../shared/planning-config.md):

- **Verdict up front:** 
  - For Ideas: Viability Score (1–10) and primary strategic risk.
  - For Specs: `Build-ready`, `Build-ready after listed fixes`, or `Needs another pass`.
- **Findings:** Grouped by **Blocker** / **Should fix** / **Nit**, citing exact sections and suggested fixes.
- **Hardening / Verification Action Plan:** Clear next steps to apply approved fixes.

## Next Step

- **Idea Stress-Test complete** &rarr; Fold hardening recommendations into `idea_<name>.md` or proceed to `blueprint`.
- **Spec Audit complete (Build-ready)** &rarr; Recommend `backlog` (if splitting) or build directly.
- **Spec Audit needs another pass** &rarr; Return to `blueprint` with the findings list as input.
