#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

case $INFO in
  [6-9][0-9]|100) ICON=":volume_high:"
  ;;
  [3-5][0-9]) ICON=":volume_high:"
  ;;
  [1-9]|[1-2][0-9]) ICON=":volume_low:"
  ;;
  *) ICON=":volume_muted:"
esac

sketchybar --set $NAME icon="$ICON" label="$INFO%"
