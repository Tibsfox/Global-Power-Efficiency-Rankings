# Codebase Structure

**Analysis Date:** 2026-01-28

## Directory Layout

```
COP28/
├── index.html                 # Single-page application with all HTML, CSS, JavaScript
└── .planning/
    └── codebase/              # Documentation directory (created for analysis)
```

## Directory Purposes

**Project Root (COP28/):**
- Purpose: Contains the complete application
- Contains: Single HTML file that serves as the entire application
- Key files: `index.html`

**.planning/codebase/:**
- Purpose: Holds analysis documentation (not part of runtime application)
- Contains: Architecture and structure analysis documents
- Key files: ARCHITECTURE.md, STRUCTURE.md

## Key File Locations

**Entry Points:**
- `index.html`: Main application file. Load in web browser to view. Contains all HTML, CSS, and JavaScript (1,246 lines total)

**Configuration:**
- `index.html` (lines 1-11): Meta tags for viewport and character encoding
- `index.html` (lines 6-10): External CDN resources (Chart.js, Google Fonts)

**Core Logic:**
- `index.html` (lines 11-174): CSS styling with theme variables and component styles
- `index.html` (lines 176-887): HTML structure organized into semantic sections
- `index.html` (lines 894-1246): JavaScript application logic with Chart.js instantiation

**Content Sections:**
- `index.html` (lines 177-181): Page header with title and subtitle
- `index.html` (lines 184-210): Key findings section with three insight cards
- `index.html` (lines 212-257): Energy intensity trends analysis
- `index.html` (lines 312-861): Individual action strategies (four sections: household, workplace, policy, community)
- `index.html` (lines 864-886): Sources and references section
- `index.html` (lines 889-892): Footer

## Naming Conventions

**Files:**
- Single file: `index.html` - standard web server entry point name

**CSS Classes:**
- BEM-inspired: `.card`, `.card-header`, `.card-icon`
- Utility pattern: `.grid-3`, `.grid-2` for layout
- State pattern: `.rank-1`, `.rank-2`, `.rank-3` for badge rankings
- Semantic pattern: `.section`, `.section-header` for content organization
- Descriptive pattern: `.efficiency-bar`, `.efficiency-high`, `.efficiency-mid`, `.efficiency-low`

**JavaScript Variables:**
- Chart identifiers: `intensityChart`, `consumersChart`, `improvementChart` (match canvas element IDs)
- Data arrays: `labels`, `datasets`, `data` (Chart.js convention)
- Configuration objects: `type`, `data`, `options` (Chart.js standard structure)

**HTML Elements:**
- IDs match functionality: `id="intensityChart"`, `id="consumersChart"`, `id="improvementChart"`
- Data containers: `<canvas>` elements for Chart.js rendering
- Section wrappers: `<section class="section">` for logical content grouping
- Card components: `<div class="card">` for reusable content modules

**CSS Custom Properties (Theme):**
- Prefix: `--` (CSS variable standard)
- Color categories: `--bg-primary`, `--bg-secondary`, `--bg-card` (backgrounds)
- Accent colors: `--accent-green`, `--accent-blue`, `--accent-amber`, `--accent-red`, `--accent-purple`, `--accent-cyan`
- Text colors: `--text-primary`, `--text-secondary`, `--text-muted`
- Border: `--border-color`

## Where to Add New Code

**New Chart/Visualization:**
- Add canvas element in HTML section (e.g., `<canvas id="newChartId"></canvas>`)
- Add Chart.js instantiation in `<script>` tag (lines 894+) following pattern: `new Chart(document.getElementById('newChartId').getContext('2d'), { type: '...', data: {...}, options: {...} })`
- Define data array inline within Chart configuration object
- Reference canvas element by ID matching the new chart ID

**New Content Section:**
- Add `<section class="section">` block in HTML body (lines 184-861)
- Include `<div class="section-header">` with `<h2>` title and description
- Populate with `.card` divs, tables, or custom content structures
- Follow existing `.grid-3` or `.grid-2` patterns for layout

**New Style/Theme Element:**
- Add CSS custom property to `:root` selector (lines 12-26) for reusable color
- Add CSS class to `<style>` tag (lines 11-174) for component or utility
- Reference theme variables via `var(--variable-name)` in class definitions

**New Interactive Feature:**
- Add event listener in `<script>` tag
- Use Chart.js plugin system for chart interactions (documented in `options.plugins` sections)
- Avoid adding separate JavaScript files; maintain inline script approach

## Special Directories

**.git/:**
- Purpose: Git version control repository
- Generated: Yes (automatically)
- Committed: Yes

**.planning/codebase/:**
- Purpose: Analysis and planning documentation
- Generated: Yes (created by analysis tools)
- Committed: No (planning metadata, not source code)

## File Statistics

- **Total lines:** 1,246
- **CSS lines:** ~163 (lines 11-174)
- **HTML lines:** ~712 (lines 176-887)
- **JavaScript lines:** ~353 (lines 894-1246)

## Key Dependencies

**External Libraries:**
- Chart.js (loaded from CDN: `https://cdn.jsdelivr.net/npm/chart.js`)
- Google Fonts: DM Sans (400, 500, 600, 700 weights) and Playfair Display (600, 700 weights)

**No Local Dependencies:**
- No other HTML files or modules
- No CSS preprocessor (raw CSS only)
- No build system or bundler
- No package.json or dependency manifest

## Content Organization

**Semantic Structure (Outline):**
1. Header: Title and metric definition
2. Main Container:
   - Key Findings: Three insight cards + metrics grid
   - Energy Intensity Trends: Historical analysis with three charts and insights
   - Individual Action Strategies: Four sections (Household, Workplace, Policy, Community)
3. Sources: Complete list of data sources with links
4. Footer: Attribution and methodology note

**Data Presentation Patterns:**
- Cards with icons for quick reference
- Charts for temporal and comparative analysis
- Tables for detailed regional breakdowns
- Lists for actionable steps
- Badges and priority labels for categorization

---

*Structure analysis: 2026-01-28*
