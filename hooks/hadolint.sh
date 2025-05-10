#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v hadolint &>/dev/null; then
  >&2 echo "hadolint not installed."
  exit 1
fi

ERROR=0

echo "==> Running 'hadolint'..."
for file in "$@"; do
  hadolint "$file" || ERROR=$?
done

exit "$ERROR"
