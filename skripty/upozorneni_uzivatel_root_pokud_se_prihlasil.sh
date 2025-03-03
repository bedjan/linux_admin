#!/bin/bash


echo "Pošle e-mail správci, pokud se někdo přihlásí jako root."
EMAIL="admin@example.com"
LOGFILE="/var/log/auth.log"

if grep "session opened for user root" $LOGFILE > /dev/null; then
    echo "POZOR: Někdo se přihlásil jako root!" | mail -s "Přihlášení root" $EMAIL
fi
