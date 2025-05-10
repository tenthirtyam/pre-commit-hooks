#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v pwsh &>/dev/null; then
  >&2 echo "pwsh (PowerShell 7+) not installed."
  exit 1
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
PS1_HELPER="${SCRIPT_DIR}/psscriptanalyzer-invoke.ps1"

if [[ ! -f "$PS1_HELPER" ]]; then
  >&2 echo "Missing ${PS1_HELPER}"
  exit 1
fi

ERROR=0

echo "==> Running 'PSScriptAnalyzer'..."
for file in "$@"; do
  if ! pwsh -NoProfile -File "$PS1_HELPER" "$file"; then
    ERROR=1
  fi
done

exit "$ERROR"
