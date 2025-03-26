function dotfiles --description "Edit dotfiles with Kate"
    set dotfiles_dir "$HOME/hyprlandDotFiles"

    # Define the files with their descriptions
    set options \
        "Hyprland Config" \
        "Kitty Config" \
        "Mako Config" \
        "Waybar Config" \
        "Waybar Style" \
        "Wofi Config" \
        "Wofi Style"

    # Define the corresponding file paths
    set files \
        "$dotfiles_dir/hypr/hyprland.conf" \
        "$dotfiles_dir/kitty/kitty.conf" \
        "$dotfiles_dir/mako/config" \
        "$dotfiles_dir/waybar/config" \
        "$dotfiles_dir/waybar/style.css" \
        "$dotfiles_dir/wofi/config" \
        "$dotfiles_dir/wofi/style.css"

    # Use wofi to select a file
    set selected (printf "%s\n" $options | wofi --dmenu --prompt "Select dotfile to edit:" --insensitive)

    if test -n "$selected"
        # Find the index of the selected option
        set index 1
        for opt in $options
            if test "$opt" = "$selected"
                break
            end
            set index (math $index + 1)
        end

        # Get the corresponding file
        set file $files[$index]

        # Open the file with Kate
        kate "$file"
    end
end
