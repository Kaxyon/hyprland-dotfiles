-- ==============================================================================
-- LOOK, FEEL, DECORATION & ANIMATIONS (LUA)
-- Catppuccin Mocha Palette & Glassmorphic Pill Aesthetics
-- ==============================================================================

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col_active_border = "rgba(cba6f7ff) rgba(89b4faff) 45deg",
        col_inactive_border = "rgba(313244aa)",
        layout = "dwindle",
        resize_on_border = true,
    },

    decoration = {
        rounding = 12,
        active_opacity = 0.96,
        inactive_opacity = 0.88,
        fullscreen_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
        },
    },

    animations = {
        enabled = true,
        bezier = {
            "mainBezier, 0.05, 0.9, 0.1, 1.05",
            "smoothOut, 0.36, 0, 0.66, -0.56",
            "smoothIn, 0.25, 1, 0.5, 1",
        },
        animation = {
            "windows, 1, 5, mainBezier, slide",
            "windowsOut, 1, 4, smoothOut, slide",
            "windowsMove, 1, 4, mainBezier",
            "border, 1, 8, default",
            "borderangle, 1, 8, default",
            "fade, 1, 4, default",
            "workspaces, 1, 5, mainBezier, slidefade 20%",
        },
    },

    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
        },
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
    },
})
