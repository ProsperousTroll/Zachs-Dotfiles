# "beavosquote" command, print random Beavis & Butthead quote to terminal.
function beavosquote
    echo -e "\e[3;92m$(cat ~/Zachs-Dotfiles/fish/.config/fish/beavosquotes.txt | shuf -n 1)\e[23m"
end

function fish_greeting
  sleep 0.05 && fastfetch
  beavosquote
end

if status is-interactive
    # init starship && zoxide
    starship init fish | source
    zoxide init fish | source

    # Misc aliases
    alias please=sudo
    alias vimtopia=nvim
end
