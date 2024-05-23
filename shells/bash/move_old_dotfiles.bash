#!/usr/bin/env bash

# Move old dotfiles that aren't symlinks
declare -a dotfiles=(
    ".profile"
    ".bashrc"
    ".bash_profile"
    ".bash_aliases"
    ".bash_prompt"
    ".bash_completion"
    )

new_dir="$HOME/.config/dotfile-backups"

mkdir -p "$new_dir"

for dotfile in "${dotfiles[@]}" ; do
    dotfile_path="$HOME/$dotfile"

    # If regular file
    if [ -f "$dotfile_path" ] ; then
        echo "Moving $dotfile" to "$new_dir"
        mv "$dotfile_path" "$new_dir"
    fi
done