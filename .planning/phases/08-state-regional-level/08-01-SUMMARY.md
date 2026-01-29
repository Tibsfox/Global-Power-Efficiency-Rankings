---
phase: 08
plan: 01
subsystem: learning-paths
tags: [ai-prompts, career-pathways, state-regional, regulatory, certifications]

dependency-graph:
  requires: [phase-07-community-level]
  provides: [ai-policymodeling-learning-paths]
  affects: [phase-08-plan-02, phase-08-plan-03, phase-08-plan-04, phase-08-plan-05]

tech-stack:
  added: []
  patterns: [regulatory-document-analysis, career-milestone-roadmap, technical-skill-gap, stakeholder-coordination, certification-pathway-planning]

key-files:
  created: []
  modified: [index.html]

decisions:
  - id: prompt-patterns-new
    choice: 5 NEW State/Regional patterns (no Phase 6-7 reuse)
    reason: User requirement for distinct professional voice at state level
  - id: regulatory-references
    choice: Real programs (RPS, EERS, Title 24, PUC dockets)
    reason: User preference for concrete examples over hypothetical scenarios
  - id: certification-cost-context
    choice: Include financial assistance pathways (AEE scholarships, workforce grants)
    reason: User requirement to help career changers navigate credential costs

metrics:
  duration: 7 minutes
  completed: 2026-01-29
---

# Phase 8 Plan 1: AI Policy Modeling Learning Paths Summary

**One-liner:** 5 State/Regional career pathways enriched with NEW AI prompt patterns (regulatory analysis, career roadmaps, skill gaps, stakeholder coordination, certification planning) plus 15 project ideas with professional/authoritative framing.

## What Was Done

Added learning path sections to all 5 career pathways in the AI-Powered Policy Impact Modeling card:

### Pathways Updated

| Pathway | Pattern Used | Prompt Focus | Project Levels |
|---------|--------------|--------------|----------------|
| Policy Analyst -> State Energy Policy Modeler | Regulatory Document Analysis | RPS amendment analysis framework | 3 (15-80h) |
| Data Analyst -> State Regulatory Analyst (PUC) | Career Milestone Roadmap | 5-year PUC career progression | 3 (15-80h) |
| O&G Reservoir Engineer -> Renewable Energy Analyst | Technical Skill Gap Assessment | O&G to renewable transition mapping | 3 (15-80h) |
| Management Consultant -> Energy Consulting | Stakeholder Coordination Scenario | Utility cost recovery docket strategy | 3 (15-80h) |
| Legislative Staffer -> Clean Energy Policy Advisor | Certification Pathway Planning | CEM credential with cost assistance | 3 (15-80h) |

### Key Content Elements

1. **AI Prompts (5 total):**
   - All use NEW State/Regional patterns (no Phase 6-7 reuse)
   - Professional/authoritative voice appropriate for regulatory work
   - Real regulatory references (RPS, EERS, Title 24, PUC dockets, M&V)
   - [VARIABLES] for user customization
   - Follow-up prompts in all 5 pathways (100%)

2. **Terminology Definitions:**
   - REC (Renewable Energy Credit)
   - Docket (regulatory case file)
   - Intervenor (stakeholder participant in regulatory proceeding)
   - Rate case (utility rate change proceeding)
   - TRC test (Total Resource Cost test)
   - Free-ridership (customers who would act without incentives)
   - Capacity factor (actual vs nameplate output)
   - M&V (Measurement & Verification)

3. **Project Portfolio Ideas (15 total):**
   - Beginner: 5 projects (15-25 hours each)
   - Intermediate: 5 projects (30-50 hours each)
   - Proficient: 5 projects (50-80 hours each)

4. **Certification Cost Assistance:**
   - Pathway 5 includes detailed CEM cost context ($500 exam)
   - Financial assistance pathways: AEE chapter scholarships, state workforce grants, employer reimbursement, DOE State Energy Program funds
   - AI-assisted research for funding opportunities

## Deviations from Plan

None - plan executed exactly as written.

## Verification Results

| Check | Result |
|-------|--------|
| AI Learning Prompt Example count in ai-policymodeling | 5 (correct) |
| Follow-up prompts in all pathways | 5/5 (100%) |
| Beginner project ideas | 5 |
| Intermediate project ideas | 5 |
| Proficient project ideas | 5 |
| Real regulatory references present | Yes (RPS, EERS, Title 24, PUC, M&V) |
| Adjacent pathways have distinct patterns | Yes (all 5 unique) |
| Certification cost context included | Yes (Pathway 5) |

## Commits

| Hash | Type | Description |
|------|------|-------------|
| bbba398 | feat | Add learning paths to AI Policy Modeling pathways |

## Files Changed

- `index.html`: +38 lines (learning path sections for 5 pathways)

## Next Phase Readiness

Plan 08-02 can proceed with the same structure for the next State/Regional card (AI-Powered Program Targeting & Optimization). The 5 NEW prompt patterns established here should be rotated for the remaining cards to ensure variety.

**Pattern rotation for remaining cards:**
- Card 2: Rotate patterns (e.g., 2,3,4,5,1)
- Card 3: Rotate patterns (e.g., 3,4,5,1,2)
- Card 4: Rotate patterns (e.g., 4,5,1,2,3)
- Card 5: Rotate patterns (e.g., 5,1,2,3,4)

---

*Completed: 2026-01-29T11:59Z*
*Duration: 7 minutes*
