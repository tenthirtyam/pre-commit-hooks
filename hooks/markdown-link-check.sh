#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v markdown-link-check; then
  >&2 echo "markdown-link-check is installed."
  exit 1
fi

TMP_CONFIG="$(mktemp)"
cat > "$TMP_CONFIG" <<EOF
{
  "replacementPatterns": [
    {
      "pattern": "^/",
      "replacement": "file://$(pwd)/"
    }
  ],
  "ignorePatterns": [
    {
      "pattern": "^#"
    }
  ]
}
EOF

echo "==> Running 'markdown-link-check'..."
for file in "$@"; do
  markdown-link-check -c "$TMP_CONFIG" "$file"
done
