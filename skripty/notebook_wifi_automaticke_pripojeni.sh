#!/bin/bash

SSID="MojeWiFi"
PASSWORD="tajneheslo"

if ! nmcli -t -f active,ssid dev wifi | grep -q '^yes'; then
    echo "Připojuji se k WiFi $SSID..."
    nmcli dev wifi connect "$SSID" password "$PASSWORD"
    echo "Připojeno!"
fi
