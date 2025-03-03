#!/bin/bash

MOUSE_CONNECTED=$(xinput list --name-only | grep -i "mouse")

if [ -n "$MOUSE_CONNECTED" ]; then
    echo "Myš detekována, vypínám touchpad..."
    xinput disable "SynPS/2 Synaptics TouchPad"
else
    echo "Myš není připojena, touchpad ponechán aktivní."
fi
