# User specific aliases and functions

alias ixsession="qsub -IXP STEMI -l select=1:ncpus=2:mem=16GB,walltime=4:00:00"
alias isession="qsub -IP STEMI -l select=1:ncpus=2:mem=16GB,walltime=4:00:00"

alias myq="qstat -u mstr3336"

alias load_r="module load R/3.5.2"

alias load_autotools="module load libtool autoconf automake gettext"

alias my_jobs="qstat -ft | grep -B 2 -A 20 ${USER}@"

alias pkginst="R CMD INSTALL --no-multiarch --with-keep.source ."
alias pull_deps="Rscript --no-save --no-restore -e 'renv::restore(confirm = FALSE)'"

function update_pkg {
  git pull
  pull_deps  
  pkginst
}

