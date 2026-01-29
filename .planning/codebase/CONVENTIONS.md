# Coding Conventions

**Analysis Date:** 2026-01-28

## Naming Patterns

**Files:**
- Single HTML file: `index.html` - Monolithic page with embedded styles and scripts

**Functions:**
- Anonymous functions for Chart.js callbacks: `function(context)`, `function(ctx)`
- Named function declarations not used; callbacks are inline
- Function parameters use single-letter shortcuts: `ctx`, `p`, `context` for callback parameters

**Variables:**
- camelCase for local variables: `year`, `annotations`, `index`, `value`, `dataIndex`
- Semantic naming: `annotations`, `backgroundColor`, `afterBody` clearly indicate purpose
- Single-letter variables used in loops/callbacks: `p` for payload/point data

**Types:**
- No TypeScript; vanilla JavaScript only
- Objects and arrays used extensively for configuration
- CSS custom properties (variables) for color scheme: `--bg-primary`, `--accent-green`, etc.
- Naming pattern: `--[category]-[variant]`: `--bg-card`, `--text-secondary`, `--accent-red`

## Code Style

**Formatting:**
- No formatter detected (not using Prettier/Eslint)
- Inline styles within HTML (`style` attribute)
- Embedded CSS in `<style>` block with comprehensive selectors
- All JavaScript contained in single `<script>` block at end of HTML

**Linting:**
- No linting configuration detected
- Code follows loose conventions: semicolons present but not enforced
- Mixing of property declaration styles (e.g., `responsive: true, maintainAspectRatio: false` on same line)

**Spacing:**
- Inconsistent spacing: some multi-line object properties, others on single line
- 4-space indentation in style block
- 4-space indentation in HTML elements
- No blank lines between chart initialization calls

## Import Organization

**External Dependencies:**
- `Chart.js` loaded from CDN: `https://cdn.jsdelivr.net/npm/chart.js`
- Google Fonts loaded: `fonts.googleapis.com` (DM Sans, Playfair Display)
- No module imports; all libraries accessed via global scope

**No Path Aliases:** Not applicable to single-file HTML structure

## Error Handling

**Patterns:**
- No explicit error handling in JavaScript
- Data assumed to be valid (no null/undefined checks)
- Chart initialization relies on DOM elements existing (no defensive checks)
- Callback functions use fallback patterns: `annotations[year] || ''` to return empty string if key missing

## Logging

**Framework:** `console` not used; no logging detected

**Patterns:**
- No debug logging
- Data sourcing documented extensively in comments
- Annotations embedded in tooltip callbacks serve as inline documentation

## Comments

**When to Comment:**
- Heavy documentation of data sources and methodology in multi-line comment blocks
- Inline comments for significant data values: `// 2001: Near baseline, post-2000 stability`
- Data assumptions documented: `// China: Increased 2002-05 (WTO boom), then 3.8%/yr decline 2006-19`
- Configuration rationale documented: `// COP28 goal - bright green`

**JSDoc/TSDoc:**
- Not used; vanilla comments only
- Comprehensive comment blocks before chart data sections
- Source citations embedded in comments (13+ primary sources referenced for improvement chart data)

## Function Design

**Size:**
- Inline functions are short (5-10 lines typical)
- Chart initialization functions are ~100-150 lines each (self-contained Chart.js config objects)
- No large function bodies; entire codebase consists of chart configurations

**Parameters:**
- Callback functions receive context object from Chart.js: `function(context)`, `function(ctx)`
- No custom function parameters; Chart.js conventions followed

**Return Values:**
- Callbacks return strings for tooltips
- Color function returns hex color codes: `'#10b981'`, `'#ef4444'`
- Fallback returns: `|| ''` for missing annotations, `|| 0` implicit in ternary chains

## Module Design

**Exports:**
- No exports; single HTML file with global scope
- All Chart.js instances created directly with `new Chart()`
- Document elements accessed via `document.getElementById()`

**Barrel Files:**
- Not applicable

## DOM Access Pattern

**Consistency:**
- `document.getElementById()` used for all chart container access: `document.getElementById('intensityChart').getContext('2d')`
- Chart initialization immediately follows HTML structure (charts appear in same order as HTML elements)
- No DOM query utilities; direct standard DOM API usage

## Data Structure Patterns

**Chart Configuration:**
- Standard Chart.js configuration object structure
- Datasets use consistent property names: `label`, `data`, `borderColor`, `backgroundColor`, `fill`, `tension`
- Color constants defined via CSS variables in style block
- Hardcoded color values in JavaScript match CSS variable definitions

**Annotations Objects:**
- Key-value mappings for contextual data: `{ '2001': 'annotation', '2005': 'annotation' }`
- Index-based mappings for array positions: `{ 0: 'annotation', 3: 'annotation' }`

---

*Convention analysis: 2026-01-28*
