# Phase 7: Community Level - Research

**Researched:** 2026-01-29
**Domain:** Learning path content creation with AI prompts and project portfolio guidance for community-scale career transitions
**Confidence:** HIGH

## Summary

This research investigates how to create personalized learning path content for 25 Community-level career transition pathways (5 cards x 5 pathways each). The phase adds learning path sections to existing career pathways that already contain Background, Skills, Salary, Resources, and Timeline information. The content must differentiate from Phase 6's Individual-level hands-on/kinesthetic emphasis by focusing on mission-driven, collaborative impact with connector learning styles.

Community-level content requires distinct voice patterns: technical roles use advisor voice ("Help me advise..."), coordination roles use facilitator voice ("As someone coordinating..."). Project deliverables should scale by proficiency: Beginner projects produce presentation-ready artifacts (reports, proposals, assessments), while Proficient projects produce working implementations (dashboards, toolkits, pilot programs). Prompts should demonstrate iterative AI workflows with follow-up prompt examples, and occasionally use stakeholder personas for variety ("A food bank director asks you...").

The existing prompt pattern rotation from Phase 6 (Persona, Socratic, Project-Based, Competency Gap, GSD-Integrated) should evolve for Community level to include two new patterns better suited for collaborative/coordination work: Stakeholder Scenario (addressing a specific community member's need) and Multi-Step Workflow (demonstrating chained prompts). This provides 7 patterns total, allowing more variety across 25 pathways while ensuring no two adjacent pathways use identical patterns.

**Primary recommendation:** Add learning path sections to the 25 existing Community-level career pathways using the established HTML structure. Each pathway should include: (1) one AI prompt example demonstrating personalized study plan generation with mission-driven framing, iterative use patterns, and voice appropriate to role type, (2) 2-3 project portfolio ideas with concrete deliverables ranging from presentation-ready (Beginner) to implementation-ready (Proficient), and (3) emphasis on connector learning via networking resources and relationship-based project framing. Rotate prompt patterns across pathways to prevent repetition, introducing Community-specific patterns (Stakeholder Scenario, Multi-Step Workflow) alongside Phase 6 patterns.

## Standard Stack

The established libraries/tools for this domain:

### Core
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| HTML5 | Current Living Standard | Semantic markup for learning content | Existing codebase architecture (single-file HTML) |
| CSS3 | Current (2026) | Styling with existing `.career-path` class | Consistent with v1.1/v1.2 career pathway styling |
| Inline styling | N/A | Prompt box styling with purple accent | Established in Phase 6, maintains consistency |

### Supporting
| Library | Version | Purpose | When to Use |
|---------|---------|---------|-------------|
| Existing CSS variables | v1.1 | `--bg-card`, `--accent-purple`, `--text-secondary` | All prompt boxes and project lists |
| `.career-path` structure | v1.1 | Wrapper div for career pathway content | Contains all learning path additions |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| Inline prompt styling | CSS class `.prompt-example` | Class exists for sidebar prompts but inline styling maintains Phase 6 consistency |
| Single prompt pattern | All 7 patterns | User decision: rotate patterns for variety (CONTEXT.md) |
| Theory-focused content | Relationship-based framing | User decision: connector learning via networking emphasis |

**Installation:**
```bash
# No installation needed - extends existing HTML structure
# All styling uses existing CSS variables defined in index.html
```

## Architecture Patterns

### Recommended Project Structure
```
index.html (existing)
└── Community Level section (~lines 2457-3169)
    ├── ai-grants card (5 pathways)
    ├── ai-organizing card (5 pathways)
    ├── ai-advocacy card (5 pathways)
    ├── ai-benchmarking card (5 pathways)
    └── ai-energyburden card (5 pathways)
        └── .career-path (each pathway)
            ├── Existing content (header, background, skills, resources, timeline)
            └── **NEW: Learning Path section**
                ├── AI Learning Prompt Example
                │   ├── Mission-driven context
                │   ├── Prompt text with [VARIABLES]
                │   ├── Voice appropriate to role type
                │   └── Follow-up prompt example for iteration
                └── Project Portfolio Ideas (2-3 projects)
                    ├── Beginner: presentation-ready artifact
                    ├── Intermediate: working document/analysis
                    └── Proficient: implementation/pilot
```

### Pattern 1: Stakeholder Scenario Prompt (NEW for Community)
**What:** AI prompt framed around a specific community stakeholder's need
**When to use:** For pathways involving direct community service, client-facing work, or advisory roles
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"A food bank director in your community asks: 'We're applying for USDA Community Facilities funding to install solar panels and upgrade our refrigeration. Can you help me understand what energy efficiency requirements might be in the application, and what data we should gather?' As someone transitioning from [grant writing / nonprofit admin / communications] to Energy Program Coordinator, draft a response that demonstrates your emerging energy efficiency knowledge while being honest about what you're still learning. Include: (1) 3 likely energy-related requirements to research, (2) what building data the food bank should collect, (3) resources where you'd verify the requirements."</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>This scenario-based prompt helps you practice advising community organizations on energy programs. Follow up by asking: "Now help me turn this into a checklist the food bank director can use."</em></p>
```

### Pattern 2: Multi-Step Workflow Prompt (NEW for Community)
**What:** AI prompt demonstrating chained prompts for complex community outcomes
**When to use:** For pathways requiring program design, campaign planning, or multi-stakeholder coordination
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm developing a community solar outreach campaign for a neighborhood association. Help me create a multi-step plan: Step 1 (this prompt): Identify the key stakeholders I need to engage and what their concerns might be. Step 2 (next prompt): Draft tailored messages for each stakeholder group. Step 3 (final prompt): Create a timeline with outreach milestones. Let's start with Step 1—who are the stakeholders for a community solar project in a mixed-income neighborhood, and what are their likely priorities?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>After completing Step 1, continue with: "Great, now let's do Step 2: Draft a one-paragraph outreach message tailored to each of the three stakeholder groups you identified." This workflow approach mirrors how you'll coordinate real community programs.</em></p>
```

### Pattern 3: Facilitator Voice Prompt (Adapted for Community)
**What:** AI prompt using "As someone coordinating..." voice for coordination roles
**When to use:** For pathways involving program management, coalition building, volunteer coordination
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"As someone coordinating volunteers for a weatherization assistance program, I need to develop training materials for new volunteers who will conduct basic home energy assessments. My background is in [education / social work / community organizing]. Create a [6-week] learning plan for ME (not the volunteers) that covers: (1) building science basics I need to train others, (2) the LIHEAP/WAP program requirements in [my state], (3) effective volunteer training techniques. Capacity building (helping organizations develop skills) is key—show me how to build knowledge I can transfer to others."</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Adapt the bracketed sections. Note: "capacity building" means developing organizational capabilities to sustain programs long-term.</em></p>
```

### Pattern 4: Advisor Voice Prompt (Adapted for Community)
**What:** AI prompt using "Help me advise..." voice for technical/analytical roles
**When to use:** For pathways involving technical analysis, policy research, data work supporting community decisions
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"Help me advise a community action agency on energy burden data for their county. I'm transitioning from [data analyst / financial analyst / researcher] to an Energy Affordability Analyst role. I need to learn: (1) how to use the DOE LEAD Tool to identify high-burden census tracts, (2) how to translate energy burden statistics into accessible language for county commissioners, (3) how to connect data findings to program recommendations. Create a [4-month] learning plan with resources that are free or under $50, emphasizing how to serve underserved communities with this analysis."</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Follow up with: "Now create a one-page fact sheet template I could use to present energy burden findings to non-technical stakeholders."</em></p>
```

### Pattern 5-7: Adapted Phase 6 Patterns
The Phase 6 patterns (Persona-Based, Socratic, Project-Based, Competency Gap, GSD-Integrated) remain valid but should be adapted for Community context:

- **Persona-Based:** Use community-focused personas ("Act as a mentor who has helped community organizers transition to energy program management...")
- **Socratic:** Frame questions around community impact ("Why do weatherization programs prioritize certain neighborhoods?")
- **Project-Based:** Design projects with community deliverables ("Create an energy burden map presentation for city council...")
- **Competency Gap:** Include connector skills ("Which networking and stakeholder engagement skills transfer?")
- **GSD-Integrated:** Reference for complex multi-phase community projects

### Anti-Patterns to Avoid
- **Individual-focused framing for Community pathways:** Don't use "home energy audit for your house"—use "energy assessments for community housing portfolio"
- **Missing nonprofit terminology definitions:** Terms like "capacity building," "stakeholder engagement," "energy burden" need brief contextual explanation
- **Theory-only prompts:** Include relationship-based framing ("how to build trust," "connect with peer associations")
- **Generic volunteer role:** Be specific—"volunteer your data skills to help a housing nonprofit" not "help your community"
- **Identical voice across roles:** Technical roles get advisor voice; coordination roles get facilitator voice
- **Missing follow-up prompts:** Community context emphasizes iterative AI use—include "Now ask Claude to..."
- **Proficient projects without implementation:** Beginner = reports/proposals, Proficient = dashboards/tools/pilots

## Don't Hand-Roll

Problems that look simple but have existing solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Prompt pattern library | Custom prompt collection | PROMPTS.md research (10 patterns documented) | Tested patterns with authoritative sources |
| Variety tracking | Manual diversity checking | VARIETY.md rotation framework | Systematic approach for 125 pathways |
| Nonprofit terminology | Inline explanations | Brief parenthetical definitions | Keeps flow while educating |
| Community-specific voice | Generic adaptation | Role-based voice selection (advisor vs. facilitator) | User decision in CONTEXT.md |
| Project time estimates | Vague "few weeks" | Specific hour ranges matched to deliverable complexity | Enables realistic planning |
| Connector learning style | Generic networking mention | Both associations/peer groups AND relationship-framing | CONTEXT.md specifies dual approach |

**Key insight:** Community-level content builds on Phase 6 infrastructure but requires voice variation, mission-driven framing, and stakeholder-oriented thinking that distinguishes it from Individual-level hands-on content. The goal is connector learning—building relationships and networks—not just technical skill acquisition.

## Common Pitfalls

### Pitfall 1: Individual-Style Framing for Community Roles
**What goes wrong:** Using "build a DIY project for your home" framing for community pathways meant for organizational impact
**Why it happens:** Copy-paste from Phase 6 Individual patterns without adapting scope
**How to avoid:** Frame projects around organizational/community impact: "assess your nonprofit's building portfolio," "create outreach materials for your agency," "build tools for your community action program"
**Warning signs:** Projects mention "your home," "personal use," or individual-scale outcomes

### Pitfall 2: Missing Connector Learning Elements
**What goes wrong:** Prompts focus only on technical skills without networking/relationship building
**Why it happens:** Technical skills are easier to define than soft skills
**How to avoid:** Include in each prompt: (1) mention of professional associations or peer groups, (2) relationship-framing ("build trust with...," "coordinate with..."), OR (3) stakeholder engagement element
**Warning signs:** No mention of associations, networks, coalitions, or relationship-building

### Pitfall 3: Undefined Nonprofit Terminology
**What goes wrong:** Using jargon like "capacity building" without explanation
**Why it happens:** Subject matter experts forget unfamiliar terms
**How to avoid:** Define key terms in parentheses: "capacity building (helping organizations develop skills)"
**Warning signs:** LIHEAP, WAP, BPS, energy burden, stakeholder engagement used without context

### Pitfall 4: Same Voice Across All Roles
**What goes wrong:** All 25 pathways use identical prompt voice despite different role types
**Why it happens:** Easier to maintain consistency than vary deliberately
**How to avoid:** Map pathway to voice type: technical/analytical roles = advisor voice ("Help me advise..."); coordination/outreach roles = facilitator voice ("As someone coordinating...")
**Warning signs:** Reading 5 pathways and all start with same opening structure

### Pitfall 5: Beginner Projects Too Complex
**What goes wrong:** "Beginner" projects require specialized tools, organizational access, or extensive domain knowledge
**Why it happens:** Community context inherently involves organizations, making truly simple projects harder to design
**How to avoid:** Beginner projects should be: (1) achievable with public data only, (2) producible as independent analysis (not requiring organizational buy-in), (3) presentation-ready documents (not working implementations)
**Warning signs:** Beginner project requires data access from a specific organization or specialized software license

### Pitfall 6: Missing Iterative AI Use
**What goes wrong:** Prompts show single-shot AI interaction without follow-up
**Why it happens:** Phase 6 patterns emphasized standalone prompts
**How to avoid:** Include follow-up prompt examples: "Now ask Claude to...," "Follow up by asking...," or multi-step workflow framing
**Warning signs:** No mention of conversation continuation or refinement

### Pitfall 7: Equity Framing Absent
**What goes wrong:** Community pathways don't mention serving underserved communities or access language
**Why it happens:** Equity framing feels optional or tangential
**How to avoid:** Weave in equity naturally: "serving underserved communities," "ensuring access for low-income households," "prioritizing energy-burdened neighborhoods"
**Warning signs:** Entire pathway has no mention of equity, access, underserved, or burden-related concepts

## Code Examples

Verified patterns from existing structure and Phase 6 implementation:

### Existing Community Career Path Structure (v1.1)
```html
<!-- From index.html - Community Level career pathway (ai-grants card) -->
<div class="career-path">
    <div class="career-header"><strong>Grant Writer → Energy Program Coordinator</strong></div>
    <p><strong>Background:</strong> Experience with nonprofit grant writing, familiar with foundation and government funding processes.</p>
    <p><strong>Skills to add:</strong> Energy policy fundamentals, DOE program requirements (EECBG, WAP, SEP), building science basics, energy metrics (kWh, therms, carbon).</p>
    <p><strong>Resources:</strong></p>
    <ul>
        <li><a href="https://www.energy.gov/eere" target="_blank">DOE EERE Training Resources</a> (free)</li>
        <li><a href="https://www.cesa.org/resources/" target="_blank">Clean Energy States Alliance webinars</a> (free)</li>
    </ul>
    <p><strong>Timeline:</strong> 3-6 months part-time learning.</p>

    <!-- NEW LEARNING PATH SECTION TO ADD -->
</div>
```

### Complete Learning Path Addition (Stakeholder Scenario Pattern)
```html
<div class="career-path">
    <!-- All existing content above -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"A community development corporation director asks you: 'We received a DOE Energy Efficiency and Conservation Block Grant (EECBG) for $150,000. What kinds of programs could we run, and how should we structure the project plan?' As someone transitioning from grant writing to Energy Program Coordinator, help me draft a response that demonstrates energy program knowledge. Include: (1) 3 eligible EECBG program types for a CDC, (2) key milestones a DOE grant would require, (3) what building or community data we'd need to gather first. Use this as a learning exercise—I'll verify the details with official DOE guidance."</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>This scenario mirrors real community energy work. Follow up with: "Now help me create a checklist of EECBG reporting requirements based on DOE guidance." Note: EECBG = Energy Efficiency and Conservation Block Grant, a federal program for local governments and nonprofits.</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Beginner:</strong> Research and compare 5 energy efficiency grant programs available to nonprofits in your state (EECBG, state energy office grants, utility incentive programs, foundation grants). Create a comparison matrix analyzing eligibility requirements, funding amounts, application deadlines, and typical project types. <em>Deliverable: Grant opportunity guide (spreadsheet + 2-page summary) suitable for sharing with nonprofit colleagues. Time: 8-12 hours.</em>
        </li>
        <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Intermediate:</strong> Develop a mock EECBG application for a real community organization (church, food bank, community center). Include project narrative, energy savings estimates, budget, and timeline. Have the organization review it for accuracy and relevance—this builds relationships while demonstrating skills. <em>Deliverable: Complete draft application package with cover letter. Time: 25-35 hours.</em>
        </li>
        <li style="margin-bottom: 0; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Proficient:</strong> Partner with a community action agency or nonprofit to support an actual grant application. Contribute energy project research, data gathering, or narrative drafting under their supervision. Document your contributions and the application outcome. Connect with your state's Association of Energy Service Professionals (AESP) chapter for networking. <em>Deliverable: Contribution documentation, reference letter from partner organization, AESP membership. Time: 40-60 hours.</em>
        </li>
    </ul>
</div>
```

### Complete Learning Path Addition (Facilitator Voice Pattern)
```html
<div class="career-path">
    <!-- Existing content -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"As someone coordinating a community solar campaign, I need to learn both the technical basics and stakeholder engagement skills. I'm transitioning from [community organizing / marketing / event coordination] with [X years] experience. Create a [4-month] learning plan that covers: (1) Community solar program models and subscriber management basics, (2) How to engage diverse stakeholders (renters, low-income households, landlords), (3) Campaign coordination skills like volunteer management and event planning. Emphasize connector learning—include professional associations like AESP and peer learning opportunities. Resources should be free or low-cost (under $50)."</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Connector learning emphasizes building relationships and networks alongside technical skills. Follow up with: "Now draft an outreach email I could send to a local AESP chapter to introduce myself and express interest in community solar."</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <!-- Projects here -->
    </ul>
</div>
```

### Complete Learning Path Addition (Multi-Step Workflow Pattern)
```html
<div class="career-path">
    <!-- Existing content -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"Help me create a learning workflow for transitioning to Energy Justice Advocate. I'll work through this in steps: Step 1 (this prompt): What are the 5 most important concepts I need to understand about energy burden and energy justice? Explain each briefly. Step 2 (next prompt): For each concept, recommend one free resource. Step 3 (final prompt): Design a 2-week self-study schedule using those resources. Let's start with Step 1—what should I understand about energy burden and environmental justice frameworks?"</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>After completing Step 1, continue: "Great, now Step 2: recommend one free resource for each concept you identified, prioritizing resources from organizations serving underserved communities." Energy burden = the percentage of household income spent on energy bills (low-income households often spend 12%+ vs. 3% for median households).</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <!-- Projects here -->
    </ul>
</div>
```

### Prompt Pattern Rotation for Community Level (25 Pathways)

```
Card 1 (AI Grant Writing) - 5 pathways:
  Pathway 1: Stakeholder Scenario (Grant Writer → Energy Program Coordinator)
  Pathway 2: Facilitator Voice (Nonprofit Administrator → Clean Energy Program Manager)
  Pathway 3: Advisor Voice (Journalist/Communications → Energy Grant Specialist)
  Pathway 4: Multi-Step Workflow (Teacher/Educator → Community Energy Outreach Coordinator)
  Pathway 5: Persona-Based + GSD reference (Social Worker → Energy Assistance Program Coordinator)

Card 2 (AI Community Organizing) - 5 pathways:
  Pathway 1: Multi-Step Workflow (Community Organizer → Clean Energy Campaign Manager)
  Pathway 2: Project-Based (Marketing/Communications → Climate Outreach Specialist)
  Pathway 3: Stakeholder Scenario (Sales Representative → Solar Community Developer)
  Pathway 4: Facilitator Voice (Event Coordinator → Energy Program Event Manager)
  Pathway 5: Competency Gap (Political Campaign Staff → Climate Advocacy Organizer)

Card 3 (AI Data Analysis for Advocacy) - 5 pathways:
  Pathway 1: Advisor Voice (Data Analyst → Energy Policy Research Analyst)
  Pathway 2: Socratic (Academic Researcher → Community Energy Data Specialist)
  Pathway 3: Multi-Step Workflow (Paralegal → Clean Energy Policy Advocate)
  Pathway 4: Advisor Voice (Financial Analyst → Energy Affordability Analyst)
  Pathway 5: Stakeholder Scenario (varies based on pathway 5)

Card 4 (AI Building Energy Benchmarking) - 5 pathways:
  Pathway 1: Project-Based (Data Analyst → Building Performance Analyst)
  Pathway 2: Facilitator Voice (Property Manager → Energy Compliance Manager)
  Pathway 3: Persona-Based (HVAC Technician → Building Energy Auditor)
  Pathway 4: Competency Gap (Accountant → Carbon Accounting Specialist)
  Pathway 5: Advisor Voice + GSD reference (Software Developer → Building Analytics Engineer)

Card 5 (AI Energy Burden Identification) - 5 pathways:
  Pathway 1: Stakeholder Scenario (Community Organizer → Energy Justice Advocate)
  Pathway 2: Facilitator Voice (Social Worker → Energy Assistance Coordinator)
  Pathway 3: Multi-Step Workflow (Public Health Worker → Energy Equity Specialist)
  Pathway 4: Socratic (Census/Survey Worker → Energy Program Outreach Specialist)
  Pathway 5: Project-Based (Customer Service Rep → Utility Assistance Specialist)
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Generic "help communities" prompts | Stakeholder scenario prompts with specific community roles | 2025-2026 | More realistic, actionable learning |
| Single-shot AI prompts | Multi-step workflow demonstrations | 2025 | Shows iterative AI use for complex outcomes |
| Same voice for all roles | Role-based voice (advisor vs. facilitator) | 2025-2026 | Matches real-world communication patterns |
| Skills-only learning paths | Connector learning (skills + networking + relationships) | 2024+ | Aligns with adult learning and career transition research |
| Free-only resources | Low-cost resources acceptable (up to ~$50) | Project-specific | Access to higher-quality materials like certifications |
| Individual project framing | Mission-driven community impact framing | Phase 7 distinction | Differentiates from Phase 6 Individual level |

**Deprecated/outdated:**
- **Generic community volunteering:** Pre-2025 approach of "volunteer in your community" without specific pathways—now replaced with structured career transitions
- **Skills-only career guidance:** 2026 standard emphasizes connector learning (networking, associations, peer groups) alongside technical skills
- **Single-prompt examples:** Current best practice demonstrates iterative AI use with follow-up prompts

## Open Questions

Things that couldn't be fully resolved:

1. **Optimal GSD integration for Community level**
   - What we know: Phase 6 used GSD in ~40% of pathways (primarily pathway 5 in each card)
   - What's unclear: Community level may need different ratio given longer, more complex projects
   - Recommendation: Include GSD reference in 2-3 of 25 pathways (8-12%), primarily for complex multi-stakeholder projects. Less prominent than Phase 6 since Community projects are inherently more complex and GSD may feel overwhelming.

2. **Stakeholder scenario specificity**
   - What we know: Context specifies varying org type references ("food bank vs. local nonprofit")
   - What's unclear: How specific to make each scenario (hyperlocal vs. generalizable)
   - Recommendation: Mix specific examples (food bank, community health center, housing nonprofit) with general categories. Specific examples feel more real; general categories are more adaptable.

3. **Equity framing intensity**
   - What we know: CONTEXT.md specifies explicit equity framing ("serving underserved communities")
   - What's unclear: Every pathway, or contextually appropriate subset?
   - Recommendation: Include equity language in 80%+ of pathways but vary intensity. Some pathways naturally center equity (Energy Justice Advocate); others weave it in lighter.

4. **Project time estimates for relationship-based work**
   - What we know: Phase 6 used 5-15h (Beginner), 20-40h (Intermediate), 40-80h (Proficient)
   - What's unclear: Community projects involving stakeholder coordination may take longer
   - Recommendation: Keep similar ranges but acknowledge calendar duration may be longer: "Time: 30-40 hours over 6-8 weeks to accommodate stakeholder schedules."

5. **Follow-up prompt examples**
   - What we know: CONTEXT.md emphasizes iterative AI use
   - What's unclear: Include in every pathway or subset?
   - Recommendation: Include follow-up prompt example in every pathway (100%). This is a key Community-level differentiator from Phase 6.

## Sources

### Primary (HIGH confidence)
- `.planning/phases/06-individual-level/06-RESEARCH.md` (internal) - Phase 6 patterns, HTML structure, prompt examples
- `.planning/research/PROMPTS.md` (internal) - 10 documented prompt patterns with authoritative sources
- `.planning/research/VARIETY.md` (internal) - Rotation framework for content variation
- `.planning/phases/07-community-level/07-CONTEXT.md` (internal) - User decisions constraining this phase
- Existing `index.html` Community-level section (~lines 2457-3169) - 25 pathways with established structure

### Secondary (MEDIUM confidence)
- [Vanderbilt University: Prompt Patterns](https://www.vanderbilt.edu/generative-ai/prompt-patterns/) - Persona, scenario-based patterns
- [ACEEE: Community Energy Programs](https://www.aceee.org/) - Energy equity and community program resources
- [DOE EERE Training Resources](https://www.energy.gov/eere) - Federal energy program requirements
- [AESP (Association of Energy Services Professionals)](https://www.aesp.org/) - Professional association for energy efficiency sector

### Tertiary (LOW confidence)
- Community action agency models - Organizational structures vary significantly by region
- Nonprofit terminology standardization - Terms used differently across organizations

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - Extends Phase 6 HTML structure, no new requirements
- Prompt patterns: HIGH - Builds on validated Phase 6 patterns plus Community-specific adaptations from CONTEXT.md
- Voice variation: HIGH - Explicitly specified in CONTEXT.md (advisor vs. facilitator)
- Project portfolio design: MEDIUM - Community projects inherently more variable than Individual; time estimates approximate
- Equity framing: HIGH - Explicitly required in CONTEXT.md
- Connector learning integration: MEDIUM - Concept clear, implementation varies by pathway

**Research date:** 2026-01-29
**Valid until:** 2026-03-01 (30 days - educational content domain relatively stable)

**Notes for planner:**
- All 25 Community-level pathways exist in HTML with Background, Skills, Salary, Resources, Timeline
- Task is to ADD learning path content (prompt + projects) after Timeline paragraph in each pathway
- New prompt patterns for Community: Stakeholder Scenario, Multi-Step Workflow, Facilitator Voice, Advisor Voice
- Phase 6 patterns remain valid: Persona-Based, Socratic, Project-Based, Competency Gap, GSD-Integrated
- Rotate 7 patterns across 25 pathways ensuring no two adjacent pathways use identical patterns
- Each pathway needs: 1 prompt example (80-120 words) + follow-up prompt + 2-3 project ideas (60-100 words each)
- Include brief nonprofit terminology definitions where used
- Equity framing in 80%+ of pathways
- Follow-up prompt examples in 100% of pathways (key differentiator from Phase 6)
- GSD reference in 2-3 pathways only (less prominent than Phase 6)
- Project deliverables: Beginner = presentation-ready, Intermediate = working analysis, Proficient = implementation/pilot
- Reference .planning/research/PROMPTS.md and VARIETY.md for detailed pattern examples
