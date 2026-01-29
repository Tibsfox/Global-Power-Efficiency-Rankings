---
phase: 06-individual-level
plan: 03
subsystem: ui
tags: [html, career-pathways, ai-prompts, learning-paths, carbon-tracking, ghg-protocol, sustainability]

# Dependency graph
requires:
  - phase: 06-02
    provides: Learning path content pattern and prompt rotation framework
provides:
  - Learning path content for 5 AI Carbon Tracking career pathways
  - AI prompt examples with 5 distinct patterns (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated)
  - Project portfolio ideas with Beginner/Intermediate/Proficient difficulty levels
affects: [06-04, 06-05, future-individual-level-phases]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Prompt pattern rotation continues across cards"
    - "Carbon accounting/sustainability emphasis in project suggestions"
    - "GSD reference in Financial Analyst pathway only"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "Applied prompt rotation starting fresh cycle: Persona -> Socratic -> Project-Based -> Competency Gap -> GSD-Integrated"
  - "GSD reference placed in ESG Investment Analyst pathway (pathway 5) following pattern from Plan 01 and 02"
  - "Project emphasis on carbon accounting artifacts (Scope 3 inventories, sustainability reports, ESG analysis)"

patterns-established:
  - "Carbon tracking projects emphasize GHG Protocol, CDP reporting, and ESG frameworks"
  - "Proficient-level projects include professional deliverables (consulting reports, investment research)"
  - "Prompt contexts leverage existing professional backgrounds (accounting, science, marketing, supply chain, finance)"

# Metrics
duration: 2min
completed: 2026-01-29
---

# Phase 6 Plan 03: AI Carbon Tracking Learning Paths Summary

**Added AI learning prompts (5 patterns) and project portfolio ideas (15 projects) to 5 AI Carbon Tracking career pathways enabling career changers in carbon accounting, sustainability data, and ESG investment roles to build job-ready portfolios**

## Performance

- **Duration:** 2 min
- **Started:** 2026-01-29T09:49:00Z
- **Completed:** 2026-01-29T09:51:26Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments
- Added AI Learning Prompt Examples to all 5 AI Carbon Tracking career pathways
- Implemented prompt pattern rotation (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated)
- Added 15 project portfolio ideas (3 per pathway) with difficulty levels and time estimates
- Included GSD workflow reference with /gsd:new-project command in ESG Investment Analyst pathway

## Task Commits

Each task was committed atomically:

1. **Task 1: Add learning paths to AI Carbon Tracking section (5 pathways)** - `ccbe33b` (feat)

## Files Created/Modified
- `index.html` - Added learning path sections (AI prompts + project ideas) to 5 career pathways in AI Carbon Tracking section (id="ai-carbon")

## Career Pathways Enhanced

| Pathway | Prompt Pattern | Project Focus |
|---------|---------------|---------------|
| Accountant -> Carbon Accounting Specialist | Persona-Based | GHG Protocol, Scope 1/2/3 calculations |
| Environmental Science Graduate -> Sustainability Data Analyst | Socratic | CDP data analysis, sustainability metrics tracking |
| Marketing Manager -> Corporate Sustainability Communications Lead | Project-Based | Greenwashing detection, ESG communication strategy |
| Supply Chain Manager -> Scope 3 Emissions Analyst | Competency Gap | Supplier engagement, Scope 3 inventory methodology |
| Financial Analyst -> ESG Investment Analyst | GSD-Integrated | Climate risk assessment, ESG investment research |

## Decisions Made
- **Prompt pattern rotation:** Restarted fresh cycle matching Plan 02's ending pattern (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated)
- **GSD placement:** Referenced GSD workflow only in pathway 5 (Financial Analyst -> ESG Investment Analyst) per plan guidance
- **Project emphasis:** Prioritized hands-on carbon accounting artifacts (spreadsheets, reports, models) over theory
- **Professional deliverables:** Proficient-level projects designed as interview-ready portfolio pieces

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

None

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness
- Pattern established for carbon tracking learning path content
- Prompt rotation framework continues for remaining 10 pathways (2 more cards x 5 pathways each)
- HTML styling template validated and reusable

---
*Phase: 06-individual-level*
*Completed: 2026-01-29*
