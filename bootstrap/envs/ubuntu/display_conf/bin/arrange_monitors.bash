#!/bin/bash
# ----------------------------------------------------------------------
# Honestly this just exists to make my nvidia desktop settings
#  actually persist on startup lmao.
# ----------------------------------------------------------------------
echo "${0} :"
echo "Assigning MetaMode (Startup script)"
nvidia-settings --assign CurrentMetaMode="\
  DP-5: nvidia-auto-select +0+0, \
  DP-1: nvidia-auto-select +0+1080, \
  HDMI-0: nvidia-auto-select +1920+1080, \
  DP-3: nvidia-auto-select +1920+0"



#"DP-5: nvidia-auto-select +0+1080,\
# DP-1: nvidia-auto-select +0+0,\
# DP-3: nvidia-auto-select +1920+1080,\
# HDMI-0: nvidia-auto-select +1920+0"




# "metamodes" "DP-5: nvidia-auto-select +0+0, DP-1: nvidia-auto-select +0+1080, DP-3: nvidia-auto-select +1920+1080, HDMI-0: nvidia-auto-select +1920+0"
