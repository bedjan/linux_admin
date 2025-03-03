#!/bin/bash

echo "Restart systemu ve 3.00, zadáno do crontabu"

echo "Plánuji restart systému na 3:00 ráno."
echo "0 3 * * * root /sbin/shutdown -r now" | sudo tee -a /etc/crontab
echo "Naplánováno!"
