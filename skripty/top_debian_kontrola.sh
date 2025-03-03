#!/bin/bash

# Uložení původního stavu konfigurací pro možnost obnovení
ORIGINAL_DNS=$(cat /etc/resolv.conf)
ORIGINAL_HOSTS=$(cat /etc/hosts)
ORIGINAL_SOURCES=$(cat /etc/apt/sources.list)

# Funkce pro různé úkoly

## 1. Kontrola dostupných aktualizací
kontrola_aktualizaci() {
    echo "📌 Kontrola dostupných aktualizací..."
    sudo apt update && sudo apt list --upgradable
    echo "✅ Kontrola dokončena."
}

## 2. Kontrola využití disku
kontrola_disku() {
    echo "📌 Kontrola využití disku..."
    df -h
}

## 3. Kontrola využití RAM
kontrola_ram() {
    echo "📌 Kontrola využití RAM..."
    free -h
}

## 4. Kontrola zatížení CPU
kontrola_zateze() {
    echo "📌 Kontrola zatížení CPU..."
    uptime
}

## 5. Kontrola síťového připojení
kontrola_sitoveho_pripojeni() {
    echo "📌 Kontrola síťového připojení..."
    ping -c 4 8.8.8.8
}

## 6. Kontrola firewallu (UFW)
kontrola_firewallu() {
    echo "📌 Kontrola firewallu..."
    sudo ufw status
}

## 7. Kontrola integrity souborového systému
kontrola_souboroveho_systemu() {
    echo "📌 Kontrola integrity souborového systému..."
    sudo fsck -n /dev/sda1
}

## 8. Kontrola aktuálního DNS nastavení
kontrola_dns() {
    echo "📌 Kontrola aktuálního DNS nastavení..."
    cat /etc/resolv.conf
}

## 9. Kontrola souboru /etc/hosts
kontrola_hostfile() {
    echo "📌 Kontrola souboru /etc/hosts..."
    cat /etc/hosts
}

## 10. Kontrola seznamu repozitářů
kontrola_zdroju_software() {
    echo "📌 Kontrola seznamu repozitářů..."
    cat /etc/apt/sources.list
}

## 11. Vymazání cache RAM a disku
vymazani_cache() {
    echo "📌 Vymazání cache RAM a disku..."
    sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
    echo "✅ Cache byla vymazána."
}

## 12. Zapnutí a vypnutí DPMS (řízení napájení monitoru)
toggle_dpms() {
    STATE=$(xset q | grep "DPMS is" | awk '{print $3}')
    if [ "$STATE" = "Enabled" ]; then
        echo "📌 Vypínám DPMS..."
        xset -dpms
    else
        echo "📌 Zapínám DPMS..."
        xset +dpms
    fi
}

## 13. Vypnutí monitoru se zpožděním 5 sekund
vypnout_monitor() {
    echo "📌 Vypnutí monitoru za 5 sekund..."
    sleep 5
    xset dpms force off
    echo "✅ Monitor vypnut."
}

## 14. Instalace a konfigurace Fail2Ban pro ochranu proti Brute Force útokům
nastaveni_fail2ban() {
    echo "📌 Instalace Fail2Ban..."
    sudo apt update && sudo apt install fail2ban -y

    echo "📌 Konfigurace Fail2Ban..."
    sudo tee /etc/fail2ban/jail.local > /dev/null <<EOL
[DEFAULT]
bantime = 3600
findtime = 600
maxretry = 5
ignoreip = 127.0.0.1

[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 5
bantime = 3600
EOL

    echo "📌 Restart Fail2Ban..."
    sudo systemctl restart fail2ban
    sudo systemctl enable fail2ban
    echo "✅ Fail2Ban nastaven."
}

## 15. Ochrana serveru proti Brute Force útokům (blokování IP adres)
ochrana_bruteforce() {
    echo "📌 Kontrola podezřelých IP adres v logu SSH..."
    LOGFILE="/var/log/auth.log"
    THRESHOLD=5
    BANLIST="/etc/hosts.deny"

    grep "Failed password" $LOGFILE | awk '{print $(NF-3)}' | sort | uniq -c | while read count ip
    do
        if [ $count -ge $THRESHOLD ]; then
            echo "📌 Blokuji IP adresu: $ip"
            sudo iptables -A INPUT -s $ip -j DROP
            echo "ALL: $ip" >> $BANLIST
        fi
    done
    echo "✅ Ochrana proti Brute Force hotova."
}

# Funkce pro vrácení původního stavu
obnoveni_nastaveni() {
    echo "📌 Obnovuji původní konfigurace..."
    echo "$ORIGINAL_DNS" | sudo tee /etc/resolv.conf > /dev/null
    echo "$ORIGINAL_HOSTS" | sudo tee /etc/hosts > /dev/null
    echo "$ORIGINAL_SOURCES" | sudo tee /etc/apt/sources.list > /dev/null
    echo "✅ Původní nastavení obnoveno."
}

# Nabídka funkcí
while true; do
    echo ""
    echo "🔍 Vyber si akci (zadej číslo):"
    echo "1) Kontrola dostupných aktualizací"
    echo "2) Kontrola využití disku"
    echo "3) Kontrola využití RAM"
    echo "4) Kontrola zatížení CPU"
    echo "5) Kontrola síťového připojení"
    echo "6) Kontrola firewallu (UFW)"
    echo "7) Kontrola integrity souborového systému"
    echo "8) Kontrola aktuálního DNS nastavení"
    echo "9) Kontrola souboru /etc/hosts"
    echo "10) Kontrola seznamu repozitářů"
    echo "11) Vymazání cache"
    echo "12) Přepnutí DPMS (řízení napájení monitoru)"
    echo "13) Vypnutí monitoru za 5 sekund"
    echo "14) Instalace a konfigurace Fail2Ban"
    echo "15) Ochrana serveru proti Brute Force útokům"
    echo "16) Obnovit původní nastavení"
    echo "0) Ukončit skript"

    read -p "Zadej číslo akce: " VOLBA

    case $VOLBA in
        1) kontrola_aktualizaci ;;
        2) kontrola_disku ;;
        3) kontrola_ram ;;
        4) kontrola_zateze ;;
        5) kontrola_sitoveho_pripojeni ;;
        6) kontrola_firewallu ;;
        7) kontrola_souboroveho_systemu ;;
        8) kontrola_dns ;;
        9) kontrola_hostfile ;;
        10) kontrola_zdroju_software ;;
        11) vymazani_cache ;;
        12) toggle_dpms ;;
        13) vypnout_monitor ;;
        14) nastaveni_fail2ban ;;
        15) ochrana_bruteforce ;;
        16) obnoveni_nastaveni ;;
        0) echo "👋 Ukončuji skript."; exit ;;
        *) echo "❌ Neplatná volba. Zkus to znovu!" ;;
    esac
done
