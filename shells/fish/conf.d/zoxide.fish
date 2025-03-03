if ! status is-interactive
    exit
end

if type -q zoxide
  zoxide init fish | source
end

