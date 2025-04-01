#!/bin/bash
grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" - | wl-copy && wl-paste >~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png
