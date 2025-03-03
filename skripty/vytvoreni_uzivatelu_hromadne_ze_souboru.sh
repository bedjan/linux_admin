#!/bin/bash

echo "Přidá nové uživatele ze souboru uzivatele.txt"

while IFS= read -r user; do
    sudo adduser --disabled-password --gecos "" "$user"
    echo "Uživatel $user přidán."
done < uzivatele.txt
