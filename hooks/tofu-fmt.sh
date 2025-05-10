#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -e
set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v tofu &>/dev/null; then
  >&2 echo "tofu not installed."
  exit 1
fi

original_path="$PATH"

ERROR=0

echo "==> Running 'tofu fmt'..."
for file in "$@"; do
  tofu fmt -diff -check "$file" || ERROR=$?
done

export PATH="$original_path"

exit "$ERROR"
