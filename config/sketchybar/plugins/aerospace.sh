#!/usr/bin/env bash
if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on icon.color=0xff000000
else
    sketchybar --set $NAME background.drawing=off icon.color=0xffffffff
fi
