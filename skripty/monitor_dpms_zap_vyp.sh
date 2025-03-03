#!/bin/bash

STATE=$(xset q | grep "DPMS is" | awk '{print $3}')

if [ "$STATE" = "Enabled" ]; then
    echo "Vypínám DPMS..."
    xset -dpms
else
    echo "Zapínám DPMS..."
    xset +dpms
fi
