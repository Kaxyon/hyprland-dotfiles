#!/usr/bin/env bash
# Volume and Brightness OSD notifications via Dunst

get_volume() {
    pamixer --get-volume
}

is_mute() {
    pamixer --get-mute
}

get_brightness() {
    brightnessctl -m | cut -d',' -f4 | tr -d '%'
}

send_volume_notification() {
    if [ "$(is_mute)" = "true" ]; then
        dunstify -a "volume_brightness" -u low -r 2593 -h string:x-dunst-stack-tag:volume -i "audio-volume-muted" "Volume: Muted"
    else
        VOLUME=$(get_volume)
        dunstify -a "volume_brightness" -u low -r 2593 -h int:value:"$VOLUME" -h string:x-dunst-stack-tag:volume -i "audio-volume-high" "Volume: ${VOLUME}%"
    fi
}

send_brightness_notification() {
    BRIGHTNESS=$(get_brightness)
    dunstify -a "volume_brightness" -u low -r 2594 -h int:value:"$BRIGHTNESS" -h string:x-dunst-stack-tag:brightness -i "display-brightness" "Brightness: ${BRIGHTNESS}%"
}

case $1 in
    volume_up)
        pamixer -i 5
        send_volume_notification
        ;;
    volume_down)
        pamixer -d 5
        send_volume_notification
        ;;
    volume_mute)
        pamixer -t
        send_volume_notification
        ;;
    brightness_up)
        brightnessctl set +5%
        send_brightness_notification
        ;;
    brightness_down)
        brightnessctl set 5%-
        send_brightness_notification
        ;;
esac
