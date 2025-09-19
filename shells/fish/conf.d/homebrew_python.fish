
if test -d "$(brew --prefix)/opt/python/libexec/bin"
    fish_add_path --prepend --move "$(brew --prefix)/opt/python/libexec/bin"
end