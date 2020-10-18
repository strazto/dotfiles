#!/usr/bin/env bash


# Query monitors to array. Unneeded because you can just assign colors to all mons without scoping
# MONITORS=($(nvidia-settings --query dpys | sed -n 's/^\s*//g ; s/[()]//g ; s/connected/\0/p' | cut -d' ' -f))

# Values are taken from
# http://planetpixelemporium.com/tutorialpages/light.html
# | Light Source    | Kelvin temperature | R G B Values  | Color |   |
# |-----------------|--------------------|---------------|-------|---|
# | Candle          | 1900               | 255, 147, 41  |       |   |
# | 40W Tungsten    | 2600               | 255, 197, 143 |       |   |
# | 100W Tungsten   | 2850               | 255, 214, 170 |       |   |
# | Halogen         | 3200               | 255, 241, 224 |       |   |
# | Carbon Arc      | 5200               | 255, 250, 244 |       |   |
# | High Noon Sun   | 5400               | 255, 255, 251 |       |   |
# | Direct Sunlight | 6000               | 255, 255, 255 |       |   |
# | Overcast Sky    | 7000               | 201, 226, 255 |       |   |
# | Clear Blue Sky  | 20000              | 64, 156, 255  |       |   |

function to_frac {
  #echo "scale=3; x=$1/255; if(x<1) print 0; x" | bc
  echo "scale=3; x=$1/255; x=x-1; if(x>0 && x<1) print 0; x" | bc
}

function assign_rgb {
  local R=$1
  local G=$2
  local B=$3

  nvidia-settings --assign "RedBrightness=$R" --assign "GreenBrightness=$G" --assign "BlueBrightness=$B"
}

function set_2600k {
  local R="$(to_frac 255)"
  local G="$(to_frac 197)"
  local B="$(to_frac 143)"
  assign_rgb $R $G $B
}

function set_1900k {
  local R="$(to_frac 255)"
  local G="$(to_frac 147)"
  local B="$(to_frac 41)"
  assign_rgb $R $G $B
}
function set_normal {
  assign_rgb 0 0 0
}

"$@"
