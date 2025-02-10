#!/usr/bin/env bash
# Maintain parity with /tools/linuxbrew/install_brew_utils.bash

# I run ubuntu server on raspi
# unforch brew isnt available

# Install rust
hash cargo 2>/dev/null || curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

hash lsd 2>/dev/null || nix-env -iA nixos.lsd

hash fzf 2>/dev/null || nix-env -iA nixpkgs.fzf

hash zoxide 2>/dev/null || nix-env -iA nixpkgs.zoxide

hash tmux 2>/dev/null || nix-env -iA nixpkgs.tmux

hash fish 2>/dev/null || nix-env -iA nixpkgs.fish

hash delta 2>/dev/null || nix-env -iA nixpkgs.delta