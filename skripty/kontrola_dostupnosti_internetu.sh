#!/bin/bash

echo "Je dostupny internet 8.8.8.8"
while true; do
    if ping -c 1 8.8.8.8 &> /dev/null; then
        echo "Internet je v pořádku."
    else
        echo "VAROVÁNÍ: Internet vypadl!"
    fi
    sleep 10
done
