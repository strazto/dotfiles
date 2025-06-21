if ! status is-interactive
    exit
end

if set -q CURSOR_TRACE_ID
    abbr --add code cursor
end

