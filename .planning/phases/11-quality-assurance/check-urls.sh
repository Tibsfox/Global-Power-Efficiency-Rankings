#!/bin/bash
# check-urls.sh - Validate all URLs in parallel using background jobs

URLS_FILE="$1"
OUTPUT_FILE="$2"
MAX_PARALLEL="${3:-20}"
TIMEOUT="${4:-10}"

# Clear output file
> "$OUTPUT_FILE"

# Count and track
total=$(wc -l < "$URLS_FILE")
count=0
running=0

check_url() {
    local url="$1"
    local code
    code=$(curl -s -o /dev/null -w "%{http_code}" --max-time "$TIMEOUT" -L \
        --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
        "$url" 2>/dev/null)
    echo "$code $url" >> "$OUTPUT_FILE"
}

while read -r url; do
    check_url "$url" &
    ((running++))
    ((count++))

    # Throttle parallel jobs
    if ((running >= MAX_PARALLEL)); then
        wait -n 2>/dev/null || wait
        ((running--))
    fi

    # Progress update every 50 URLs
    if ((count % 50 == 0)); then
        echo "Progress: $count/$total URLs checked" >&2
    fi
done < "$URLS_FILE"

# Wait for remaining jobs
wait

echo "Completed: $total URLs" >&2
