#!/bin/bash

echo "Restartovani apache2"

SERVICE="apache2"

if systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE běží."
else
    echo "$SERVICE je zastaveno! Restartuji..."
    sudo systemctl restart $SERVICE
fi
