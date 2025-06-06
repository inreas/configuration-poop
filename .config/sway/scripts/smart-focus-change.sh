#!/bin/bash
layout="$(swaymsg -t get_tree | jq -r '(.. | select(.focused? == true) | .id) as $focused_id | .. | select(.nodes? and (.nodes | map(select(.id == $focused_id)) | length > 0)) | .layout')"
direction="$1"

if [[ "$layout" == "tabbed" || "$layout" == "splith" ]]; then
    if [[ "$direction" == "next" ]]; then
        swaymsg focus right
    elif [[ "$direction" == "prev" ]]; then
        swaymsg focus left
    fi
elif [[ "$layout" == "stacked" || "$layout" == "splitv" ]]; then
    if [[ "$direction" == "next" ]]; then
        swaymsg focus down
    elif [[ "$direction" == "prev" ]]; then
        swaymsg focus up
    fi
else
    swaymsg focus mode_toggle
fi
