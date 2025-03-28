#!/bin/bash

dotfiles_dir="$HOME/hyprlandDotFiles"

# Define options and files
options=("Hyprland Config" "Kitty Config" "Mako Config" "Waybar Config" "Waybar Style" "Wofi Config" "Wofi Style")
files=(
    "$dotfiles_dir/hypr/hyprland.conf"
    "$dotfiles_dir/kitty/kitty.conf"
    "$dotfiles_dir/mako/config"
    "$dotfiles_dir/waybar/config"
    "$dotfiles_dir/waybar/style.css"
    "$dotfiles_dir/wofi/config"
    "$dotfiles_dir/wofi/style.css"
)

# Get selection from wofi
selected=$(printf "%s\n" "${options[@]}" | wofi --dmenu --prompt "Select dotfile to edit:" --insensitive)

# Find index of selection
for i in "${!options[@]}"; do
    if [[ "${options[$i]}" = "${selected}" ]]; then
        kate "${files[$i]}"
        break
    fi
done
