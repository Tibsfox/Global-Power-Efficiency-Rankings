---
phase: 09-national-level
plan: 01
subsystem: content
tags: [learning-paths, ai-prompts, career-pathways, national-labs, federal-energy, integrated-planning]

# Dependency graph
requires:
  - phase: 08-state-regional
    provides: Learning path HTML structure and patterns established
provides:
  - 5 AI Learning Prompt Examples for ai-integratedplanning section
  - 15 project portfolio ideas (5 Beginner, 5 Intermediate, 5 Proficient)
  - 5 distinct National-level prompt patterns (Program Navigation, Cross-Sector Analysis, Infrastructure Lifecycle, Systems Integration, Stakeholder Mapping)
affects: [09-02, 09-03, 09-04, 09-05]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "National-level prompt patterns for federal career transitions"
    - "Team-contribution framing for Proficient projects"
    - "National labs as resources (tools, data, APIs) not just employers"

key-files:
  created: []
  modified:
    - index.html (lines 5717-5890, ai-integratedplanning section)

key-decisions:
  - "Used 5 distinct prompt patterns across 5 pathways (no duplicates)"
  - "Systems Integration for modeling roles, Stakeholder Mapping for data platform roles"
  - "Referenced specific DOE offices (EERE, OE, GDO, ARPA-E) and labs (NREL, PNNL, Argonne)"
  - "BIL/IRA mentioned as funding context (light touch per CONTEXT.md)"

patterns-established:
  - "Program Navigation: Mapping federal programs, offices, hiring pathways"
  - "Cross-Sector Analysis: Understanding energy intersections with transport, buildings, industry"
  - "Infrastructure Lifecycle: Planning, deployment, operations, decommissioning perspectives"
  - "Systems Integration: Understanding GW-scale grid interactions across interconnections"
  - "Stakeholder Mapping: Identifying data consumers, decision-makers, collaboration opportunities"

# Metrics
duration: 7min
completed: 2026-01-29
---

# Phase 9 Plan 1: Integrated Energy System Planning Summary

**5 National-level AI prompts with systems-scale thinking (GW, federal programs, 30-50 year horizons) and 15 team-contribution project ideas for DOE/national lab career changers**

## Performance

- **Duration:** 7 min
- **Started:** 2026-01-29T12:48:39Z
- **Completed:** 2026-01-29T12:55:48Z
- **Tasks:** 2
- **Files modified:** 1

## Accomplishments
- Added 5 AI Learning Prompt Examples to ai-integratedplanning section (5 pathways)
- Created 15 project portfolio ideas with Beginner/Intermediate/Proficient progression
- All Proficient projects show team-contribution framing (individual work feeds into larger federal effort)
- National labs referenced as resources (ReEDS, ATB, GridLAB-D, PermitAI, EIA Open Data API)
- No reuse of Phase 8 patterns - all 5 patterns are NEW for National level

## Task Commits

Each task was committed atomically:

1. **Task 1: Add learning paths to first 3 pathways** - `8a702c6` (feat)
   - Data Analyst -> Federal Energy Policy Analyst: Program Navigation pattern
   - Economist -> National Lab Energy Economist: Cross-Sector Analysis pattern
   - Project Manager -> Federal Utility Program Manager: Infrastructure Lifecycle pattern

2. **Task 2: Add learning paths to remaining 2 pathways** - `de63b13` (feat)
   - Systems Engineer -> Energy Systems Modeler: Systems Integration pattern
   - Software Developer -> Energy Data Platform Engineer: Stakeholder Mapping pattern

## Files Created/Modified
- `index.html` - Added learning path sections (AI prompts + project ideas) to 5 career pathways in ai-integratedplanning section

## Decisions Made
- **Pattern assignment by pathway fit:** Program Navigation for policy roles, Cross-Sector Analysis for economist roles, Infrastructure Lifecycle for program management, Systems Integration for modeling roles, Stakeholder Mapping for data platform roles
- **Systems-scale language throughout:** GW-scale, interconnections (Eastern/Western/ERCOT), 30-50 year planning horizons, multi-state regions (TVA 10M customers/7 states)
- **Specific office/lab naming:** EERE, OE, GDO, ARPA-E (not generic "DOE"); NREL, PNNL, Argonne (not generic "national labs")
- **National labs as resources:** Referenced tools/data career changers can use (ReEDS, ATB, GridLAB-D, PermitAI, EIA Open Data API, NREL Developer Network)

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

None.

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness
- ai-integratedplanning section complete with 5 learning paths
- Ready for 09-02 (ai-benchmarking-national learning paths)
- Prompt patterns established can be referenced by subsequent plans

---
*Phase: 09-national-level*
*Completed: 2026-01-29*
