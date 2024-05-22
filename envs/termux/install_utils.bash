#!/usr/bin/env bash
# Maintain parity with /tools/linuxbrew/install_brew_utils.bash

hash cargo 2>/dev/null || pkg install rust

hash lsd 2>/dev/null || pkg install lsd

hash fzf 2>/dev/null || pkg install fzf

hash zoxide 2>/dev/null || pkg install zoxide

hash tmux 2>/dev/null || pkg install tmux

hash fish 2>/dev/null || pkg install fish

hash chsh 2>/dev/null || pkg install termux-tools
