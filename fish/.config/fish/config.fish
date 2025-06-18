# gets rid of annoying fish greeting prompt
set fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    alias sudude=sudo
end
