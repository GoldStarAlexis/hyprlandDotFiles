I HIGHLY recommend keeping the Git Repo in your $HOME directory. It's what I've based this off of.

You shouldn't have to change anything except for the WoFi config. I can't get $HOME to work in it, but it doesn't matter. You wanna change `/home/alexisd/.config/wofi/style.css` to your user. The `deploy_dotfiles.sh` creates symlinks, so it's fine that points into `.config` because it'll be redirected to `$HOME/hyprlandDotFiles/` anyway :)

Once you download it, you can either run the `deploy_dotfiles.sh` and it'll automatically create symlinks to your respective folders in `$HOME/.config/` OR you can also just put the individual folders into their respective places, it'll work either way :). The `deploy_dotfiles.sh` SHOULD create the folders for you if they don't exist yet :D

Before you use ANY `.sh` files, make sure you look inside them, please. It's safer to be sure that it's safe. Mine is safe, but please look in it anyway to make sure it isn't going to mess with your existing files and stuff.

I don't actually think the `fish` really works or matters, because I still have to use `/.config/fish/` but I'm afraid to remove it because it will break my symlinks lol.

Feel free to change it, but please don't take it and claim it as yours. It took a lot of time to make :)


# OPTIONAL:
I included a special WoFi Dotfile selector that allows you to open a selection WoFi menu to choose dotfiles to edit. If you want to use it, please place it in:
`~/.local/bin/`
This will let it work via the `SUPER+P` command :)

## Additional Info
- This is set up with Variable Refresh/Adaptive Sync enabled. If you don't have it, you might wanna go in and remove it from the `hyprland.conf` at ***Line 240***.
- Please don't forget to edit the `hyprland.conf` to change the monitor settings! Do that before you apply this! Otherwise it will absolutely screw up lmfao. You should change the workspaces to your liking too.

## 🔧 Requirements

This config uses:
- Hyprland
- Waybar
- Wofi
- Mako
- Kitty
- Fish Shell
- wl-clipboard
- cliphist
- wl-paste
- blueman
- nm-applet
- wl-clip-persist
- hyprpolkitagent
- Google Chrome (you can edit the config if you want a different browser :P
- Dolphin (same as above)
- grim
- slurp
- pipewire + pipewire-pulse
- qt6ct
- Breeze Dark
- Bibata Modern Classic)
- mpv (optional, can be ignored tbh)
- swaylock (but it's just a keybind, I didn't include my swaylock customization because... it isn't customized lol)
- xdg-portal and variants - ***ESPECIALLY*** the hyprland variant
- And maybe more I forgot lol
