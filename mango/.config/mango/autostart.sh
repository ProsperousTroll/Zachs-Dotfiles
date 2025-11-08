#!/bin/sh
set +e

# startup
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots

pactl load-module module-null-sink sink_name=Browser
pactl load-module module-null-sink sink_name=Discord

pactl load-module module-null-sink sink_name=Source sink_properties=device.description="Null Sink"
pactl load-module module-virtual-source source_name=MIC master=Source.monitor source_properties=devide.description="Virtual Mic output"

# run in background
waybar &
mako &
swaybg -i ~/Zachs-Dotfiles/mango/.config/mango/gaydient2.png &
/usr/lib/xdg-desktop-portal-wlr &
