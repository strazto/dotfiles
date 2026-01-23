# Example branch name:

# docs/ELUMIFY-533-refresh-docs

# Convention: $type/$jira-key-$description
# Maybe sometimes $type will be missing but ALWAYS jira key

if ! status is-interactive
    exit
end

function _jira_key
    set -l branch (git branch --show-current 2>/dev/null)
    if test -z "$branch"
        echo ""
        return 1
    end
    # Extract Jira key (format: UPPERCASE-NUMBERS) from branch name
    set -l jira_key (string match -r '[A-Z]+-[0-9]+' "$branch")
    if test -n "$jira_key"
        echo "$jira_key"
        return 0
    end
    echo ""
    return 1
end

abbr --add jk --position anywhere --set-cursor --function _jira_key

function _jira_key_colon
    set -l jira_key (_jira_key)
    if test -n "$jira_key"
        echo "$jira_key:"
        return 0
    end
    echo ""
    return 1
end

abbr --add jk: --position anywhere --set-cursor --function _jira_key_colon
