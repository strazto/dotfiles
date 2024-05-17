
abbr --add git_branch_ref --position anywhere --set-cursor "$(git branch --show-current).$(git rev-parse HEAD | head -c 7)%"