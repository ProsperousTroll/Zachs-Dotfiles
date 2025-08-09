# Zach's Hyprland Dotfiles
Simple, blue, beautiful. No BS. Just some unix goodness.

![Screenie](/MISC/Screenshot.png)


## PREREQUISITES

- Dragon-drop
- Fastfetch
- Fish
- Fuzzel
- Ghostty
- Hyprland
- Hyprpaper
- Hyprscroller (Plugin)
- Hyprshot
- RobotoMono Nerd Font
- Starship
- Stow
- Yazi

<sub>Hyprshot and dragon-drop are packages **available on the AUR**, you will need to use a front end like [yay](https://github.com/Jguer/yay) or [paru](https://github.com/Morganamilo/paru) to install them.</sub> 



Here's a handy command you can paste to install the essential prerequisites (on Arch Linux): 

`sudo pacman -S hyprland ghostty hyprpaper fastfetch yazi fuzzel stow ttf-roboto-mono-nerd`

(If you are trying to get these dots working on another distro you're on your own... But I do recommend getting [the Nix package manager](https://nixos.org) set up on your distro for the best shot at compatibility.)

##### LAPTOP ONLY - HYPRSCROLLER

For laptop, I use the hyprland plugin *hyprscroller.* It's not required, but it makes really good use of the limited screen space of a laptop. Not to meantion it's SO much nicer to use with a trackpad.

To install/enable it, you can use the awesome `hyprpm` tool. Just run this command:

`hyprpm add https://github.com/cpiber/hyprscroller && hyprpm update && hyprpm enable hyprscroller && hyprpm reload -n`

Then you're all set!

# INSTALLATION INSTRUCTIONS 

### IF YOU CARE ABOUT YOUR CURRENT CONFIGURATION IN ANY WAY, YOU SHOULD PROBABLY BACK UP YOUR CURRENT DOTFILES.

Clone this repository and open it in terminal: 

<sub>You'll need `git` to clone the repo, make sure you have git by running `sudo pacman -S git`, or `sudo apt install git` on Debian.</sub>

`git clone https://github.com/ProsperousTroll/Zachs-Dotfiles`

`cd ~/Zachs-Dotfiles`

## Option 1: Auto Install

Thanks to stow, you can simply run `INSTALL.sh` (either straight in the terminal by typing `sh INSTALL.sh` or `bash INSTALL.sh`, or you can just open it with the kitty URL launcher) and the dotfiles should autoamagically be put into place!

<sub>You will have to run the following command in the directory the INSTALL.sh file is in order to run it: `sudo chmod +x INSTALL.sh`</sub>

## Option 2: Manual Install 

*<sub>If there are only bits and pieces you want to incorporate into your existing dotfiles, you're welcome to install whichever config files you'd like manually.</sub>* 

Access the git repo via your terminal of choice

`cd ~/Zachs-Dotfiles`

Use the stow command to choose the dotfile you'd like to install

`stow [folder-name]`

*you can choose from the following: fastfetch, hypr, ghostty, fuzzel, fish, starship, and waybar.*

# MONITORS/WALLPAPER

### If you are using multiple monitors, [you will most likely need to configure them manually](https://wiki.hyprland.org/Configuring/Monitors/).
<sub>Click above to see the Hyprland wiki about monitor setup, it's pretty simple.</sub>

If you'd like to change the wallpaper to something else, you'll need to edit the config file at `~/.config/hypr/hyprpaper.conf` by replacing my image with the directory to whichever image you'd like to use.

# KEYBINDS

You're welcome to change any of the keybinds you like in `~/.config/hypr/hyprland.conf`. The ones that are there already are simply the ones that I use. 

`SUPER + Q` = Terminal (kitty)

`SUPER + C` = Close window

`SUPER + B` = Web Browser (you will need to configure which browser to launch in `~/config/hypr/hyprland.conf` under the "my programs" section.)

`SUPER + SPACE` = Menu (fuzzel)

`SUPER + E` = File manager (yazi)

`SUPER + SHIFT + E` = GUI File Manager (Thunar)

`SUPER + SHIFT` + (vim direction key) = Swap window in that direction.


Everything else is just the default Hyprland config.


