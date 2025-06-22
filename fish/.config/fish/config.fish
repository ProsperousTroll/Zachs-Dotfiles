if status is-interactive
    # Set the fish greeting to nothing. 
    set -U fish_greeting ""

    # Fastfetch
    sleep 0.05 && fastfetch

    # Print random Beavis & Butt-Head quote. (in italic, using ANSI color 92)
    echo -e "\e[3;92m$(cat ~/Zachs-Dotfiles/fish/.config/fish/beavosquotes.txt | shuf -n 1)\e[23m"
    # init starship
    starship init fish | source

    # Cute in-joke alias for sudo
    alias sudude=sudo
end
