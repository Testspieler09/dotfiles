#!/bin/bash

export PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

# SAP-themed colors
export OX_BG="0xff1c1e24"  # Dark Blueish Grey
export OX_FG="0xff89a1b4"  # Light Grey
export OX_DIM="0xff505b69" # Mid Grey
export OX_MG="0xff1a73e8"  # Corporate Blue
export OX_ORG="0xff4dabf7" # Light Blue
export SPACE_ICONS=("󱥌" "󱥎" "󱥔" "󱥒" "󱥐" "" "" "" "󱇐")

export SB_BAR=(
  position=left
  height=60
  sticky=on
  topmost=off
  shadow=on
  y_offset=36
  margin=10
  padding_left=16
  padding_right=16
  color="$OX_BG"
  border_color="$OX_DIM"
  border_width=1
  corner_radius=10
  font_smoothing=on
)

export SB_DEFAULT=(
  icon.font.family="FiraMono Nerd Font"
  icon.font.style="Regular"
  icon.font.size=12
  icon.color="$OX_DIM"
  label.font="FiraMono Nerd Font"
  label.font.style="Regular"
  label.font.size=13
  label.color="$OX_MG"
  padding_left=10
  padding_right=10
  icon.padding_right=4
  icon.highlight_color="$OX_MG"
)
