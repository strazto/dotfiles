if status is-interactive
    # Commands to run in interactive sessions can go here
    if test -d ~/.local/bin
        fish_add_path -m ~/.local/bin
    end
end
