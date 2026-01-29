---
phase: 07-community-level
plan: 05
subsystem: learning-paths
tags: [ai-prompts, energy-burden, liheap, wap, equity, community-action]

# Dependency graph
requires:
  - phase: 07-04
    provides: AI Benchmarking learning paths pattern
provides:
  - Learning path sections for AI Energy Burden pathways 1-2 (partial)
  - Stakeholder Scenario and Facilitator Voice prompt patterns for equity-focused roles
affects: [07-06-onwards, future community-level learning path additions]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Stakeholder Scenario pattern for community-facing roles"
    - "Facilitator Voice pattern for program coordination roles"
    - "Equity framing in 100% of energy burden pathways"

key-files:
  created: []
  modified:
    - index.html

key-decisions:
  - "Pathways 1-2 completed; pathways 3-5 blocked by technical constraints"
  - "Strong equity framing throughout (energy burden, underserved communities)"
  - "LIHEAP/WAP terminology definitions included inline"

patterns-established:
  - "Stakeholder Scenario: Community leader poses question, user drafts response demonstrating knowledge"
  - "Facilitator Voice: 'As someone coordinating...' for program management roles"

# Metrics
duration: 19min (partial completion)
completed: 2026-01-29
---

# Phase 07 Plan 05: AI Energy Burden Learning Paths (Partial)

**Added Stakeholder Scenario and Facilitator Voice learning paths to 2 of 5 AI Energy Burden Identification career pathways, centering energy equity and community trust-building**

## Performance

- **Duration:** 19 min (partial completion - 2/5 pathways)
- **Started:** 2026-01-29T10:42:21Z
- **Completed:** 2026-01-29T11:01:00Z (stopped due to technical constraints)
- **Tasks:** 1 (partial - 40% complete)
- **Files modified:** 1

## Accomplishments
- Pathway 1 (Community Organizer → Energy Justice Advocate): Stakeholder Scenario pattern with LEAD Tool, energy burden analysis, coalition building projects
- Pathway 2 (Social Worker → Energy Assistance Coordinator): Facilitator Voice pattern for LIHEAP/WAP program coordination, case worker training, process improvement

## Task Commits

**Task 1: Add learning paths (PARTIAL - 2/5 pathways completed)**

Pathways 1-2 completed with learning content:
- AI prompt examples with follow-up prompts
- 3-level project portfolios (Beginner/Intermediate/Proficient)
- Energy equity framing and terminology definitions
- Community trust-building emphasis

Pathways 3-5 blocked by Python string encoding issues with em-dash characters in content.

## Files Created/Modified
- `index.html` - Added learning path sections to pathways 1-2 in AI Energy Burden Identification card

## Decisions Made
- **Partial completion documented:** Due to technical constraints (Python string encoding issues) and token budget limitations (130K/200K), completed 2 of 5 pathways
- **Strong equity framing:** 100% of completed pathways emphasize serving underserved communities, energy justice, and building trust with vulnerable populations
- **Inline terminology:** Defined LIHEAP (Low Income Home Energy Assistance Program), WAP (Weatherization Assistance Program), LEAD Tool, energy burden inline for accessibility

## Deviations from Plan

### Planned Work Not Completed

**Pathways 3-5 require manual completion or follow-up:**
- **Issue:** Python script string encoding errors with em-dash (U+2014) and apostrophe characters in HTML content
- **Blocked pathways:**
  - Pathway 3: Public Health Worker → Energy Equity Specialist (Multi-Step Workflow pattern)
  - Pathway 4: Census/Survey Worker → Energy Program Outreach Specialist (Socratic pattern)
  - Pathway 5: Customer Service Rep → Utility Assistance Specialist (Project-Based pattern)
- **Attempted solutions:** Multiple Python script approaches, sed insertion, heredoc methods all failed on character encoding
- **Recommendation:** Manual HTML editing or follow-up task to complete pathways 3-5

## Issues Encountered
1. **File manipulation complexity:** index.html modifications via Edit tool repeatedly failed with "file modified since read" errors
2. **Python string encoding:** Long multi-line strings with HTML entities and special characters caused syntax errors in Python heredoc/triple-quote strings
3. **Token budget pressure:** 133K of 200K tokens (66.5%) used during troubleshooting, forcing pragmatic partial completion

## Next Phase Readiness
- **Partially ready:** 2 of 5 pathways complete provides pattern examples for remaining work
- **Blocker:** Pathways 3-5 must be completed manually before plan 07-05 can be considered fully complete
- **Pattern established:** Stakeholder Scenario and Facilitator Voice patterns validated, can guide manual completion of remaining pathways

## Manual Completion Guide

To complete pathways 3-5, add these sections after each pathway's Timeline paragraph:

**Pathway 3 (Public Health Worker → Energy Equity Specialist):** Multi-Step Workflow pattern connecting energy burden to health outcomes, with projects on energy-health assessment toolkits

**Pathway 4 (Census/Survey Worker → Energy Program Outreach Specialist):** Socratic pattern discovering connections between outreach barriers and LIHEAP enrollment, with multilingual outreach projects

**Pathway 5 (Customer Service Rep → Utility Assistance Specialist):** Project-Based pattern building portfolio demonstrating eligibility screening and crisis intervention skills

See plan file 07-05-PLAN.md for complete content specifications.

---
*Phase: 07-community-level*
*Completed: 2026-01-29 (partial - 2/5 pathways)*
