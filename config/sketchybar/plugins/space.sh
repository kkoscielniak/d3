#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

## TODO: This should be configured in `sketchybarrc`
# WINDOWS_COUNT=$(yabai -m query --windows --space $SID | jq length)

# echo $WINDOWS_COUNT

# if [[ $WINDOWS_COUNT -g#gcct 0 ]]; then
  sketchybar --set $NAME background.drawing=$SELECTED;
# fi
