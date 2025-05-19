#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
. "$CONFIG_DIR/globals.sh"

sb_separator() {
	sepName="sep$RANDOM"
	sketchybar \
		--add item "$sepName" "$1" \
		--set "$sepName" \
		\
		label="───────" \
		padding_left="$2" \
		padding_right="$3" \
		icon.drawing=off \
		label.font.size=9.0 \
		label.color="$OX_DIM"
}

sb_clock() {
	sketchybar \
		--add item clock "$1" \
		--set clock \
		\
		update_freq=10 \
		label.font.size=14.0 \
		icon= \
		icon.drawing=off \
		script="$PLUGIN_DIR/clock.sh"
}

sb_date() {
	sketchybar \
		--add item day "$1" --set day update_freq=120 icon.drawing=off padding_right=4 script="$PLUGIN_DIR/calendar.sh" \
		--add item date "$1" --set date update_freq=120 icon.drawing=off padding_right=4 script="$PLUGIN_DIR/calendar.sh" \
		--add item month "$1" --set month update_freq=120 icon.drawing=off padding_right=4 script="$PLUGIN_DIR/calendar.sh"
}

sb_spaces() {
	for sid in $(aerospace list-workspaces --all); do
		# Get the icon for the current workspace
		ICON="${SPACE_ICONS[$((sid - 1))]}"

		APP_COUNT=$(aerospace list-windows --workspace "$sid" --count)

		sketchybar --add item space.$sid left \
			--subscribe space.$sid aerospace_workspace_change space_windows_change \
			--set space.$sid \
			icon="$ICON" \
			icon.color=$OX_DIM \
			icon.font.size=14 \
			label="$APP_COUNT" \
			label.color=$OX_DIM \
			label.drawing=on \
			click_script="aerospace workspace $sid" \
			script="$PLUGIN_DIR/workspace_update.sh $sid"

		if [[ $sid == 5 ]]; then sb_separator left 14 14; fi
	done
}

sb_wifi() {
	  sketchybar \
		--add item wifi $1 \
		--subscribe wifi wifi_change \
		--set wifi \
		script="$PLUGIN_DIR/wifi.sh" \
		icon= \
		label.color=$OX_DIM
}

sb_battery() {
	sketchybar \
		--add item battery "$1" \
		--subscribe battery system_woke power_source_change \
		--set battery \
		\
		script="$PLUGIN_DIR/battery.sh" \
		update_freq=120 \
		label.color=$OX_DIM
}

sb_volume() {
	sketchybar \
		--add item volume "$1" \
		--subscribe volume volume_change \
		--set volume \
		\
		script="$PLUGIN_DIR/volume.sh" \
		label.color=$OX_DIM
}

sb_language() {
	sketchybar --add item keyboard right        \
           --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" "$1" \
           --subscribe keyboard keyboard_change \
           --set keyboard \
	   icon=⌨ \
	   icon.color=$OX_DIM \
	   label.color=$OX_DIM \
	   script="$PLUGIN_DIR/language.sh"
}
