if test -d /usr/local/go/bin
    fish_add_path --move --prepend --global --path /usr/local/go/bin
end

if test -d ~/go/bin
    fish_add_path --move --prepend --global --path ~/go/bin
end