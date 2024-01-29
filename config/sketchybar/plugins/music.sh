#!/bin/bash
# $INFO: { "state": "playing", "title": "Persona 5 Royal [PS4] -- recenzja", "album": "", "artist": "arhn.eu", "app": "Arc" }

state="$(echo "$INFO" | jq -r '.state')"

if [ "$state" = "playing" ]; then
  media="$(echo "$INFO" | jq -r '.app + ": " + .title + " - " + .artist')"
  sketchybar --set $NAME label="$media" drawing=on
else
  sketchybar --set $NAME drawing=off
fi