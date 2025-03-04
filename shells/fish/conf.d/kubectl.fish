if ! status is-interactive
    exit
end

if type -q kubectl
    kubectl completion fish | source
    abbr --add k kubectl
end