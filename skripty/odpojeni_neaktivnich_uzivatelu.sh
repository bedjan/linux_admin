#!/bin/bash

echo "odpojeni neaktivnich uzivatelu"

IDLE_LIMIT=900  # 900 sekund = 15 minut

for user in $(who | awk '{print $1}')
do
    IDLE_TIME=$(w -h $user | awk '{print $5}')
    IDLE_SECS=$(echo $IDLE_TIME | awk -F: '{print ($1*60) + $2}')

    if [[ $IDLE_SECS -ge $IDLE_LIMIT ]]
    then
        pkill -KILL -u $user
        echo "Uživatel $user odhlášen pro neaktivitu."
    fi
done
