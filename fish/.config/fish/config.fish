if status is-interactive
    set -U fish_greeting ""
    starship init fish | source
    alias sudude=sudo
    # Commands to run in interactive sessions can go here
end
