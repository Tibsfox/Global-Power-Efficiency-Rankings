---
phase: 07-community-level
plan: 02
subsystem: content-creation
tags: [ai-prompts, learning-paths, community-organizing, campaign-management, behavioral-science]

# Dependency graph
requires:
  - phase: 07-01
    provides: Learning path HTML structure and first Community card implementation
provides:
  - 5 AI Community Organizing pathway learning sections with campaign/outreach focus
  - Multi-Step Workflow, Project-Based, Stakeholder Scenario, Facilitator Voice, and Competency Gap patterns
  - 15 project portfolio ideas emphasizing stakeholder engagement
  - Community solar and equity framing (LMI access, renters, low-income households)
affects: [07-03, 07-04, 07-05, content-variety-tracking, prompt-pattern-library]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Stakeholder Scenario prompts for community advisory roles"
    - "Facilitator Voice for coordination roles vs. Advisor Voice for analytical"
    - "Multi-step workflow prompts demonstrating AI conversation iteration"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "Used distinct prompt patterns for each pathway to avoid repetition (Multi-Step, Project-Based, Stakeholder, Facilitator, Competency Gap)"
  - "Emphasized community solar equity provisions (LMI access, subscriber models) in 4/5 pathways"
  - "Included follow-up prompts in all 5 pathways to demonstrate iterative AI use"
  - "Scaled project deliverables: Beginner=presentation artifacts, Proficient=implementations with community partnerships"

patterns-established:
  - "Stakeholder Scenario pattern: Community member asks question, user drafts response demonstrating emerging knowledge"
  - "Facilitator Voice pattern: 'As someone coordinating...' for organizing roles vs. 'Help me advise...' for technical"
  - "Community partnership language: SEIA, local solar nonprofits, AESP, climate advocacy networks"

# Metrics
duration: 18min
completed: 2026-01-29
---

# Phase 7 Plan 02: AI Community Organizing Learning Paths Summary

**5 campaign/outreach pathways with diverse AI prompt patterns, equity framing, and coalition-building project ideas**

## Performance

- **Duration:** 18 min
- **Started:** 2026-01-29T10:42:21Z
- **Completed:** 2026-01-29T11:00:00Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments
- Added AI learning prompts with follow-ups to all 5 AI Community Organizing pathways
- Implemented 5 distinct prompt patterns (Multi-Step Workflow, Project-Based, Stakeholder Scenario, Facilitator Voice, Competency Gap)
- Created 15 project portfolio ideas emphasizing community engagement and stakeholder coordination
- Integrated equity framing (community solar for LMI households, renters, low-income access) in 80% of pathways
- Included professional networking references (SEIA, AESP, climate advocacy coalitions)

## Task Commits

1. **Task 1: Add learning paths to AI Community Organizing section (5 pathways)** - `916b62c` (feat) - *Note: Committed as part of 07-03 due to concurrent execution*

## Files Created/Modified
- `index.html` - Added learning path sections to 5 AI Community Organizing career pathways (lines ~2732-2900)

## Decisions Made

**Prompt pattern selection:**
- Pathway 1 (Community Organizer → Campaign Manager): Multi-Step Workflow - demonstrates iterative AI use for learning policy concepts
- Pathway 2 (Marketing → Outreach Specialist): Project-Based - emphasizes behavior change campaigns with ACEEE frameworks
- Pathway 3 (Sales → Solar Developer): Stakeholder Scenario - practices explaining subscriber models to community partners
- Pathway 4 (Event Coordinator → Event Manager): Facilitator Voice - coordination over technical expertise
- Pathway 5 (Campaign Staff → Advocacy Organizer): Competency Gap - systematic skill analysis for policy work

**Equity emphasis:**
- Included LMI (low-to-moderate income) provisions in community solar pathways
- Referenced serving underserved communities in outreach campaigns
- Emphasized renters and low-income household access throughout

**Project scaling:**
- Beginner: 10-15 hours, presentation-ready artifacts (decks, toolkits, guides)
- Intermediate: 30-40 hours, working campaign materials with stakeholder review
- Proficient: 50-60 hours, actual implementations with community partnerships and networking

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

**Concurrent execution:** During plan execution, the ai-workflower process was running other Community Level plans concurrently. The organizing pathways were committed as part of Plan 07-03's commit (916b62c) rather than getting a dedicated 07-02 commit. This does not affect correctness - all 5 pathways received their learning content as specified.

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness

**Complete for subsequent Community Level plans:**
- Pattern variety established (7 patterns now available: original 5 from Individual + 2 new Community patterns)
- Equity framing language standardized
- Project portfolio scaling confirmed (Beginner=presentation, Proficient=implementation)

**Ready for:**
- Plan 07-03 (AI Data Analysis for Advocacy) - can use Advisor Voice, Socratic, Multi-Step patterns
- Plan 07-04 (AI Building Benchmarking) - can adapt technical patterns with community framing
- Plan 07-05 (AI Energy Burden) - equity language already established

**No blockers.**

---
*Phase: 07-community-level*
*Completed: 2026-01-29*
