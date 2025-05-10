#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v npx &>/dev/null; then
  >&2 echo "npx (Node.js) not installed."
  exit 1
fi

if [[ ! -f tsconfig.json ]]; then
  >&2 echo "No tsconfig.json in repository root; skipping tsc --noEmit."
  exit 0
fi

echo "==> Running 'tsc --noEmit'..."
npx tsc --noEmit
