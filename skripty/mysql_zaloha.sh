#!/bin/bash

echo "Zalohuji databazi mysql"
BACKUP_DIR="/backup"
DB_NAME="moje_databaze"
DB_USER="root"
DATE=$(date +%Y%m%d)

mkdir -p $BACKUP_DIR

echo "Zálohuji databázi..."
mysqldump -u $DB_USER -p $DB_NAME > $BACKUP_DIR/db_backup_$DATE.sql

echo "Kopíruji důležité soubory..."
tar -czf $BACKUP_DIR/files_backup_$DATE.tar.gz /etc /var/www/html

echo "Záloha dokončena."
