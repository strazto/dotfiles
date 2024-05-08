if type -q lsd
    alias ls=lsd
    abbr l lsd -l
    abbr la lsd --almost-all
    abbr lla lsd -l --almost-all
    abbr lt lsd --tree
else
    alias ls='ls --color=auto'
    abbr l ls -CF
    abbr la ls -A
    abbr ll ls -alF
end
