#!/bin/bash
set -e

# Take screenshot that saves to a logged file in ~/Pictures/Screenshots
# and also copies it to clipboard.
flock -n ~/.tmp/screenie.lock bash -c '
   CDT=$(date +"%Y-%m-%d-%H%M%S")
   OUT="$HOME/Pictures/Screenshots/screenie-$CDT.png"
   dulcepan -c ~/.config/dulcepan/dulcepan.cfg -o "$OUT" && 
   wl-copy < "$OUT"
'
