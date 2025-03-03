#!/bin/bash

echo "Vypnuti obrazovky po 5 minutach"

IDLE_TIME=300  # 5 minut

while true; do
    if [[ $(xprintidle) -ge $((IDLE_TIME * 1000)) ]]; then
        echo "Neaktivita detekována, zamykám obrazovku..."
        xdg-screensaver lock
    fi
    sleep 10
done
