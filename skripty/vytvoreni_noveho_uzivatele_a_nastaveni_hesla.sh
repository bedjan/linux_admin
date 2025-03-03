#!/bin/bash

echo "Nastav uzivatele a jeho heslo"

read -p "Zadejte jméno nového uživatele: " USERNAME
sudo adduser $USERNAME
echo "Uživatel $USERNAME byl vytvořen."
