#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.myconfig/backgrounds/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded) # Get the current wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1) # Get a random wallpaper that is not the current one

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER" > /dev/null 2> /dev/null
