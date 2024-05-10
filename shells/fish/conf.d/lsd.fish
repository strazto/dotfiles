if type -q lsd
    alias ls=lsd
    abbr --add l lsd -l
    abbr --add la lsd --almost-all
    abbr --add lla lsd -l --almost-all
    abbr --add lt lsd --tree
else
    alias ls='ls --color=auto'
    abbr --add l ls -CF
    abbr --add la ls -A
    abbr --add ll ls -alF
end
