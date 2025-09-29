if ! status is-interactive
    exit
end

function is_cursor_session
    # Heuristics: CURSOR_TRACE_ID or '.cursor-server' present in select env vars
    if set -q CURSOR_TRACE_ID
        return 0
    end

    for name in VSCODE_GIT_ASKPASS_MAIN VSCODE_GIT_ASKPASS_NODE NODE_OPTIONS BROWSER
        set -l value (printenv $name 2>/dev/null)
        if test -n "$value"; and string match -q '*/.cursor-server/*' -- $value
            return 0
        end
    end

    return 1
end

if is_cursor_session
    if not abbr --query code
        abbr --add code cursor
    end
end

