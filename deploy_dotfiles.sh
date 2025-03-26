#!/bin/bash

# Define the source directory (where your dotfiles are stored)
SOURCE_DIR="$HOME/hyprlandDotFiles"

# Define an associative array to map directories to their destinations
declare -A destinations=(
  ["hypr"]="$HOME/.config/hypr"
  ["mako"]="$HOME/.config/mako"   # Changed from dunst to mako
  ["fish"]="$HOME/.config/fish"
  ["kitty"]="$HOME/.config/kitty"
  ["waybar"]="$HOME/.config/waybar"
  ["wofi"]="$HOME/.config/wofi"
)

# Loop through the directories in the source directory
for dir in "${!destinations[@]}"; do
  # Construct the full source and destination paths
  source="$SOURCE_DIR/$dir"
  destination="${destinations[$dir]}"

  # Check if the source directory exists
  if [ ! -d "$source" ]; then
    echo "Error: Source directory '$source' not found."
    continue # Skip to the next directory
  fi

  # Create the destination directory if it doesn't exist
  mkdir -p "$destination"

  # Loop through the files in the source directory
  find "$source" -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
    # Extract the filename
    filename=$(basename "$file")

    # Construct the full destination file path
    dest_file="$destination/$filename"

    # Remove any existing file or symbolic link at the destination
    rm -f "$dest_file"

    # Create a symbolic link with absolute path
    ln -s "$(readlink -f "$file")" "$dest_file"

    echo "Created symbolic link: $file -> $dest_file"
  done
done

echo "Dotfile deployment complete!"
