#!/bin/bash

read -p "Zadejte název souboru pro nový SSH klíč: " KEYNAME
ssh-keygen -t rsa -b 4096 -f ~/.ssh/$KEYNAME -N ""
echo "SSH klíč vytvořen: ~/.ssh/$KEYNAME"
chmod 600 ~/.ssh/$KEYNAME
