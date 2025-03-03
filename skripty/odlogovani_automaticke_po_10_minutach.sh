#!/bin/bash

echo "Automaticke odlogovani uzivatele po 10 minutach"

IDLE_TIME=600 # 10 minut

while true; do
    for user in $(who | awk '{print $1}'); do
        IDLE=$(w -h $user | awk '{print $5}')
        IDLE_SECONDS=$(echo $IDLE | awk -F: '{print ($1 * 60) + $2}')
        
        if [[ $IDLE_SECONDS -ge $IDLE_TIME ]]; then
            pkill -KILL -u $user
            echo "Uživatel $user byl odpojen."
        fi
    done
    sleep 60
done
