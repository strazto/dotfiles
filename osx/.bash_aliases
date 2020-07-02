function Rproj_open {
  open $(find . -maxdepth 1 -name "*.Rproj") > /dev/null 2>&1 &
}

alias Rproj=Rproj_open
alias please='sudo'
alias smosh='mosh --server=~/bin/mosh-server' 
alias test_pkg='Rscript --no-save --no-restore -e "devtools::test()"'

HOME_DOMAIN=mstrasiotto.hopto.org
function homosh {
  mosh -p 60000:60006 matty@${HOME_DOMAIN}
}

function sshome {
  ssh -XYC matty@${HOME_DOMAIN}
}

alias sshpc='ssh -XY mstr3336@hpc.sydney.edu.au'


alias pkginst="R CMD INSTALL --no-multiarch --with-keep.source ."
alias pull_deps="Rscript --no-save --no-restore -e 'renv::restore(confirm = FALSE)'"

function update_pkg {
  git pull
  pull_deps
  pkginst
}

