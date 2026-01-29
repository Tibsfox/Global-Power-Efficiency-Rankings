# Architecture

**Analysis Date:** 2026-01-28

## Pattern Overview

**Overall:** Single-page application (SPA) with embedded data visualization

**Key Characteristics:**
- Monolithic HTML document with inline CSS and JavaScript
- Data and visualization logic tightly coupled in single file
- Chart.js library for data visualization
- Responsive layout with CSS Grid and Flexbox
- No separation between markup, styling, and logic layers

## Layers

**Presentation Layer:**
- Purpose: Render data visualizations and formatted content to users
- Location: `index.html` (lines 1-174, CSS; lines 176-887, HTML structure)
- Contains: CSS custom properties, layout grids, card components, chart containers
- Depends on: Data embedded in JavaScript
- Used by: User's browser for rendering

**Data Layer:**
- Purpose: Store and manage visualization datasets
- Location: `index.html` (lines 894-1246, JavaScript)
- Contains: Chart configuration objects, year-over-year energy intensity data (2000-2024), electricity consumption statistics
- Depends on: Chart.js library
- Used by: Presentation layer for rendering charts

**Business Logic Layer:**
- Purpose: Configure charts with sourced data, apply styling and formatting rules
- Location: `index.html` (lines 903-1198, Chart instantiation and configuration)
- Contains: Chart type definitions, data mapping, color schemes, axis scaling, tooltip callbacks
- Depends on: Chart.js API, embedded datasets
- Used by: Browser DOM rendering

## Data Flow

**Chart Initialization Flow:**

1. **Page Load** → Browser parses HTML document
2. **CSS Parsing** → Theme variables and styles applied (`:root` variables at lines 12-26)
3. **DOM Construction** → HTML structure creates empty canvas elements for charts
4. **Script Execution** → JavaScript runs Chart.js instantiation code (lines 894-1198)
5. **Data Binding** → Chart configuration objects bind to canvas elements via `getElementById()`
6. **Rendering** → Chart.js transforms data arrays into visual SVG/canvas elements
7. **User Interaction** → Hover tooltips trigger callback functions that display annotations

**State Management:**
- State is immutable: Charts are initialized once on page load with static data
- No client-side updates or mutations to displayed data
- All data originates from embedded JavaScript objects (not fetched from API)
- Chart instances stored in browser memory, accessed via DOM references

## Key Abstractions

**Chart Configuration Objects:**
- Purpose: Encapsulate chart type, data, styling, and interaction behavior
- Examples: `intensityChart` (line 903), `consumersChart` (line 1006), `improvementChart` (line 1096)
- Pattern: Chart.js constructor receives configuration object with `type`, `data`, and `options` keys

**Theme System:**
- Purpose: Centralize color definitions and design tokens
- Examples: CSS custom properties `--accent-green: #10b981`, `--bg-card: #1a2234`
- Pattern: `:root` selector (lines 12-26) defines reusable variables referenced throughout CSS

**Card Component:**
- Purpose: Reusable container for displaying metrics and insights
- Examples: `<div class="card">` (lines 190, 194, 198)
- Pattern: Flexbox-based structure with icon, heading, and descriptive text

**Data Annotation System:**
- Purpose: Display contextual information (events, policy changes) on hover
- Examples: `annotations` object in `improvementChart` tooltip callback (lines 1165-1177)
- Pattern: Lookup table mapping year indices to historical event descriptions

## Entry Points

**Page Entry Point:**
- Location: `index.html` (top-level document)
- Triggers: User navigates to or opens the HTML file in browser
- Responsibilities: Load entire HTML document, parse styles, execute JavaScript, initialize charts

**Script Execution Entry:**
- Location: `<script>` tag at line 894
- Triggers: Browser finishes parsing HTML DOM
- Responsibilities: Configure Chart.js defaults (lines 895-898), instantiate three chart instances

**Chart Instantiation Entry Points:**
1. **intensityChart** (line 903): Energy intensity trends 2000-2024 with five regional datasets
2. **consumersChart** (line 1006): Top 10 electricity consumers by TWh
3. **improvementChart** (line 1096): Annual improvement rates 2001-2024 with historical annotations

## Error Handling

**Strategy:** Silent failure with fallback presentation

**Patterns:**
- Missing canvas elements: Charts fail to instantiate but page continues rendering (no error thrown)
- Invalid data: Chart.js renders empty or corrupted visualizations without stopping execution
- Missing Chart.js library: Entire charting system fails silently; HTML structure still displays

## Cross-Cutting Concerns

**Styling:** CSS layer handles all presentation concerns via class selectors and custom properties
- Grid layouts (`.grid-3`, `.grid-2`) organize card components
- Color scheme applied via CSS variable substitution
- Responsive design via media-query-ready structure (though no explicit breakpoints)

**Data Sourcing:** Hardcoded datasets embedded in JavaScript
- Energy intensity data sourced from IEA, Enerdata, World Bank (documented in comments lines 901-1094)
- Countries and TWh values from Energy Institute Statistical Review 2025 (line 225)
- No dynamic data fetching or API calls

**User Feedback:** Tooltip system provides contextual information on chart hover
- Chart.js plugin system enables custom callbacks (lines 974-988, 1162-1181)
- Annotations display historical context (e.g., "2001: China joins WTO")
- No error messages or validation feedback

---

*Architecture analysis: 2026-01-28*
