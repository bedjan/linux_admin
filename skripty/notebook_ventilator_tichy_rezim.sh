#!/bin/bash

echo "Snižuji otáčky ventilátorů..."
sudo modprobe -r thinkpad_acpi
sudo modprobe thinkpad_acpi fan_control=1
echo 2 | sudo tee /proc/acpi/ibm/fan  # Nastaví nízké otáčky

echo "Ventilátory nastaveny na tichý režim."
