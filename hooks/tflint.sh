#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v tflint &>/dev/null; then
  >&2 echo "tflint not installed."
  exit 1
fi

if [[ $# -eq 0 ]]; then
  exit 0
fi

ERROR=0

echo "==> Running 'tflint'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  echo "==> Running 'tflint' in '${dir}'..."
  pushd "$dir" >/dev/null || continue
  tflint || ERROR=$?
  popd >/dev/null
done

exit "$ERROR"
