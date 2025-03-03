#!/bin/bash

echo "Vypnuti systemu v nouzi"

if [[ $1 == "--force" ]]; then
    echo "Nouzové vypnutí systému!"
    sudo shutdown -h now
else
    echo "Použití: $0 --force pro okamžité vypnutí."
fi
