#!/bin/bash

echo "Smaze soubory vetsi nez 1GB"

find /var/log -type f -size +1G -exec rm -f {} \;
echo "Velké logy byly smazány."
