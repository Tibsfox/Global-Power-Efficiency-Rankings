---
phase: 06-individual-level
plan: 01
subsystem: ui
tags: [html, career-pathways, ai-prompts, learning-paths, energy-monitoring]

# Dependency graph
requires:
  - phase: 05-global
    provides: Career pathway structure with Background, Skills, Salary, Resources, Timeline
provides:
  - Learning path content for 5 AI Energy Monitoring career pathways
  - AI prompt examples with 5 different patterns (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated)
  - Project portfolio ideas with Beginner/Intermediate/Proficient difficulty levels
affects: [06-02, 06-03, 06-04, 06-05, future-individual-level-phases]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Prompt pattern rotation across adjacent pathways"
    - "Project difficulty levels with time estimates"
    - "GSD workflow reference in selected pathways"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "Used 5 distinct prompt patterns to avoid template fatigue"
  - "GSD reference placed only in Recent Graduate pathway (pathway 5)"
  - "Project time estimates: Beginner 6-15h, Intermediate 20-40h, Proficient 40-80h"

patterns-established:
  - "Prompt pattern rotation: Persona -> Socratic -> Project-Based -> Competency Gap -> GSD-Integrated"
  - "Learning path section placement: after Timeline paragraph in each career-path div"
  - "Project portfolio structure: 3 levels with deliverables and time estimates"

# Metrics
duration: 2min
completed: 2026-01-29
---

# Phase 6 Plan 01: AI Energy Monitoring Learning Paths Summary

**Added AI learning prompts (5 patterns) and project portfolio ideas (15 projects) to 5 AI Energy Monitoring career pathways enabling career changers to generate personalized study plans and build job-ready portfolios**

## Performance

- **Duration:** 2 min
- **Started:** 2026-01-29T09:40:47Z
- **Completed:** 2026-01-29T09:43:08Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments
- Added AI Learning Prompt Examples to all 5 AI Energy Monitoring career pathways
- Implemented prompt pattern rotation (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated)
- Added 15 project portfolio ideas (3 per pathway) with difficulty levels and time estimates
- Included GSD workflow reference with /gsd:new-project command in Recent Graduate pathway

## Task Commits

Each task was committed atomically:

1. **Task 1: Add learning paths to AI Energy Monitoring section (5 pathways)** - `15c42f0` (feat)

## Files Created/Modified
- `index.html` - Added learning path sections (AI prompts + project ideas) to 5 career pathways in AI Energy Monitoring section

## Decisions Made
- **Prompt pattern selection:** Used 5 distinct patterns to maximize variety and prevent template fatigue
- **GSD placement:** Referenced GSD workflow only in pathway 5 (Recent Graduate) per plan guidance
- **Project emphasis:** Prioritized hands-on projects (building/making) over analysis-only tasks
- **Time estimates:** Used conservative ranges aligned with research recommendations

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

None

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness
- Pattern established for learning path content structure
- Prompt rotation framework ready for remaining 20 pathways (4 more cards x 5 pathways each)
- HTML styling template validated and reusable

---
*Phase: 06-individual-level*
*Completed: 2026-01-29*
