#!/bin/sh
WIFI=$(ipconfig getifaddr en0)
sketchybar --set $NAME icon=":wifi:" label="${WIFI}"
