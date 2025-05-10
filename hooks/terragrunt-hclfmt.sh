#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v terragrunt &>/dev/null; then
  >&2 echo "terragrunt not installed."
  exit 1
fi

echo "==> Running 'terragrunt hclfmt'..."
for file in "$@"; do
  pushd "$(dirname "$file")" >/dev/null
  terragrunt hclfmt --file "$(basename "$file")"
  popd >/dev/null
done
