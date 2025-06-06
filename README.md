# Zach's Hyprland Dotfiles
Simple, yellow, beautiful. No BS. Just some unix goodness.

![Screenie](/MISC/Screenshot.png)


## PREREQUISITES

- Hyprland
- Hyprpaper
- Ghostty
- Fish
- Fastfetch
- Yazi
- Fuzzel
- Stow
- RobotoMono Nerd Font
- Dragon-drop

<sub>(`dragon-drop` is on the AUR, so you'll need to use a frontend like [yay](https://github.com/Jguer/yay) or [paru](https://github.com/Morganamilo/paru) to install it.)</sub>

Here's a handy command you can paste to install all the prerequisites (on Arch Linux): 

`sudo pacman -S hyprland ghostty fish hyprpaper fastfetch yazi fuzzel stow ttf-roboto-mono-nerd`

(I'm pretty sure you can replace 'pacman -S' with 'apt install' on debian-based distros, but you might need some additional configuration or packages for them to work out of the box. Discretion is adviced and what not.)

# INSTALLATION INSTRUCTIONS 

### IF YOU CARE ABOUT YOUR CURRENT CONFIGURATION IN ANY WAY, YOU SHOULD PROABABLY BACK UP YOUR CURRENT DOTFILES.

Clone this repository and open it in terminal: 

<sub>You'll need `git` to clone the repo, make sure you have git by running `sudo pacman -S git base-devel`, or `sudo apt install git base-devel` on debian.</sub>

`git clone https://github.com/ProsperousTroll/Zachs-Dotfiles`

`cd ~/Zachs-Dotfiles`

## Option 1: Auto Install

Thanks to stow, you can simply run `INSTALL.sh` (either straight in the terminal by typing `sh INSTALL.sh` or `bash INSTALL.sh`, or you can just open it with the terminal URL launcher) and the dotfiles should autoamagically be put into place!

## Option 2: Manual Install 

*<sub>If there are only bits and pieces you want to incorperate into your existing dotfiles, you're welcome to install whichever config files you'd like manually.</sub>* 

Access the git repo via your terminal of choice

`cd ~/Zachs-Dotfiles`

Use the stow command to choose the dotfile you'd like to install

`stow [folder-name]`

*you can choose from the following: fastfetch, hypr, kitty, fuzzel, and waybar.*

# MONITORS/WALLPAPER

### If you are using multiple monitors, [you will most likely need to configure them manually](https://wiki.hyprland.org/Configuring/Monitors/).
<sub>Click above to see the Hyprland wiki about monitor setup, it's pretty simple.</sub>

If you'd like to change the wallpaper to something else, you'll need to edit the config file at `~/.config/hypr/hyprpaper.conf` by replacing my image with the directory to whichever image you'd like to use.

There is also an included GTK theme I like called LightningBug that is included in the install script, feel free to use nwg-look to enable it. 

# KEYBINDS

You're welcome to change any of the keybinds you like in `~/.config/hypr/hyprland.conf`. the ones that are there already are simply the ones that I use. 

`SUPER + Q` = Terminal (kitty)

`SUPER + C` = Close window

`SUPER + B` = Web Browser (you will need to configure which browser to launch in `~/config/hypr/hyprland.conf` under the "my programs" section.)

`SUPER + SPACE` = Menu (rofi)

`SUPER + E` = File manager (yazi)

`SUPER + SHIFT + E` = GUI File Manager (I use nemo, you will need to configure this in `hyprland.conf` if you'd like to use another one. Just please don't use dolphin.)

`SUPER + SHIFT` + (vim direction keys) = Swap window in that direction.


Everything else is just the default Hyprland config.


