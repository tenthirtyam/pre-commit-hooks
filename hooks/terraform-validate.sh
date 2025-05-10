#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"
export TF_IN_AUTOMATION=1

if ! command -v terraform &>/dev/null; then
  >&2 echo "terraform not installed."
  exit 1
fi

ERROR=0

echo "==> Running 'terraform validate'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  echo "==> Running 'terraform validate' in '$dir'..."
  pushd "$dir" >/dev/null
  terraform init -backend=false || ERROR=$?
  terraform validate || ERROR=$?
  popd >/dev/null
done

exit "$ERROR"
