#!/bin/bash

# 1. Update system and install core programs (Arch Linux / Pacman example)
echo "Installing dependencies..."
sudo pacman -S --needed hyprland waybar kitty rofi swww dunst network-manager-applet git

# 2. Create the config directory if it doesn't exist
mkdir -p ~/.config

# 3. Copy (or link) your files into the system
echo "Applying configurations..."
cp -r . ~/.config/hypr/

# 4. Optional: Set execution permissions for any scripts you have
chmod +x ~/.config/hypr/scripts/*.sh 2>/dev/null

echo "Done! Logout and select Hyprland at the login screen."
