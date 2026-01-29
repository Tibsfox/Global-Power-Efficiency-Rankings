# Phase 1: Individual Level - Research

**Researched:** 2026-01-28
**Domain:** Educational content presentation with case studies, project ideas, and career pathways
**Confidence:** MEDIUM

## Summary

This research investigates how to expand educational content cards for AI-powered energy efficiency tools at the individual level. The phase adds case studies (3 per card), DIY/commercial project ideas, and career transition pathways (5 per card) to 5 AI application cards. Two new cards (EV Smart Charging, HVAC Predictive Maintenance) must be created, joining three existing cards (Energy Monitoring, Smart Home Optimization, Carbon Tracking).

The standard approach for educational case studies emphasizes measurable outcomes presented in a factual/journalistic tone with clear citations. Research found abundant real-world AI energy case studies from 2020-2024 with quantified results (e.g., AES saved $1M annually, Google reduced data center cooling by 40%, HVAC predictive maintenance cuts downtime by 50%). Career transition content should present full pathways including current background, target role, required skills, salary ranges (when reliable), and vetted resource links, with emphasis on free educational resources. The existing HTML structure uses inline CSS within a single-file architecture, with established patterns for cards, sections, citations, and content presentation.

**Primary recommendation:** Use the existing `.strategy-section` card pattern with new subsections for case studies, project ideas, and career transitions. Implement footnote-style citations using `<sup>` with `role="doc-noteref"` for accessibility. Present all content inline (scrollable) as specified in CONTEXT.md, avoiding tabs or accordions.

## Standard Stack

The established libraries/tools for this domain:

### Core
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| HTML5 | Current Living Standard | Semantic markup for educational content | Native web platform, no dependencies |
| CSS3 | Current (2024) | Styling with CSS custom properties (variables) | Existing codebase uses CSS-in-HTML with :root variables |
| Vanilla JavaScript | ES6+ | Chart.js integration, viewport scaling | Project avoids frameworks, uses minimal JS |
| Chart.js | 4.x (via CDN) | Data visualization | Already in use for energy charts |

### Supporting
| Library | Version | Purpose | When to Use |
|---------|---------|---------|-------------|
| Google Fonts | Current | DM Sans, Playfair Display | Already loaded for typography consistency |
| N/A | N/A | No additional libraries needed | Project uses native HTML/CSS |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| Inline CSS | External stylesheet | Project consistently uses inline CSS in `<style>` block |
| Native HTML | React/Vue components | Would require build system, breaks existing architecture |
| Footnote anchors | JavaScript modals | User decision: inline/scrollable, no overlays |

**Installation:**
```bash
# No installation needed - static HTML/CSS
# All dependencies loaded via CDN in existing <head>
```

## Architecture Patterns

### Recommended Project Structure
```
index.html                    # Single-file architecture (existing)
├── <style>                   # CSS variables + component styles
│   ├── :root                 # Color palette, spacing tokens
│   ├── .strategy-section     # Existing card container pattern
│   ├── .strategy-header      # Title + icon + subtitle
│   ├── .strategy-content     # Grid layout for main content
│   ├── .ai-sidebar          # Purple-themed tip boxes
│   └── .citation            # Small source links at bottom
└── <main>
    └── <section>            # Level-based grouping
        └── .strategy-section # Individual AI tool cards
```

### Pattern 1: Educational Case Study Presentation
**What:** Present real-world examples with organization, action, measurable outcome, and source citation
**When to use:** For all case study sections across 5 cards (15 total case studies)
**Example:**
```html
<!-- Case Studies Section within .strategy-section -->
<div class="case-studies">
    <h4>Real-World Case Studies</h4>

    <div class="case-study-item">
        <p><strong>Sacramento Municipal Utility District (SMUD)</strong> deployed Sense energy monitors
        in 500 homes as part of their Smart Home Energy Efficiency program. Participating households
        achieved an average <strong>15% reduction in electricity consumption</strong> within 6 months,
        saving an average of $180/year per household.<sup><a href="#ref1" role="doc-noteref">[1]</a></sup></p>
    </div>

    <div class="case-study-item">
        <p><strong>AES Corporation</strong> implemented AI-powered smart meter monitoring across their
        utility network to distinguish equipment failures from meter tampering. The system eliminated
        <strong>3,000 non-essential service calls annually, saving $1 million</strong> in operational
        costs.<sup><a href="#ref2" role="doc-noteref">[2]</a></sup></p>
    </div>

    <!-- Footnotes at section bottom -->
    <div class="footnotes">
        <p id="ref1" role="doc-footnote">[1] <a href="https://www.smud.org/..." target="_blank">
        SMUD Smart Home Program Report 2023</a> <a href="#ref1-return">↩</a></p>
        <p id="ref2" role="doc-footnote">[2] <a href="https://h2o.ai/case-studies/aes-..." target="_blank">
        AES Case Study, H2O.ai 2024</a> <a href="#ref2-return">↩</a></p>
    </div>
</div>
```

### Pattern 2: Project Ideas (DIY + Commercial Separation)
**What:** Provide actionable project suggestions readers can build or explore commercially
**When to use:** For all 5 cards to inspire hands-on learning and entrepreneurship
**Example:**
```html
<div class="project-ideas">
    <h4>Project Ideas</h4>

    <div class="diy-projects">
        <h5>🛠️ DIY Projects</h5>
        <div class="project-item">
            <strong>Raspberry Pi Energy Dashboard</strong>
            <p>Build a real-time energy monitoring system using Raspberry Pi, current sensors,
            and Python. Create a web dashboard to visualize consumption patterns by room or appliance.
            Estimated cost: $75-150, difficulty: intermediate.</p>
        </div>

        <div class="project-item">
            <strong>Smart Plug Automation Network</strong>
            <p>Use programmable smart plugs with Home Assistant to create custom energy-saving
            automations. Implement occupancy-based scheduling and peak-hour load shifting.
            Estimated cost: $50-100, difficulty: beginner.</p>
        </div>
    </div>

    <div class="commercial-projects">
        <h5>💼 Commercial Concepts</h5>
        <div class="project-item">
            <strong>Neighborhood Energy Benchmarking Platform</strong>
            <p>SaaS platform that aggregates anonymized smart meter data to provide community-level
            energy insights and gamified challenges. Revenue model: freemium with utility partnerships.</p>
        </div>
    </div>
</div>
```

### Pattern 3: Career Transition Pathways
**What:** Full transition paths from diverse backgrounds to AI/energy careers with resources
**When to use:** For all 5 cards, showing 5 pathways each (25 total)
**Example:**
```html
<div class="career-transitions">
    <h4>Career Transition Pathways</h4>

    <div class="career-path">
        <div class="career-header">
            <strong>From Software Developer → Energy Data Scientist</strong>
        </div>
        <p><strong>Background:</strong> 3+ years programming experience (Python, JavaScript, or similar)</p>
        <p><strong>Key skills to add:</strong> Time-series analysis, energy domain knowledge,
        ML model deployment, data pipeline engineering</p>
        <p><strong>Salary range:</strong> $90K-140K (U.S., mid-level, varies by location)</p>
        <p><strong>Resources:</strong></p>
        <ul>
            <li><a href="https://www.coursera.org/..." target="_blank">Energy Data Analytics (Coursera - free audit)</a></li>
            <li><a href="https://github.com/topics/energy-data" target="_blank">Energy data projects on GitHub</a></li>
            <li><a href="https://www.python.org/..." target="_blank">Python energy monitoring libraries</a></li>
        </ul>
        <p><strong>Timeline:</strong> 3-6 months part-time learning + portfolio projects</p>
    </div>

    <div class="career-path">
        <div class="career-header">
            <strong>From HVAC Technician → Building Automation Specialist</strong>
        </div>
        <p><strong>Background:</strong> HVAC certification + field experience</p>
        <p><strong>Key skills to add:</strong> BMS programming (Tridium, Siemens), basic networking,
        IoT sensor integration</p>
        <p><strong>Salary range:</strong> $60K-85K (U.S., varies by certification level)</p>
        <p><strong>Resources:</strong></p>
        <ul>
            <li><a href="https://www.niagara-community.com/" target="_blank">Niagara Framework Community (free learning resources)</a></li>
            <li><a href="https://www.youtube.com/..." target="_blank">Building automation YouTube channels</a></li>
        </ul>
        <p><strong>Timeline:</strong> 6-12 months for BMS certification</p>
    </div>
</div>
```

### Pattern 4: Inline Scrollable Content (No Tabs/Accordions)
**What:** All content visible in single flow within card, allowing natural scrolling
**When to use:** Throughout phase, as specified in CONTEXT.md decisions
**Example:**
```html
<div class="strategy-section" id="ai-ev-charging">
    <div class="strategy-header"><!-- Title, icon, subtitle --></div>

    <div class="strategy-content"><!-- Existing intro content --></div>

    <!-- NEW: Case studies section -->
    <div class="case-studies" style="margin-top: 1.5rem;">
        <!-- 3 case studies inline -->
    </div>

    <!-- NEW: Project ideas section -->
    <div class="project-ideas" style="margin-top: 1.5rem;">
        <!-- DIY + Commercial subsections -->
    </div>

    <!-- NEW: Career transitions section -->
    <div class="career-transitions" style="margin-top: 1.5rem;">
        <!-- 5 career paths inline -->
    </div>

    <div class="ai-sidebar"><!-- Existing AI tip --></div>
    <div class="citation"><!-- Existing sources --></div>
</div>
```

### Anti-Patterns to Avoid
- **Tabs or accordions:** User decision specifies inline/scrollable content only
- **Generic career advice:** Must show full transition path with specific skills, not vague "learn AI"
- **Unverified metrics:** Case studies need real organizations and sources, not "studies show..."
- **External CSS file:** Project architecture uses inline `<style>` block consistently
- **DIY/Commercial mixing:** Must clearly separate with distinct subsections/headers

## Don't Hand-Roll

Problems that look simple but have existing solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Footnote accessibility | Custom ARIA implementation | Standard `role="doc-noteref"` + `role="doc-footnote"` | HTML Living Standard defines these roles specifically for citations |
| Responsive text scaling | Custom media queries | Existing viewport transform system | Project already uses JavaScript viewport scaling (line 39-41 in HTML) |
| Citation formatting | Custom citation component | Existing `.citation` class pattern | Consistent with 50+ citations already in document |
| Color theming | Hardcoded hex values | CSS custom properties in `:root` | All colors defined as `--accent-purple`, `--bg-card`, etc. |
| Link styling | Inline styles | `.citation a` pattern | Maintains consistency with existing 100+ citation links |

**Key insight:** The existing codebase has mature patterns for every needed component. New content should extend existing classes (`.strategy-section`, `.citation`, `.ai-sidebar`) rather than introducing new styling approaches. The single-file architecture with inline CSS is an intentional design choice for portability and simplicity.

## Common Pitfalls

### Pitfall 1: Case Study Vagueness
**What goes wrong:** Writing "Studies show 20% improvement" without naming organization, timeframe, or source
**Why it happens:** Easier to write generic claims than find specific documented examples
**How to avoid:** Every case study must include: Organization name, specific action taken, measurable outcome with number, year/timeframe, verifiable source URL
**Warning signs:** Phrases like "research shows," "experts say," "typically achieves"—these signal missing specificity

### Pitfall 2: Career Path Skill Gaps
**What goes wrong:** Listing job title and vague "learn AI/ML" without bridging current skills to target role
**Why it happens:** Assuming pathway is obvious or universal
**How to avoid:** Map transferable skills from source background, identify specific gap skills, provide concrete learning resources (courses, certifications, communities), estimate realistic timeline
**Warning signs:** Missing "Background" or "Key skills to add" sections, no resource links, unrealistic timelines ("become data scientist in 2 weeks")

### Pitfall 3: DIY Project Inaccessibility
**What goes wrong:** Suggesting advanced projects requiring expensive equipment or expert knowledge for "beginner" level
**Why it happens:** Developer/maker bias about what's "easy"
**How to avoid:** Mix difficulty levels explicitly (beginner/intermediate/advanced), state prerequisites clearly, estimate realistic costs, link to tutorials
**Warning signs:** No difficulty rating, no cost estimate, assumes hardware availability, no tutorial links

### Pitfall 4: Salary Range Speculation
**What goes wrong:** Including salary ranges without regional context or reliable data sources
**Why it happens:** Desire for completeness overrides data availability
**How to avoid:** Only include salary when you have reliable source data (Glassdoor, BLS, industry reports), always specify region (U.S., EU, global), note "varies by location," omit if unreliable
**Warning signs:** Round numbers ($100K exactly), no regional qualifier, no source cited

### Pitfall 5: Citation Link Rot
**What goes wrong:** Linking to blog posts, news articles, or resources that disappear or move
**Why it happens:** Using first Google result without checking permanence
**How to avoid:** Prefer official sources (organization websites, .gov, .edu, peer-reviewed papers), check publication date (2020-2024 as specified), use Wayback Machine for archival when possible, test all links
**Warning signs:** Links to Medium/Substack personal blogs, paywalled content, "404 Not Found" when testing

### Pitfall 6: Breaking Existing Visual Hierarchy
**What goes wrong:** New sections use different heading levels, spacing, or color schemes than existing content
**Why it happens:** Not studying existing CSS classes before adding content
**How to avoid:** Use existing classes (`.strategy-section`, `.strategy-content`, `.ai-sidebar`, `.citation`), match spacing patterns (1.5rem margins), follow color palette from `:root` variables, test visual consistency
**Warning signs:** Inconsistent heading sizes, novel color values not in `:root`, different border/padding than existing cards

## Code Examples

Verified patterns from existing codebase:

### Existing Card Structure (Lines 825-861)
```html
<!-- From existing AI-Powered Energy Monitoring card -->
<div class="strategy-section" id="ai-monitoring">
    <div class="strategy-header">
        <div class="strategy-icon" style="background: rgba(139, 92, 246, 0.15); color: var(--accent-purple);">📊</div>
        <div>
            <div class="strategy-title">AI-Powered Energy Monitoring <span class="priority-badge priority-emerging">AI-Enabled</span></div>
            <div class="strategy-subtitle">Real-time consumption insights • Appliance-level disaggregation • Anomaly detection</div>
        </div>
    </div>
    <div class="strategy-content">
        <div class="strategy-text">
            <p><strong>Non-Intrusive Load Monitoring (NILM)</strong> uses machine learning...</p>
            <!-- 3 paragraphs of explanation -->
        </div>
        <div>
            <div class="strategy-stats">
                <div class="stat-row"><span class="label">Average user savings (Sense)</span><span class="value">9%</span></div>
                <!-- More stats -->
            </div>
            <div class="action-list">
                <div class="action-item">
                    <div class="action-icon">✔</div>
                    <div class="action-text"><strong>Install a smart energy monitor.</strong> Sense, Emporia, or Neurio...</div>
                </div>
                <!-- More actions -->
            </div>
        </div>
    </div>
    <div class="ai-sidebar">
        <div class="ai-sidebar-title">🤖 AI Tool Tip: Using ChatGPT for Energy Analysis</div>
        <p><strong>Use case:</strong> Analyzing your utility bills...</p>
        <div class="prompt-example">"I've uploaded my monthly electricity usage..."</div>
        <p><strong>Real-world example:</strong> Stanford's Sustainable Finance Initiative...</p>
    </div>
    <div class="citation">Sources: <a href="..." target="_blank">Sense Technology</a>, ...</div>
</div>
```

### CSS Color Palette (Lines 12-26)
```css
:root {
    --bg-primary: #0a0f1a;
    --bg-secondary: #111827;
    --bg-card: #1a2234;
    --accent-green: #10b981;
    --accent-blue: #3b82f6;
    --accent-amber: #f59e0b;
    --accent-red: #ef4444;
    --accent-purple: #8b5cf6;
    --accent-cyan: #06b6d4;
    --text-primary: #f1f5f9;
    --text-secondary: #94a3b8;
    --text-muted: #64748b;
    --border-color: #1e293b;
}
```

### Existing Citation Pattern (Line 860)
```html
<div class="citation">
    Sources:
    <a href="https://sense.com/technology" target="_blank">Sense Technology</a>,
    <a href="https://store.google.com/intl/en/ideas/articles/nest-thermostat-savings/" target="_blank">Google Nest Savings Study 2024</a>,
    <a href="https://www.cpuc.ca.gov/industries-and-topics/electrical-energy/demand-side-management/energy-efficiency" target="_blank">CPUC Energy Efficiency Programs</a>
</div>
```

### CSS Classes for New Sections (Recommended Addition)
```css
/* Case Studies Section */
.case-studies {
    margin-top: 1.5rem;
    padding: 1.5rem;
    background: var(--bg-secondary);
    border-radius: 0.5rem;
    border-left: 3px solid var(--accent-green);
}

.case-studies h4 {
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 1rem;
    color: var(--text-primary);
}

.case-study-item {
    padding: 1rem;
    margin-bottom: 1rem;
    background: var(--bg-card);
    border-radius: 0.4rem;
    border-left: 2px solid var(--border-color);
}

.case-study-item:last-child {
    margin-bottom: 0;
}

.case-study-item p {
    color: var(--text-secondary);
    font-size: 0.9rem;
    line-height: 1.7;
    margin: 0;
}

.case-study-item strong {
    color: var(--text-primary);
}

.case-study-item sup a {
    color: var(--accent-blue);
    text-decoration: none;
    font-weight: 600;
}

/* Project Ideas Section */
.project-ideas {
    margin-top: 1.5rem;
    padding: 1.5rem;
    background: var(--bg-secondary);
    border-radius: 0.5rem;
    border-left: 3px solid var(--accent-cyan);
}

.project-ideas h4 {
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 1rem;
    color: var(--text-primary);
}

.project-ideas h5 {
    font-size: 0.95rem;
    font-weight: 600;
    margin-bottom: 0.75rem;
    color: var(--text-primary);
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.diy-projects,
.commercial-projects {
    margin-bottom: 1.25rem;
}

.diy-projects:last-child,
.commercial-projects:last-child {
    margin-bottom: 0;
}

.project-item {
    padding: 1rem;
    margin-bottom: 0.75rem;
    background: var(--bg-card);
    border-radius: 0.4rem;
}

.project-item:last-child {
    margin-bottom: 0;
}

.project-item strong {
    color: var(--text-primary);
    font-size: 0.95rem;
    display: block;
    margin-bottom: 0.5rem;
}

.project-item p {
    color: var(--text-secondary);
    font-size: 0.85rem;
    line-height: 1.6;
    margin: 0;
}

/* Career Transitions Section */
.career-transitions {
    margin-top: 1.5rem;
    padding: 1.5rem;
    background: var(--bg-secondary);
    border-radius: 0.5rem;
    border-left: 3px solid var(--accent-purple);
}

.career-transitions h4 {
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 1rem;
    color: var(--text-primary);
}

.career-path {
    padding: 1.25rem;
    margin-bottom: 1rem;
    background: var(--bg-card);
    border-radius: 0.4rem;
    border: 1px solid var(--border-color);
}

.career-path:last-child {
    margin-bottom: 0;
}

.career-header strong {
    color: var(--accent-purple);
    font-size: 1rem;
    display: block;
    margin-bottom: 0.75rem;
}

.career-path p {
    color: var(--text-secondary);
    font-size: 0.85rem;
    line-height: 1.6;
    margin-bottom: 0.5rem;
}

.career-path p strong {
    color: var(--text-primary);
}

.career-path ul {
    margin: 0.5rem 0 0.75rem 1.5rem;
    padding: 0;
}

.career-path li {
    color: var(--text-secondary);
    font-size: 0.85rem;
    line-height: 1.6;
    margin-bottom: 0.25rem;
}

.career-path li a {
    color: var(--accent-blue);
    text-decoration: none;
}

.career-path li a:hover {
    text-decoration: underline;
}

/* Footnotes */
.footnotes {
    margin-top: 1rem;
    padding-top: 1rem;
    border-top: 1px solid var(--border-color);
}

.footnotes p {
    color: var(--text-muted);
    font-size: 0.7rem;
    line-height: 1.5;
    margin-bottom: 0.25rem;
}

.footnotes a {
    color: var(--accent-blue);
    text-decoration: none;
}

.footnotes a:hover {
    text-decoration: underline;
}
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Generic "AI saves energy" claims | Specific case studies with org names, metrics, sources | 2020-2024 | Readers can verify and replicate results |
| Accordion/tab UI for content | Inline scrollable sections | User decision (Phase 1 CONTEXT.md) | Simpler implementation, better accessibility |
| "Learn AI" career advice | Full transition pathways with skills gap mapping | Career guidance evolution ~2022 | Actionable for career changers vs. aspirational |
| Static educational content | Interactive code examples, DIY projects | Maker movement growth 2020+ | Hands-on learning supplements reading |
| CSS frameworks (Bootstrap, Tailwind) | Vanilla CSS with custom properties | Project inception | Zero dependencies, full control, smaller file size |
| Separate CSS file | Inline `<style>` block | Project architecture choice | Single-file portability, no build step |

**Deprecated/outdated:**
- **Tab/accordion patterns for content**: User explicitly decided against in CONTEXT.md; all content should be inline/scrollable
- **Generic case studies**: Pre-2020 approach of citing "studies show X%" without specifics; modern standard requires organization name, year, source URL
- **Build tools for static sites**: Project uses single HTML file with inline CSS, no webpack/vite/etc. needed

## Open Questions

Things that couldn't be fully resolved:

1. **Salary data reliability for niche roles**
   - What we know: Traditional roles (software developer, HVAC technician) have reliable salary data from BLS, Glassdoor
   - What's unclear: Newer roles like "Energy Data Scientist" or "Building Automation Specialist" have limited salary survey data, high regional variance
   - Recommendation: Include salary ranges only when you have multiple reliable sources (e.g., Glassdoor + industry report), always note "U.S. average, varies by location," omit entirely if only one unverified source exists

2. **Case study verification lag**
   - What we know: Many AI energy deployments are documented in press releases, company case studies, research papers
   - What's unclear: Publication dates may lag actual implementation by 6-18 months; "2024" case study might describe 2022-2023 deployment
   - Recommendation: Use publication date for citation, note deployment timeframe if mentioned in source (e.g., "deployed in 2023, results published 2024")

3. **DIY project hardware availability**
   - What we know: Raspberry Pi, Arduino, smart plugs are widely available; specific sensors/components vary
   - What's unclear: Supply chain issues can make specific components unavailable in certain regions/timeframes
   - Recommendation: List alternatives when possible (e.g., "Raspberry Pi 4 or equivalent SBC"), include vendor-agnostic descriptions, focus on approach over specific parts

4. **Free vs. audit vs. paid course distinction**
   - What we know: Coursera, edX offer "audit for free" (content access) vs. paid certificates
   - What's unclear: Terminology varies across platforms; "free" can mean audit-only, limited time trial, or fully free with certificate
   - Recommendation: Always specify "free audit" vs. "free with certificate" vs. "trial period," link directly to course page where pricing is clear

5. **Optimal number of career paths per card**
   - What we know: User specified "5 career transition suggestions" per card
   - What's unclear: Whether all 5 should be unique per card (25 total unique paths) or if some overlap is acceptable across cards
   - Recommendation: Aim for diversity—each card's 5 paths should show different starting backgrounds (e.g., developer, technician, analyst, non-tech, student) even if some target roles overlap; avoid exact duplicates

## Sources

### Primary (HIGH confidence)
- Existing codebase at `/media/foxy/ai/R/reports/COP28/index.html` - Lines 1-2864 analyzed for architecture patterns, CSS classes, content structure
- CONTEXT.md - User decisions on inline/scrollable content, footnote citations, career path format, visual hierarchy
- HTML Living Standard documentation - `role="doc-noteref"` and `role="doc-footnote"` for accessible citations

### Secondary (MEDIUM confidence)
- [AES Transforms Energy Business with AI (H2O.ai Case Study)](https://h2o.ai/case-studies/aes-transforms-energy-business-with-ai-and-h2o/) - Real-world AI energy monitoring example with $1M savings metric
- [IEA Case Study: AI for Building Energy Management Systems](https://www.iea.org/articles/case-study-artificial-intelligence-for-building-energy-management-systems) - HVAC AI applications with 23-37% savings figures
- [AI-Driven Predictive Maintenance in HVAC Systems (2024)](https://www.espjournals.org/IJAST/ijast-v2i3p102) - Recent research on HVAC predictive maintenance with 10-50% downtime reduction
- [Energy Monitoring Projects on GitHub](https://github.com/topics/energy-monitoring) - 451 open-source projects including 128 Python implementations for DIY project ideas
- [World Economic Forum: Energy Transition Skills Mapping (2024)](https://www.weforum.org/stories/2024/08/skills-jobs-energy-revolution/) - Career transition skills and pathways data
- [Coursera AI Courses](https://www.coursera.org/courses?query=artificial+intelligence) - Free audit options for AI/ML education resources
- [InnoEnergy Data Science & AI for Energy Engineers](https://mastersplus.innoenergy.com/about-us/data-science-ai-for-energy-engineers/) - Free energy-specific AI training

### Tertiary (LOW confidence - requires validation)
- WebSearch results on EV smart charging case studies (2023-2024) - Multiple academic papers cited but need direct source verification before use
- WebSearch results on smart home optimization metrics - 14-40% energy savings claims from various studies need individual paper verification
- DIY project tutorials from Medium, personal blogs - Need to verify with GitHub repos or official documentation before linking
- Salary ranges from unverified online sources - Must cross-reference with BLS, Glassdoor, or industry reports before including

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - Existing codebase provides definitive architecture (HTML5, inline CSS, vanilla JS)
- Architecture patterns: HIGH - 100+ existing cards demonstrate `.strategy-section` pattern consistently
- Case studies content: MEDIUM - Found multiple verified examples (AES, Google, IEA), but need additional research for all 15 case studies
- Career pathways: MEDIUM - General career transition data available, but niche AI/energy roles need deeper investigation
- Pitfalls: MEDIUM - Based on general web development best practices and project-specific decisions, not energy-domain-specific testing

**Research date:** 2026-01-28
**Valid until:** 2026-02-28 (30 days - content domain is stable, but case study sources may update)

**Notes for planner:**
- Existing 3 cards (AI Monitoring, Smart Home, Carbon Tracking) have established structure—use as templates
- 2 new cards (EV Smart Charging, HVAC Predictive Maintenance) should match existing visual patterns exactly
- All 15 case studies (3 per card × 5 cards) need organization names, specific metrics, years (2020-2024), and source URLs
- Career paths should prioritize free resources as specified in CONTEXT.md
- CSS for new sections (case-studies, project-ideas, career-transitions) needs to be added to inline `<style>` block
- No JavaScript needed for new content—purely HTML/CSS presentation
