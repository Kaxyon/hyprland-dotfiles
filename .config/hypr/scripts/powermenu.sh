#!/usr/bin/env bash
# Powermenu Launcher using Rofi

lock="󰌾 Lock"
logout="󰍃 Logout"
suspend="󰤄 Suspend"
reboot="󰜉 Reboot"
shutdown="󰐥 Shutdown"

options="$lock\n$logout\n$suspend\n$reboot\n$shutdown"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -theme ~/.config/rofi/powermenu.rasi)

case $chosen in
    $lock)
        hyprlock
        ;;
    $logout)
        hyprctl dispatch exit
        ;;
    $suspend)
        systemctl suspend
        ;;
    $reboot)
        systemctl reboot
        ;;
    $shutdown)
        systemctl poweroff
        ;;
esac
