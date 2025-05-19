#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
. "$CONFIG_DIR/globals.sh"

case "$SENDER" in
	"aerospace_workspace_change")
		if [ "$1" = "$FOCUSED" ]; then
			sketchybar --set $NAME \
				icon.color=$OX_ORG \
				label=$(aerospace list-windows --workspace "$1" --count) \
				label.color=$OX_ORG
		else
			sketchybar --set $NAME \
				icon.color=$OX_DIM \
				label=$(aerospace list-windows --workspace "$1" --count) \
				label.color=$OX_DIM
		fi
	;;
	"space_windows_change")
		sketchybar --set $NAME \
			label=$(aerospace list-windows --workspace "$1" --count)
	;;
	*)
		sketchybar --set space.$(aerospace list-workspaces --focused) \
			icon.color=$OX_ORG \
			label=$(aerospace list-windows --workspace "$(aerospace list-workspaces --focused)" --count) \
			label.color=$OX_ORG
	;;
esac
