-- ==============================================================================
-- WINDOW RULES & LAYER RULES (LUA)
-- ==============================================================================

hl.config({
    windowrulev2 = {
        "float, class:^(Rofi)$",
        "float, class:^(pavucontrol)$",
        "float, class:^(blueman-manager)$",
        "float, class:^(nm-connection-editor)$",
        "float, class:^(swappy)$",
        
        "center, class:^(pavucontrol)$",
        "center, class:^(blueman-manager)$",
        "center, class:^(nm-connection-editor)$",

        "size 700 500, class:^(pavucontrol)$",
        "size 700 500, class:^(blueman-manager)$",
        "size 700 500, class:^(nm-connection-editor)$",

        "pin, title:^(Picture-in-Picture)$",
        "move 72% 70%, title:^(Picture-in-Picture)$",

        "opacity 0.95 0.90, class:^(kitty)$",
        "opacity 0.95 0.90, class:^(thunar)$",
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
