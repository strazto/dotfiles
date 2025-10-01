
if test -d "$(brew --prefix)/opt/python/libexec/bin"
    # append to avoid shadowing venv python
    # --path means it's added to system $PATH (not fish_user_path)
    # since fish_user_path is always prepended
    fish_add_path --path --prepend --move --global "$(brew --prefix)/opt/python/libexec/bin"
end