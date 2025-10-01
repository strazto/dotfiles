if test -d /opt/homebrew/opt/ruby/bin
    fish_add_path --prepend --move --global --path /opt/homebrew/opt/ruby/bin
    fish_add_path --prepend --move --global --path (gem environment gemdir)/bin
end