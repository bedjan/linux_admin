#!/bin/bash

echo "Pridani uzivatele"
read -p "Zadejte jméno nového uživatele: " USERNAME
sudo adduser $USERNAME
echo "Uživatel $USERNAME byl přidán."
