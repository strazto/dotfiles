export PATH=$PATH:/Library/Frameworks/R.framework/Versions/3.5/Resources

export PATH=$PATH:$HOME/bin
export PATH="/usr/local/bin:${PATH}"

# User specific alias' and functions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# bash-combpletion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

