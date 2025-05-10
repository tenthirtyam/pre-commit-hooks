#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v yamllint &>/dev/null; then
  >&2 echo "yamllint not installed."
  exit 1
fi

ERROR=0

echo "==> Running 'yamllint'..."
for file in "$@"; do
  yamllint "$file" || ERROR=$?
done

exit "$ERROR"
