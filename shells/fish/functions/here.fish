function here
    if set -l top_level "$(git rev-parse --show-toplevel 2>/dev/null)" 
        cd "$top_level"
        return 0
    end
    echo "not in a repo"
    return 1
end
