---
phase: 08-state-regional-level
plan: 03
subsystem: content
tags: [learning-paths, ai-prompts, m&v, measurement-verification, ipmvp, caltrack]

# Dependency graph
requires:
  - phase: 07-community-level
    provides: Learning path content structure and prompt patterns
  - phase: 08-state-regional-level/08-01
    provides: First 5 State/Regional learning paths and NEW pattern definitions
  - phase: 08-state-regional-level/08-02
    provides: Second 5 State/Regional learning paths with pattern rotation
provides:
  - 5 AI Learning Prompt Examples for M&V career pathways
  - 15 project portfolio ideas (Beginner/Intermediate/Proficient)
  - M&V protocol references (IPMVP, CalTRACK, UMP, ASHRAE Guideline 14)
  - Certification cost assistance context (BPI, CEM)
affects: [08-state-regional-level/08-04, 08-state-regional-level/08-05]

# Tech tracking
tech-stack:
  added: []
  patterns: [5 NEW State/Regional prompt patterns applied to M&V context]

key-files:
  created: []
  modified: [index.html]

key-decisions:
  - "Used Technical Skill Gap Assessment pattern for Building Performance Analyst pathway"
  - "Used Stakeholder Coordination Scenario pattern for Data Scientist pathway"
  - "Used Certification Pathway Planning pattern for O&G Engineer pathway"
  - "Used Regulatory Document Analysis pattern for Academic Researcher pathway"
  - "Used Career Milestone Roadmap pattern for Sustainability Manager pathway"

patterns-established:
  - "M&V terminology definitions: baseline period, reporting period, adjusted savings, NTG ratio"
  - "Certification cost assistance notes when BPI/CEM mentioned"
  - "Real protocol references: IPMVP, CalTRACK, UMP, ASHRAE Guideline 14"

# Metrics
duration: 12min
completed: 2026-01-29
---

# Phase 08 Plan 03: AI Measurement & Verification Learning Paths Summary

**5 M&V career pathways with AI prompts using 5 distinct NEW State/Regional patterns, 15 project ideas, and real M&V protocol references (IPMVP, CalTRACK, UMP)**

## Performance

- **Duration:** 12 min
- **Started:** 2026-01-29T11:52:01Z
- **Completed:** 2026-01-29T12:04:08Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments

- Added AI Learning Prompt Examples to all 5 AI Measurement & Verification career pathways
- Used 5 distinct NEW State/Regional patterns (no adjacent duplicates)
- Included follow-up prompts in 100% of pathways
- Added 15 project portfolio ideas (3 per pathway at Beginner/Intermediate/Proficient levels)
- Referenced real M&V protocols: IPMVP, CalTRACK, Uniform Methods Project, ASHRAE Guideline 14
- Integrated BPI/CEM certification context with cost assistance pathways

## Task Commits

Each task was committed atomically:

1. **Task 1: Add learning paths to AI Measurement & Verification section** - `e91d258` (feat)

## Files Created/Modified

- `index.html` - Added learning path sections to 5 M&V career pathways (lines ~4640-4780)

## Decisions Made

1. **Pattern assignment for M&V pathways:**
   - Building Performance Analyst: Technical Skill Gap Assessment (assessing M&V-specific gaps)
   - Data Scientist: Stakeholder Coordination Scenario (presenting M&V results to diverse stakeholders)
   - O&G Engineer: Certification Pathway Planning (BPI/CEM with cost assistance)
   - Academic Researcher: Regulatory Document Analysis (PUC evaluation guidelines)
   - Sustainability Manager: Career Milestone Roadmap (utility program management progression)

2. **M&V terminology definitions included:**
   - IPMVP (International Performance Measurement & Verification Protocol)
   - Baseline period (pre-retrofit energy use)
   - Reporting period (post-retrofit energy use)
   - NTG (net-to-gross) ratio
   - TRC (Total Resource Cost) test
   - PAC (Program Administrator Cost) test

3. **Certification cost assistance context:**
   - AEE scholarships for CEM
   - State workforce grants for displaced O&G workers
   - Employer reimbursement programs
   - BPI workforce development partnerships through DOE weatherization

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

- File synchronization issues during editing (multiple retries needed for Edit operations)
- Resolved by using smaller, more targeted edit blocks

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness

- AI Measurement & Verification section complete with 5 learning paths
- Ready for 08-04 (Grid Forecasting pathways) and 08-05 (Permitting pathways)
- Pattern rotation continues: next card should start from different pattern position
- Total State/Regional learning paths after this plan: 15 of 25 complete

---
*Phase: 08-state-regional-level*
*Completed: 2026-01-29*
