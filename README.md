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
