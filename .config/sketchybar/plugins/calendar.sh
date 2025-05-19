#!/bin/bash

if [[ $NAME = "day" ]]; then
  LABEL="$(date '+%a')"
elif [[ $NAME = "date" ]]; then
  LABEL="$(date '+%d' | sed s/^0//)"
elif [[ $NAME = "month" ]]; then
  LABEL="$(date '+%b')"
fi

sketchybar --set $NAME label=$LABEL
