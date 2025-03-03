#!/bin/bash

echo "Pokud server nereaguje na ping bude restartovan"

SERVER="8.8.8.8"

if ! ping -c 3 $SERVER &> /dev/null; then
    echo "Server je nedostupný! Restart systému..."
    sudo reboot
fi
