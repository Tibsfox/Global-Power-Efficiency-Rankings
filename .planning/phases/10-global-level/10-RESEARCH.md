# Phase 10: Global Level - Research

**Researched:** 2026-01-29
**Domain:** Learning path content creation with AI prompts and project portfolio guidance for international/multilateral-level career transitions in energy systems
**Confidence:** HIGH

## Summary

This research investigates how to create personalized learning path content for 25 Global-level career transition pathways (5 cards x 5 pathways each). The phase adds learning path sections to existing career pathways targeting roles at international organizations (IEA, IRENA, UNFCCC), multilateral development banks (World Bank, ADB, AfDB), regional bodies (EU, African Union, ASEAN), international NGOs, and global think tanks. The content must differentiate from Phase 9's National-level focus through international frameworks, cross-border collaboration, and multilateral institutional framing.

Global-level content operates in a distinct institutional environment involving international coordination bodies (IEA has 150+ country coverage, IRENA has 168 member countries, UNFCCC coordinates Paris Agreement implementation across 197 countries), multilateral development banks ($125 billion in climate finance in 2023), regional frameworks (EU's €650 million for 14 cross-border energy projects announced Jan 28, 2026), and international think tanks (E3G with 150+ staff, WRI's Climate Watch tracking 197 countries). This level emphasizes international frameworks (Paris Agreement, SDGs, NCQG targets), cross-border coordination (EU energy union, ASEAN power integration, BRICS+ energy cooperation), multilateral funding mechanisms ($300 billion/year NCQG target by 2035), and diplomatic/multi-stakeholder engagement.

Research reveals that Global-level work requires DISTINCT prompt patterns from National-level: while National emphasizes federal programs and systems-scale infrastructure, Global emphasizes international frameworks, cross-cultural collaboration, and multilateral coordination. The user decisions in CONTEXT.md specify: tone varies by pathway type (visionary/strategic for think tanks, diplomatic/collaborative for UN/multilateral roles), keep framework references broad rather than name-dropping treaties, match organizations to pathways (policy roles get UN system, finance roles get development banks, technical roles get IEA/IRENA), and address the international experience gap through actionable steps from current position.

**Primary recommendation:** Add learning path sections to the 25 existing Global-level career pathways using the established HTML structure. Each pathway should include: (1) one AI prompt example demonstrating international/multilateral context with appropriate institutional voice (varies by pathway: visionary for think tanks, diplomatic for UN roles, technical for IEA/IRENA), (2) 2-3 project portfolio ideas with deliverables ranging from individual analysis using international datasets (Beginner) to team-contribution scenarios in multilateral contexts (Proficient), and (3) integration of international resources as both career destinations and learning tools (IEA reports, IRENA data, Climate Watch platform). Prompt patterns should emphasize international coordination, cross-border collaboration, and multilateral frameworks—distinct from National's federal program focus.

## Standard Stack

The established libraries/tools for this domain:

### Core
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| HTML5 | Current Living Standard | Semantic markup for learning content | Existing codebase architecture (single-file HTML) |
| CSS3 | Current (2026) | Styling with existing `.career-path` class | Consistent with Phase 5 career pathway styling |
| Inline styling | N/A | Prompt box styling with cyan accent | Established in Phase 5, maintains consistency |

### Supporting
| Library | Version | Purpose | When to Use |
|---------|---------|---------|-------------|
| Existing CSS variables | Phase 5 | `--bg-card`, `--accent-cyan`, `--text-secondary` | All prompt boxes and project lists |
| `.career-path` structure | Phase 5 | Wrapper div for career pathway content | Contains all learning path additions |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| Inline prompt styling | CSS class `.prompt-example` | Class exists for sidebar prompts but inline styling maintains Phase 5 consistency |
| National patterns | NEW Global patterns | User decision: Create patterns distinct from National - international/multilateral framing required |
| Specific treaty names | Broad framework references | User decision: Keep broad ("international climate commitments") not textbook ("Paris Agreement Article 6") |
| National org references | International org names | Match org to pathway - UN system for policy, dev banks for finance, IEA/IRENA for technical |

**Installation:**
```bash
# No installation needed - extends existing HTML structure
# All styling uses existing CSS variables defined in index.html
```

## Architecture Patterns

### Recommended Project Structure
```
index.html (existing)
└── Global Level section (~lines 7100-7900)
    ├── ai-multilanguage card (5 pathways)
    │   └── Policy Researcher → International Energy Policy Analyst (IEA, IRENA)
    │   └── Data Scientist → Global Climate Data Specialist (WRI, Climate Analytics)
    │   └── Translator/Linguist → Climate Policy Translation Specialist
    │   └── Journalist → International Climate Communications Specialist
    │   └── Academic Researcher → Think Tank Senior Fellow (WRI, IISD, E3G)
    ├── ai-satellite card (5 pathways)
    │   └── [5 pathways - remote sensing focus]
    ├── ai-knowledgesharing card (5 pathways)
    │   └── Educator → International Climate Training Specialist (UN CC:Learn)
    │   └── Software Developer → International Climate Platform Developer (WRI)
    │   └── Project Manager → Regional Climate Program Coordinator (EU, ASEAN, AU)
    │   └── Librarian/Knowledge Manager → Climate Knowledge Management Specialist
    │   └── Consultant → International Climate Capacity Building Specialist
    ├── ai-supplychain card (5 pathways)
    │   └── Supply Chain Manager → Corporate Scope 3 Program Manager
    │   └── Data Scientist → Corporate Emissions Analytics Specialist (CDP)
    │   └── [3 additional pathways - supply chain emissions focus]
    └── ai-climatefinance card (5 pathways)
        └── [5 pathways - climate finance focus]
            └── .career-path (each pathway)
                ├── Existing content (header, background, skills, resources, timeline)
                └── **NEW: Learning Path section**
                    ├── AI Learning Prompt Example
                    │   ├── International/multilateral context
                    │   ├── Organization/framework framing
                    │   ├── Prompt text with [VARIABLES]
                    │   └── Terminology definitions where needed
                    └── Project Portfolio Ideas (2-3 projects)
                        ├── Beginner: individually achievable with international data (15-25 hours)
                        ├── Intermediate: analysis with multilateral frameworks (30-50 hours)
                        └── Proficient: team-contribution scenario in international context (50-80 hours)
```

### Pattern 1: International Framework Navigation
**What:** AI prompt for understanding international agreements, multilateral institutions, and global coordination mechanisms
**When to use:** For pathways involving international policy, UN system roles, or multilateral coordination
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm transitioning from [policy analysis / research / government] to an International Energy Policy Analyst role at IEA or IRENA. Help me understand the international energy governance landscape: (1) How do IEA (31 member countries, energy security focus) and IRENA (168 member countries, renewable focus) coordinate with each other and with UNFCCC on international climate commitments? (2) What analytical products do these organizations produce—IEA's World Energy Outlook, IRENA's renewable statistics, UNFCCC technical papers—and what skills do analysts need to contribute? (3) How do multilateral development banks (World Bank, ADB, AfDB providing $125 billion climate finance in 2023) work with UN energy agencies on project finance and capacity building? (4) What career progression pathways exist from national government energy roles to international organization positions?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>This Framework Navigation prompt maps the international energy governance ecosystem. IEA focuses on energy security and efficiency with 31 OECD member countries; IRENA promotes renewable energy with 168 universal member countries. Understanding how these organizations coordinate—and where your analysis can contribute—is essential for international energy careers. Follow up: "What specific language skills (English + French for UN agencies, regional languages for regional bodies) are required for different international organizations?"</em></p>
```

### Pattern 2: Cross-Border Collaboration Analysis
**What:** AI prompt for understanding regional energy cooperation, cross-border projects, and multilateral coordination
**When to use:** For pathways involving regional bodies (EU, ASEAN, African Union) or cross-border energy infrastructure
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm preparing for a Regional Climate Program Coordinator role with EU, ASEAN, or African Union. Help me analyze cross-border energy collaboration: (1) How does the EU coordinate €650 million in cross-border energy infrastructure across 27 member states with different regulatory frameworks and languages (announced Jan 28, 2026)? (2) What mechanisms enable ASEAN power integration across Southeast Asian countries, and how does BRICS+ Energy Cooperation Roadmap 2025-30 structure coordination across member countries? (3) What role do regional development banks (AfDB, ADB, IDB) play in financing cross-border projects versus national infrastructure? (4) How do multilateral coordination skills—stakeholder mapping, cross-cultural communication, diplomatic negotiation—differ from national program management?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Regional coordination involves navigating multiple languages, regulatory systems, and political contexts. The EU's MedGen project aims to install 10 GW solar/wind in Algeria/Tunisia with HVDC interconnectors to Italy exporting 22.8 TWh/year—demonstrating how cross-border projects require both technical expertise and diplomatic coordination. Understanding regional governance structures is essential for multilateral roles. Follow up: "What cross-cultural competencies and language skills are essential for coordinating energy programs across [EU/ASEAN/African Union] member states?"</em></p>
```

### Pattern 3: Multilateral Funding Mechanisms
**What:** AI prompt for understanding climate finance flows, development bank operations, and international funding frameworks
**When to use:** For pathways involving climate finance, development banks, or multilateral fund management
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm transitioning from [finance / project management / development] to climate finance with multilateral development banks or Green Climate Fund. Help me understand international climate finance mechanisms: (1) How do the major multilateral development banks (World Bank, ADB, AfDB, providing $125 billion climate finance in 2023) structure climate project financing differently from commercial banks? (2) What is the NCQG (New Collective Quantified Goal) target of $300 billion/year by 2035 replacing the previous $100 billion commitment, and how will it flow through different channels (bilateral, multilateral, private mobilized)? (3) How do project developers navigate Green Climate Fund, Global Environment Facility, and bilateral climate funds—what are approval processes, co-financing requirements, and typical timelines? (4) What skills differentiate successful climate finance professionals—understanding both development effectiveness AND financial returns?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>International climate finance involves complex coordination between multilateral development banks, dedicated climate funds (GCF received $13.62 billion pledges for 2024-2027), bilateral donors, and private sector mobilization. Understanding how these funding streams work together—and what skills are needed to structure bankable projects—is essential for climate finance careers. Follow up: "Walk me through a typical GCF project approval process from concept note through implementation, including required documentation and typical timelines."</em></p>
```

### Pattern 4: Multi-Stakeholder Coordination
**What:** AI prompt for mapping international stakeholders, understanding diplomatic processes, and building multilateral partnerships
**When to use:** For pathways involving UN negotiations, international NGOs, or multi-stakeholder initiatives
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm preparing for an international NGO role coordinating with UNFCCC and regional bodies. Help me map the multi-stakeholder landscape for international climate action: (1) Who are the key players in UNFCCC processes—country negotiators, UN secretariat technical staff, observer organizations (IRENA, IEA), and accredited NGOs—and how do they interact during COP negotiations? (2) How do major international think tanks (WRI with 1,500 staff globally, E3G with 150+ staff, IISD) influence policy through research, advocacy, and stakeholder convening? (3) What role do business coalitions (We Mean Business, RE100) and subnational networks (C40 Cities, Under2 Coalition) play in international climate governance? (4) How do I build the diplomatic and networking skills needed for effective multilateral coordination?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>International climate action involves complex multi-stakeholder coordination. UNFCCC COP negotiations bring together 197 country delegations, UN agencies, multilateral development banks, international NGOs, business coalitions, and subnational networks. Understanding this ecosystem—and how to build relationships across different stakeholder types—is essential for international climate careers. Follow up: "What diplomatic skills and soft power competencies (relationship building, cross-cultural communication, multilateral negotiation) should I develop for international organization roles?"</em></p>
```

### Pattern 5: International Data and Methodologies
**What:** AI prompt for understanding international datasets, comparative methodologies, and global benchmarking
**When to use:** For pathways involving international data analysis, comparative research, or technical standardization
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm building international data analysis skills for a Global Climate Data Specialist role at WRI or Climate Analytics. Help me understand international energy and climate datasets: (1) How do IEA World Energy Statistics, IRENA renewable energy statistics, and Climate Watch emissions data (150 years, 197 countries) differ in methodology, coverage, and update frequency? (2) What challenges exist in creating internationally comparable data—how do organizations handle different national reporting standards, missing data, and methodology changes over time? (3) How does Climate Watch integrate dozens of datasets (UNFCCC, PRIMAP-hist, CAIT, PIK) to provide consistent cross-country comparisons? (4) What technical skills (Python/R, API integration, multilingual data processing) are essential for working with international datasets at scale?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>International data analysis requires understanding both technical skills and institutional methodologies. IEA maintains 150+ years of energy statistics with rigorous quality control; Climate Watch provides harmonized emissions data across 197 countries; IRENA tracks renewable capacity and generation globally. Learning to work with these authoritative international datasets—and understanding their methodological foundations—is essential for global climate data careers. Follow up: "Walk me through how to access and analyze IEA World Energy Outlook Free Dataset (CC licensed) and integrate it with Climate Watch data for cross-country renewable energy transition analysis."</em></p>
```

### Anti-Patterns to Avoid
- **Using National-level framing for Global pathways:** Don't reference "federal programs" (DOE, EERE, national labs) or "federal utilities" (TVA, BPA) in Global pathways—frame at international/multilateral scale (UN system, IEA/IRENA, multilateral development banks, regional bodies)
- **Missing international/multilateral coordination:** Every prompt should convey cross-border collaboration, international frameworks, or multilateral institutions—not single-country programs even if large-scale
- **Overlooking language and cultural requirements:** Global roles often require multiple languages and cross-cultural competencies—acknowledge where relevant without overemphasizing
- **Ignoring international experience gap:** Many international organizations require years of experience—address through actionable steps (national roles → consulting → international) rather than unrealistic timelines
- **Treaty name-dropping instead of framework understanding:** User decision: keep broad ("international climate commitments") rather than textbook references ("Paris Agreement Article 6")
- **Generic "international organization" references:** Name specific organizations—IEA vs IRENA, World Bank vs AfDB, WRI vs E3G—they have distinct mandates and cultures
- **Private sector overemphasis:** User decision: include global consulting (McKinsey sustainability, Big 4 climate) as destinations, but focus prompts/projects on public institutions
- **Missing geographic balance:** Some orgs are hub-centric (UN Geneva/NYC), others distributed (regional development banks)—acknowledge reality without discouraging

## Don't Hand-Roll

Problems that look simple but have existing international solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| International energy statistics | Custom country data aggregation | IEA World Energy Statistics, IEA Observatory (150+ countries) | Standardized methodologies, 150+ years comparable data, expert validation |
| Climate finance tracking | Manual fund monitoring | Climate Funds Update, GCF databases | Real-time updates, $125B+ annual flows tracked |
| Cross-country emissions comparison | Country-by-country web scraping | Climate Watch (150 years, 197 countries), UNFCCC inventories | Consistent methodology, internationally comparable, continuously updated |
| International policy analysis | Manual translation and comparison | Climate Policy Radar (Google Cloud Translation API), IRENA policy database (180+ countries) | Multilingual access, searchable corpus, standardized analysis |
| Multilateral org career searches | Individual organization websites | UN careers portal, IEA/IRENA careers, UNjobs.org | Centralized, comprehensive, international positions |
| Supply chain emissions | Custom Scope 3 calculators | CDP disclosures (23,100+ companies), Climatiq API | Industry-standard factors, continuously updated |
| International training | Custom curriculum | UN CC:Learn (1.2M beneficiaries, 195 countries), UNITAR Diplomacy courses | Proven methodologies, recognized credentials |

**Key insight:** International organizations have invested billions in data infrastructure, standardized methodologies, and expert validation systems. Don't rebuild what exists—leverage authoritative sources. IEA maintains 150+ years of energy statistics; Climate Watch integrates dozens of datasets with consistent methodologies across 197 countries; multilateral development banks track $125 billion in annual climate finance. Using these platforms ensures international credibility and saves years of work.

## Common Pitfalls

### Pitfall 1: Using National-Level Framing for Global Context
**What goes wrong:** Referencing DOE offices, federal utilities, national labs, or U.S. federal programs in Global-level pathways
**Why it happens:** Carry-over from Phase 9 language patterns
**How to avoid:** Frame at international/multilateral scale—UN system (IEA, IRENA, UNFCCC), multilateral development banks (World Bank, ADB, AfDB), regional bodies (EU, ASEAN, African Union), international NGOs, global think tanks. No DOE, TVA, BPA, NREL references.
**Warning signs:** Phrases like "DOE Grid Deployment Office," "national laboratory," "federal utility," or "U.S. government" in Global pathways

### Pitfall 2: Missing International Coordination Mechanisms
**What goes wrong:** Mentioning multiple countries without demonstrating actual cross-border collaboration, multilateral frameworks, or international coordination
**Why it happens:** Confusing "international scale" (big) with "international coordination" (collaborative)
**How to avoid:** Screen prompts for coordination mechanisms: regional bodies (EU Energy Union, ASEAN cooperation, BRICS+ roadmap), multilateral frameworks (Paris Agreement, NCQG), shared platforms (IEA Observatory), or cross-border projects (EU-MENA interconnectors, EU PCI projects)
**Warning signs:** Prompt mentions multiple countries but no coordination mechanism, framework, or institution

### Pitfall 3: Unrealistic International Career Timelines
**What goes wrong:** Suggesting 3-4 month timelines for direct transitions into highly competitive IEA/IRENA/UNFCCC positions that require 5-10+ years experience
**Why it happens:** Treating international transitions like domestic skill-building
**How to avoid:** Be realistic about timeline for skills (6-12 months reasonable) while adding context about typical requirements (experience levels, advanced degrees, competition). Suggest stepping stones: national government → international consulting → multilateral institution.
**Warning signs:** Timeline under 6 months for direct transition into UN agencies without mentioning typical experience requirements

### Pitfall 4: Ignoring Language and Cultural Requirements
**What goes wrong:** Not mentioning language requirements when they're critical for the role (French for many UN positions, regional languages for regional bodies)
**Why it happens:** Focusing only on technical skills
**How to avoid:** Acknowledge language requirements where material. UN agencies often require English + French or another UN language; EU institutions often need 2-3 EU languages; African Union may need Arabic; ASEAN may need regional languages. One sentence per pathway sufficient.
**Warning signs:** UN/EU/regional body pathway with no mention of language requirements when they're standard

### Pitfall 5: Treaty Name-Dropping Instead of Framework Understanding
**What goes wrong:** Using textbook references like "Paris Agreement Article 6 carbon markets" or "SDG 7 energy access targets"
**Why it happens:** Demonstrating knowledge through specific citations
**How to avoid:** User decision: keep broad ("international climate commitments," "development effectiveness") rather than name-dropping treaties. Shows domain awareness without sounding textbook.
**Warning signs:** Prompts citing Paris Agreement articles, SDG numbers, or specific treaty provisions rather than broader frameworks

### Pitfall 6: Generic "International Organization" References
**What goes wrong:** Using "international organizations" or "UN agencies" without specifying which ones
**Why it happens:** Simpler to write generic references
**How to avoid:** Name specific organizations when relevant—IEA vs IRENA (different mandates), World Bank vs AfDB (different geographies), WRI vs E3G (different approaches). Organizations have distinct cultures and requirements.
**Warning signs:** "Work at UN agencies" without specifying which; "international organizations" without naming specific institutions

### Pitfall 7: Missing Geographic and Remote Work Context
**What goes wrong:** Not acknowledging that some roles are hub-centric (Geneva, NYC, Paris) while others are distributed, or that remote work varies by organization
**Why it happens:** Assuming all international work is the same
**How to avoid:** User decision: mention where accurate per org type—some genuinely remote-possible, others require in-country presence. UN system often hub-centric; international NGOs more distributed; consulting roles may be remote-friendly.
**Warning signs:** No acknowledgment of location requirements or remote work possibilities when they materially affect role accessibility

### Pitfall 8: Individual-Scale Proficient Projects
**What goes wrong:** "Proficient" projects that are still individually achievable rather than showing team-scale contribution in multilateral context
**Why it happens:** Easier to design solo projects than team scenarios
**How to avoid:** Proficient projects should show contribution to multilateral team efforts: "Your analysis feeds into IRENA's Global Renewable Energy Report," "Your research contributes to the delegation's position paper for COP negotiations," "Your data visualization supports the multilateral development bank's climate finance annual report."
**Warning signs:** Proficient projects framed as solo efforts rather than contributions to international team-scale work

## Code Examples

Verified patterns from existing Phase 5 structure:

### HTML Structure for Learning Path Section (Global Level)
```html
<!-- Add after Timeline paragraph in each .career-path div -->

<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-cyan); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"[Prompt text with [VARIABLES], international/multilateral framing, and organization context]"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>[Follow-up prompt suggestion, terminology definitions, and international resource mentions]</em></p>

<p><strong>Project Portfolio Ideas:</strong></p>
<ul style="margin-bottom: 1rem;">
    <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Beginner:</strong> [Individually achievable analysis using public international data]. <em>Deliverable: [specific artifact]. Time: 15-25 hours.</em>
    </li>
    <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Intermediate:</strong> [Cross-country comparative analysis with international datasets and multilateral framing]. <em>Deliverable: [specific artifact]. Time: 30-50 hours.</em>
    </li>
    <li style="margin-bottom: 0; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Proficient:</strong> [Team-contribution scenario showing how individual work feeds into multilateral organization output]. <em>Deliverable: [specific artifact showing international context]. Time: 50-80 hours.</em>
    </li>
</ul>
```

### International Organization References (Examples from Research)
```
UN Energy System:
- IEA (International Energy Agency): 31 member countries, energy security focus, World Energy Outlook
- IRENA (International Renewable Energy Agency): 168 member countries, renewable focus
- UNFCCC: Paris Agreement implementation, NDC tracking, 197 country parties

Multilateral Development Banks:
- World Bank Group: Global development bank, $125B combined MDB climate finance 2023
- ADB (Asian Development Bank): Asia-Pacific focus, signed $30M Uzbekistan solar project Jan 2026
- AfDB (African Development Bank): Africa focus, Mission 300 ($90B to connect 300M by 2030)
- IDB (Inter-American Development Bank): Latin America/Caribbean focus
- EBRD, EIB: European focus

Regional Bodies:
- European Union: 27 member states, €650M for 14 cross-border energy projects (Jan 28, 2026)
- ASEAN: Southeast Asia cooperation, power integration, BRICS+ Energy Roadmap 2025-30
- African Union: Africa Climate Summit 2025, $50B catalytic finance, Climate Innovation Compact

International Think Tanks/NGOs:
- WRI (World Resources Institute): 1,500 staff globally, Climate Watch platform
- E3G: 150+ staff, climate diplomacy and policy economy focus
- IISD (International Institute for Sustainable Development): Canadian-based, global reach
- Climate Analytics: Science-based climate policy analysis

Data Platforms:
- Climate Watch: WRI platform, 150 years emissions data, 197 countries
- IEA Energy and AI Observatory: Launched Feb 2025, 150+ country coverage
- CDP: 23,100+ companies disclosed 2025, corporate emissions tracking
```

### International Datasets (Free/Public Resources)
```
Energy Statistics:
- IEA World Energy Statistics: 150+ years, subscription required for full access
- IEA World Energy Outlook Free Dataset: CC BY-NC-SA 4.0 license, scenario data to 2050
- IRENA Renewable Energy Statistics: Free, annual updates, capacity and generation data

Climate/Emissions Data:
- Climate Watch: Free, 150 years emissions, 197 countries, integrated datasets
- UNFCCC Data Portal: Free, national GHG inventories, NDC tracking
- EDGAR (Emissions Database for Global Atmospheric Research): Free, gridded emissions

Development Data:
- World Bank Open Data: Free, comprehensive development indicators
- OECD.Stat: Free for many datasets, development assistance tracking

Policy/Finance Tracking:
- IRENA Policy Database: Free, 180+ countries, renewable and efficiency policies
- Climate Funds Update: Free, multilateral and bilateral climate fund tracking
- Climate Policy Radar: Free, multilingual climate law and policy search
```

### Career Pathways and Hiring Processes
```
IEA/IRENA Hiring:
- Typical requirements: 5-10+ years relevant experience, advanced degrees often required
- Language: English required, French highly beneficial for many UN roles
- Process: Competitive, months from application to hire
- Career portals: careers.smartrecruiters.com/OECD/iea, irena.org/About/Careers

Multilateral Development Bank Hiring:
- 222 career opportunities across 33 MDBs as of Jan 5, 2026 (mdbjobs.com)
- Typical requirements: Master's degree, 5+ years experience, development sector background
- Process: Competitive, technical + behavioral assessments
- Young Professional Programs: Entry pathway for recent graduates

UN System Hiring:
- careers.un.org: Centralized UN recruitment
- Language requirements: English + French or other UN languages common
- Security clearances: May be required for sensitive positions
- JPO/YPP programs: Entry pathways for nationals of contributing countries

International Think Tank Hiring:
- Varies by organization—some PhDs, some policy practitioners
- Portfolio of policy impact often more important than academic credentials
- Rapid turnaround culture—weeks not years for analysis
- Communication skills (policy briefs, media) as important as research skills
```

### Diplomatic and Soft Skills Training
```
Diplomatic Training:
- UNITAR: Comprehensive catalogue 2025-2026, bilateral/multilateral negotiation, environmental diplomacy
- Global Diplomatic Forum: 25th Edition Sep 7-11, 2026 London
- Diplo Foundation: Digital diplomacy, multilateral negotiation courses

Skills Emphasized:
- Cross-cultural communication: Working across languages and cultural contexts
- Multilateral negotiation: Building consensus among diverse stakeholders
- Diplomatic protocol: Understanding formal and informal international processes
- Network building: Relationship development across institutions (Proficient level only per user decision)
- Soft power: Influence through persuasion not authority
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Manual multilingual policy analysis | AI-powered translation and analysis (Climate Policy Radar with Google Cloud API) | 2024-2025 | Searchable climate law/policy in any language, breaking regional barriers |
| Annual international energy statistics | Real-time tracking with AI (IEA Energy and AI Observatory launched Feb 2025) | February 2025 | Continuous monitoring of AI-energy nexus across 150+ countries |
| Isolated national climate finance | Coordinated multilateral flows with NCQG framework | COP29 2024 | $300B/year by 2035 target replacing $100B commitment |
| Single-country renewable planning | Regional cross-border coordination (EU €650M for 14 projects, ASEAN integration, BRICS+ roadmap) | 2025-2026 | Multi-country optimization, grid-wide renewable integration |
| Manual Scope 3 emissions estimation | AI-powered supply chain analysis using CDP disclosures (23,100+ companies) | 2024-2025 | Automated tracking, 48% organizations use AI but only 24% disclose Scope 3 |
| Static international cooperation | Flexible multilateral partnerships adapting to geopolitical shifts | 2025-2026 | WEF Barometer 2026: cooperation more resilient than expected despite tensions |

**Deprecated/outdated:**
- **Isolated national energy planning without regional coordination:** Regional bodies now require integrated cross-border planning
- **$100 billion annual climate finance target:** Replaced by NCQG $300B/year by 2035 (COP29 2024)
- **Manual climate finance proposal screening:** Major funds exploring AI for evaluation efficiency (GCF, Adaptation Fund scoping studies 2025)
- **Single-language policy analysis:** Climate Policy Radar enables any-language search, UNFCCC materials in 6 UN languages standard
- **Paper-based international cooperation:** Digital platforms (IEA Observatory, Climate Watch) now standard for international coordination

## Open Questions

Things that couldn't be fully resolved:

1. **Optimal prompt pattern distribution across 25 pathways**
   - What we know: 5 patterns documented (Framework Navigation, Cross-Border Collaboration, Multilateral Funding, Multi-Stakeholder Coordination, International Data)
   - What's unclear: Whether even distribution (5 uses each) or weighted by card theme produces better outcomes
   - Recommendation: Weight by card theme while ensuring all 5 patterns appear. ai-multilanguage emphasizes Framework Navigation and International Data; ai-climatefinance emphasizes Multilateral Funding; ai-knowledgesharing emphasizes Multi-Stakeholder Coordination.

2. **Language requirement emphasis level**
   - What we know: UN agencies often require English + French; regional bodies need regional languages
   - What's unclear: How much emphasis without overwhelming technical skills focus or discouraging monolingual readers
   - Recommendation: One sentence per pathway where material. Phrase as "Language requirements: English required, French highly beneficial" rather than "You must speak French." Factual not prescriptive.

3. **Tone calibration by pathway type**
   - What we know: User decision specifies visionary/strategic for think tanks, diplomatic/collaborative for UN/multilateral
   - What's unclear: Exact tone differences in practice
   - Recommendation: Think tank prompts emphasize "innovation," "transformation," "strategic pathways." UN/multilateral prompts emphasize "coordination," "stakeholder engagement," "consensus building." Technical (IEA/IRENA) prompts stay factual with less rhetorical flourish.

4. **International experience gap addressing**
   - What we know: User decision to address barrier, focus on actionable steps, include ways to gain international exposure
   - What's unclear: Balance between acknowledgment and actionable guidance
   - Recommendation: Beginner projects include internationally-focused work from current position (analyzing IEA data, contributing to Climate Watch, participating in virtual UN events). Acknowledge typical requirements in Timeline but don't overemphasize barriers.

5. **Private sector emphasis**
   - What we know: User decision to include global consulting (McKinsey sustainability, Big 4) as destinations but focus prompts/projects on public institutions
   - What's unclear: Percentage split across 25 pathways
   - Recommendation: 15-20% of pathways can mention global consulting/corporate sustainability as destinations (especially supply chain card), 80-85% focus on international organizations, multilateral banks, UN system, think tanks.

6. **Remote work and geographic requirements**
   - What we know: User decision to mention where accurate—some genuinely remote-possible, others require in-country
   - What's unclear: How prominently to address without discouraging applicants
   - Recommendation: Note factually where relevant: "IEA headquarters in Paris, satellite offices in select countries." "Some international NGO roles remote-eligible, UN system typically requires presence in duty station." One sentence, factual, non-prescriptive.

## Sources

### Primary (HIGH confidence)
- [IEA Careers](https://www.iea.org/about/careers) - Official international energy agency career information
- [IRENA Careers](https://www.irena.org/About/Careers) - International renewable energy agency jobs
- [UNFCCC Careers](https://unfccc.int/about-us/careers) - UN climate change secretariat positions
- [UN Careers Portal](https://careers.un.org/) - Centralized UN recruitment
- [World Bank Careers](https://www.worldbank.org/en/about/careers) - Multilateral development bank jobs
- [MDB Jobs](https://www.mdbjobs.com/) - 222 opportunities across 33 multilateral development banks (Jan 5, 2026)
- [CEF Energy €650M Cross-Border Projects](https://cinea.ec.europa.eu/news-events/news/cef-energy-eu650-million-allocated-14-cross-border-energy-infrastructure-projects-2026-01-28_en) - EU cross-border energy infrastructure (Jan 28, 2026)
- [Climate Finance Record $125B](https://www.aiib.org/en/news-events/news/2024/Climate-Finance-by-Multilateral-Development-Banks-Hits-Record-in-2023.html) - MDB climate finance 2023
- [IEA Energy and AI Observatory](https://www.iea.org/news/as-energy-and-ai-links-grow-new-iea-observatory-provides-latest-data-and-analysis) - Launched February 2025, 150+ countries
- [Climate Watch Data Platform](https://www.climatewatchdata.org/) - WRI, 150 years emissions, 197 countries
- [CDP Disclosure 23,100+ Companies](https://www.cdp.net/en) - Corporate emissions tracking 2025

### Secondary (MEDIUM confidence)
- [BRICS+ Energy Cooperation Roadmap 2025-30](https://powerline.net.in/2025/08/11/collaborative-framework-brics-members-set-to-redefine-multilateral-regional-energy-cooperation/) - Multilateral regional energy cooperation
- [WEF Global Cooperation Barometer 2026](https://www.businesstoday.in/wef-2026/story/davos-2026-global-cooperation-proving-resilient-despite-geopolitical-strain-wef-barometer-finds-510066-2026-01-08) - International cooperation trends
- [UNITAR Diplomacy Training 2025-2026](https://unitar.org/sustainable-development-goals/multilateral-diplomacy/unitar-upcoming-activities-diplomacy) - Multilateral diplomacy education
- [E3G 150+ Staff](https://www.e3g.org/about/careers/) - Climate think tank scale
- [Climatebase Career Platform](https://climatebase.org) - Climate career opportunities aggregator
- [IRENA Renewable Energy Jobs 2025](https://www.irena.org/Publications/2026/Jan/Renewable-energy-and-jobs-Annual-review-2025) - Published January 2026

### Tertiary (LOW confidence - requires validation)
- Specific language requirements by organization (based on general knowledge, should verify with HR policies)
- Typical timeline from application to hire at international organizations (highly variable)
- Exact experience requirements for specific roles (varies by position and seniority)
- Remote work policies post-2025 (evolving, organization-dependent)

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - Extends proven Phase 5 HTML structure with no new dependencies
- Prompt patterns: HIGH - 5 patterns researched with international organization expertise and multilateral framing
- Pitfalls: HIGH - Based on user decisions in CONTEXT.md and differentiation from Phase 9 National level
- International org references: HIGH - Official sources for IEA, IRENA, UNFCCC, MDBs, regional bodies
- Career pathways: MEDIUM - Organizations verified, but highly competitive nature should be emphasized
- Geographic/language requirements: MEDIUM - General patterns clear, specific requirements vary by position
- Climate finance flows: HIGH - Recent data ($125B 2023, NCQG $300B/year target) from official sources

**Research date:** 2026-01-29
**Valid until:** 90 days (international frameworks relatively stable; revalidate if major policy changes or new multilateral initiatives)

**Notes for planner:**
- All 25 Global-level pathways already exist in HTML with Background, Skills, Salary, Resources, Timeline
- Task is to ADD learning path content (prompt + projects) after Timeline paragraph in each pathway
- Prompt patterns should emphasize international frameworks, cross-border collaboration, multilateral coordination—DISTINCT from National's federal program focus
- NEW patterns for Global: Framework Navigation, Cross-Border Collaboration, Multilateral Funding, Multi-Stakeholder Coordination, International Data
- Each pathway needs 1 prompt example (80-150 words given international complexity) + 2-3 project ideas (60-100 words each)
- Tone varies by pathway: visionary/strategic for think tanks, diplomatic/collaborative for UN/multilateral, technical for IEA/IRENA
- Framework references keep broad ("international climate commitments") not textbook ("Paris Agreement Article 6")
- Proficient projects should show team-contribution in multilateral context, not isolated individual work
- Note language/location requirements where relevant but don't overemphasize
- Name specific organizations (IEA vs IRENA, World Bank vs AfDB) rather than generic "international organizations"
- Address international experience gap through actionable steps from current position
- Beginner projects use public international data (IEA Free Dataset, Climate Watch, World Bank Open Data)
- Private sector mentioned sparingly (15-20% of pathways), focus on public institutions per user decision
