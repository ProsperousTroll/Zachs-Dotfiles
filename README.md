# Zach's Hyprland Dotfiles
Simple, yellow, beautiful. No BS. Just some unix goodness, using Hyprland, Waybar, and hyprpaper. 

## PREREQUISITES

- Hyprland
- Hyprpaper
- Kitty
- Fastfetch
- Yazi
- Nemo
- Rofi
- Btop
- Stow
- Mononoki Nerd Font

### Optional 

- Neovim

Here's a handy command you can paste to install all the prerequisites (Arch): 

`sudo pacman -S hyprland kitty hyprpaper fastfetch yazi nemo rofi btop stow ttf-mononoki-nerd`

(I'm pretty sure you can replace 'pacman -S' with 'apt install' on debian-based distros, but you might need some additional configuration or packages for them to work out of the box. Discretion is adviced and what not.)

## INSTRUCTIONS 

### IF YOU CARE ABOUT YOUR CURRENT CONFIGURATION IN ANY WAY, YOU SHOULD PROABABLY BACK UP YOUR CURRENT DOTFILES.

Clone this repository and open it in terminal: 

<sub>You'll need `git` to clone the repo, make sure you have git by running `sudo pacman -S git`, or `sudo apt install git` on debian.</sub>

`git clone https://github.com/ProsperousTroll/Zachs-Dotfiles`

`cd ~/Zachs-Dotfiles`

## Option 1: Auto Install

Thanks to stow, you can simply run `INSTALL.sh` (either straight in the terminal by typing `sh INSTALL.sh` or `bash INSTALL.sh`, or you can just open it with the kitty URL launcher) and the dotfiles should autoamagically be put into place!

## Option 2: Manual Install 

*<sub>If there are only bits and pieces you want to incorperate into your existing dotfiles, you're welcome to install whichever config files you'd like manually.</sub>* 

Access the git repo via your terminal of choice

`cd ~/Zachs-Dotfiles`

Use the stow command to choose the dotfile you'd like to install

`stow [folder-name]`

*you can choose from the following: btop, fastfetch, hypr, kitty, nvim, rofi, and waybar.*
