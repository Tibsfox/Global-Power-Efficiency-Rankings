# Phase 6: Individual Level - Context

**Gathered:** 2026-01-29
**Status:** Ready for planning

<domain>
## Phase Boundary

25 learning paths for Individual-level career transitions with AI prompts and project portfolio ideas. Focus on hands-on, home-scale energy efficiency roles. Each pathway gets actionable content that empowers non-technical users to develop skills using AI tools.

</domain>

<decisions>
## Implementation Decisions

### AI Prompt Structure
- Length: Claude decides appropriate length per pathway based on context
- Variables: Mix of explicit placeholders (`[X years]`, `[CURRENT_FIELD]`) AND complete persona-based examples for variety
- Output type: Vary across pathways — some generate study plans, others project ideas, others skill assessments
- **GSD Integration:** Reference the `get-shit-done` project (https://github.com/glittercowboy/get-shit-done) showing how non-technical users can use GSD + AI to accomplish real-world learning tasks
- **Command examples:** Include actual `/gsd:` commands with plain-English explanations for beginners who don't know code or advanced AI tools

### Project Portfolio Ideas
- Quantity: Claude decides per pathway (1-4 projects as appropriate)
- Deliverables: Mix all types across pathways — documents/reports, working prototypes, presentation-ready portfolio pieces
- Data sources: Mix of public data (EIA, EPA, utility datasets) AND personal data (energy bills, home usage)
- GSD integration: Optional mention where natural — don't force it

### Presentation Variety
- Variety method: Differentiate by career type (Claude identifies natural groupings from pathway domains)
- Tone: Adapt to audience — more casual/practical for trades, more formal for analyst roles
- Feel: Like a career coach — structured, goal-oriented, action-focused guidance

### Resource Integration
- Integration approach: Build on existing career pathway resources (reference and extend, don't duplicate)
- New links: Yes, add new external resources where valuable
- GSD GitHub: Include as one option among resources (not prominently featured, but present)
- Resource types: Mix all — free courses/tutorials, open-source tools/repos, official documentation (DOE, ASHRAE, industry)

### Claude's Discretion
- Exact prompt length per pathway
- Career type groupings for variety rotation
- Number of projects per pathway
- Which pathways emphasize GSD workflow vs standalone projects

</decisions>

<specifics>
## Specific Ideas

- GSD should be shown as a tool for **non-programmers** to accomplish real-world tasks
- Example prompts should demonstrate how someone could use `/gsd:new-project` to structure a career transition or learning goal
- Content should feel like career coaching, not technical documentation
- AI prompts should show how GSD helps break down "learn building energy modeling" into manageable phases

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 06-individual-level*
*Context gathered: 2026-01-29*
