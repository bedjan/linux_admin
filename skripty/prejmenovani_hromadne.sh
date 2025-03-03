#!/bin/bash

echo "Hromadne prejmenovani z pripony txt na bak "

for file in *.txt; do
    mv "$file" "${file%.txt}.bak"
done
echo "Všechny .txt soubory byly přejmenovány na .bak"
