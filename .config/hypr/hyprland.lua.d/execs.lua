-- ==============================================================================
-- AUTOSTART APPLICATIONS & DAEMONS (LUA)
-- ==============================================================================

hl.config({
    exec_once = {
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
        "hyprpaper",
        "waybar",
        "dunst",
        "hypridle",
        "/usr/lib/polkit-kde-authentication-agent-1 || /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
        "wl-paste --type text --watch cliphist store",
        "wl-paste --type image --watch cliphist store",
        "hyprctl setcursor Bibata-Modern-Classic 24",
    }
})
