-- ==============================================================================
-- WINDOW RULES & LAYER RULES (LUA)
-- ==============================================================================

hl.config({
    windowrulev2 = {
        "float, class:^(Rofi)$",
        "float, class:^(pavucontrol)$",
        "float, class:^(blueman-manager)$",
        "float, class:^(nm-connection-editor)$",
        "float, class:^(org.kde.polkit-kde-authentication-agent-1)$",
        "float, title:^(Media viewer)$",
        "float, title:^(Volume Control)$",
        "float, title:^(Picture-in-Picture)$",
        "float, class:^(swappy)$",
        
        "center, class:^(pavucontrol)$",
        "center, class:^(blueman-manager)$",
        "center, class:^(nm-connection-editor)$",

        "size 700 500, class:^(pavucontrol)$",
        "size 700 500, class:^(blueman-manager)$",
        "size 700 500, class:^(nm-connection-editor)$",

        "pin, title:^(Picture-in-Picture)$",
        "move 72% 70%, title:^(Picture-in-Picture)$",

        "idleinhibit focus, class:^(mpv)$",
        "idleinhibit fullscreen, class:^(firefox)$",
        "idleinhibit fullscreen, class:^(Brave-browser)$",
        "idleinhibit fullscreen, class:^(chrome)$",

        "opacity 0.95 0.90, class:^(kitty)$",
        "opacity 0.95 0.90, class:^(thunar)$",
        "opacity 0.95 0.90, class:^(Code)$",
    },

    layerrule = {
        "blur, waybar",
        "ignorezero, waybar",
        "blur, rofi",
        "ignorezero, rofi",
        "blur, dunst",
        "ignorezero, dunst",
    }
})
