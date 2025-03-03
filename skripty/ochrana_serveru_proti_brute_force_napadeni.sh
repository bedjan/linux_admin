#!/bin/bash

# Počet neúspěšných pokusů o přihlášení, po kterém dojde k blokaci
THRESHOLD=5
# Logovací soubor SSH (změň podle distribuce)
LOGFILE="/var/log/auth.log"
# Soubor s blokovanými IP
BANLIST="/etc/hosts.deny"

# Hledání IP adres s neúspěšnými pokusy o přihlášení
grep "Failed password" $LOGFILE | awk '{print $(NF-3)}' | sort | uniq -c | while read count ip
do
    if [ $count -ge $THRESHOLD ]; then
        echo "Blokuji podezřelou IP: $ip (neúspěšných pokusů: $count)"
        
        # Přidání IP do iptables
        sudo iptables -A INPUT -s $ip -j DROP
        echo "ALL: $ip" >> $BANLIST

        # Logování blokace
        echo "$(date) - Blokovaná IP: $ip (počet pokusů: $count)" >> /var/log/ssh_bruteforce_block.log
    fi
done
