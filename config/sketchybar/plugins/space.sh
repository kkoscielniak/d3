#!/bin/zsh
# $SELECTED
# $NAME
# $SID - space ID (numerical)
# $DID - display ID (unused)

# Returns the in-space app names separated by `|` (e.g. `Code|Arc`)
# Used by "fullscreen" spaces
get_app_names() {
  app_names_json=$(yabai -m query --windows --space $SID | jq -r '.[].app')

  # concat app names with `|`
  app_names_string=""; 
  while read -r element; do
    app_names_string="$app_names_string$element|";
  done <<< $app_names_json;

  # remove trailing `|`
  echo ${app_names_string%?};
}

# Returns the `*` indicator if the space is set to `float` or `^` if the space is fullscreen
get_space_indicator() {
  type=$(yabai -m query --spaces --space $SID | jq '.type' | tr -d '"') # `bsp` | `float`
  is_fullscreen=$(yabai -m query --spaces --space $SID | jq '."is-native-fullscreen"')

  # set indicator to `*` if the space is set to `float`
  indicator=$([[ "$type" = "float" ]] && echo "*" || echo "")
  
  # set the indicator to `^` if the space is fullscreen
  indicator=$([[ "$is_fullscreen" = "true" ]] && echo "^" || echo $indicator)

  echo $indicator;
}

# Returns final label for the space
get_label() {
  # get space name from `yabai`
  space_name=$(yabai -m query --spaces --space $SID | jq -r '.label')

  # if the space name is empty, use the app names
  label=${space_name:-$(get_app_names)}
  indicator=$(get_space_indicator)

  # if label is still empty (e.g. there are no windows there), use the space number
  label=${label:-$SID}

  # return the label with the indicator
  echo $label$indicator;
}

get_label

if [[ $SELECTED = true ]]; then
  sketchybar --set $NAME icon="[$(get_label)]"
else
  sketchybar --set $NAME icon=$(get_label)
fi