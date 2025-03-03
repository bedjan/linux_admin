#!/bin/bash

echo "Automaticke odstraneni logu"
LOG_DIR="/var/log"
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Smazány staré logy starší než 7 dní."
