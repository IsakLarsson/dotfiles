#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="" COLOR="0xFFDAF7A6"
  ;;
  [6-8][0-9]) ICON="" COLOR="0xFFFF5733"
  ;;
  [3-5][0-9]) ICON="" COLOR="0xFFC70039"
  ;;
  [1-2][0-9]) ICON="" COLOR="0xFF900C3F"
  ;;
  *) ICON="" COLOR="0xFF900C3F"
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="" COLOR="0xFFFFBF00"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%" icon.color="$COLOR"
