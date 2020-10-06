#!/usr/bin/env bash

append_or_not () {
  local to_append='Include config.d/*'

  local sshv="$(ssh -V 2>&1 | sed 's@^[^0-9]*\([0-9\.]\+\).*@\1@')"
  
  if (( "$(echo "$sshv < 7.3" | bc -l)" )); then
    echo "SSH version $sshv < 7.3, doesnt support includes"
    # TODO: Hint @ https://superuser.com/a/916583/881137
    # TODO: write a nice script for the above
    return 1
  fi
  
  if [[ ! -e "$HOME/.ssh/config" ]]; then
    touch "$HOME/.ssh/config"
  fi
  local linenums="$(sed -n "\,^${to_append},=" "$HOME/.ssh/config")"

  if [[ ! -z "$linenums" ]]; then
    echo "Found line @ $linenums"
    return 2
  fi
  
  sed -i "1i ${to_append}" "$HOME/.ssh/config"

}

append_or_not
