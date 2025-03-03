#!/bin/bash

echo "Vypnuti pc po kolika minutach"

read -p "Za kolik minut se má vypnout počítač? " MINUTES
shutdown -h +$MINUTES
echo "Počítač se vypne za $MINUTES minut."
