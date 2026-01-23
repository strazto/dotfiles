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

# Cache the current branch name to avoid unnecessary updates
set -g __wbs_cached_branch ""

function __update_jira_key --on-event fish_prompt
    # Get current branch name
    set -l current_branch (git branch --show-current 2>/dev/null)

    # Only update if branch has changed
    if test "$current_branch" != "$__wbs_cached_branch"
        set -g __wbs_cached_branch "$current_branch"

        # Extract and set JIRA_KEY
        set -l jira_key (_jira_key)
        if test -n "$jira_key"
            set -gx JIRA_KEY "$jira_key"
        else
            set -e JIRA_KEY
        end
    end
end

# Initialize on first load
__update_jira_key
