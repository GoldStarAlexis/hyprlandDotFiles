#!/usr/bin/fish

# Get GPU temperature
set gpu_temp (sensors | grep "amdgpu-pci-0300" -A 5 | grep "edge" | awk '{print $2}' | tr -d '+°C')

# Format the output
set output "GPU Temp: $gpu_temp°C"

# Print the output
echo "$output"
