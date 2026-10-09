-- ==============================================================================
-- ENVIRONMENT VARIABLES (LUA)
-- ==============================================================================

hl.config({
    env = {
        "XDG_CURRENT_DESKTOP,Hyprland",
        "XDG_SESSION_TYPE,wayland",
        "XDG_SESSION_DESKTOP,Hyprland",
        "GDK_BACKEND,wayland,x11,*",
        "QT_QPA_PLATFORM,wayland;xcb",
        "QTGPU_PLATFORM,wayland",
        "SDL_VIDEODRIVER,wayland",
        "CLUTTER_BACKEND,wayland",
        "GTK_THEME,Catppuccin-Mocha-Standard-Lavender-Dark",
        "XCURSOR_THEME,Bibata-Modern-Classic",
        "XCURSOR_SIZE,24",
        "HYPRCURSOR_THEME,Bibata-Modern-Classic",
        "HYPRCURSOR_SIZE,24",
        "QT_AUTO_SCREEN_SCALE_FACTOR,1",
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1",
        "QT_QPA_PLATFORMTHEME,qt5ct",
    }
})
