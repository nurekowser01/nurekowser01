#!/usr/bin/env bash
# validate-repo.sh — Automated Pre-Commit Validation Script for DevOps Portfolio Repositories

set -euo pipefail

REPO_DIR="${1:-.}"

echo "=================================================="
echo " Validating Repository: ${REPO_DIR}"
echo "=================================================="

# 1. README Check
if [ ! -f "${REPO_DIR}/README.md" ]; then
    echo "[ERROR] README.md missing in ${REPO_DIR}"
    exit 1
fi
echo "[OK] README.md exists."

# 2. Mermaid Diagram Check
if grep -q "```mermaid" "${REPO_DIR}/README.md"; then
    echo "[OK] Mermaid architecture diagram present in README.md."
else
    echo "[WARN] No Mermaid diagram found in README.md."
fi

# 3. Shell Script Syntax Validation
find "${REPO_DIR}" -maxdepth 3 -type f -name "*.sh" | while read -r script; do
    echo "[CHECK] Shell script syntax: ${script}"
    bash -n "${script}"
done

# 4. Secret Audit Check
if [ -f "./validation/audit-secrets.sh" ]; then
    bash ./validation/audit-secrets.sh "${REPO_DIR}"
elif [ -f "../nurekowser01/validation/audit-secrets.sh" ]; then
    bash ../nurekowser01/validation/audit-secrets.sh "${REPO_DIR}"
fi

echo "[SUCCESS] Validation passed for ${REPO_DIR}"
