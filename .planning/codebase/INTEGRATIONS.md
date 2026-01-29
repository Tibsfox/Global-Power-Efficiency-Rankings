# External Integrations

**Analysis Date:** 2026-01-28

## APIs & External Services

**Data Visualization:**
- Chart.js - JavaScript charting library
  - SDK/Client: `https://cdn.jsdelivr.net/npm/chart.js`
  - Purpose: Render 5 interactive charts for energy data analysis
  - Auth: None required

## Data Storage

**Databases:**
- None - application uses no database

**File Storage:**
- No external file storage
- All assets (HTML, CSS, JS) served as static files
- All data embedded in HTML/JavaScript

**Caching:**
- None configured

## Authentication & Identity

**Auth Provider:**
- None - Public read-only report with no user accounts or authentication

## Monitoring & Observability

**Error Tracking:**
- None detected

**Logs:**
- Console errors only (browser console if JavaScript fails)

**Analytics:**
- None detected

## CI/CD & Deployment

**Hosting:**
- Static file hosting (no build pipeline detected)
- Supports deployment to: AWS S3, Netlify, GitHub Pages, Vercel, or any static CDN

**CI Pipeline:**
- None detected
- No build process

## Content Delivery

**CDN Services:**
- jsDelivr CDN for Chart.js library distribution
  - Fallback: Uses official jsDelivr mirror for reliability

**Font Delivery:**
- Google Fonts API for typeface delivery
  - Fonts: DM Sans (400, 500, 600, 700), Playfair Display (600, 700)

## Environment Configuration

**Required env vars:**
- None - application has no environment variables

**Secrets location:**
- Not applicable - application contains no secrets

## Data Sources & References

**External Data Sources (Referenced, not integrated):**
The document references 14+ research sources for energy data analysis:

1. **IEA (International Energy Agency)**
   - Energy Efficiency Reports (2019-2025)
   - Global Energy Review
   - SDG7: Data and Projections
   - Sources: https://www.iea.org/

2. **United Nations SDG7 Tracking**
   - Energy Progress Reports (2018-2025)
   - Sources: https://trackingsdg7.esmap.org/

3. **Enerdata**
   - Global Energy & CO2 Database
   - Global Energy Yearbook 2025
   - Sources: https://yearbook.enerdata.net/

4. **World Bank**
   - Development Indicators
   - Energy Intensity (EG.EGY.PRIM.PP.KD)
   - Sources: https://data.worldbank.org/

5. **Ember (Carbon Brief Analysis)**
   - Energy consumption data
   - Global electricity analysis

6. **Energy Institute**
   - Global electricity consumption data

7. **IMF World Economic Outlook**
   - October 2025 projections

8. **Our World in Data**
   - Energy intensity historical trends
   - Sources: https://ourworldindata.org/

9. **SEforALL**
   - SDG7 Progress Analysis
   - Sources: https://www.seforall.org/

10. **US Department of Energy**
    - Community solar program economics
    - Net present value analysis

11. **Yale University**
    - Solarize campaign effectiveness research

12. **IEA Carbon Brief**
    - China energy intensity analysis
    - EU energy crisis response

**Note:** These are data sources cited in the document, not integrated APIs. All data is static and embedded in the HTML.

## Webhooks & Callbacks

**Incoming:**
- None

**Outgoing:**
- None

## Browser Requirements

**JavaScript APIs Used:**
- Canvas API - For Chart.js rendering
- Document Object Model (DOM) - Element manipulation
- HTML5 semantic elements

**CSS Features:**
- CSS Grid, Flexbox - Responsive layouts
- CSS Variables (custom properties) - Design tokens
- Linear/radial gradients - Visual effects
- Media queries (implicit in fixed 1000px width)

---

*Integration audit: 2026-01-28*
