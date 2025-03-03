#!/bin/bash

echo "Oprava poškozeneho souboroveho systemu na disku"

DEVICE="/dev/sda1"

echo "Kontroluji $DEVICE..."
sudo fsck -y $DEVICE
echo "Oprava dokončena."
