#!/usr/bin/env bash
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on # \
      # --set $NAME label="$($PLUGIN_DIR/aerospace_windows.sh $1)"
else
    sketchybar --set $NAME background.drawing=off # \
      # --set $NAME label="$($PLUGIN_DIR/aerospace_windows.sh $1)"
fi
