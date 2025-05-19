#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
. "$CONFIG_DIR/globals.sh"

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
	COLOR=$OX_MG
	ICON=
	LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
	COLOR=$OX_ORG
	ICON=
	LABEL="IP"
else
	COLOR=$OX_FG
	ICON=
	LABEL="NC"
fi

sketchybar --set $NAME icon=$ICON icon.color=$COLOR label="$LABEL" label.color=$COLOR
