#!/usr/bin/env bash

# git ls-files -o --exclude-standard -z | xargs -n1 -0 git --no-pager diff --color=always /dev/null | diff-so-fancy | less --tabs=4 -RFX --pattern '^(Date|added|deleted|modified|name): '

git diff --diff-filter=A
