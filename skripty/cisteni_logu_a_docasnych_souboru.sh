#!/bin/bash

echo "Mažu nepotřebné soubory..."
sudo rm -rf /var/log/*.log
sudo rm -rf /tmp/*
echo "Systém vyčištěn."
