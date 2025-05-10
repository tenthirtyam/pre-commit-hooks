#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v go &>/dev/null; then
  >&2 echo "go not installed."
  exit 1
fi

echo "==> Running 'go mod tidy'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  pushd "$dir" >/dev/null
  if [ -f go.mod ]; then
    echo "==> Running 'go mod tidy' in '$dir'..."
    go mod tidy
  fi
  popd >/dev/null
done
