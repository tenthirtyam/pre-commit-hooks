#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT


set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v go &>/dev/null; then
  >&2 echo "go not installed."
  exit 1
fi

echo "==> Running 'go fmt'..."
for file in "$@"; do
  go fmt "./$(dirname "$file")"
done
