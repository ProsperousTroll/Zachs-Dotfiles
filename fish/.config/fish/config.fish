# "beavosquote" command, print random Beavis & Butthead quote to terminal.
function beavosquote
    echo -e "\e[3;92m$(cat ~/Zachs-Dotfiles/fish/.config/fish/beavosquotes.txt | shuf -n 1)\e[23m"
end

if status is-interactive
    # init starship
    starship init fish | source

    # Set the fish greeting to nothing. 
    set -U fish_greeting ""

    # Fastfetch
    sleep 0.05 && fastfetch

    # Print random Beavis & Butt-Head quote. (in italic, using ANSI color 92)
    beavosquote

    # Misc aliases
    alias sudude=sudo
end
