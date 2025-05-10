#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v mypy &>/dev/null; then
  >&2 echo "mypy not installed."
  exit 1
fi

echo "==> Running 'mypy'..."
mypy "$@"
