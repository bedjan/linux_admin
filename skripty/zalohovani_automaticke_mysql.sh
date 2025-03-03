#!/bin/bash

echo "Automaticke zalohovani mysql"

DB_USER="root"
DB_PASS="mojeheslo"
DB_NAME="moje_databaze"
BACKUP_DIR="/backup"
DATE=$(date +%Y%m%d)

mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/db_backup_$DATE.sql
echo "Záloha dokončena: $BACKUP_DIR/db_backup_$DATE.sql"
