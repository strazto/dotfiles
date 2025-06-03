if test -d /opt/homebrew/opt/ruby/bin
    fish_add_path --prepend --move /opt/homebrew/opt/ruby/bin
    fish_add_path --prepend --move (gem environment gemdir)/bin
end