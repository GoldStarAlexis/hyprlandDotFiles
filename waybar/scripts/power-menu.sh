#!/bin/bash
# ~/.config/waybar/scripts/power-menu.sh

# Define the options for wofi
OPTIONS="Lock\nLogout\nSuspend\nReboot\nShutdown"

# Get user selection from wofi
SELECTED=$(echo -e $OPTIONS | wofi --dmenu --insensitive --prompt "Power Menu" --width 200 --height 260)

# Execute based on selection
case "$SELECTED" in
    "Lock")
        swaylock -f -c 000000
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
    "Suspend")
        systemctl suspend
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
    *)
        # Do nothing if no valid selection
        ;;
esac
