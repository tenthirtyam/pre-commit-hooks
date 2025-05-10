#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v terraform &>/dev/null; then
  >&2 echo "terraform not installed."
  exit 1
fi

original_path=$PATH

ERROR=0

echo "==> Running 'terraform fmt'..."
for file in "$@"; do
  terraform fmt -diff -check "$file" || ERROR=$?
done

export PATH="$original_path"

exit "$ERROR"
