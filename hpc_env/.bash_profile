# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

if [ -z "$SINGULARITY_NAME"  ]; then
  export RENV_PATHS_CACHE=/project/STEMI/renv
else
  export RENV_PATHS_CACHE=/project/STEMI/renv_container
fi
# Load any modules that you commonly need
. ~/.module_rc

