if status is-interactive
    set -U fish_greeting ""
    starship init fish | source
    # Commands to run in interactive sessions can go here
end
