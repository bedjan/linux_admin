#!/bin/bash

echo " instaluje Fail2Ban, konfiguruje ho pro SSH a nastaví pravidla pro blokování útočníků."

# Instalace Fail2Ban
echo "Instaluji Fail2Ban..."
sudo apt update && sudo apt install fail2ban -y

# Vytvoření konfiguračního souboru (pokud neexistuje)
JAIL_LOCAL="/etc/fail2ban/jail.local"
if [ ! -f "$JAIL_LOCAL" ]; then
    echo "Vytvářím konfigurační soubor Fail2Ban..."
    sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
fi

# Konfigurace Fail2Ban pro SSH
echo "Konfiguruji ochranu pro SSH..."
sudo tee /etc/fail2ban/jail.local > /dev/null <<EOL
[DEFAULT]
bantime = 3600        # Ban na 1 hodinu
findtime = 600        # Počet pokusů za 10 minut
maxretry = 5          # Maximálně 5 neúspěšných pokusů
ignoreip = 127.0.0.1  # Ignorovat localhost

[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 5
bantime = 3600
EOL

# Restart Fail2Ban pro aplikaci změn
echo "Restartuji Fail2Ban..."
sudo systemctl restart fail2ban
sudo systemctl enable fail2ban

echo "Konfigurace dokončena! Fail2Ban je aktivní."
