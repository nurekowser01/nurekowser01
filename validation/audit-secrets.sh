#!/usr/bin/env bash
# audit-secrets.sh — Secret Audit Scanner for DevOps Portfolio Repositories

set -euo pipefail

TARGET_DIR="${1:-.}"

echo "[AUDIT] Scanning ${TARGET_DIR} for potential hardcoded secrets..."

# Pattern matches for common secret patterns
PATTERNS=(
    "([a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@)"
    "(BEGIN (RSA|OPENSSH|EC|PRIVATE) KEY)"
    "(AKIA[0-9A-Z]{16})"
    "(ghp_[a-zA-Z0-9]{36})"
    "(glpat-[a-zA-Z0-9_-]{20})"
    "(xox[baprs]-[0-9a-zA-Z]{10,48})"
)

FOUND=0

for pattern in "${PATTERNS[@]}"; do
    if grep -E -r --exclude-dir=".git" --exclude="*.yml" --exclude="*.md" "${pattern}" "${TARGET_DIR}" 2>/dev/null; then
        echo "[WARNING] Possible secret matched pattern: ${pattern}"
        FOUND=$((FOUND+1))
    fi
done

if [ ${FOUND} -eq 0 ]; then
    echo "[OK] No plaintext hardcoded credentials found in ${TARGET_DIR}"
else
    echo "[WARNING] Secret audit completed with ${FOUND} warning(s). Ensure all keys are placeholders."
fi
