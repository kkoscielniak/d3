#!/bin/zsh
# $SELECTED
# $NAME
# $SID - space ID (numerical)
# $DID - display ID (unused)

get_space_indicator() {
  type=$(yabai -m query --spaces --space $SID | jq '.type' | tr -d '"') # `bsp` | `float`
  is_native_fullscreen=$(yabai -m query --spaces --space $SID | jq '."is-native-fullscreen"')

  # set indicator to `*` if the space is set to `float`
  indicator=$([[ "$type" = "float" ]] && echo "*" || echo "")
  
  # set the indicator to `^` if the space is fullscreen
  indicator=$([[ "$is_native_fullscreen" = "true" ]] && echo "^" || echo $indicator)

  echo $indicator;
}

if [[ $SELECTED = true ]]; then
  sketchybar --set $NAME icon="[$NAME$(get_space_indicator)]"
else
  sketchybar --set $NAME icon=$NAME$(get_space_indicator)
fi