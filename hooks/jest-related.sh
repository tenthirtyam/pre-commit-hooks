#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v npx &>/dev/null; then
  >&2 echo "npx (Node.js) not installed."
  exit 1
fi

if [[ $# -eq 0 ]]; then
  exit 0
fi

if [[ ! -f package.json ]]; then
  >&2 echo "No package.json in repository root; skipping Jest."
  exit 0
fi

echo "==> Running 'jest --findRelatedTests'..."
npx --no-install jest --findRelatedTests --passWithNoTests --runInBand "$@"
