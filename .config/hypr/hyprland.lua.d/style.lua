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
            color_inactive = "rgba(00000000)",
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            popups = true,
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

    gestures = {
        workspace_swipe = true,
        workspace_swipe_fingers = 3,
        workspace_swipe_distance = 300,
    },

    dwindle = {
        pseudotile = true,
        preserve_split = true,
        force_split = 2,
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        vfr = true,
        vrr = 1,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
    },
})
