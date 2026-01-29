---
phase: 01-individual-level
plan: 02
subsystem: ui
tags: [case-studies, project-ideas, career-transitions, energy-monitoring, smart-home, carbon-tracking, ev-charging, hvac-maintenance, footnotes]

# Dependency graph
requires:
  - phase: 01-individual-level
    plan: 01
    provides: CSS classes for case studies, project ideas, and career transitions sections
provides:
  - 15 case studies across 5 AI cards with organization names, metrics, and footnote citations
  - 10 DIY projects with cost estimates and difficulty levels
  - 5 commercial project concepts
  - 25 career transition pathways with free resource links
  - 2 new AI cards (EV Smart Charging, HVAC Predictive Maintenance)
affects: [02-01, 03-01, 04-01, 05-01, 05-02]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Case studies follow org name → action → metric → citation format"
    - "Career paths include background, skills to add, salary range, 2-3 resources, timeline"
    - "DIY projects specify cost estimate and difficulty level"
    - "Footnotes use role='doc-noteref' and role='doc-footnote' for accessibility"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "All 15 case studies use verifiable organizations with specific metrics and recent sources (2020-2024)"
  - "Career paths prioritize free resources (free audit courses, GitHub, YouTube, .gov sites)"
  - "DIY projects range from beginner to advanced with realistic cost estimates"
  - "Commercial concepts target specific markets with revenue models"
  - "Footnote citations use card-specific prefixes: monitoring-ref, smarthome-ref, carbon-ref, evcharging-ref, hvac-ref"

patterns-established:
  - "Case study structure: Organization (bold) + action description + measurable outcome (bold) + footnote superscript"
  - "Career path structure: From X → To Y header, background, skills, salary (with region + caveats), 2-3 resources, timeline"
  - "Project structure: Name (bold) + description + cost estimate + difficulty + prerequisites"
  - "Footnote pairing: inline <sup><a href='#X-refN'>[N]</a></sup> matches <p id='X-refN'>[N] <a href='URL'>Source</a></p>"

# Metrics
duration: 8min 47sec
completed: 2026-01-29
---

# Phase 01 Plan 02: Individual-Level AI Content Summary

**15 case studies with verifiable metrics, 25 career pathways, and 15 project ideas across 5 AI energy efficiency cards—all with footnote citations and free learning resources**

## Performance

- **Duration:** 8 minutes 47 seconds
- **Started:** 2026-01-29T04:28:23Z
- **Completed:** 2026-01-29T04:37:10Z
- **Tasks:** 3
- **Files modified:** 1

## Accomplishments
- Implemented content for 3 existing AI cards (Energy Monitoring, Smart Home, Carbon Tracking) with 9 case studies, 6 DIY projects, 3 commercial concepts, and 15 career paths
- Created 2 new AI cards (EV Smart Charging, HVAC Predictive Maintenance) with complete content structure matching existing cards
- All 15 case studies include organization names (SMUD, AES, ComEd, Google Nest, OhmConnect, UK Catapult, Joro, WattTime, SCE, Tesla, UK Power Networks, Google DeepMind, Siemens, Carrier), specific metrics, and accessible source citations
- 25 career transition pathways emphasize free resources and specific skill gaps, covering diverse backgrounds (technicians, developers, analysts, managers, recent graduates)
- Individual-level section complete with 5 fully-populated AI cards

## Task Commits

Each task was committed atomically:

1. **Task 1: Add content to existing 3 AI cards** - `c97a77a` (feat)
2. **Task 2: Create EV Smart Charging card with full content** - `d2e480f` (feat)
3. **Task 3: Create HVAC Predictive Maintenance card with full content** - `6eee475` (feat)

## Files Created/Modified
- `index.html` - Added 15 case studies with footnotes, 10 DIY + 5 commercial projects, 25 career paths across 5 AI cards; created 2 new cards (#ai-ev-charging, #ai-hvac)

## Decisions Made

1. **Case study selection criteria:** Chose organizations with publicly accessible data, recent implementations (2020-2024), and quantified results. Avoided generic "studies show X%" claims without attribution.

2. **Career path salary inclusion:** Included salary ranges only when reliable data exists (BLS, Glassdoor, industry reports), always with regional qualifiers (U.S.) and "varies by location" caveats. Omitted salary when data was speculative.

3. **Resource prioritization:** Emphasized free resources (Coursera free audit, GitHub repos, YouTube channels, .gov sites, documentation) over paid courses. Included paid options (CEDIA, BPI certification) only when they're industry-standard credentials.

4. **DIY project difficulty calibration:** Rated projects based on prerequisite knowledge, not just "can it be done." Arduino projects = beginner if following tutorials; Python API integration = intermediate; Home Assistant YAML = intermediate; Full stack development = advanced.

5. **Commercial concept specificity:** Each commercial idea includes target market, revenue model, and competitive positioning rather than vague "build a platform" descriptions.

## Deviations from Plan

None - plan executed exactly as written. All content requirements met without auto-fixes or blocking issues.

## Issues Encountered

None - CSS foundation from plan 01-01 worked perfectly. All footnote wiring, career path links, and content formatting rendered as expected on first attempt.

## User Setup Required

None - no external service configuration required. Content is static HTML/CSS.

## Next Phase Readiness

- Individual-level section complete with 5 AI cards, ready for Community-level phase
- Case study pattern (org + action + metric + citation) established and reusable for phases 2-5
- Career transition format (background → skills → resources → timeline) validated with 25 pathways
- Project ideas format (DIY/commercial separation) proven across 15 examples
- Footnote accessibility patterns (role="doc-noteref", role="doc-footnote") working correctly
- No blockers for subsequent phases—Community, State/Regional, National, and Global phases can follow identical content patterns

---
*Phase: 01-individual-level*
*Completed: 2026-01-29*
