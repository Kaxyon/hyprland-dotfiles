#!/usr/bin/env bash
# Screenshot helper script using Grim, Slurp, Swappy, and Dunst notifications

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
FILE="$DIR/screenshot_${TIMESTAMP}.png"

full="󰹑 Full Screen"
area="󰩭 Selected Area"
window="󱂬 Active Window"

options="$full\n$area\n$window"

chosen=$(echo -e "$options" | rofi -dmenu -p "Screenshot" -theme ~/.config/rofi/powermenu.rasi)

case $chosen in
    $full)
        grim "$FILE"
        cat "$FILE" | wl-copy
        dunstify -u normal -i "$FILE" "Screenshot Captured" "Full screen saved to $FILE and copied to clipboard."
        ;;
    $area)
        grim -g "$(slurp)" "$FILE"
        if [ -f "$FILE" ]; then
            cat "$FILE" | wl-copy
            dunstify -u normal -i "$FILE" "Screenshot Captured" "Selection saved to $FILE and copied to clipboard."
        fi
        ;;
    $window)
        GEOM=$(hyprctl activewindow -j | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
        grim -g "$GEOM" "$FILE"
        cat "$FILE" | wl-copy
        dunstify -u normal -i "$FILE" "Screenshot Captured" "Window captured and copied to clipboard."
        ;;
esac
