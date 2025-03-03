#!/bin/bash

echo "Vyhledani souboru podle pripony"

read -p "Zadejte příponu souborů (např. log, txt): " EXTENSION
find / -type f -name "*.$EXTENSION" 2>/dev/null
