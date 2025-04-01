#!/bin/bash
grim - | wl-copy && wl-paste >~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png
