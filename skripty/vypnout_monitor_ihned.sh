#!/bin/bash

echo "Vypnutí monitoru za 5 sekund..."
xset s off +dpms
sleep 5
xset dpms force off
