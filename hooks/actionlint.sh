#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v actionlint &>/dev/null; then
  >&2 echo "actionlint not installed."
  exit 1
fi

if [[ $# -eq 0 ]]; then
  exit 0
fi

echo "==> Running 'actionlint'..."
actionlint "$@"
