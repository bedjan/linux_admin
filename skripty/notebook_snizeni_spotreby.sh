#!/bin/bash

echo "Snižuji jas displeje..."
xrandr --output eDP-1 --brightness 0.7  # Sníží jas na 70 %

echo "Omezuji výkon CPU..."
echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

echo "Vypínám nepotřebné služby..."
sudo systemctl stop bluetooth
sudo systemctl stop cups  # Tisková služba

echo "Úsporný režim aktivován."
