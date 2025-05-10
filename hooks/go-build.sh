#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v go &>/dev/null; then
  >&2 echo "go not installed."
  exit 1
fi
+
echo "==> Running 'go build'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  pushd "$dir" >/dev/null
  if ls *.go &>/dev/null; then
    echo "==> Running 'go build' in '$dir'..."
    go build
  fi
  popd >/dev/null
done
