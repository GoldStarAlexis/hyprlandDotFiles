#!/bin/bash

# Get CPU usage
CPU=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print int(usage)}')

# Get RAM usage
RAM=$(free -h | awk '/^Mem/ {print $3}')

# Get VRAM usage, default to 0.0 if file not found
VRAM_FILE="/sys/class/drm/card0/device/mem_info_vram_used"
if [[ -f "$VRAM_FILE" ]]; then
  VRAM=$(awk '{printf "%.1f", $1 / 1024 / 1024 / 1024}' "$VRAM_FILE")
else
  VRAM="0.0"
fi

echo "∆ ${CPU}% ◇ ${RAM} ◈ ${VRAM}GB"
