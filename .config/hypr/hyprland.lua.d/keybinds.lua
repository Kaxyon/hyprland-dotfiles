-- ==============================================================================
-- KEYBINDINGS (LUA)
-- ==============================================================================

local mainMod = "SUPER"
local scripts = os.getenv("HOME") .. "/.config/hypr/scripts"

hl.config({
    bind = {
        -- Core Applications
        mainMod .. ", RETURN, exec, kitty",
        mainMod .. ", Q, killactive,",
        mainMod .. " SHIFT, Q, exec, hyprctl dispatch exit",
        mainMod .. ", E, exec, thunar",
        mainMod .. ", R, exec, rofi -show drun -theme ~/.config/rofi/launcher.rasi",
        mainMod .. ", V, exec, cliphist list | rofi -dmenu -p 'Clipboard' -theme ~/.config/rofi/launcher.rasi | cliphist decode | wl-copy",
        mainMod .. ", M, exec, " .. scripts .. "/powermenu.sh",
        mainMod .. ", P, exec, " .. scripts .. "/screenshot.sh",
        mainMod .. ", W, exec, " .. scripts .. "/wallpaper.sh",
        mainMod .. ", L, exec, hyprlock",

        -- Window Manipulation
        mainMod .. ", F, fullscreen, 0",
        mainMod .. " SHIFT, F, togglefloating,",
        mainMod .. ", J, togglesplit,",
        mainMod .. ", P, pseudo,",

        -- Focus Navigation
        mainMod .. ", h, movefocus, l",
        mainMod .. ", l, movefocus, r",
        mainMod .. ", k, movefocus, u",
        mainMod .. ", j, movefocus, d",
        mainMod .. ", left, movefocus, l",
        mainMod .. ", right, movefocus, r",
        mainMod .. ", up, movefocus, u",
        mainMod .. ", down, movefocus, d",

        -- Move Active Window
        mainMod .. " SHIFT, h, movewindow, l",
        mainMod .. " SHIFT, l, movewindow, r",
        mainMod .. " SHIFT, k, movewindow, u",
        mainMod .. " SHIFT, j, movewindow, d",
        mainMod .. " SHIFT, left, movewindow, l",
        mainMod .. " SHIFT, right, movewindow, r",
        mainMod .. " SHIFT, up, movewindow, u",
        mainMod .. " SHIFT, down, movewindow, d",

        -- Workspaces 1-10
        mainMod .. ", 1, workspace, 1",
        mainMod .. ", 2, workspace, 2",
        mainMod .. ", 3, workspace, 3",
        mainMod .. ", 4, workspace, 4",
        mainMod .. ", 5, workspace, 5",
        mainMod .. ", 6, workspace, 6",
        mainMod .. ", 7, workspace, 7",
        mainMod .. ", 8, workspace, 8",
        mainMod .. ", 9, workspace, 9",
        mainMod .. ", 0, workspace, 10",

        -- Move to Workspace
        mainMod .. " SHIFT, 1, movetoworkspace, 1",
        mainMod .. " SHIFT, 2, movetoworkspace, 2",
        mainMod .. " SHIFT, 3, movetoworkspace, 3",
        mainMod .. " SHIFT, 4, movetoworkspace, 4",
        mainMod .. " SHIFT, 5, movetoworkspace, 5",
        mainMod .. " SHIFT, 6, movetoworkspace, 6",
        mainMod .. " SHIFT, 7, movetoworkspace, 7",
        mainMod .. " SHIFT, 8, movetoworkspace, 8",
        mainMod .. " SHIFT, 9, movetoworkspace, 9",
        mainMod .. " SHIFT, 0, movetoworkspace, 10",

        -- Special Scratchpad
        mainMod .. ", S, togglespecialworkspace, magic",
        mainMod .. " SHIFT, S, movetoworkspace, special:magic",

        -- Workspace Scroll
        mainMod .. ", mouse_down, workspace, e+1",
        mainMod .. ", mouse_up, workspace, e-1",

        -- Media Player Control
        ", XF86AudioPlay, exec, playerctl play-pause",
        ", XF86AudioNext, exec, playerctl next",
        ", XF86AudioPrev, exec, playerctl previous",
    },

    binde = {
        mainMod .. " CTRL, h, resizeactive, -30 0",
        mainMod .. " CTRL, l, resizeactive, 30 0",
        mainMod .. " CTRL, k, resizeactive, 0 -30",
        mainMod .. " CTRL, j, resizeactive, 0 30",

        ", XF86AudioRaiseVolume, exec, " .. scripts .. "/volume_brightness.sh volume_up",
        ", XF86AudioLowerVolume, exec, " .. scripts .. "/volume_brightness.sh volume_down",
        ", XF86MonBrightnessUp, exec, " .. scripts .. "/volume_brightness.sh brightness_up",
        ", XF86MonBrightnessDown, exec, " .. scripts .. "/volume_brightness.sh brightness_down",
    },

    bindm = {
        mainMod .. ", mouse:272, movewindow",
        mainMod .. ", mouse:273, resizewindow",
    }
})
