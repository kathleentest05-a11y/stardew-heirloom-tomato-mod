#!/usr/bin/env bash
# Validate repository JSON.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

if command -v python3 >/dev/null 2>&1; then
    python=python3
elif command -v python >/dev/null 2>&1; then
    python=python
else
    echo "error: Python 3 is required for JSON validation" >&2
    exit 1
fi

json_files=(
    manifest.json
    content.json
)

while IFS= read -r -d '' file; do
    json_files+=("$file")
done < <(find assets i18n -type f -name '*.json' -print0 | sort -z)

for file in "${json_files[@]}"; do
    "$python" -m json.tool "$file" >/dev/null
done

echo "Validated ${#json_files[@]} JSON files"
