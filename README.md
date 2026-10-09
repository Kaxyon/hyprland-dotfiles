# 🌌 Minimalist & Aesthetic Hyprland Dotfiles (Catppuccin Mocha)

A complete, production-ready, beautiful, and functional **Hyprland rice** for **Arch Linux**, styled with the **Catppuccin Mocha** dark palette. Features floating pill Waybar modules, smooth bezier window animations, glassmorphism blur, custom Rofi menus, OSD notifications, Kitty terminal theme, Hyprlock, and auto-idle management.

---

## 📸 Showcase & Preview

| Component | Description |
| :--- | :--- |
| **Window Manager** | Hyprland (Wayland Tiling WM) with rounded corners (`12px`) and custom slide/fade animations |
| **Bar** | Floating pill Waybar with workspaces, active window title, system monitors, volume/brightness, tray, power menu |
| **Launcher** | Rofi App Grid with search bar & category icons |
| **Notifications** | Dunst toasts with Catppuccin Mocha border highlights |
| **Lock Screen** | Hyprlock with modern digital clock, date, avatar, and styled password field |
| **Terminal** | Kitty + Starship prompt + Fastfetch hardware info display |

---

## ⌨️ Keybindings Cheatsheet

| Keybinding | Action |
| :--- | :--- |
| `Super + Return` | Launch Terminal (`kitty`) |
| `Super + R` | Launch Application Launcher (`rofi`) |
| `Super + Q` | Close active window |
| `Super + E` | Open File Manager (`thunar`) |
| `Super + V` | Open Clipboard History |
| `Super + P` | Screenshot Menu (Full, Selection, Window) |
| `Super + W` | Wallpaper Selector |
| `Super + L` | Lock Screen (`hyprlock`) |
| `Super + M` | Power Menu (Lock, Logout, Suspend, Reboot, Poweroff) |
| `Super + F` | Toggle Fullscreen |
| `Super + Shift + F` | Toggle Floating Window |
| `Super + J` | Toggle Window Split Direction (Dwindle) |
| `Super + S` | Toggle Special Scratchpad Workspace |
| `Super + [1-9]` | Switch to Workspace 1-9 |
| `Super + Shift + [1-9]` | Move active window to Workspace 1-9 |
| `Super + H/J/K/L` | Change Window Focus (Left, Down, Up, Right) |
| `Super + Ctrl + H/J/K/L` | Resize Active Window |
| `Media Keys` | Volume / Brightness OSD Control with dunst feedback |

---

## 🛠️ Required Dependencies

| Category | Package Names |
| :--- | :--- |
| **Core Desktop** | `hyprland`, `waybar`, `rofi-wayland`, `dunst`, `hyprlock`, `hypridle`, `hyprpaper` |
| **Terminal & Shell** | `kitty`, `starship`, `fastfetch`, `btop` |
| **Utilities** | `grim`, `slurp`, `swappy`, `cliphist`, `wl-clipboard`, `pamixer`, `brightnessctl`, `playerctl`, `jq`, `thunar` |
| **Look & Icons** | `ttf-jetbrains-mono-nerd`, `papirus-icon-theme`, `bibata-cursor-theme` |

---

## 🚀 Installation Guide

### Option 1: Automated Installer (Recommended)

Clone or download this repository, make `install.sh` executable, and execute it:

```bash
git clone https://github.com/yourusername/hyprland-dotfiles.git
cd hyprland-dotfiles
chmod +x install.sh
./install.sh
```

The installer will:
1. Detect Arch Linux and AUR helpers (`yay` / `paru`).
2. Automatically install all required pacman and AUR dependencies.
3. Create a timestamped backup of your existing configs (`~/.config/hypr_config_backup_YYYYMMDD_HHMMSS`).
4. Copy all `.config/` components into place.
5. Set executable permissions on all custom helper scripts.

---

### Option 2: GNU Stow Symlinking

If you prefer using GNU `stow`:

```bash
mkdir -p ~/.config
stow -t ~/.config .config
chmod +x ~/.config/hypr/scripts/*.sh
```

---

## 🎨 File Structure Overview

```
hyprland-dotfiles/
├── install.sh                  # One-click installation & backup script
├── README.md                   # Documentation & keybinding guide
└── .config/
    ├── hypr/
    │   ├── hyprland.conf       # Master entry point
    │   ├── hyprlock.conf       # Aesthetic lock screen
    │   ├── hypridle.conf       # Screen idle & power manager
    │   ├── hyprpaper.conf      # Wallpaper daemon config
    │   ├── hyprland.conf.d/
    │   │   ├── env.conf        # Wayland environment variables
    │   │   ├── execs.conf      # Autostart applications
    │   │   ├── keybinds.conf   # Master keyboard shortcuts
    │   │   ├── style.conf      # Animations, borders, blur, decorations
    │   │   └── windowrules.conf# Window placement, float rules, opacity
    │   ├── scripts/
    │   │   ├── powermenu.sh    # Rofi powermenu launcher
    │   │   ├── screenshot.sh   # Grim + Slurp screenshot tool
    │   │   ├── wallpaper.sh    # Wallpaper swapper
    │   │   └── volume_brightness.sh # Dunst OSD feedback script
    │   └── wallpapers/
    │       └── default.png     # Default Catppuccin landscape wallpaper
    ├── waybar/                 # Floating pill status bar
    ├── rofi/                   # Rofi themes (launcher, powermenu)
    ├── dunst/                  # Notification toasts
    ├── kitty/                  # Terminal configuration & colors
    ├── fastfetch/              # Hardware fetch banner
    └── starship.toml           # Prompt configuration
```
