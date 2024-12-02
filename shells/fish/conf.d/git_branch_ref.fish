
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
