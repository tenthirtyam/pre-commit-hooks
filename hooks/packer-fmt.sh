#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v packer &>/dev/null; then
  >&2 echo "packer not installed."
  exit 1
fi

ERROR=0

echo "==> Running 'packer fmt'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  echo "==> Running 'packer fmt' in directory '$dir'..."
  pushd "$dir" >/dev/null
  if ! packer fmt .; then
    ERROR=1
  fi
  popd >/dev/null
done

exit "$ERROR"
