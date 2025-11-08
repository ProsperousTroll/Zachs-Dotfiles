# Zach's Desktop Dotfiles
My personal collection of written, modified, or straight up copied config files for a myriad of different Linux tools, apps, and compositors.

![Screenie](/MISC/Screenshot.png)


## TABLE OF AWESOME

- Dulcepan
- Dragon-drop
- Fastfetch
- Fish
- Foot
- Fuzzel
- Ghostty
- Hyprland
- Hyprpaper
- Hyprshot
- Kitty
- Mako
- MangoWC
- RobotoMono Nerd Font
- Starship
- Stow
- Waybar
- Yazi

# INSTALLATION INSTRUCTIONS 

### IF YOU CARE ABOUT YOUR CURRENT CONFIGURATION IN ANY WAY, YOU SHOULD PROABABLY BACK UP YOUR CURRENT DOTFILES.

Clone this repository and open it in your terminal: 

<sub>You'll need `git` to clone the repo, make sure you have git. It's really important that you have git installed. Do you have git? No? Go install it.</sub>

`git clone https://github.com/ProsperousTroll/Zachs-Dotfiles ~/Zachs-Dotfiles`

<sub>This clones the repo directly into your home directory. If you don't want it there, just change the second path to '<your-path>/Zachs-Dotfiles'.</sub>

## Installing

It's easy as balls to install all of these tools on Arch linux. If you just want all of them, go ahead and run this:

`yay -S dulcepan-git dragon-drop fastfetch fish foot fuzzel ghostty hyprland hyprpaper hyprshot kittty mako mangowc-git ttf-roboto-mono starship stow waybar yazi`

<sub>Feel free to use another AUR helper if you prefer, like paru or something.</sub>

then, access the git repo via your terminal of choice:

`cd ~/Zachs-Dotfiles`

Finally, use stow to choose the dotfile you'd like to install:

`stow [folder-name]`
