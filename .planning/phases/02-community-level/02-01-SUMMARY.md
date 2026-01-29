---
phase: 02-community-level
plan: 01
subsystem: ui
tags: [case-studies, project-ideas, career-transitions, grant-writing, community-organizing, advocacy, building-benchmarking, energy-burden, footnotes]

# Dependency graph
requires:
  - phase: 01-individual-level
    plan: 02
    provides: CSS classes for case studies, project ideas, and career transitions sections
provides:
  - 15 case studies across 5 Community AI cards with organization names, metrics, and footnote citations
  - 10 DIY projects with cost estimates and difficulty levels
  - 5 commercial project concepts
  - 25 career transition pathways with free resource links
  - 2 new Community AI cards (Building Energy Benchmarking, Energy Burden Identification)
affects: [03-01, 04-01, 05-01, 05-02]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Community cards use blue border override for case studies (var(--accent-blue) instead of green)"
    - "Career paths emphasize nonprofit/community organizing sector roles and salary context"
    - "Project ideas distinguish DIY nonprofit tools from commercial social enterprise concepts"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "All 15 case studies use verifiable organizations with specific metrics and recent sources (2020-2024)"
  - "Career paths prioritize community organizing, policy advocacy, and nonprofit sector transitions"
  - "DIY projects target community organizations and grassroots groups with free/low-cost tools"
  - "Commercial concepts focus on social enterprise revenue models serving mission-aligned organizations"
  - "Footnote citations use card-specific prefixes: grantwriting-ref, organizing-ref, advocacy-ref, benchmarking-ref, energyburden-ref"
  - "Case studies override default green border to blue for visual consistency with community section theme"

patterns-established:
  - "Community-level content emphasizes organizational capacity building and policy advocacy"
  - "Career transitions highlight paths from general organizing/nonprofit roles to energy-specific roles"
  - "Project concepts serve both direct service (DIY for nonprofits) and ecosystem building (commercial platforms)"

# Metrics
duration: 7min 15sec
completed: 2026-01-29
---

# Phase 02 Plan 01: Community-Level AI Content Summary

**15 case studies with verifiable community impact, 25 career pathways emphasizing nonprofit/organizing roles, and 15 project ideas across 5 Community AI cards—all with footnote citations and community-sector resources**

## Performance

- **Duration:** 7 minutes 15 seconds
- **Started:** 2026-01-29T05:11:07Z
- **Completed:** 2026-01-29T05:18:27Z
- **Tasks:** 3
- **Files modified:** 1

## Accomplishments
- Enhanced 3 existing Community AI cards (Grant Writing, Community Organizing, Data Analysis for Advocacy) with 9 case studies, 6 DIY projects, 3 commercial concepts, and 15 career paths
- Created 2 new Community AI cards (Building Energy Benchmarking, Energy Burden Identification) with complete content structure matching existing cards
- All 15 case studies include organization names (Pennsylvania Energy Development Authority, Clean Energy States Alliance, UK National Lottery Community Fund, SunWork, Sierra Club, Yale researchers, PUSH Buffalo, National Grid, NRDC, Boston BERDO, NYC Local Law 97 adopters, JLL Real Estate, PG&E REACH, Kentucky energy office), specific metrics, and accessible source citations
- 25 career transition pathways emphasize nonprofit sector, community organizing, policy advocacy, and environmental justice roles with free resources
- Community-level section complete with 5 fully-populated AI cards

## Task Commits

Each task was committed atomically:

1. **Task 1: Add content to 3 existing Community AI cards** - `4661bb8` (feat)
2. **Task 2: Create Building Benchmarking and Energy Burden AI cards** - `d2c3b95` (feat)
3. **Task 3: Verification** - No code changes (all verification checks passed)

## Files Created/Modified
- `index.html` - Added 15 case studies with footnotes, 10 DIY + 5 commercial projects, 25 career paths across 5 Community AI cards; created 2 new cards (#ai-benchmarking, #ai-energyburden)

## Decisions Made

1. **Case study selection criteria:** Prioritized community-scale organizations and programs with documented impact on underserved populations, policy advocacy success, or capacity building for resource-constrained groups. Examples: PUSH Buffalo's $65M funding win, National Grid's 12,000 household LIHEAP expansion, Pennsylvania Energy Development Authority's grant efficiency pilot.

2. **Career path focus:** Emphasized transitions FROM general nonprofit/organizing/social service roles TO energy-specific roles, recognizing that community energy sector draws heavily from existing community infrastructure. Included salary context specific to nonprofit sector (typically $45K-65K for advocacy roles).

3. **DIY project targeting:** Designed projects specifically for resource-constrained community organizations—free tools, minimal technical prerequisites, high impact per dollar. Examples: LEAD Tool dashboards, message testing frameworks, compliance trackers using free APIs.

4. **Commercial concept positioning:** Focused on social enterprise models serving mission-aligned organizations (community action agencies, environmental justice groups, housing authorities) rather than for-profit property management. Revenue models reflect nonprofit budgets ($100-500/month range, not $1000s).

5. **Visual distinction:** Overrode case study border color from default green to blue for Community section to match section theme established in page layout.

## Deviations from Plan

None - plan executed exactly as written. All content requirements met without auto-fixes or blocking issues.

## Issues Encountered

None - CSS foundation from Phase 1 worked perfectly. All footnote wiring, career path links, and content formatting rendered as expected.

## User Setup Required

None - no external service configuration required. Content is static HTML/CSS.

## Next Phase Readiness

- Community-level section complete with 5 AI cards, ready for State/Regional-level phase
- Community-scale case study pattern established: focus on capacity building, policy wins, program expansion
- Career transition pattern validated for nonprofit/organizing sector → energy sector pathways
- Project ideas framework proven for dual-track approach (DIY nonprofit + commercial social enterprise)
- Footnote accessibility patterns working correctly across 10 total cards (5 Individual + 5 Community)
- No blockers for subsequent phases—State/Regional, National, and Global phases can follow identical content patterns with appropriate scale shifts

---
*Phase: 02-community-level*
*Completed: 2026-01-29*
