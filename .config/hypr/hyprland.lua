-- ==============================================================================
-- HYPRLAND MAIN LUA CONFIGURATION (Hyprland 0.55+)
-- Minimal & Aesthetic Rice - Catppuccin Mocha Theme
-- ==============================================================================

-- Add ~/.config/hypr/hyprland.lua.d to package.path
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypr/hyprland.lua.d/?.lua"

-- Monitor Setup
hl.config({
    monitor = {
        ",preferred,auto,1"
    }
})

-- Load modular sub-modules
require("env")
require("execs")
require("style")
require("windowrules")
require("keybinds")
