# COP28 Energy Efficiency Report

## What This Is

An interactive data visualization report presenting global energy efficiency analysis across 75 countries, with actionable strategies at Individual, Community, State/Regional, National, and Global organizational levels. The report includes 25 AI strategy cards demonstrating practical applications with verified case studies, DIY/commercial project ideas, and career transition pathways.

## Core Value

Demonstrate practical, replicable ways that real people and organizations are using AI tools right now to solve energy efficiency problems—making the abstract concrete with citable, verified examples that empower career transitions and skill development.

## Current State (v1.1 shipped)

**Shipped:** 2026-01-29

The report now includes:
- 25 AI strategy cards across 5 organizational levels
- 75 verified case studies with specific organizations, metrics, and citations
- 125 career transition pathways with free resource links
- 75+ DIY and commercial project ideas
- 287 validated external URLs (case studies + career resources)
- Level-specific color schemes for visual hierarchy
- Single HTML file: 6,491 lines

**Tech stack:** Static HTML, embedded CSS, Chart.js for visualizations

## Current Milestone: v1.2 Learning Paths

**Goal:** Add personalized learning paths with AI prompts and self-study resources to all 125 career transition pathways

**Target features:**
- Example AI prompts for building lesson plans/study guides tailored to each career transition
- Self-study resource recommendations varied across pathways
- Diverse presentation styles to avoid repetition across 125 pathways

## Requirements

### Validated

- ✓ Multi-level analysis structure (Individual → Global) — v1.0
- ✓ Interactive Chart.js visualizations (5 charts) — v1.0
- ✓ Country rankings and energy intensity metrics — v1.0
- ✓ AI tool sections with prompt examples at each level — v1.0
- ✓ Responsive single-page HTML design — v1.0
- ✓ Citation infrastructure throughout — v1.0
- ✓ 75 case studies (3 per card × 25 cards) with verifiable sources — v1.1
- ✓ 125 career transition pathways with free resource links — v1.1
- ✓ 10 new AI cards (EV charging, HVAC maintenance, grid forecasting, etc.) — v1.1
- ✓ CSS structure for case studies, project ideas, career transitions — v1.1
- ✓ All URLs validated and working — v1.1
- ✓ Consistent formatting across all 25 cards — v1.1

### Active

- [ ] Learning path sections for all 125 career transition pathways
- [ ] AI prompt examples for self-directed learning
- [ ] Varied presentation styles across organizational levels

### Out of Scope

- Chart/visualization changes — focus on content enrichment only
- Backend/API integration — static content only
- Mobile app version — web-first static HTML
- Additional organizational levels — using existing 5-level structure
- Job board/listings integration — focus on guidance and resources, not live listings
- Offline mode — static HTML works offline already

## Context

**v1.1 shipped** with comprehensive AI content:
- Individual level: Energy monitoring, smart home AI, carbon tracking, EV charging, HVAC maintenance
- Community level: Grant writing, community organizing, advocacy data analysis, building benchmarking, energy burden identification
- State/Regional level: Policy modeling, program targeting, M&V, grid forecasting, AI permitting
- National level: Integrated planning, international benchmarking, commitment tracking, national load forecasting, infrastructure maintenance
- Global level: Multilingual policy analysis, satellite monitoring, knowledge platforms, supply chain emissions, climate finance

Each card includes 3 case studies, DIY/commercial project ideas, and 5 career transition pathways.

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| 3 case studies per card | User-specified depth over breadth | ✓ Good — provides sufficient variety |
| Established cases 2020-2025 | Verified outcomes over cutting-edge | ✓ Good — credible sources |
| Level-specific colors | Visual hierarchy across sections | ✓ Good — clear organization |
| Free resources prioritized | Accessibility for career changers | ✓ Good — 212 free resources |
| DIY uses public data only | Reproducibility without paywalls | ✓ Good — all verified accessible |
| Unified footnote prefixes per level | Consistency without conflicts | ✓ Good — clean citation system |

## Constraints

- **Format**: Single HTML file, no build process
- **Tech**: Maintain existing CSS patterns and Chart.js visualizations
- **Sources**: Verifiable organizations with specific metrics
- **Resources**: Prioritize free, accessible learning materials

---
*Last updated: 2026-01-29 after v1.2 milestone started*
