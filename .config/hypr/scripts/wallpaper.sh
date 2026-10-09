#!/usr/bin/env bash
# Wallpaper selector and dynamic hyprpaper updater

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    dunstify "Wallpaper Error" "Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

SELECTED=$(ls "$WALLPAPER_DIR" | rofi -dmenu -p "Select Wallpaper" -theme ~/.config/rofi/launcher.rasi)

if [ -n "$SELECTED" ]; then
    WALLPATH="$WALLPAPER_DIR/$SELECTED"
    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$WALLPATH"
    hyprctl hyprpaper wallpaper ",$WALLPATH"
    dunstify -u normal "Wallpaper Changed" "Applied $SELECTED"
fi
