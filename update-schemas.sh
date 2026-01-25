#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <ref>"
    echo "  ref: branch name, tag, or commit hash from fresh repo"
    echo "  e.g.: $0 v0.1.90"
    echo "        $0 master"
    echo "        $0 abc1234"
    exit 1
fi

REF="$1"
FRESH_RAW="https://raw.githubusercontent.com/fresh-editor/fresh/${REF}/docs/internal/package-index-template/schemas"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCHEMA_DIR="${SCRIPT_DIR}/schemas"

mkdir -p "${SCHEMA_DIR}"

echo "Fetching schemas from fresh@${REF}..."
curl -sf "${FRESH_RAW}/registry.schema.json" -o "${SCHEMA_DIR}/registry.schema.json"
curl -sf "${FRESH_RAW}/blocklist.schema.json" -o "${SCHEMA_DIR}/blocklist.schema.json"
curl -sf "${FRESH_RAW}/package.schema.json" -o "${SCHEMA_DIR}/package.schema.json"

echo "Schemas updated from fresh@${REF}"
