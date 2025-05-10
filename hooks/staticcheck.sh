#!/usr/bin/env bash
# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v staticcheck &>/dev/null; then
  >&2 echo "staticcheck not installed."
  exit 1
fi

find_go_mod_root() {
  local start="$1"
  local d
  d=$(cd "$start" && pwd) || return 1
  while [[ "$d" != "/" ]]; do
    if [[ -f "$d/go.mod" ]]; then
      echo "$d"
      return 0
    fi
    d=$(dirname "$d")
  done
  return 1
}

ERROR=0
roots=""
for file in "$@"; do
  dir=$(dirname "$file")
  if r=$(find_go_mod_root "$dir"); then
    roots="${roots}${r}"$'\n'
  fi
done

echo "==> Running 'staticcheck'..."
while IFS= read -r modroot; do
  [[ -z "$modroot" ]] && continue
  echo "==> Running 'staticcheck' in '${modroot}'..."
  (cd "$modroot" && staticcheck ./...) || ERROR=$?
done < <(printf '%s' "$roots" | grep -v '^$' | sort -u)

exit "$ERROR"
