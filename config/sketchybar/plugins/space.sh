#!/bin/zsh
# $SELECTED
# $NAME
# $SID - space ID (numerical)
echo "sid:" $SID;

float_indicator=""
type=$(yabai -m query --spaces --space $SID | jq '.type' | tr -d '"')
if [ "$type" = "float" ]; then
  float_indicator="*"
fi

## Get space mode in `yabai`:
if [[ $SELECTED = true ]]; then
  sketchybar --set $NAME icon="[$NAME$float_indicator]"
else
  sketchybar --set $NAME icon=$NAME$float_indicator
fi
