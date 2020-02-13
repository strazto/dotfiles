
function Rproj_open {
  open $(find . -maxdepth 1 -name "*.Rproj") > /dev/null 2>&1 &
}

alias Rproj=Rproj_open
alias please=sudo

