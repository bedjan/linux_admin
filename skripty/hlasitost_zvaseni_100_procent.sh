#!/bin/bash

echo "Zvyšuji hlasitost na 150 %..."
pactl set-sink-volume @DEFAULT_SINK@ 150%
echo "Hotovo!"
