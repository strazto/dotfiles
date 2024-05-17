
abbr --add git_branch_ref --position anywhere --set-cursor "$(git branch --show-current).$(git rev-parse HEAD | head -c 7)%"

abbr --add git_branch_master --position anywhere --set-cursor "master.$(git rev-parse HEAD | head -c 7)%"
