#!/bin/bash

echo "Vymaze logy starsi 7 dni"

LOG_DIR="/var/log"

echo "Mažu staré logy..."
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Smazány staré logy starší než 7 dní."
