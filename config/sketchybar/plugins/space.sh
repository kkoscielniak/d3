#!/bin/sh

if [[ $SELECTED = true ]]; then
  sketchybar --set $NAME icon=[$NAME]
else
  sketchybar --set $NAME icon=$NAME
fi
