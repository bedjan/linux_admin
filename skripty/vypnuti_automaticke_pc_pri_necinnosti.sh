#!/bin/bash

echo "Pri necinnosti 30 minut se samo PC vypne"

IDLE_TIME=1800  # 30 minut

if [[ $(xprintidle) -ge $((IDLE_TIME * 1000)) ]]; then
    echo "Počítač je neaktivní. Vypínám..."
    sudo shutdown -h now
fi
