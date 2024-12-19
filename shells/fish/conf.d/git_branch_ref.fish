
function _git_branch_ref
    echo "$(git branch --show-current).$(git rev-parse HEAD | head -c 7)%"
end

abbr --add git_branch_ref --position anywhere --set-cursor --function _git_branch_ref

function _git_branch_master
    echo "master.$(git rev-parse HEAD | head -c 7)%"
end

abbr --add git_branch_master --position anywhere --set-cursor --function _git_branch_master


function _git_remote_tracking_branch_name
    git rev-parse --abbrev-ref --symbolic-full-name @{u}
end

abbr --add git_tracking --position anywhere --set-cursor --function _git_remote_tracking_branch_name

function _groot
    if set -l top_level "$(git rev-parse --show-toplevel 2>/dev/null)"
        echo "$top_level"
        return 0
    end
    echo "not in a repo" >2
    return 1
end

abbr --add groot --position anywhere --set-cursor --function _groot
