#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v terrafmt &>/dev/null; then
  >&2 echo "terrafmt not installed (try: go install github.com/katbyte/terrafmt@latest)"
  exit 1
fi

if [[ $# -eq 0 ]]; then
  exit 0
fi

ERROR=0

echo "==> Running 'terrafmt fmt'..."
for file in "$@"; do
  if [[ "$file" == *.go ]]; then
    terrafmt fmt --fmtcompat "$file" || ERROR=$?
  else
    terrafmt fmt "$file" || ERROR=$?
  fi
done

exit "$ERROR"
