# Phase 9: National Level - Research

**Researched:** 2026-01-29
**Domain:** Learning path content creation with AI prompts and project portfolio guidance for national/federal-level career transitions in energy systems
**Confidence:** HIGH

## Summary

This research investigates how to create personalized learning path content for 25 National-level career transition pathways (5 cards x 5 pathways each). The phase adds learning path sections to existing career pathways targeting roles at DOE offices (EERE, OE, ARPA-E), national laboratories (NREL, PNNL, Argonne), federal utilities (TVA, BPA), grid operators (FERC-regulated ISOs), international organizations (IEA, IRENA, UNFCCC), and federal contractors. The content must differentiate from Phase 8's state regulatory focus through systems-scale thinking, federal program context, and infrastructure-level framing.

National-level content operates in a distinct institutional environment involving federal agencies (DOE, EPA, FERC), national laboratories as both employers and resource producers, federal utilities serving multi-state regions (TVA serves 10 million across 7 states; BPA markets power from 31 federal dams), and international organizations tracking global climate commitments. This level emphasizes GW-scale impacts (not MW), long-horizon planning (2035/2050 targets), interconnected systems (cross-sector, cross-regional), and federal procurement/hiring processes (USAJOBS, security clearances, FAR compliance).

Research reveals five NEW prompt patterns suited for National-level work: (1) **Program Navigation** (mapping federal programs, funding streams, application pathways), (2) **Cross-Sector Analysis** (understanding energy intersections with transport, buildings, industry), (3) **Infrastructure Lifecycle** (planning, deployment, operations, decommissioning perspectives), (4) **Stakeholder Mapping** (identifying decision-makers, influencers, collaboration opportunities at federal scale), and (5) **Systems Integration** (understanding how components interact across GW-scale networks). These patterns reflect systems-scale thinking: national work involves interconnections across regions, magnitudes measured in GW and millions of customers, and planning horizons spanning decades.

The user decisions in CONTEXT.md specify: BIL/IRA as funding context (light touch, focus on enduring skills), national labs framed as both employers AND resource producers (tools, data, reports), Claude calibrates tone by pathway (institutional gravitas for policy, technical peer for engineering, strategic advisor for program management), and project progression where Beginner = individually achievable while Proficient = team-scale scenarios showing contribution framing.

**Primary recommendation:** Add learning path sections to the 25 existing National-level career pathways using the established HTML structure. Each pathway should include: (1) one AI prompt example demonstrating systems-scale thinking with federal program context and appropriate institutional voice, (2) 2-3 project portfolio ideas with deliverables ranging from individual analysis (Beginner) to team-contribution scenarios (Proficient), and (3) integration of national labs as both career destinations and resource producers. Use the 5 NEW prompt patterns rotated across pathways with NO reuse of Phase 8 patterns to maintain distinct systems-scale voice.

## Standard Stack

The established libraries/tools for this domain:

### Core
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| HTML5 | Current Living Standard | Semantic markup for learning content | Existing codebase architecture (single-file HTML) |
| CSS3 | Current (2026) | Styling with existing `.career-path` class | Consistent with v1.1/v1.2 career pathway styling |
| Inline styling | N/A | Prompt box styling with purple accent | Established in Phases 6-8, maintains consistency |

### Supporting
| Library | Version | Purpose | When to Use |
|---------|---------|---------|-------------|
| Existing CSS variables | v1.1 | `--bg-card`, `--accent-purple`, `--text-secondary` | All prompt boxes and project lists |
| `.career-path` structure | v1.1 | Wrapper div for career pathway content | Contains all learning path additions |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| Inline prompt styling | CSS class `.prompt-example` | Class exists for sidebar prompts but inline styling maintains Phase 6-8 consistency |
| State/Regional patterns | NEW National patterns | User decision: create ALL NEW patterns for this level (CONTEXT.md) |
| Generic federal references | Specific office/lab names | User decision: name DOE offices (EERE, OE, ARPA-E, LPO) and labs when relevant (CONTEXT.md) |
| BIL/IRA as central focus | BIL/IRA as funding context | User decision: light touch, skills should outlast current funding cycles (CONTEXT.md) |

**Installation:**
```bash
# No installation needed - extends existing HTML structure
# All styling uses existing CSS variables defined in index.html
```

## Architecture Patterns

### Recommended Project Structure
```
index.html (existing)
└── National Level section (~lines 5600-6400)
    ├── ai-integration card (5 pathways)
    │   └── Data Analyst → Federal Energy Policy Analyst (DOE, EIA)
    │   └── Economist → National Lab Energy Economist (NREL, PNNL)
    │   └── Project Manager → Federal Utility Program Manager (TVA, BPA)
    │   └── Systems Engineer → Energy Systems Modeler (National Labs)
    │   └── Software Developer → Energy Data Platform Engineer (EIA, NREL)
    ├── ai-benchmarking-national card (5 pathways)
    │   └── Policy Researcher → International Energy Analyst (IEA, IRENA)
    │   └── Economist → Climate Finance Analyst (World Bank, Development Banks)
    │   └── Data Scientist → Global Energy Data Specialist (IEA, IFC)
    │   └── Diplomat/Foreign Service → Energy Attaché (State Dept, DOE International)
    │   └── Academic Researcher → Think Tank Senior Fellow (Brookings, WRI)
    ├── ai-climatetracking card (5 pathways)
    │   └── Environmental Scientist → Federal Climate Policy Analyst (EPA, DOE)
    │   └── Data Analyst → Climate Data Specialist (NOAA, EPA)
    │   └── NGO Program Manager → UN Climate Secretariat Officer (UNFCCC)
    │   └── Journalist → Climate Policy Communications Specialist
    │   └── Teacher/Professor → Federal Climate Education Program Manager
    ├── ai-nationalforecasting card (5 pathways)
    │   └── Electrical Engineer → Federal Utility Grid Operations Manager (TVA, BPA)
    │   └── Data Scientist → National Lab Grid Analytics Researcher (NREL, Argonne)
    │   └── Weather Forecaster → Federal Grid Renewable Forecasting Specialist
    │   └── Operations Research Analyst → DOE Grid Optimization Specialist
    │   └── ML Engineer → Federal AI/ML Energy Systems Developer
    └── ai-infrastructure card (5 pathways)
        └── [5 additional pathways - infrastructure maintenance focus]
            └── .career-path (each pathway)
                ├── Existing content (header, background, skills, resources, timeline)
                └── **NEW: Learning Path section**
                    ├── AI Learning Prompt Example
                    │   ├── Systems-scale context
                    │   ├── Federal program/institutional framing
                    │   ├── Prompt text with [VARIABLES]
                    │   └── Terminology definitions where needed
                    └── Project Portfolio Ideas (2-3 projects)
                        ├── Beginner: individually achievable (15-25 hours)
                        ├── Intermediate: analysis with federal data (30-50 hours)
                        └── Proficient: team-contribution scenario (50-80 hours)
```

### Pattern 1: Program Navigation (NEW for National)
**What:** AI prompt for mapping federal programs, funding streams, and application pathways
**When to use:** For pathways involving federal program management, grant administration, or funding navigation
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm transitioning from [project management / program administration / policy analysis] to a Federal Energy Program Manager role at DOE. Help me map the federal energy program landscape: (1) What are the key DOE offices hiring program managers - EERE (Office of Energy Efficiency & Renewable Energy), OE (Office of Electricity), GDO (Grid Deployment Office), LPO (Loan Programs Office) - and how do their missions differ? (2) What programs are distributing Bipartisan Infrastructure Law (BIL) and Inflation Reduction Act (IRA) funding, and what skills do program managers need for grant administration at this scale? (3) What's the typical career progression from GS-12 Program Analyst to GS-15 Program Director? (4) What federal hiring pathways should I consider - USAJOBS competitive service, direct hire authority for STEM positions, or contractor-to-federal conversions?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>This Program Navigation prompt helps you understand the federal energy landscape before applying. DOE's direct hire authority allows faster hiring for technical positions at GS-11 through GS-15. EERE, OE, and GDO each manage billions in BIL/IRA funding - understanding their distinct missions helps target your application. Follow up: "What specific grant management competencies (FAR, OMB circulars, performance metrics) should I develop before applying?"</em></p>
```

### Pattern 2: Cross-Sector Analysis (NEW for National)
**What:** AI prompt for understanding energy intersections with transport, buildings, industry, and other sectors
**When to use:** For pathways involving integrated planning, systems modeling, or cross-sector policy
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm developing systems-scale thinking for a National Lab Energy Economist position at NREL. Help me analyze cross-sector interactions: (1) How does building electrification (heat pumps, electric cooking) interact with grid planning - what does 'electrification-driven load growth' mean for utilities and ISOs planning for 2035? (2) How do transportation electrification projections (EV adoption curves) affect distribution grid planning vs. bulk system planning? (3) What are the key feedback loops between industrial decarbonization and electricity demand that NREL's models capture? (4) How do I translate my economics training into the systems thinking that national labs value - what frameworks (capacity expansion, production cost, sector coupling) should I learn?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>National labs value analysts who see interconnections across sectors. "Sector coupling" refers to coordinating electrification, hydrogen, and direct fuel use across buildings, transport, and industry. NREL's ReEDS and TEMPO models capture these interactions at national scale. Follow up: "Walk me through how NREL's Annual Technology Baseline data feeds into capacity expansion models, and what economic assumptions I should understand."</em></p>
```

### Pattern 3: Infrastructure Lifecycle (NEW for National)
**What:** AI prompt exploring planning, deployment, operations, and decommissioning perspectives
**When to use:** For pathways involving grid infrastructure, transmission planning, or asset management
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm transitioning from [electrical engineering / asset management / operations] to Federal Utility Grid Operations at TVA or BPA. Help me understand infrastructure lifecycle thinking at federal scale: (1) How do federal utilities approach 30-50 year transmission planning differently than investor-owned utilities with shorter regulatory cycles? (2) What are the stages of a major transmission project from NEPA review through commissioning, and what roles exist at each stage? (3) How does predictive maintenance (Argonne's AI work showing 43-56% cost reduction) change infrastructure investment decisions - when to extend asset life vs. replace? (4) What decommissioning considerations exist for aging infrastructure (coal plant retirements, dam relicensing) that federal utilities must plan decades in advance?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Federal utilities operate on longer time horizons than typical utilities because they serve the public interest without shareholder pressure for short-term returns. TVA manages 16,000 miles of transmission serving 10 million people across 7 states; BPA operates critical Pacific Northwest infrastructure including 31 federal dams. Understanding infrastructure lifecycle - from initial planning through eventual decommissioning - is essential for federal energy careers. Follow up: "What NERC reliability standards govern federal utility operations, and how do I learn them systematically?"</em></p>
```

### Pattern 4: Stakeholder Mapping (NEW for National)
**What:** AI prompt for identifying decision-makers, influencers, and collaboration opportunities at federal/national scale
**When to use:** For pathways involving policy advocacy, program coordination, or multi-agency work
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm preparing for an International Energy Analyst role at IEA or IRENA. Help me map the global energy policy stakeholder landscape: (1) What are the key relationships between IEA (member countries, energy security focus) and IRENA (universal membership, renewable focus) - where do they complement vs. overlap? (2) Who are the decision-makers at international climate negotiations (UNFCCC processes) that IEA/IRENA analysts support, and what analysis products do they need? (3) How do multilateral development banks (World Bank, regional development banks) coordinate with IEA/IRENA on energy transition financing? (4) What think tanks (WRI, RFF, Brookings) and academic institutions shape international energy policy, and how do analysts build relationships across this ecosystem?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>International energy policy involves a complex ecosystem of organizations with distinct mandates. IEA (International Energy Agency): 31 member countries, energy security and efficiency focus, produces World Energy Outlook. IRENA (International Renewable Energy Agency): 168 member countries, renewable energy focus. UNFCCC: UN body overseeing Paris Agreement implementation. Understanding how these organizations interact - and where your analysis can contribute - is essential for international energy careers. Follow up: "What analytical products does IEA produce annually, and what skills do I need to contribute to them?"</em></p>
```

### Pattern 5: Systems Integration (NEW for National)
**What:** AI prompt for understanding how components interact across GW-scale networks
**When to use:** For pathways involving grid operations, energy systems modeling, or multi-regional coordination
**Example:**
```html
<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"I'm building systems integration skills for a DOE Grid Optimization Specialist role. Help me understand GW-scale grid interactions: (1) How do regional ISOs (PJM, MISO, CAISO, ERCOT) coordinate - what are the 'seams' between regions where coordination challenges arise, and what role does FERC play? (2) How does the Western Interconnection (WECC) differ from the Eastern Interconnection operationally, and why does ERCOT operate independently? (3) What happens when 50+ GW of solar generation simultaneously ramps down at sunset across the Southwest - how do operators coordinate across multiple balancing authorities? (4) How do NERC reliability standards ensure the bulk power system remains stable as renewable penetration increases, and what new standards are emerging?"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>Systems integration at national scale means understanding how the three U.S. interconnections (Eastern, Western, ERCOT) operate, how ISOs/RTOs coordinate within and across seams, and how 175+ GW of potential AI-unlocked transmission capacity (per IEA) could transform operations. FERC (Federal Energy Regulatory Commission) regulates interstate transmission; NERC (North American Electric Reliability Corporation) sets reliability standards. Follow up: "What specific NERC reliability standards (FAC, TOP, IRO) should I understand for grid operations roles, and how can I access training?"</em></p>
```

### Anti-Patterns to Avoid
- **Reusing State/Regional patterns:** User decision requires ALL NEW patterns for National - do NOT use Regulatory Document Analysis, Career Milestone Roadmap, Stakeholder Coordination Scenario (Phase 8 version), Technical Skill Gap Assessment, or Certification Pathway Planning from Phase 8
- **State-level framing for federal context:** Don't reference "your state's PUC" or state-specific regulations - frame at federal/national scale (FERC, DOE, national labs, federal utilities)
- **Missing systems-scale thinking:** Every prompt should convey magnitude (GW not MW, millions of customers, multi-state regions), interconnections (cross-sector, cross-regional), and long horizons (2035/2050 targets)
- **BIL/IRA as central focus:** User decision specifies light touch - mention as funding context but emphasize enduring skills that outlast current programs
- **National labs as employers only:** Frame labs as BOTH career destinations AND resource producers (tools like NREL ReEDS, data like EIA, reports career changers can use)
- **Generic federal references:** Name specific offices (EERE, OE, ARPA-E, LPO, GDO) and labs (NREL, PNNL, Argonne, LBNL) when relevant rather than just "DOE" or "national labs"
- **Missing security/citizenship context:** Many federal positions require U.S. citizenship, security clearances, or PIV cards - acknowledge this where relevant
- **Individual-scale project ideas:** Proficient projects should show individual contribution to team-scale work, not isolated individual projects

## Don't Hand-Roll

Problems that look simple but have existing solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Prompt pattern library | Custom National prompts | 5 NEW patterns documented above + research references | Tested patterns reflecting systems-scale work context |
| Variety tracking | Manual diversity checking | Systematic rotation framework (VARIETY.md) adapted for 5 patterns | Prevents accidental repetition across 25 pathways |
| Federal terminology glossary | Inline explanations | Brief parenthetical definitions | Keeps flow while educating career changers |
| National lab resources | Generic mentions | Specific tools/data/reports (NREL ReEDS, EIA Open Data, PNNL PermitAI) | User decision to frame labs as resource producers |
| Federal hiring guidance | Generic USAJOBS tips | Specific pathways (direct hire authority, contractor-to-federal, fellowship programs) | National-level hiring has unique characteristics |
| Project time estimates | Vague "several months" | Specific hour ranges (15-25h, 30-50h, 50-80h) | Reflects systems-scale project complexity |

**Key insight:** National-level content requires systems-scale thinking, federal institutional knowledge, and awareness that work impacts GW-scale infrastructure serving millions. The 5 NEW patterns reflect this: navigating federal programs, analyzing cross-sector interactions, thinking across infrastructure lifecycles, mapping stakeholders at national/international scale, and understanding systems integration. Phase 8 emphasized state regulatory competency; Phase 9 emphasizes federal institutional fluency and systems-scale impact.

## Common Pitfalls

### Pitfall 1: Reusing State/Regional Prompt Patterns
**What goes wrong:** Using Regulatory Document Analysis, Career Milestone Roadmap, or Certification Pathway patterns from Phase 8 for National pathways
**Why it happens:** Earlier patterns worked well and temptation to adapt them
**How to avoid:** User decision in CONTEXT.md requires ALL NEW patterns - use only the 5 patterns documented above (Program Navigation, Cross-Sector Analysis, Infrastructure Lifecycle, Stakeholder Mapping, Systems Integration)
**Warning signs:** Prompts focusing on "your state's regulations" or PUC proceedings rather than federal agencies and national-scale systems

### Pitfall 2: State-Level Framing for Federal Context
**What goes wrong:** Referencing state PUCs, state energy offices, or state-specific regulations in National pathways
**Why it happens:** Carry-over from Phase 8 language patterns
**How to avoid:** Frame at federal scale - FERC for wholesale markets and transmission, DOE for policy and programs, EPA for environmental regulations, national labs for research, federal utilities (TVA, BPA) for operations
**Warning signs:** Phrases like "your state's RPS" or "contact your state PUC" in National-level content

### Pitfall 3: Missing Systems-Scale Thinking
**What goes wrong:** Prompts and projects that could apply to any level rather than specifically National scale
**Why it happens:** Not translating "systems-scale" into concrete language
**How to avoid:** Every prompt should convey: magnitude (GW-scale, millions of customers, multi-state regions), interconnections (cross-sector coupling, cross-regional coordination), long horizons (2035 targets, 2050 scenarios, 30-year infrastructure planning)
**Warning signs:** No mention of scale, interconnections, or long-term planning horizons

### Pitfall 4: BIL/IRA as Central Focus
**What goes wrong:** Making Bipartisan Infrastructure Law or Inflation Reduction Act the primary content focus
**Why it happens:** These are the dominant federal funding mechanisms in 2026
**How to avoid:** User decision specifies "light touch" - mention BIL/IRA as funding context that creates opportunities, but emphasize skills that will remain valuable beyond current program cycles (grant management, stakeholder coordination, technical analysis)
**Warning signs:** Prompts primarily about "how to access BIL funding" rather than enduring skill development

### Pitfall 5: National Labs as Employers Only
**What goes wrong:** Treating NREL, PNNL, Argonne only as places to work rather than resources to use
**Why it happens:** Career transition focus naturally emphasizes employment
**How to avoid:** User decision specifies labs as BOTH employers AND resource producers - reference lab tools (NREL ReEDS, PNNL PermitAI, Argonne predictive maintenance research), data (EIA Open Data, NREL Solar Resource), and reports that career changers can use in their learning
**Warning signs:** National labs mentioned only in "Resources" links, never in prompt content or project ideas

### Pitfall 6: Generic Federal References
**What goes wrong:** Using "DOE" or "national labs" without specifying which office or lab
**Why it happens:** Simpler to write generic references
**How to avoid:** User decision: name specific offices when relevant - EERE (efficiency and renewables), OE (grid and storage), ARPA-E (breakthrough research), LPO (project finance), GDO (grid deployment). Name specific labs - NREL (renewable energy), PNNL (grid modernization), Argonne (basic research, AI), LBNL (buildings, efficiency)
**Warning signs:** "Work at DOE" without mentioning which office; "apply to national labs" without naming specific labs

### Pitfall 7: Missing Security/Citizenship Context
**What goes wrong:** Not acknowledging that many federal positions require U.S. citizenship, security clearances, or PIV cards
**Why it happens:** Assuming all readers are eligible for all federal positions
**How to avoid:** Where relevant, note citizenship requirements ("National lab positions often require U.S. citizenship"), security clearance needs, or PIV card requirements. Don't make it the focus, but acknowledge the reality
**Warning signs:** No acknowledgment of federal employment eligibility requirements in pathways targeting sensitive positions

### Pitfall 8: Individual-Scale Proficient Projects
**What goes wrong:** "Proficient" projects that are still individually achievable rather than showing team-scale contribution
**Why it happens:** Easier to design individual projects than team scenarios
**How to avoid:** User decision specifies Beginner = individually achievable, Proficient = team-scale scenarios showing contribution framing. Proficient projects should describe how individual work contributes to larger team efforts ("Your analysis feeds into the team's quarterly report to Congress")
**Warning signs:** Proficient projects framed as solo efforts rather than contributions to team-scale work

## Code Examples

Verified patterns from existing structure and Phase 6-8 implementation:

### HTML Structure for Learning Path Section (National Level)
```html
<!-- Add after Timeline paragraph in each .career-path div -->

<p><strong>AI Learning Prompt Example:</strong></p>
<div class="prompt-example" style="background: var(--bg-card); padding: 1rem; border-radius: 0.4rem; margin: 0.5rem 0 1rem 0; border-left: 3px solid var(--accent-purple); font-size: 0.85rem;">
    <p style="font-style: italic; color: var(--text-secondary); margin: 0; line-height: 1.6;">"[Prompt text with [VARIABLES], systems-scale framing, and federal program context]"</p>
</div>
<p style="font-size: 0.85rem; color: var(--text-secondary); margin: 0.5rem 0 1rem 0;"><em>[Follow-up prompt suggestion, terminology definitions, and national lab resource mentions]</em></p>

<p><strong>Project Portfolio Ideas:</strong></p>
<ul style="margin-bottom: 1rem;">
    <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Beginner:</strong> [Individually achievable analysis using public federal data]. <em>Deliverable: [specific artifact]. Time: 15-25 hours.</em>
    </li>
    <li style="margin-bottom: 0.75rem; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Intermediate:</strong> [Technical analysis with federal data sources and systems-scale framing]. <em>Deliverable: [specific artifact]. Time: 30-50 hours.</em>
    </li>
    <li style="margin-bottom: 0; color: var(--text-secondary); font-size: 0.85rem;">
        <strong style="color: var(--text-primary);">Proficient:</strong> [Team-contribution scenario showing how individual work feeds into larger federal effort]. <em>Deliverable: [specific artifact showing contribution context]. Time: 50-80 hours.</em>
    </li>
</ul>
```

### Federal Program References (Examples from Research)
```
DOE Offices:
- EERE (Office of Energy Efficiency & Renewable Energy): Efficiency, solar, wind, buildings, vehicles
- OE (Office of Electricity): Grid modernization, storage, transmission
- ARPA-E: High-risk, high-reward energy R&D
- LPO (Loan Programs Office): Project finance for innovative energy projects
- GDO (Grid Deployment Office): BIL transmission and grid deployment programs

National Laboratories:
- NREL (Golden, CO): Renewable energy, grid integration, buildings
  - Tools: ReEDS (capacity expansion), SAM (project finance), OpenStudio (buildings)
  - Data: NSRDB (solar resource), ATB (technology costs)
- PNNL (Richland, WA): Grid modernization, buildings, cybersecurity
  - Tools: VOLTTRON (building controls), GridLAB-D (distribution)
- Argonne (Lemont, IL): Basic research, batteries, AI for energy
  - Research: Predictive maintenance (43-56% cost reduction), grid AI
- LBNL (Berkeley, CA): Buildings, efficiency, grid planning
  - Tools: BuildingSync, SEED Platform

Federal Utilities:
- TVA (Tennessee Valley Authority): 10 million customers, 7 states, 16,000 miles transmission
- BPA (Bonneville Power Administration): 31 federal dams, Pacific Northwest transmission
- WAPA (Western Area Power Administration): 15-state western region
- Power Marketing Administrations (PMAs): Federal wholesale power marketing

Grid Organizations:
- FERC: Federal Energy Regulatory Commission (wholesale markets, transmission)
- NERC: North American Electric Reliability Corporation (reliability standards)
- ISOs/RTOs: PJM (13 states), MISO (15 states), CAISO (California), ERCOT (Texas)
- Interconnections: Eastern, Western (WECC), ERCOT
```

### National Lab Resources (Tools, Data, Reports)
```
NREL Resources for Career Changers:
- ReEDS: Regional Energy Deployment System (capacity expansion modeling)
- ATB: Annual Technology Baseline (technology cost projections)
- NSRDB: National Solar Radiation Database
- OpenStudio: Building energy modeling
- SAM: System Advisor Model (project finance)
- Developer Network: developer.nrel.gov (APIs for energy data)

DOE/EIA Resources:
- EIA Open Data API: Comprehensive U.S. energy statistics
- OpenEI: Open Energy Information (wiki-style energy data)
- DOE Data Library: EERE program data and reports

PNNL/Argonne Resources:
- PNNL PermitAI: AI-searchable environmental impact statements
- Argonne GREET: Lifecycle emissions modeling
- GridLAB-D: Distribution system simulation

International Resources:
- IEA Data and Statistics: Global energy data
- IRENA Statistics: Renewable energy capacity and generation
- Climate Watch (WRI): NDC tracking and climate data
```

### Federal Hiring Pathways
```
USAJOBS Competitive Service:
- Standard federal hiring process
- Merit-based selection
- Typically 2-4 months from application to start

Direct Hire Authority (STEM):
- DOE has authority for GS-11 through GS-15 STEM positions
- Faster than competitive service
- Send resume directly to EEREHiring@ee.doe.gov for eligible positions

Fellowship Programs:
- EERE Science, Technology and Policy (STP): Post-graduate research
- AAAS Science & Technology Policy Fellowship: Scientists in government
- Presidential Management Fellowship: Graduate students in federal service

Contractor-to-Federal:
- Many federal positions filled by converting experienced contractors
- Understand the agency before applying for federal position
- Security clearances may transfer

National Lab Hiring:
- Labs are federally funded but not federal employees (except management)
- Different processes than USAJOBS
- Postdoc programs as entry pathway
- U.S. citizenship often required for security reasons
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Siloed sector planning | Cross-sector integration modeling | 2023-2025 | NREL sector coupling models, IEA integrated scenarios |
| Regional grid optimization | Multi-regional coordination | 2024-2025 | AI enabling seams coordination, 175 GW capacity unlock potential |
| Time-based maintenance | AI predictive maintenance | 2024-2025 | Argonne research: 43-56% cost reduction |
| First-come queue processing | First-ready, cluster-based queues | 2024-2026 | FERC Order 2023 implementation across ISOs |
| Federal hiring only via USAJOBS | Direct hire authority for STEM | 2023+ | Faster hiring for technical positions at DOE |
| National labs as employers | Labs as employers + resource producers | Ongoing | Tools, data, and reports accessible to career changers |

**Deprecated/outdated:**
- **State-focused regulatory analysis for national roles:** Phase 9 requires federal/national framing, not state PUC focus
- **Single-region grid thinking:** National-level work requires cross-regional, interconnection-scale perspective
- **Short-term program focus:** While BIL/IRA are current, skills should transfer to future funding cycles
- **Individual project completion at Proficient level:** National-scale work is team-based; Proficient projects show contribution framing

## Open Questions

Things that couldn't be fully resolved:

1. **Optimal prompt pattern distribution across 25 pathways**
   - What we know: 5 NEW patterns documented, rotation prevents adjacent duplicates
   - What's unclear: Whether even distribution (5 uses each) or weighted distribution (more use of strongest patterns per card theme) produces better learner outcomes
   - Recommendation: Weight by card theme - ai-integration card emphasizes Program Navigation, ai-nationalforecasting card emphasizes Systems Integration, etc. - while ensuring all 5 patterns appear across the full set

2. **Security clearance and citizenship acknowledgment level**
   - What we know: Many federal positions require U.S. citizenship; some require security clearances
   - What's unclear: How prominently to mention these requirements without discouraging international readers
   - Recommendation: Note requirements factually where highly relevant (national labs, DOE offices) without making it the focus. Phrase as "National lab positions often require U.S. citizenship" rather than "You must be a U.S. citizen"

3. **GSD workflow integration at National level**
   - What we know: GSD was useful for Individual (hands-on projects) and Community (multi-phase programs) learners
   - What's unclear: Whether federal policy analysts and systems modelers benefit from GSD project management
   - Recommendation: Mention GSD sparingly (5-10% of pathways) for career changers managing complex independent learning projects, not as primary workflow tool. National-level work typically has institutional project management processes.

4. **Team-contribution framing for Proficient projects**
   - What we know: User decision specifies Proficient = team-scale scenarios showing contribution framing
   - What's unclear: How specific to make team scenarios (named positions, specific agencies) vs. generalizable templates
   - Recommendation: Use generalizable scenarios that could apply to multiple employers ("Your analysis contributes to the quarterly grid reliability assessment used by transmission planners across the region") rather than naming specific teams

5. **BIL/IRA funding context calibration**
   - What we know: User decision specifies "light touch" - mention as context, not central focus
   - What's unclear: What percentage of prompts/projects should reference BIL/IRA funding
   - Recommendation: Reference BIL/IRA in approximately 20-30% of prompts/projects as context (e.g., "DOE's Grid Deployment Office is distributing BIL funding for transmission") while keeping focus on enduring skills

## Sources

### Primary (HIGH confidence)
- [DOE EERE Careers](https://www.energy.gov/eere/jobs/find-careers-eere) - Official federal career information
- [DOE Jobs at National Labs](https://www.energy.gov/jobs-national-labs) - Centralized lab hiring portal
- [NREL Careers](https://www.nrel.gov/careers) - National Renewable Energy Laboratory
- [PNNL Careers](https://careers.pnnl.gov/) - Pacific Northwest National Laboratory
- [Argonne Careers](https://www.anl.gov/hr/careers) - Argonne National Laboratory
- [FERC Careers](https://www.ferc.gov/careers) - Federal Energy Regulatory Commission
- [TVA Careers](https://www.tva.com/careers) - Tennessee Valley Authority
- [BPA Careers](https://www.bpa.gov/about/careers) - Bonneville Power Administration
- [IEA Energy and AI Report (April 2025)](https://www.iea.org/reports/energy-and-ai) - Comprehensive AI in energy analysis
- [DOE AI for Energy Report (April 2024)](https://www.energy.gov/sites/default/files/2024-04/AI%20EO%20Report%20Section%205.2g%28i%29_043024.pdf) - Federal AI energy applications
- [Argonne Predictive Maintenance Research](https://www.anl.gov/article/revolutionizing-energy-grid-maintenance-how-artificial-intelligence-is-transforming-the-future) - 43-56% cost reduction findings

### Secondary (MEDIUM confidence)
- [USAJOBS Direct Hire Information](https://www.usajobs.gov/) - Federal hiring pathways
- [NERC Reliability Standards](https://www.nerc.com/pa/Stand/Pages/ReliabilityStandards.aspx) - Grid reliability framework
- [NREL Developer Network](https://developer.nrel.gov/) - Energy data APIs
- [EIA Open Data](https://www.eia.gov/opendata/) - Federal energy statistics
- [Climate Action Tracker](https://climateactiontracker.org/) - International climate policy tracking
- [World Resources Institute NDC Tracking](https://www.wri.org/ndcs/tracking-progress) - Paris Agreement monitoring
- [Partnership for Public Service Federal Career Transition](https://ourpublicservice.org/blog/navigating-career-transitions-as-a-federal-employee/) - Federal career guidance

### Tertiary (LOW confidence - marked for validation)
- Specific salary ranges for federal positions (vary by location, grade, and year)
- Timeline estimates for federal hiring processes (highly variable)
- Exact BIL/IRA funding allocations by program (shifting as implementation proceeds)

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - Extends proven Phase 6-8 HTML structure with no new dependencies
- Prompt patterns: HIGH - 5 NEW patterns researched with federal program expertise and systems-scale framing
- Pitfalls: HIGH - Based on user decisions in CONTEXT.md and differentiation from Phase 8
- Federal program references: HIGH - Official DOE, lab, and agency sources
- Career pathways: HIGH - Based on actual positions at named agencies and labs
- Salary ranges: MEDIUM - Federal positions have published GS scales but locality adjustments vary

**Research date:** 2026-01-29
**Valid until:** 90 days (federal programs relatively stable; revalidate if major policy changes or reorganization)

**Notes for planner:**
- All 25 National-level pathways already exist in HTML with Background, Skills, Salary, Resources, Timeline
- Task is to ADD learning path content (prompt + projects) after Timeline paragraph in each pathway
- Prompt patterns should emphasize systems-scale thinking: GW magnitudes, cross-sector interactions, long horizons
- NEW patterns for National: Program Navigation, Cross-Sector Analysis, Infrastructure Lifecycle, Stakeholder Mapping, Systems Integration
- DO NOT reuse Phase 8 patterns (Regulatory Document Analysis, Career Milestone Roadmap, etc.)
- Each pathway needs 1 prompt example (80-150 words given systems complexity) + 2-3 project ideas (60-100 words each)
- National labs should appear as both employers AND resources (name specific tools, data, reports)
- BIL/IRA: light touch as funding context, not central focus
- Proficient projects should show team-contribution framing, not isolated individual work
- Note citizenship/security requirements where relevant but don't make it the focus
- Reference specific DOE offices (EERE, OE, ARPA-E, LPO, GDO) and labs (NREL, PNNL, Argonne) rather than generic "DOE" or "national labs"
- Federal hiring has unique pathways (direct hire authority, fellowship programs) worth mentioning
