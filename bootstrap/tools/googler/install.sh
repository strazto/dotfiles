#!/usr/bin/env bash

_install_googler () {
  local tmp_d="$(mktemp -d -t .googler-tmp-XXX --tmpdir="$HOME")"
  local release="${1:-v4.2}"
  cd "$tmp_d"
  git clone https://github.com/jarun/googler.git
  cd googler
  
  PREFIX="${HOME}/.local" make install
  
  cd ~

  rm -rf "$tmp_d"
}

$(_install_googler "$1")
