#!/usr/bin/env bash
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi
