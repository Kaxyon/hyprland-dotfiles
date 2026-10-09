#!/usr/bin/env bash
# ==============================================================================
# HYPRLAND MINIMAL DOTFILES INSTALLER FOR ARCH LINUX
# ==============================================================================

set -e

BOLD="\e[1m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

echo -e "${BOLD}${BLUE}====================================================${RESET}"
echo -e "${BOLD}${GREEN}   Hyprland Minimal & Aesthetic Dotfiles Installer  ${RESET}"
echo -e "${BOLD}${BLUE}====================================================${RESET}\n"

# Verify Arch Linux
if [ ! -f /etc/arch-release ]; then
    echo -e "${RED}[!] Warning: This script is designed for Arch Linux distributions.${RESET}"
    read -p "Do you want to continue anyway? (y/N): " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Detect AUR Helper (yay or paru)
AUR_HELPER=""
if command -v yay &> /dev/null; then
    AUR_HELPER="yay"
elif command -v paru &> /dev/null; then
    AUR_HELPER="paru"
else
    echo -e "${YELLOW}[*] Neither 'yay' nor 'paru' detected. System package installation may require AUR helper.${RESET}"
fi

# Required Packages
PACMAN_DEPS=(
    hyprland
    waybar
    rofi-wayland
    kitty
    dunst
    hyprlock
    hypridle
    hyprpaper
    grim
    slurp
    swappy
    cliphist
    wl-clipboard
    pamixer
    brightnessctl
    playerctl
    jq
    fastfetch
    starship
    ttf-jetbrains-mono-nerd
    papirus-icon-theme
    thunar
    btop
)

AUR_DEPS=(
    bibata-cursor-theme
    catppuccin-gtk-theme-mocha
)

echo -e "${BLUE}[+] Installing official Arch Linux dependencies via pacman...${RESET}"
sudo pacman -S --needed --noconfirm "${PACMAN_DEPS[@]}" || true

if [ -n "$AUR_HELPER" ]; then
    echo -e "${BLUE}[+] Installing AUR dependencies via $AUR_HELPER...${RESET}"
    $AUR_HELPER -S --needed --noconfirm "${AUR_DEPS[@]}" || true
fi

# Backup Existing Configs
TIMESTAMP=$(date +'%Y%m%d_%H%M%S')
BACKUP_DIR="$HOME/.config/hypr_config_backup_$TIMESTAMP"

echo -e "${BLUE}[+] Backing up existing configurations to ${BACKUP_DIR}...${RESET}"
mkdir -p "$BACKUP_DIR"

CONFIG_DIRS=(hypr waybar rofi dunst kitty fastfetch)
for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$HOME/.config/$dir" ]; then
        mv "$HOME/.config/$dir" "$BACKUP_DIR/$dir"
        echo -e "${YELLOW}  - Backed up ~/.config/$dir${RESET}"
    fi
done

if [ -f "$HOME/.config/starship.toml" ]; then
    mv "$HOME/.config/starship.toml" "$BACKUP_DIR/starship.toml"
fi

# Deploy New Dotfiles
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${BLUE}[+] Copying new dotfiles to ~/.config...${RESET}"
cp -rf "$DOTFILES_DIR/.config/"* "$HOME/.config/"

# Fix Permissions for Scripts
echo -e "${BLUE}[+] Setting executable permissions on scripts...${RESET}"
chmod +x "$HOME/.config/hypr/scripts/"*.sh

echo -e "\n${BOLD}${GREEN}✔ Installation completed successfully!${RESET}"
echo -e "${BOLD}${BLUE}Next Steps:${RESET}"
echo -e " 1. Log out of your current session."
echo -e " 2. Select ${BOLD}Hyprland${RESET} from your Display Manager (SDDM/GDM/LightDM/TTY)."
echo -e " 3. Press ${BOLD}Super + Return${RESET} to open Kitty terminal."
echo -e " 4. Press ${BOLD}Super + R${RESET} to launch Rofi App Launcher."
echo -e " 5. Press ${BOLD}Super + M${RESET} for Power Menu."
