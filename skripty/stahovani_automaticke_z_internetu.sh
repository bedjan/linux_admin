#!/bin/bash

echo "Stahuje jpg a png obrazky do home slozky"

URL="https://www.example.com"
wget -r -A "*.jpg,*.png" $URL -P /home/user/stazene_obrazky
echo "Obrázky staženy do /home/user/stazene_obrazky"
