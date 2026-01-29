# Phase 6: Individual Level - Research

**Researched:** 2026-01-29
**Domain:** Learning path content creation with AI prompts and project portfolio guidance for career transitions
**Confidence:** HIGH

## Summary

This research investigates how to create personalized learning path content for 25 Individual-level career transition pathways (5 cards × 5 pathways each). The phase adds learning path sections to existing career pathways that already contain background, skills, salary, resources, and timeline information. The new content must include: (1) example AI prompts users can adapt to generate personalized study plans, (2) project portfolio ideas spanning beginner to proficient skill levels, and (3) hands-on, kinesthetic learning emphasis appropriate for home/personal scale energy efficiency work.

Research reveals that effective AI learning prompts combine persona assignment with specific context variables (current role, target role, timeframe) and structured output formats. The most successful patterns identified are: Persona-Based Learning Coach, Socratic Dialogue, Project-Based Learning Generator, Competency Gap Analysis, and GSD-Integrated Planning. Content variety across 25 pathways is achieved through systematic rotation of opening hooks, framing perspectives, learning structures, resource formats, and prompt styles—preventing "template fatigue" while maintaining consistent architecture.

The GSD (get-shit-done) workflow tool provides a structured approach for non-technical learners to break down complex learning goals (like "learn building energy modeling") into manageable phases with research, planning, execution, and verification steps. Individual-level content should emphasize hands-on, maker-oriented projects with shorter timelines (1-6 months), accessible resources (YouTube, GitHub, free courses), and kinesthetic learning modalities.

**Primary recommendation:** Add learning path sections to the 25 existing Individual-level career pathways using the established `.career-transitions` HTML structure. Each pathway should include: (1) one AI prompt example demonstrating personalized study plan generation with explicit context variables, (2) 2-3 project portfolio ideas with concrete deliverables ranging from beginner DIY exercises to proficient-level portfolio pieces, and (3) integration of GSD commands where natural for non-programmers. Vary prompt patterns across adjacent pathways using the rotation framework (Persona-Based → Socratic → Project-Based → Competency Gap → GSD Planning → repeat) to prevent repetition.

## Standard Stack

The established libraries/tools for this domain:

### Core
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| HTML5 | Current Living Standard | Semantic markup for learning content | Existing codebase architecture (single-file HTML) |
| CSS3 | Current (2026) | Styling with existing `.career-transitions` class | Consistent with v1.1 career pathway styling |
| Markdown formatting | In-HTML | Inline text formatting for readability | Standard for educational content presentation |
| N/A | N/A | No new libraries needed | Extends existing HTML structure |

### Supporting
| Library | Version | Purpose | When to Use |
|---------|---------|---------|-------------|
| GSD (get-shit-done) | Latest | CLI workflow tool for non-programmers | Reference in prompts for structured learning |
| Existing CSS classes | v1.1 | `.career-path`, `.career-header`, resource links | All learning path content |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| Inline learning paths | Collapsible accordions | User decision: inline/scrollable only (CONTEXT.md) |
| Static prompt text | Interactive prompt builders | Would require JavaScript; project is static HTML |
| Generic prompts | Personalized examples | User decision: show context variables and personas |
| External GSD tutorial | Brief inline explanation | Keep focus on energy pathways, not GSD documentation |

**Installation:**
```bash
# No installation needed - extends existing HTML structure
# GSD tool reference: https://github.com/glittercowboy/get-shit-done
```

## Architecture Patterns

### Recommended Project Structure
```
index.html (existing)
└── .career-transitions section (existing)
    └── .career-path (existing - 25 Individual pathways)
        ├── .career-header (existing)
        ├── Background (existing)
        ├── Skills to add (existing)
        ├── Salary range (existing)
        ├── Resources (existing)
        ├── Timeline (existing)
        └── **NEW: Learning Path section**
            ├── AI Prompt Example
            │   ├── Use case description
            │   ├── Prompt text with [VARIABLES]
            │   └── Optional: GSD command reference
            └── Project Portfolio Ideas (2-3 projects)
                ├── Beginner project
                ├── Intermediate project
                └── Proficient-level project
```

### Pattern 1: Persona-Based Learning Prompt
**What:** AI prompt that assigns a persona (career coach, mentor, expert) and uses explicit context variables
**When to use:** For pathways where learners need structured study plans with clear milestones
**Example:**
```html
<div class="career-path">
    <!-- Existing content: header, background, skills, salary, resources, timeline -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple);">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0;">"Act as a career coach helping skilled tradespeople transition into energy analysis. I am an HVAC technician with [X years] field experience moving into Building Energy Analyst roles. Create a [6-month] learning plan that builds on my existing skills in [HVAC systems, troubleshooting, building mechanicals] and addresses gaps in [energy modeling software, data analysis, ASHRAE standards]. Format as a monthly table with: Focus Area, Key Resources, Milestone Deliverable, Hours/Week."</p>
    </div>
    <p><em>Adapt the bracketed sections to your background and timeline. The AI will generate a customized study plan.</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul>
        <li><strong>Beginner:</strong> Create a home energy audit report using a free online calculator and your own utility bills. Document baseline consumption and identify 3-5 efficiency opportunities. (Time: 5-10 hours)</li>
        <li><strong>Intermediate:</strong> Model a simple residential building in OpenStudio, validate against utility data, and produce an energy performance report. (Time: 20-30 hours)</li>
        <li><strong>Proficient:</strong> Conduct a full commercial building energy audit including HVAC system analysis, lighting assessment, and envelope inspection. Create a professional report with savings projections and payback calculations. (Time: 40-60 hours)</li>
    </ul>
</div>
```

### Pattern 2: Socratic Learning Dialogue
**What:** AI prompt that guides learning through questioning rather than direct instruction
**When to use:** For pathways emphasizing conceptual understanding and critical thinking
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple);">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0;">"You are a Socratic tutor helping me understand [energy load forecasting / carbon accounting / building science]. Instead of giving direct answers, guide me through questions that help me discover concepts myself. Start by asking what I already know from my [current background]. Then ask probing questions about: (1) Why [energy patterns / emissions sources / heat transfer] work the way they do, (2) What would happen if [key variables] changed, (3) How my experience with [transferable skill] connects to [target domain]. Ask one question at a time and wait for my response."</p>
</div>
<p><em>This prompt style is ideal for building deep conceptual understanding rather than memorizing procedures.</em></p>
```

### Pattern 3: Project-Based Learning Generator
**What:** AI prompt that designs hands-on projects with clear deliverables
**When to use:** For pathways emphasizing portfolio development and applied skills
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple);">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0;">"Design a hands-on project that helps someone with [accountant / teacher / IT professional] background develop [carbon emissions analysis / energy education / smart building] skills. The project should: (1) Use publicly available data/tools (specify which), (2) Take approximately [4 weeks] to complete, (3) Result in a portfolio piece demonstrating [specific competencies], (4) Include clear milestones: Week 1 (data gathering), Week 2 (analysis framework), Week 3 (execution), Week 4 (presentation). Provide step-by-step instructions suitable for someone new to [energy / sustainability / building systems]."</p>
</div>
<p><em>Generate custom project ideas aligned with your specific background and available data sources.</em></p>
```

### Pattern 4: GSD-Integrated Planning
**What:** Reference to GSD workflow for breaking learning goals into phases
**When to use:** For pathways where learners benefit from structured project management approach
**Example:**
```html
<p><strong>AI Learning Prompt Example (using GSD workflow):</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple);">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0;">"I want to transition from [current role] to [target role] in the energy efficiency field. Break this learning goal into 4-6 manageable phases, where each phase has: (1) A clear learning objective, (2) 3-5 specific tasks I can complete, (3) Resources I need, (4) How I'll know I've succeeded. Start with foundational knowledge and build toward job-ready competency. Format this as a roadmap I can follow step-by-step."</p>
</div>
<p><em>For structured learners: The <a href="https://github.com/glittercowboy/get-shit-done" target="_blank">get-shit-done (GSD)</a> workflow tool can help you manage this type of phased learning plan with automatic research, planning, and verification steps. Use <code>/gsd:new-project</code> to start a learning roadmap.</em></p>
```

### Pattern 5: Competency Gap Analysis
**What:** AI prompt that explicitly maps transferable skills and identifies learning gaps
**When to use:** For career changers who need clear gap identification before starting
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple);">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0;">"Analyze the skill gap for transitioning from [current role] to [target role]. First, list the core competencies required for [target role]. Second, identify which of my current skills in [list 3-5 skills] transfer directly. Third, highlight the critical gaps that need dedicated learning. Fourth, prioritize these gaps by: (a) importance for job requirements, (b) difficulty to acquire. For each gap, suggest one free resource and estimate learning time."</p>
</div>
<p><em>This analysis helps you focus on high-impact learning rather than studying skills you already have.</em></p>
```

### Anti-Patterns to Avoid
- **Identical prompts across adjacent pathways:** Creates "template fatigue" — rotate prompt styles systematically
- **Generic variables without examples:** Saying "[INSERT YOUR ROLE]" without showing what a filled example looks like
- **Unrealistic project scopes:** Suggesting beginner projects requiring expensive equipment ($500+) or expert knowledge
- **Missing difficulty ratings:** Not labeling projects as Beginner/Intermediate/Proficient
- **No GSD integration:** Context specifies GSD should be shown as tool for non-programmers — include where natural
- **Prompt overload:** More than one prompt example per pathway overwhelms; keep it focused

## Don't Hand-Roll

Problems that look simple but have existing solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| AI prompt library | Custom prompt database | Existing researched patterns (8 documented in PROMPTS.md) | Tested patterns with sources |
| Variation tracking | Manual diversity checking | Systematic rotation framework from VARIETY.md | Prevents accidental repetition |
| Learning progression | Custom skill ladder | Beginner → Intermediate → Proficient standard | Recognized by learners and employers |
| GSD workflow docs | Inline tutorial | Brief reference with GitHub link | Keep focus on energy content, not tooling |
| Project time estimates | Vague "a few weeks" | Specific hour ranges (5-10h, 20-30h, 40-60h) | Helps learners plan realistically |

**Key insight:** The research phase already compiled comprehensive prompt patterns (PROMPTS.md), variety strategies (VARIETY.md), and Individual-level guidance. Planning should reference these documents rather than recreating from scratch. The existing HTML structure already supports learning path content—no new CSS classes needed.

## Common Pitfalls

### Pitfall 1: Prompt Pattern Repetition
**What goes wrong:** Using the same prompt structure (e.g., Persona-Based) for all 25 pathways
**Why it happens:** First pattern works well, so it gets copy-pasted across all pathways
**How to avoid:** Use rotation framework — Pathway 1: Persona, Pathway 2: Socratic, Pathway 3: Project-Based, Pathway 4: Competency Gap, Pathway 5: GSD Planning, then repeat cycle
**Warning signs:** Reading 3 pathways in a row that all start "Act as a career coach..."

### Pitfall 2: Variable Overload in Prompts
**What goes wrong:** Prompts with 10+ bracketed variables become confusing rather than helpful
**Why it happens:** Attempting to cover every possible scenario in one prompt
**How to avoid:** Use 3-5 key variables maximum (current role, target role, timeframe, key skills, constraints)
**Warning signs:** Prompt has more brackets than actual guidance text

### Pitfall 3: Portfolio Projects Missing Deliverables
**What goes wrong:** Suggesting "learn about building audits" without concrete output
**Why it happens:** Focusing on learning activity rather than portfolio artifact
**How to avoid:** Every project must specify tangible deliverable: report, model, presentation, working prototype, data analysis
**Warning signs:** Project ideas use words "explore," "learn about," "study" instead of "create," "build," "analyze," "produce"

### Pitfall 4: Difficulty Mismatch
**What goes wrong:** Labeling projects as "Beginner" that require advanced knowledge/tools
**Why it happens:** Developer/expert bias about what's "easy"
**How to avoid:** Beginner = no prerequisites, free tools, <10 hours. Intermediate = some domain knowledge, minimal cost, <30 hours. Proficient = job-ready skills, may require equipment/software, <60 hours
**Warning signs:** "Beginner" project assumes familiarity with specialized software, coding, or expensive hardware

### Pitfall 5: GSD Over-Promotion
**What goes wrong:** Every pathway becomes a GSD advertisement rather than energy guidance
**Why it happens:** Enthusiasm for the tool overshadows the learning content
**How to avoid:** GSD should be mentioned as "one option" in 40-60% of pathways, primarily for learners who benefit from structured project management. Never the primary focus
**Warning signs:** GSD mentioned before actual learning guidance, multiple GSD references per pathway, GSD workflow explained in detail

### Pitfall 6: Hands-On Neglect
**What goes wrong:** Individual pathways emphasize theory and reading over making/building
**Why it happens:** Easier to list online courses than design DIY projects
**How to avoid:** Individual level should prioritize kinesthetic learning — at least 2 of 3 project ideas should be hands-on (build hardware, collect data, run experiments) not just analysis
**Warning signs:** All 3 projects are "analyze existing data" or "take this course" — no making/building

### Pitfall 7: Timeline Vagueness
**What goes wrong:** Prompts say "create a study plan" without timeframe specification
**Why it happens:** Assuming learners will provide timeframe, but many won't
**How to avoid:** Include default timeframe in prompt examples ([6-month], [12-week], [90-day]) that learners can adjust
**Warning signs:** Prompt has no time-related variables or mentions

## Code Examples

Verified patterns from existing structure and research:

### Existing Career Path HTML Structure (v1.1)
```html
<!-- From index.html - Individual Level career pathway -->
<div class="career-path">
    <div class="career-header">
        <strong>Software Developer → Energy Data Scientist</strong>
    </div>
    <p><strong>Background:</strong> 3+ years programming experience (Python, JavaScript, or similar languages)</p>
    <p><strong>Key skills to add:</strong> Time-series analysis, energy domain knowledge, ML model deployment, data pipeline engineering, statistical forecasting</p>
    <p><strong>Salary range:</strong> $90K-140K (U.S., mid-level, varies by location and experience)</p>
    <p><strong>Resources:</strong></p>
    <ul>
        <li><a href="https://www.coursera.org/search?query=energy%20data" target="_blank">Energy Data Analytics Specialization (Coursera - free audit available)</a></li>
        <li><a href="https://github.com/topics/energy-monitoring" target="_blank">Energy monitoring open-source projects (GitHub)</a></li>
        <li><a href="https://www.kaggle.com/competitions?search=energy" target="_blank">Energy forecasting competitions (Kaggle - free)</a></li>
    </ul>
    <p><strong>Timeline:</strong> 3-6 months part-time learning + portfolio projects to demonstrate domain expertise</p>

    <!-- NEW SECTION TO ADD -->
</div>
```

### Complete Learning Path Addition (Persona Pattern)
```html
<div class="career-path">
    <!-- All existing content above -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"Act as a career mentor who has helped software developers transition into energy data science. I am a software developer with [3-5 years] experience in [web development / backend systems / data engineering]. Create a [4-month] learning roadmap to become job-ready as an Energy Data Scientist. The plan should: (1) Build on my existing skills in [Python, SQL, API development], (2) Address gaps in [time-series forecasting, energy domain knowledge, statistical modeling], (3) Include 2 portfolio projects using publicly available energy datasets. Format as a weekly breakdown with specific tasks, resources, and deliverables."</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Customize the bracketed sections with your background. The AI will generate a personalized study plan with concrete milestones.</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Beginner:</strong> Analyze your own home energy consumption using Green Button data from your utility. Create visualizations showing daily/weekly patterns, identify peak usage times, and calculate cost savings from shifted consumption. Use Python (pandas, matplotlib) or free tools like Tableau Public. <em>Deliverable: Interactive dashboard or Jupyter notebook. Time: 8-12 hours.</em>
        </li>
        <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Intermediate:</strong> Build a load forecasting model using publicly available utility data (e.g., CAISO, PJM). Compare multiple algorithms (ARIMA, Prophet, LSTM) and evaluate prediction accuracy. Document methodology, feature engineering, and model selection rationale. <em>Deliverable: GitHub repo with code, model comparison report, and predictions visualization. Time: 25-35 hours.</em>
        </li>
        <li style="margin-bottom: 0; color: var(--text-secondary); font-size: 0.85rem;">
            <strong style="color: var(--text-primary);">Proficient:</strong> Develop an end-to-end energy anomaly detection system using smart meter data. Include data ingestion pipeline, ML model training, anomaly flagging, and alerting dashboard. Deploy to cloud platform (AWS/GCP free tier). Present methodology and results as case study suitable for job interviews. <em>Deliverable: Live demo, technical documentation, presentation deck. Time: 50-70 hours.</em>
        </li>
    </ul>
</div>
```

### Complete Learning Path Addition (Socratic Pattern)
```html
<div class="career-path">
    <!-- All existing content -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"You are a Socratic tutor helping me understand building energy performance. Don't give me direct answers—instead, guide me through questions that help me discover the concepts myself. Start by asking what I already know about [HVAC systems / thermal comfort / energy modeling] from my background as [electrician / plumber / HVAC tech]. Then ask probing questions about: (1) Why buildings use energy the way they do, (2) What would happen if we changed [insulation / ventilation / controls], (3) How my hands-on experience with [current systems] connects to energy analysis principles. Ask one question at a time and build on my responses."</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>This Socratic approach builds deep understanding of building science principles by connecting to your existing trade knowledge.</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <!-- 2-3 projects as above -->
    </ul>
</div>
```

### Complete Learning Path Addition (GSD-Integrated Pattern)
```html
<div class="career-path">
    <!-- All existing content -->

    <p><strong>AI Learning Prompt Example:</strong></p>
    <div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
        <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"Help me create a structured learning roadmap for transitioning from [current role] to [target role] in energy efficiency. Break this into 5 phases where each phase includes: (1) Learning objective (what I'll master), (2) 3-5 specific tasks or projects, (3) Resources I need (free when possible), (4) Success criteria (how I'll know I'm ready to move on). Start with foundational concepts and build to job-ready competency. Each phase should take 2-4 weeks."</p>
    </div>
    <p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>For structured learners: The <a href="https://github.com/glittercowboy/get-shit-done" target="_blank" style="color: var(--accent-blue); text-decoration: none;">get-shit-done (GSD)</a> workflow can help you execute this type of phased plan. Start with <code style="background: var(--bg-secondary); padding: 0.2rem 0.4rem; border-radius: 0.25rem; font-size: 0.8rem; color: var(--accent-purple);">/gsd:new-project</code> and describe your learning goal—it will guide you through planning, research, and execution with automatic progress tracking.</em></p>

    <p><strong>Project Portfolio Ideas:</strong></p>
    <ul style="margin-bottom: 1rem;">
        <!-- 2-3 projects as above -->
    </ul>
</div>
```

### Prompt Style Rotation Across 5 Pathways
```
Card 1 (AI Energy Monitoring) - 5 pathways:
  Pathway 1: Persona-Based (Software Dev → Energy Data Scientist)
  Pathway 2: Socratic (Electrician → Smart Meter Technician)
  Pathway 3: Project-Based (HVAC Tech → Building Energy Analyst)
  Pathway 4: Competency Gap (Marketing Analyst → Energy Behavior Analyst)
  Pathway 5: GSD-Integrated (Career Changer → Home Energy Auditor)

Card 2 (AI Smart Home) - 5 pathways:
  Pathway 1: Socratic (rotate pattern)
  Pathway 2: Project-Based
  Pathway 3: Competency Gap
  Pathway 4: GSD-Integrated
  Pathway 5: Persona-Based

[Continue rotation across all 25 pathways]
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Generic "use AI to learn" advice | Specific prompt patterns with examples | 2024-2025 | Users can immediately copy/adapt prompts |
| One prompt style for all content | Systematic rotation of 8+ patterns | 2025-2026 | Prevents template fatigue across 125 pathways |
| Theory-heavy learning paths | Project-based portfolio development | Ongoing shift 2023+ | Job-ready artifacts for interviews |
| Instructor-led only | AI-augmented self-directed learning | 2024+ | Democratizes personalized learning |
| Vague project suggestions | Specific deliverables + time estimates | Best practice 2025+ | Realistic learner expectations |
| Technical learners only | Non-programmer focus (GSD integration) | 2025-2026 | Expands audience to career changers |

**Deprecated/outdated:**
- **Generic learning advice:** Pre-2024 approach of "take online courses and practice" without specific prompts, projects, or timelines
- **Single learning modality:** Focusing only on reading/videos; 2026 standard emphasizes hands-on/kinesthetic learning especially for trades
- **Identical prompt copy-paste:** Early AI content used same prompt structure everywhere; current best practice is systematic variation
- **Missing context variables:** Early prompt examples didn't show explicit [VARIABLE] brackets; now standard for adaptability

## Open Questions

Things that couldn't be fully resolved:

1. **Optimal GSD integration ratio**
   - What we know: Context specifies GSD should be shown as tool for non-programmers
   - What's unclear: Should 100% of pathways mention GSD, or just a subset? How prominent should it be?
   - Recommendation: Reference GSD in 40-60% of Individual pathways (10-15 of 25), primarily with GSD-Integrated pattern. Brief mentions (1-2 sentences) rather than detailed tutorials. More prominent for career changers who lack technical project management experience.

2. **Project difficulty calibration**
   - What we know: Three levels needed (Beginner, Intermediate, Proficient) with time estimates
   - What's unclear: Exact hour ranges that feel accurate to diverse learners (trades vs. technical vs. non-technical)
   - Recommendation: Use conservative estimates: Beginner 5-15h, Intermediate 20-40h, Proficient 40-80h. Better to over-estimate than under-estimate. Include note that times vary by background.

3. **Free vs. paid resource balance**
   - What we know: Requirements specify "free resources prioritized" but some valuable resources (certifications, software) have costs
   - What's unclear: Is it acceptable to mention paid resources if they're industry-standard, or strict free-only?
   - Recommendation: Prioritize free resources (80%+ of links), but mention paid alternatives when they're industry-essential (e.g., "EnergyPlus is free; BEopt has free trial, paid license for commercial work"). Always label cost clearly.

4. **Prompt variable notation consistency**
   - What we know: Examples use [BRACKETS] for variables
   - What's unclear: Should we also show filled examples (persona-based) or only bracketed templates?
   - Recommendation: Mix both approaches across pathways—some show pure templates with brackets, others show filled personas. This itself creates variety and helps different learning styles.

5. **Learning path section length**
   - What we know: Must not overwhelm existing career pathway structure (Background, Skills, Salary, Resources, Timeline already present)
   - What's unclear: How much text is too much? Each learning path addition is ~200-400 words
   - Recommendation: Keep prompt example to 80-120 words, project ideas to 60-100 words each. Total addition per pathway: 300-500 words maximum. Prioritize clarity over comprehensiveness.

## Sources

### Primary (HIGH confidence)
- [get-shit-done GitHub Repository](https://github.com/glittercowboy/get-shit-done) - Official GSD documentation, commands, and workflow
- `.planning/research/PROMPTS.md` (internal) - Comprehensive prompt pattern research with 8+ documented patterns and sources
- `.planning/research/VARIETY.md` (internal) - Systematic rotation framework for content variation across 125 pathways
- `.planning/phases/01-individual-level/01-RESEARCH.md` (internal) - Phase 1 research on Individual level structure and patterns
- Existing `index.html` career pathway structure (v1.1) - 25 Individual pathways with established HTML patterns

### Secondary (MEDIUM confidence)
- [Vanderbilt University: Prompt Patterns for Generative AI](https://www.vanderbilt.edu/generative-ai/prompt-patterns/) - Persona, Flipped Interaction patterns
- [Frontiers in Education: Socratic Wisdom in AI Age](https://www.frontiersin.org/journals/education/articles/10.3389/feduc.2025.1528603/full) - Socratic learning research
- [arXiv: Generative AI in Education - Socratic Playground](https://arxiv.org/html/2501.06682v1) - Socratic AI tutoring, JSON-based prompts, LCC analysis
- [DISCO: 25 AI Prompts for Upskilling Paths](https://www.disco.co/blog/25-ai-prompts-to-create-effective-upskilling-paths-in-2025) - Project-based learning prompts
- [DOE Better Buildings Initiative: Training Resources](https://betterbuildingssolutioncenter.energy.gov/workforce/training) - Building science training for career transitions
- [AEE: Energy Efficiency Practitioner Training](https://education.aeecenter.org/products/certified-energy-efficiency-practitioner-eep-on-demand-training) - Professional energy certification
- [Unrulr: The Ultimate Guide to Student Portfolios (2026)](https://www.unrulr.com/post/the-ultimate-guide-to-student-portfolios) - Portfolio development best practices
- [Prodigy Education: Project-Based Learning Benefits & Strategies](https://www.prodigygame.com/main-en/blog/project-based-learning) - PBL methodology

### Tertiary (LOW confidence)
- [IBM: Prompt Engineering Guide 2026](https://www.ibm.com/think/prompt-engineering) - Advanced techniques (needs specific application validation)
- [Analytics Vidhya: Prompt Engineering Guide 2026](https://www.analyticsvidhya.com/blog/2026/01/master-prompt-engineering/) - Few-shot, chain-of-thought patterns (general guidance)
- Various career transition resource sites - Salary and timeline estimates vary by source, cross-reference needed

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - Extends existing HTML structure, no new libraries needed
- Prompt patterns: HIGH - 8 documented patterns with authoritative sources (Vanderbilt, Frontiers, arXiv)
- GSD integration: HIGH - Official GitHub documentation provides clear command reference and workflow
- Variety framework: HIGH - Systematic rotation approach from VARIETY.md research with content marketing principles
- Project portfolio design: MEDIUM - Based on PBL research and portfolio best practices, but Individual-level energy projects need domain-specific validation
- Learning path length/format: MEDIUM - Based on v1.1 structure and UX principles, but user preference may require adjustment

**Research date:** 2026-01-29
**Valid until:** 2026-03-01 (30 days - educational content domain relatively stable, but AI prompt best practices evolving)

**Notes for planner:**
- All 25 Individual pathways already exist in HTML with Background, Skills, Salary, Resources, Timeline
- Task is to ADD learning path content (prompt + projects) to each existing pathway, not create pathways from scratch
- Prompt patterns should rotate across 25 pathways: Persona → Socratic → Project-Based → Competency Gap → GSD-Integrated → repeat
- Each pathway needs 1 prompt example (80-120 words) + 2-3 project ideas (60-100 words each)
- GSD should be mentioned in ~12 of 25 pathways (40-50%), primarily with GSD-Integrated pattern
- Individual level emphasizes hands-on/kinesthetic learning: at least 60% of projects should involve building/making, not just analysis
- No new CSS classes needed—use existing `.career-path` structure with inline styling for prompt boxes
- Reference .planning/research/PROMPTS.md and VARIETY.md for detailed pattern examples and rotation strategies
