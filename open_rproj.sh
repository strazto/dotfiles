
function Rproj_open {
  xdg-open $(find . -maxdepth 1 -name "*.Rproj") &
}

alias Rproj=Rproj_open
alias please=sudo

