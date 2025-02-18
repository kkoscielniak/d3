#!/usr/bin/env bash

source ~/.config/sketchybar/icon_map.sh
for APP in  $(aerospace list-windows --workspace $1 --format "%{app-name}"); do
  # echo $APP
  __icon_map "$APP"
  echo ${icon_result}
done
