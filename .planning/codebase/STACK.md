# Technology Stack

**Analysis Date:** 2026-01-28

## Languages

**Primary:**
- HTML5 - Document markup and structure
- CSS3 - Styling and animations
- JavaScript (vanilla) - Chart rendering and interactivity

**Secondary:**
- None detected

## Runtime

**Environment:**
- Browser-based (client-side only)
- No server-side runtime required

**Package Manager:**
- None - all dependencies loaded via CDN

## Frameworks

**Core:**
- Chart.js 3.x (via CDN) - Data visualization and charting
  - Location: `https://cdn.jsdelivr.net/npm/chart.js`

**Styling:**
- CSS Variables (custom properties) - Design token system
- CSS Grid and Flexbox - Layout system

**Fonts:**
- Google Fonts (DM Sans, Playfair Display) - Typography
  - Loaded from: `https://fonts.googleapis.com`

## Key Dependencies

**Critical:**
- Chart.js - Interactive data visualization for multiple chart types (line, bar, bubble)
  - Version: Latest from jsDelivr CDN
  - Purpose: Energy intensity trends, consumption rankings, efficiency bubble charts, data center projections

**Content Delivery:**
- jsDelivr CDN - Chart.js library distribution
- Google Fonts API - Font delivery
- Google Fonts Static - CSS font preconnection

## Configuration

**Environment:**
- Fixed viewport width: 1000px
- No environment variables
- No configuration files
- All settings hard-coded in HTML

**Build:**
- No build process
- No bundler (Webpack, Vite, etc.)
- Single HTML file distribution

## Platform Requirements

**Development:**
- Any text editor
- Git (for version control)
- Web browser for testing

**Production:**
- Static file hosting (any CDN or web server)
- Internet connectivity for CDN resources (Chart.js, Google Fonts)
- Modern browser support (ES6 JavaScript)

## File Organization

**Single File:**
- `index.html` - Complete application
  - Inline CSS (lines 11-173)
  - Inline JavaScript (lines 894-1243)
  - HTML content (structure and data)

## Performance Characteristics

**Loading:**
- External CDN dependencies: 2
  - Chart.js library
  - Google Fonts

**Data Handling:**
- All data embedded in JavaScript
- No external API calls
- Static dataset (25-year historical energy intensity data)

**Rendering:**
- Client-side chart rendering via Chart.js
- Multiple canvas-based visualizations:
  - Line chart: Energy intensity trends (2000-2024)
  - Bar chart: Top 10 electricity consumers
  - Bar chart: Annual improvement rates (2001-2024)
  - Bubble chart: Consumption vs efficiency by country
  - Line chart: Data center projections (2020-2030)

---

*Stack analysis: 2026-01-28*
