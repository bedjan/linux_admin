#!/bin/bash

echo "Upozorneni na zaplneni disku"
THRESHOLD=10
EMAIL="admin@example.com"

df -h | awk '{if (NR>1) print $5 " " $1}' | while read output
do
    USAGE=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
    PARTITION=$(echo $output | awk '{print $2}')

    if [ $USAGE -gt $THRESHOLD ]; then
        echo "Varování: Diskové oddělení $PARTITION je zaplněno na $USAGE%!" | mail -s "Varování: Málo místa na disku" $EMAIL
    fi
done
