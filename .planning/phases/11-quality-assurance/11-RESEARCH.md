# Phase 11: Quality Assurance - Research

**Researched:** 2026-01-29
**Domain:** Quality assurance validation for HTML content - URL integrity, content sameness auditing, labor market claim accuracy, and paywall detection
**Confidence:** HIGH

## Summary

This research investigates how to validate 125 learning paths across 25 AI strategy cards in a single HTML file (index.html, 8,868 lines, ~650 URLs). The phase performs comprehensive quality assurance covering four validation types: (1) URL integrity checking for all 650+ external links, (2) sameness auditing to detect identical or overly-templated content across 125 pathways, (3) labor market claim review to verify salary ranges and numeric claims have realistic values with appropriate caveats, and (4) paywall detection to ensure free resources are prioritized and paywalls clearly noted.

The user decision in CONTEXT.md specifies a "fix-forward" approach: issues are fixed immediately inline rather than documented for later resolution. This means validation and remediation happen together in the same workflow. Only broken URLs are blocking issues for shipping; stylistic issues (sameness, missing caveats) are nice-to-fix but non-blocking.

Research reveals that modern URL validation is best handled with parallel execution using curl or wget with proper HTTP status code checking (2xx/3xx = valid, 4xx/5xx = error). Tools like GNU parallel, xargs -P, or curl --parallel enable checking 650+ URLs in minutes rather than hours. For sameness detection, manual review is necessary since the issue is subtle (identical opening hooks, overly templated structure) rather than exact duplicates that automated plagiarism checkers target. Labor market claims require grep extraction followed by human review for realism since automated fact-checking doesn't handle "realistic ranges with caveats" well. Paywall detection is primarily manual - automated detection is unreliable because paywalls use varied implementations (JavaScript overlays, IP tracking, user-agent checks).

**Primary recommendation:** Execute QA through bash scripts for URL validation (parallel curl with status code checking), manual grep-assisted review for sameness auditing (extract pathway opening hooks for comparison), grep extraction with human verification for labor market claims (find all salary/numeric claims, verify ranges and caveats), and manual review for paywall detection (spot-check resources, prioritize free alternatives). Commit fixes immediately per issue-type ("fix broken URLs", "add caveats", "vary prompts") rather than saving for one large commit. Produce both VERIFICATION.md (GSD workflow standard) and QA-REPORT.md (human-readable summary).

## Standard Stack

The established tools for this domain:

### Core
| Tool | Version | Purpose | Why Standard |
|------|---------|---------|--------------|
| bash | 5.0+ | Scripting environment | Standard shell on Linux, supports parallel execution |
| curl | 7.66.0+ | HTTP status code checking | Native --parallel support, widely available, robust |
| grep | 3.0+ (GNU) | Text pattern extraction | Fast regex search, essential for claim extraction |
| xargs | 4.6+ (GNU findutils) | Parallel execution controller | Standard utility, -P flag for parallel processing |
| GNU parallel | 20161222+ | Advanced parallel execution | Superior to xargs for complex parallel workflows |

### Supporting
| Tool | Version | Purpose | When to Use |
|------|---------|---------|-------------|
| wget | 1.20+ | Alternative URL checker | --spider mode for HEAD requests without download |
| awk | 5.0+ (GNU) | Structured text processing | URL extraction from HTML, tabular output formatting |
| sed | 4.7+ (GNU) | Stream editing | Inline text replacement for fixing issues |
| jq | 1.6+ | JSON processing | Optional: for structured output from validation scripts |
| linkchecker (Python) | 10.6+ | Comprehensive link validation | Optional: full-featured alternative to bash scripts |
| hyperlink (Rust) | Latest | Fast CI link checking | Optional: single-binary, very fast (1.1 GB in 4 seconds) |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| bash + curl | linkchecker (Python) | More features (recursion, plugins) but slower, dependency overhead |
| bash + curl | hyperlink (Rust) | Much faster (Rust performance) but HTML-focused, not URL-list focused |
| Manual sameness review | Copyleaks/plagiarism checkers | Automated but detects exact copies, not "similar structure with different words" |
| Manual labor claim review | Automated fact-checking APIs | Don't understand "realistic ranges with caveats" context |
| Manual paywall detection | Automated paywall bypass tools | Unreliable, ethically questionable, misses soft paywalls |

**Installation:**
```bash
# Core tools (usually pre-installed on Linux)
sudo apt-get install curl grep coreutils findutils  # Debian/Ubuntu
sudo yum install curl grep coreutils findutils      # RHEL/CentOS

# Optional: GNU parallel (recommended for performance)
sudo apt-get install parallel    # Debian/Ubuntu
sudo yum install parallel        # RHEL/CentOS

# Optional: Advanced link checkers
pip install linkchecker          # Python-based comprehensive checker
# or download hyperlink binary from https://github.com/untitaker/hyperlink
```

## Architecture Patterns

### Recommended Project Structure
```
.planning/phases/11-quality-assurance/
├── 11-RESEARCH.md           # This file
├── 11-PLAN.md              # Detailed execution plan (created by planner)
├── 11-VERIFICATION.md      # GSD workflow verification checklist
├── 11-QA-REPORT.md         # Human-readable summary of findings
└── scripts/                # Optional: validation scripts
    ├── check-urls.sh       # Parallel URL validation
    ├── extract-claims.sh   # Labor market claim extraction
    └── audit-sameness.sh   # Opening hook extraction for comparison
```

### Pattern 1: Parallel URL Validation with curl
**What:** Extract all URLs from HTML, check HTTP status codes in parallel, report failures
**When to use:** For validating all 650+ URLs efficiently (minutes not hours)
**Example:**
```bash
# Extract all URLs from HTML file
grep -oP 'href="https?://[^"]+' index.html | cut -d'"' -f2 | sort -u > urls.txt

# Validate URLs in parallel using curl (20 parallel connections)
# Status codes: 2xx/3xx = valid, 4xx/5xx = error
cat urls.txt | parallel -j 20 'curl -s -o /dev/null -w "%{http_code} %{url_effective}\n" --max-time 10 "{}"' | tee url-results.txt

# Filter failures (4xx, 5xx status codes)
grep -E '^[45][0-9]{2}' url-results.txt > broken-urls.txt
```

**Alternative with xargs:**
```bash
cat urls.txt | xargs -P 20 -I {} bash -c 'echo -n "{} "; curl -s -o /dev/null -w "%{http_code}\n" --max-time 10 "{}"'
```

**Curl native parallel (7.66.0+):**
```bash
curl --parallel --parallel-max 20 --write-out "%{http_code} %{url_effective}\n" $(cat urls.txt)
```

### Pattern 2: Sameness Audit with Manual Review
**What:** Extract opening hooks/prompts from all 125 pathways, manually compare for identical text or overly templated structure
**When to use:** For detecting subtle sameness that automated tools miss
**Example:**
```bash
# Extract first paragraph of each AI Learning Prompt for manual comparison
# This assumes prompts are in divs with class "prompt-example"
grep -A 5 'AI Learning Prompt Example' index.html | grep -oP '<p style="font-style: italic.*?</p>' | head -n 125 > prompt-openings.txt

# Manual review needed: compare adjacent pathways cross-level
# - Individual vs Community vs State/Regional vs National vs Global
# - Within same level: pathway 1 vs pathway 2 vs pathway 3

# Flag patterns to watch:
# - Identical opening hooks: "Act as a career coach..." repeated verbatim
# - Overly templated: same sentence structure with only nouns swapped
# - Copy-paste: entire prompt sections duplicated across pathways
```

**Manual comparison approach:**
1. Group pathways by level (Individual, Community, State/Regional, National, Global)
2. Within each level, compare adjacent pathways (pathways 1-5 for each card)
3. Cross-level comparison: same role type across different organizational scales
4. Look for: identical opening lines, same 3-step structure, repeated phrasing

### Pattern 3: Labor Market Claim Extraction and Verification
**What:** Extract all salary ranges and numeric claims, verify realistic ranges with caveats
**When to use:** For validating all 125 pathways have appropriate labor market caveats
**Example:**
```bash
# Extract salary ranges (pattern: $XXK-XXXK)
grep -oP '\$[0-9]{2,3}K-[0-9]{2,3}K' index.html > salary-ranges.txt

# Extract percentage claims (pattern: XX% or X-XX%)
grep -oP '[0-9]{1,3}(-[0-9]{1,3})?%' index.html > percentage-claims.txt

# Extract "X million" or "X billion" figures
grep -oP '[0-9]+(\.[0-9]+)?\s*(million|billion)' index.html > market-size-claims.txt

# Manual review needed for each claim:
# 1. Is range realistic? (check BLS.gov, Payscale.com, relevant sources)
# 2. Does it have inline caveat? "(varies by location/experience)"
# 3. Is there section-level disclaimer for general context?
# 4. Are inflated/unsourced claims moderated to realistic ranges?
```

**Verification sources:**
- U.S. Bureau of Labor Statistics (https://www.bls.gov/) - authoritative government data
- Payscale (https://www.payscale.com/) - crowdsourced salary data
- ZipRecruiter 2026 Labor Market Predictions - market trend analysis

### Pattern 4: Paywall Detection and Free Alternative Verification
**What:** Manually check resource links to identify paywalls, verify free alternatives exist
**When to use:** For ensuring free resources prioritized per requirements
**Example:**
```bash
# Extract resource links (typically in <li><a href="..."> format)
grep -B 2 'Resources:</strong>' index.html | grep -oP 'href="https?://[^"]+' | cut -d'"' -f2 > resource-urls.txt

# Manual spot-check (sample 20-30 URLs across levels):
# 1. Open URL in browser (incognito mode to avoid cookies)
# 2. Check for paywall indicators:
#    - Login required to view content
#    - "Subscribe to continue reading"
#    - Limited free articles per month
#    - Soft paywall (overlay blocking content)
# 3. For paywalled content: find free alternative
# 4. Update HTML inline with free alternative

# Common paywall indicators by site:
# - Coursera: "audit for free" vs "certificate requires payment" (OK if audit option exists)
# - Medium: soft paywall after N articles
# - Research papers: check for preprint/arXiv version
# - Training platforms: verify free tier exists
```

**Paywalled content handling:**
- If free alternative exists: substitute immediately
- If free audit/trial available: clarify in link text "(free audit available)"
- If no free alternative: remove and find comparable free resource

### Pattern 5: Fix-Forward Commit Workflow
**What:** Fix issues immediately as found, commit per issue-type
**When to use:** Throughout QA process - don't accumulate fixes
**Example:**
```bash
# After fixing broken URLs (finding working replacements)
git add index.html
git commit -m "fix(qa): replace broken URLs with working alternatives

- Replaced 12 404 URLs with current working links
- Verified all replacements return 2xx status codes
- Sources: original orgs, Wayback Machine, equivalent current resources"

# After adding caveats to labor market claims
git add index.html
git commit -m "fix(qa): add caveats to salary ranges and market claims

- Added '(varies by location/experience)' to 47 salary ranges
- Added section disclaimer for general labor market context
- Moderated 3 inflated claims to realistic ranges with sources"

# After varying similar prompts
git add index.html
git commit -m "fix(qa): vary prompt structure across adjacent pathways

- Rewrote 8 opening hooks to eliminate identical copy
- Varied prompt patterns: Persona-Based → Socratic → Project-Based
- Maintained functional equivalence while improving variety"
```

**Commit granularity:** Per issue-type, not per pathway or all-at-once. This enables:
- Clear audit trail of what was fixed
- Easy rollback if needed
- Reviewable changes by type

### Anti-Patterns to Avoid
- **Batch-then-fix workflow:** Accumulating all issues in report, fixing later → loses context, harder to fix
- **Single large commit:** Fixing everything in one commit → impossible to review, no clear audit trail
- **Automated plagiarism checking without manual review:** Tools flag exact copies but miss "similar structure different words"
- **Automated fact-checking for ranges:** APIs don't understand "realistic range with caveats" context
- **Blocking on stylistic issues:** Sameness and missing caveats are nice-to-fix, not blockers - broken URLs are the only blocker
- **Over-automation of paywall detection:** Automated bypass tools miss soft paywalls, ethical concerns
- **Ignoring redirect chains:** 3xx redirects are valid but check final destination isn't paywalled
- **Missing user-agent in curl:** Some sites block bot user-agents - use realistic UA if needed

## Don't Hand-Roll

Problems that look simple but have existing solutions:

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Parallel URL checking | Serial for loop with curl | GNU parallel or xargs -P with curl | 20-50x faster, handles failures gracefully |
| HTML parsing for URLs | Complex regex | grep -oP with tested patterns | Reliable for simple extraction, no library dependencies |
| HTTP status code interpretation | Custom logic | curl --write-out "%{http_code}" | Standard codes, handles redirects correctly |
| Link validation for full sites | Custom crawler | linkchecker or hyperlink tools | Handles recursion, deduplication, edge cases |
| Salary data verification | Custom scraping | BLS.gov API, Payscale | Authoritative sources, maintained datasets |
| Content similarity detection | Custom diff scripts | Manual review with structured approach | Plagiarism tools miss subtle sameness |
| Paywall detection | Custom JavaScript checking | Manual spot-checking | Paywall implementations too varied for reliable automation |

**Key insight:** URL validation is solved problem with robust tools (curl, parallel, linkchecker). Content quality (sameness, claims, paywalls) requires human judgment because the issues are nuanced ("overly templated" vs "reasonably consistent", "realistic range" vs "too optimistic", "free with limitations" vs "paywalled"). Don't over-automate the judgment tasks.

## Common Pitfalls

### Pitfall 1: Serial URL Checking
**What goes wrong:** Checking 650 URLs serially takes hours (1-3 seconds per URL = 10-30 minutes total)
**Why it happens:** Default for loop approach, not realizing parallel execution is trivial
**How to avoid:** Use parallel execution from the start - GNU parallel, xargs -P, or curl --parallel. 20 parallel connections reduces 650 URLs to 2-3 minutes
**Warning signs:** URL validation script taking more than 5 minutes for 650 URLs

### Pitfall 2: Accepting 3xx Redirects Without Verification
**What goes wrong:** URL redirects to paywall or broken destination, but 3xx is treated as "valid"
**Why it happens:** Following "2xx/3xx = success" rule without checking final destination
**How to avoid:** Use curl's %{url_effective} to see final destination, spot-check redirected URLs manually
**Warning signs:** Resources that were "valid" during URL check but users report as broken/paywalled

### Pitfall 3: Automated Plagiarism Checking for Sameness
**What goes wrong:** Running Copyleaks/plagiarism checker returns "no duplicates" but users see obvious template repetition
**Why it happens:** Tools check for exact text matches, miss "same structure different words" sameness
**How to avoid:** Manual review is required - extract opening hooks/structures, compare visually for patterns
**Warning signs:** Automated checker says "all unique" but reading 5 pathways in a row feels repetitive

### Pitfall 4: Treating All 4xx as Equally Broken
**What goes wrong:** 429 (Rate Limited) or 403 (Forbidden to bots) treated same as 404 (Not Found)
**Why it happens:** Binary thinking - 2xx/3xx = good, 4xx/5xx = bad
**How to avoid:** Distinguish 404/410 (truly broken) from 429/403 (may work for users). Recheck 429/403 with user-agent header or manually
**Warning signs:** False positives - URLs flagged as broken that work fine in browser

### Pitfall 5: Missing Caveats as Blocking Issue
**What goes wrong:** Refusing to ship until every salary range has inline caveat
**Why it happens:** Misunderstanding user decision - only broken URLs are blocking
**How to avoid:** User decision clear: broken URLs block shipping, stylistic issues (caveats, sameness) are nice-to-fix. Prioritize accordingly
**Warning signs:** Spending days on caveat additions while broken URLs remain unfixed

### Pitfall 6: One-Time URL Validation
**What goes wrong:** URLs validated once at start of phase, but new URLs added during fixes aren't re-checked
**Why it happens:** Treating validation as one-time task not continuous process
**How to avoid:** Re-run URL validation after each batch of fixes. Validation script should be fast (<5 min) and repeatable
**Warning signs:** Introducing new broken URLs during fix process because validation not re-run

### Pitfall 7: Fixing Without Context
**What goes wrong:** Replacing broken URL with "similar" resource that doesn't match pathway context
**Why it happens:** URL checking separated from understanding what resource should provide
**How to avoid:** Read surrounding context before replacing - pathway career level, required skills, free/paid status. Replacement should serve same learning purpose
**Warning signs:** Users report "this resource doesn't match the pathway description"

### Pitfall 8: Ignoring Soft Paywalls
**What goes wrong:** Resource marked as "free" because first article loads, but paywall appears after 3 articles/month
**Why it happens:** Checking URL once in fresh browser session, not testing paywall limits
**How to avoid:** Recognize common soft paywall patterns (Medium, news sites with "X free articles") and check in incognito mode or test metered limits
**Warning signs:** Users report "this is paywalled" for resources marked "free"

### Pitfall 9: Labor Market Claims Without Sources
**What goes wrong:** Adjusting salary ranges without documenting source for new figures
**Why it happens:** Relying on "general knowledge" rather than authoritative data
**How to avoid:** Every numeric claim adjustment should cite source (BLS, Payscale, job market report). Include in commit message
**Warning signs:** Reviewer asks "where did this salary range come from?" and no source available

## Code Examples

Verified patterns for QA validation tasks:

### Complete URL Validation Script
```bash
#!/bin/bash
# check-urls.sh - Validate all URLs in index.html using parallel curl

HTML_FILE="index.html"
OUTPUT_DIR=".planning/phases/11-quality-assurance"
PARALLEL_JOBS=20  # Number of parallel connections
TIMEOUT=10        # Seconds per request

echo "Extracting URLs from $HTML_FILE..."
grep -oP 'href="https?://[^"]+' "$HTML_FILE" | \
    cut -d'"' -f2 | \
    sort -u > "$OUTPUT_DIR/urls.txt"

TOTAL_URLS=$(wc -l < "$OUTPUT_DIR/urls.txt")
echo "Found $TOTAL_URLS unique URLs"

echo "Validating URLs with $PARALLEL_JOBS parallel connections..."
cat "$OUTPUT_DIR/urls.txt" | \
    parallel -j "$PARALLEL_JOBS" \
    'curl -s -o /dev/null -w "%{http_code} %{url_effective}\n" \
    --max-time '"$TIMEOUT"' \
    --user-agent "Mozilla/5.0 (compatible; QA-Bot/1.0)" \
    "{}"' | \
    tee "$OUTPUT_DIR/url-results.txt"

# Analyze results
echo ""
echo "=== Validation Summary ==="
TOTAL_CHECKED=$(wc -l < "$OUTPUT_DIR/url-results.txt")
SUCCESS_COUNT=$(grep -E '^[23][0-9]{2}' "$OUTPUT_DIR/url-results.txt" | wc -l)
FAIL_COUNT=$(grep -E '^[45][0-9]{2}' "$OUTPUT_DIR/url-results.txt" | wc -l)

echo "Total checked: $TOTAL_CHECKED"
echo "Success (2xx/3xx): $SUCCESS_COUNT"
echo "Failures (4xx/5xx): $FAIL_COUNT"

# Generate broken URLs report
grep -E '^[45][0-9]{2}' "$OUTPUT_DIR/url-results.txt" > "$OUTPUT_DIR/broken-urls.txt"
if [ $FAIL_COUNT -gt 0 ]; then
    echo ""
    echo "=== Broken URLs (see $OUTPUT_DIR/broken-urls.txt) ==="
    cat "$OUTPUT_DIR/broken-urls.txt"
fi

echo ""
echo "Validation complete. Results saved to $OUTPUT_DIR/"
```

### Labor Market Claims Extraction
```bash
#!/bin/bash
# extract-claims.sh - Extract salary ranges and numeric claims for manual review

HTML_FILE="index.html"
OUTPUT_DIR=".planning/phases/11-quality-assurance"

echo "Extracting salary ranges..."
grep -n -oP '\$[0-9]{2,3}K-[0-9]{2,3}K[^)]*' "$HTML_FILE" | \
    tee "$OUTPUT_DIR/salary-ranges.txt"

echo ""
echo "Extracting percentage claims..."
grep -n -oP '[0-9]{1,3}(-[0-9]{1,3})?%\s+[a-z ]+' "$HTML_FILE" | \
    tee "$OUTPUT_DIR/percentage-claims.txt"

echo ""
echo "Extracting market size figures..."
grep -n -oP '\$?[0-9]+(\.[0-9]+)?\s*(million|billion|trillion)' "$HTML_FILE" | \
    tee "$OUTPUT_DIR/market-size-claims.txt"

echo ""
echo "Manual review needed:"
echo "1. Check each salary range against BLS.gov or Payscale"
echo "2. Verify inline caveats: '(varies by location/experience)'"
echo "3. Confirm percentage claims are realistic with sources"
echo "4. Validate market size figures against industry reports"
```

### Sameness Audit Helper
```bash
#!/bin/bash
# audit-sameness.sh - Extract prompt openings for manual comparison

HTML_FILE="index.html"
OUTPUT_DIR=".planning/phases/11-quality-assurance"

echo "Extracting AI Learning Prompt openings..."

# Extract first 100 characters of each prompt for comparison
grep -A 2 'AI Learning Prompt Example' "$HTML_FILE" | \
    grep -oP '<p style="font-style: italic.*?</p>' | \
    sed 's/<[^>]*>//g' | \
    cut -c1-150 | \
    nl > "$OUTPUT_DIR/prompt-openings.txt"

echo "Extracted $(wc -l < "$OUTPUT_DIR/prompt-openings.txt") prompt openings"
echo "Review $OUTPUT_DIR/prompt-openings.txt for:"
echo "  - Identical opening hooks (same first sentence)"
echo "  - Overly templated structure (same pattern, different words)"
echo "  - Copy-paste repetition across adjacent pathways"
echo ""
echo "Compare cross-level (Individual vs Community vs State/Regional vs National vs Global)"
echo "Compare within-level (pathways 1-5 within each card)"
```

### Inline Fixing Example (sed for salary caveat addition)
```bash
# Add caveat to salary range if missing
# Before: <p><strong>Salary range:</strong> $90K-140K</p>
# After:  <p><strong>Salary range:</strong> $90K-140K (U.S., varies by location and experience)</p>

sed -i 's|\$\([0-9]*K-[0-9]*K\)</p>|$\1 (U.S., varies by location and experience)</p>|g' index.html

# Note: This is simplified - actual implementation needs to:
# 1. Check if caveat already exists
# 2. Preserve existing caveats
# 3. Handle variations in HTML structure
```

### Git Commit Pattern for Fixes
```bash
# Pattern: Fix issue type, commit immediately, continue

# After fixing broken URLs
git add index.html
git commit -m "fix(qa): replace broken URLs with working alternatives

Replaced 12 404 URLs:
- Old: https://example.com/old-page (404)
  New: https://example.com/current-page (200)
- Old: https://deadsite.com/resource (timeout)
  New: https://archive.org/wayback/deadsite (200)

All replacements verified to return 2xx status codes.
Sources: original organizations, Wayback Machine, equivalent resources."

# After adding caveats
git add index.html
git commit -m "fix(qa): add caveats to 47 salary ranges

Added inline caveats: '(varies by location/experience)'
Added section disclaimer for general labor market context
Moderated 3 inflated claims to realistic ranges:
- Energy Data Scientist: $120K-180K → $90K-140K (BLS.gov median)
- Climate Finance Analyst: $150K-250K → $95K-160K (Payscale data)"

# After varying prompts
git add index.html
git commit -m "fix(qa): vary prompt structure in Individual level pathways

Rewrote 8 opening hooks to eliminate identical copy:
- Pathway 1-2: changed from both starting 'Act as career coach...'
- Pathway 3-5: varied structure (Persona → Socratic → Project-Based)

Maintained functional equivalence while improving content variety."
```

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Manual URL clicking | Parallel automated checking (curl --parallel, GNU parallel) | 2015+ | 650 URLs: hours → minutes |
| Single-threaded validation | Parallel execution (20+ concurrent) | 2016+ (GNU parallel popularization) | 20-50x speed improvement |
| Exact duplicate checking | Human review for structural sameness | Ongoing | Catches "template fatigue" that tools miss |
| Generic fact-checking APIs | Domain-specific source verification (BLS, Payscale) | 2020+ | Labor market claims need domain expertise |
| Automated paywall bypass | Manual verification with free alternatives | 2024+ (legal/ethical concerns) | More reliable, ethically sound |
| Batch-then-fix workflow | Fix-forward immediate commits | 2020+ (GSD philosophy) | Faster feedback, better context retention |
| linkchecker (Python) dominance | Fast alternatives (hyperlink Rust, filiph/linkcheck Dart) | 2023-2025 | 10-100x faster for CI/CD pipelines |
| xargs for parallelization | GNU parallel as standard | 2018+ | Better error handling, progress tracking |

**Deprecated/outdated:**
- **Serial URL checking:** Replaced by parallel execution (curl --parallel, GNU parallel, xargs -P)
- **Automated paywall bypass tools:** Unreliable, ethically questionable, often violate ToS
- **Pure regex HTML parsing:** Simple extraction fine, but use specialized tools (linkchecker, hyperlink) for complex validation
- **Single large QA commit:** Replaced by per-issue-type commits for clear audit trail
- **Automated plagiarism checkers for content sameness:** Miss structural similarity, require human judgment

## Open Questions

Things that couldn't be fully resolved:

1. **Optimal parallel connection count**
   - What we know: 20 parallel connections is common, curl defaults to 50 with --parallel
   - What's unclear: Exact threshold before hitting rate limits or overwhelming system
   - Recommendation: Start with 20 parallel connections. If rate limited (429 errors), reduce to 10. If fast without errors, increase to 30-50. Monitor for false positives.

2. **Handling soft paywalls automatically**
   - What we know: Soft paywalls (Medium, news sites) are common, varied implementations
   - What's unclear: Reliable programmatic detection without actually hitting limit
   - Recommendation: Manual spot-checking is most reliable. Build list of known soft-paywall domains (Medium, WSJ, NYT) and flag for manual verification. No automated detection recommended.

3. **Degree of sameness that's acceptable**
   - What we know: User wants varied opening hooks and structures, not template copy-paste
   - What's unclear: Where's the line between "reasonably consistent" and "overly templated"?
   - Recommendation: Flag if: (a) identical opening sentence across 3+ pathways, (b) same 3-step structure with only nouns swapped, (c) entire prompts duplicated with minimal changes. Some structural consistency is good (all prompts have persona/context/deliverable), exact repetition is bad.

4. **Salary range sources and verification rigor**
   - What we know: BLS.gov is authoritative, Payscale is crowdsourced, ranges should be realistic
   - What's unclear: How much research per claim? Cross-reference multiple sources or trust BLS?
   - Recommendation: Primary source = BLS.gov Occupational Employment Statistics. If BLS doesn't cover niche role, use Payscale + ZipRecruiter cross-reference. If data unavailable, use "varies widely by organization and location" rather than specific range.

5. **Redirect chain depth handling**
   - What we know: 3xx redirects are valid but final destination matters
   - What's unclear: How many redirects is too many? Should we reject long chains?
   - Recommendation: curl follows redirects by default (--location). Accept redirects up to 5 hops (curl's default). If final destination is 4xx/5xx, treat as broken even if intermediate steps were 3xx. Spot-check heavily-redirected URLs (3+ hops) manually.

6. **False positive rate tolerance**
   - What we know: Some URLs may fail due to rate limiting, temporary outages, bot blocking
   - What's unclear: How many retries before marking truly broken?
   - Recommendation: Retry failed URLs (4xx/5xx) once after 30-second delay. If still failing, mark as needs-manual-check. Some 403s may work for users (bot-blocked) - verify in browser. Only truly broken (404, timeout) should be replaced immediately.

## Sources

### Primary (HIGH confidence)
- [Baeldung: Verify URL Validity from Linux Shell](https://www.baeldung.com/linux/shell-check-url-validity) - curl and wget URL validation techniques
- [NashTech: Check URL Validity Using CURL](https://blog.nashtechglobal.com/how-to-check-url-validity-using-curl/) - HTTP status code checking
- [alexwlchan: Checking Lots of URLs with curl](https://alexwlchan.net/2022/checking-with-curl/) - Parallel URL checking strategies (2022)
- [Baeldung: Check URL Status with wget](https://www.baeldung.com/linux/wget-check-url-status) - wget --spider method
- [GitHub: linkchecker/linkchecker](https://github.com/linkchecker/linkchecker) - Python comprehensive link checker
- [GitHub: filiph/linkcheck](https://github.com/filiph/linkcheck) - Fast Dart link checker
- [GitHub: untitaker/hyperlink](https://github.com/untitaker/hyperlink) - Very fast Rust link checker for CI
- [GNU Parallel Tutorial](https://www.gnu.org/software/parallel/parallel_tutorial.html) - Official GNU parallel documentation
- [GNU Parallel Examples](https://www.gnu.org/software/parallel/parallel_examples.html) - Official examples including curl
- [Baeldung: Parallel Download Using curl](https://www.baeldung.com/linux/curl-parallel-download) - curl --parallel native feature
- [U.S. Bureau of Labor Statistics](https://www.bls.gov/) - Authoritative U.S. labor market data

### Secondary (MEDIUM confidence)
- [SoftwareTestingHelp: Top 10 Broken Link Checker Tools](https://www.softwaretestinghelp.com/broken-link-checker/) - Link checker tool comparison (2026)
- [W3C Link Checker](https://validator.w3.org/checklink) - Official W3C link validation service
- [Medium: Bash Tutorial Prompts for QA Tasks](https://medium.com/ai-in-quality-assurance/18-bash-tutorial-prompts-for-qa-tasks-learn-with-ai-edition-232d76378438) - Bash automation for QA (Nov 2025)
- [GitHub: bats-core/bats-core](https://github.com/bats-core/bats-core) - Bash Automated Testing System
- [HackerOne: Testing Bash Scripts with BATS](https://www.hackerone.com/blog/testing-bash-scripts-bats-practical-guide) - Bash testing patterns
- [Copyleaks Text Similarity Checker](https://app.copyleaks.com/text-compare) - AI-powered similarity detection
- [Plagiarism Checker X 2026](https://plagiarismcheckerx.com/) - Text similarity and AI detection
- [Payscale](https://www.payscale.com/) - Salary data and compensation insights
- [ZipRecruiter: 2026 Labor Market Predictions](https://www.ziprecruiter-research.org/commentary/2026-labor-market-predictions) - Labor market trends
- [Vultr: Text Processing with Grep, Sed, and Awk](https://docs.vultr.com/how-to-process-text-with-bash-using-grep-sed-and-awk-commands) - Bash text processing

### Tertiary (LOW confidence - noted for context)
- Paywall detection methods (search results describe bypass techniques, not detection) - unreliable for automation
- Various paywall bypass services - not recommended for ethical/legal reasons
- Automated fact-checking APIs - don't understand "realistic range with caveats" context
- Soft paywall detection - no reliable automated method found, manual verification recommended

## Metadata

**Confidence breakdown:**
- URL validation tools: HIGH - curl, GNU parallel, linkchecker well-documented with examples
- Parallel execution patterns: HIGH - Official GNU parallel docs, multiple source verification
- Sameness detection: HIGH - Research confirms manual review needed, automated tools insufficient
- Labor market verification: HIGH - BLS.gov authoritative source, Payscale secondary source
- Paywall detection: HIGH - Research confirms no reliable automated method, manual verification required
- Fix-forward workflow: HIGH - GSD philosophy established, commit patterns proven
- Bash text processing: HIGH - grep, awk, sed standard tools with comprehensive documentation

**Research date:** 2026-01-29
**Valid until:** 2026-04-29 (90 days - URL validation tools stable, labor market data updated quarterly)

**Notes for planner:**
- This is a validation and remediation phase, not content creation
- 650+ URLs to validate - parallel execution essential (20+ connections)
- Sameness audit requires manual review - extract opening hooks, compare visually
- Labor market claims need grep extraction + human verification against BLS/Payscale
- Paywall detection is manual spot-checking, no reliable automation
- Fix-forward approach: validate → fix immediately → commit → repeat
- Only broken URLs are blocking for shipping; style issues (sameness, caveats) are nice-to-fix
- Produce both VERIFICATION.md (GSD) and QA-REPORT.md (human summary)
- All 125 pathways in single index.html file (8,868 lines) - in-place editing with sed/manual
- Commit granularity: per issue-type ("fix broken URLs", "add caveats", "vary prompts")
