#!/bin/bash

echo "Monitorovani teploty CPU"

while true; do
    TEMP=$(sensors | grep "Package id 0" | awk '{print $4}' | tr -d '+°C')
    
    if [[ $(echo "$TEMP > 80" | bc) -eq 1 ]]; then
        echo "VAROVÁNÍ: CPU je příliš horké! Aktuální teplota: $TEMP °C"
    fi

    sleep 10
done
