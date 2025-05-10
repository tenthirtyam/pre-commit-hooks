#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v goimports &>/dev/null; then
  >&2 echo "goimports not installed."
  exit 1
fi

echo "==> Running 'goimports'..."
for file in "$@"; do
  goimports -l -w "$(dirname "$file")"
done
