# Phase 11: Quality Assurance - Context

**Gathered:** 2026-01-29
**Status:** Ready for planning

<domain>
## Phase Boundary

Validate all 125 learning paths for link integrity, content variety, accuracy, and accessibility. This is a review/validation phase — fixing issues found, not adding new content. The scope covers URL validation, sameness auditing, labor market claim review, and paywall detection.

</domain>

<decisions>
## Implementation Decisions

### URL Validation Scope
- Check ALL URLs (150+), not a sample
- Valid response = 2xx or 3xx status codes; flag 4xx/5xx errors
- Paywalled content: require free alternative (find and substitute)
- Broken URLs: fix inline by finding working replacement

### Sameness Audit Method
- Audit ALL 125 pathways, not a sample
- Flag both: identical opening hooks AND overly templated structure
- Compare cross-level (Individual vs Community vs State, etc.) AND within-level adjacent pathways
- Similar prompts found: rewrite inline with varied structure/hook

### Labor Market Claim Review
- Claims should use ranges (e.g., "$65K-$95K") with "varies by" caveats
- Audit ALL numeric claims (salary ranges, job growth percentages, market size figures)
- Caveats: inline parenthetical for specific claims + section-level disclaimer for general context
- Inflated/unsourced claims: adjust to realistic range (don't remove, moderate)

### Fix vs Document Approach
- Philosophy: fix as you go (find issue, fix immediately, commit)
- Blocking issues: broken URLs only. Stylistic issues (sameness, caveats) are nice-to-fix but don't block shipping
- Produce both VERIFICATION.md (GSD workflow) and QA-REPORT.md (human-readable summary)
- Commit granularity: per-issue-type ("fix broken URLs", "add caveats", "vary prompts")

### Claude's Discretion
- URL validation tooling approach (curl, wget, or programmatic)
- Exact phrasing of inline caveats
- How to detect paywalls programmatically vs manually
- Specific replacement resources when originals are broken

</decisions>

<specifics>
## Specific Ideas

- Comprehensive approach: all 125 pathways, all URLs, all numeric claims (no sampling)
- Fix-forward philosophy: issues get fixed immediately, not documented for later
- Paywall handling is strict: must provide free alternatives, not just note paywalls exist
- Broken URLs are the only blocking criterion for shipping

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 11-quality-assurance*
*Context gathered: 2026-01-29*
