#!/bin/bash

# chmod +x restartovani_sluzby.sh
# ./restartovani_sluzby.sh
# v cronu # */5 * * * * /restartovani_sluzby.sh

echo "Restartovani apache2"

SERVICE="apache2"

if systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE běží."
else
    echo "$SERVICE je zastaveno! Restartuji..."
    sudo systemctl restart $SERVICE
fi
