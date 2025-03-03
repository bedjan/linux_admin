#!/bin/bash

HOUR=$(date +"%H")

if [ "$HOUR" -ge 20 ] || [ "$HOUR" -lt 7 ]; then
    echo "Večerní režim – snižuji jas."
    xrandr --output eDP-1 --brightness 0.5
else
    echo "Denní režim – zvyšuji jas."
    xrandr --output eDP-1 --brightness 1.0
fi
