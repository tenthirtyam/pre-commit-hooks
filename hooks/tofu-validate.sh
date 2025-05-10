#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -e
set -u -o pipefail

export PATH="$PATH:/usr/local/bin"
export TF_IN_AUTOMATION=1

if ! command -v tofu &>/dev/null; then
  >&2 echo "tofu not installed."
  exit 1
fi

ERROR=0

echo "==> Running 'tofu validate'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  echo "==> Running 'tofu validate' in '$dir'..."
  pushd "$dir" >/dev/null
  tofu init -backend=false || ERROR=$?
  terraform validate || ERROR=$?
  popd >/dev/null
done

exit "$ERROR"
