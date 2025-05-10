#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v ruff &>/dev/null; then
  >&2 echo "ruff not installed."
  exit 1
fi

echo "==> Running 'ruff format'..."
ruff format "$@"
