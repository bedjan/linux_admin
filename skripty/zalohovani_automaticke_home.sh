#!/bin/bash

echo "Zalohovani automaticke home adresare"

BACKUP_DIR="/backup"
DATE=$(date +%Y%m%d)
tar -czf $BACKUP_DIR/home_backup_$DATE.tar.gz /home

echo "Záloha dokončena: $BACKUP_DIR/home_backup_$DATE.tar.gz"
