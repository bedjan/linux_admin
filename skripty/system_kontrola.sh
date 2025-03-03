#!/bin/bash

# spusteni konkretniho skriptu # system_kontrola.sh vymazani_cache

#!/bin/bash

# Detekce operačního systému (Debian, CentOS, Arch Linux)
OS="$(grep -Ei "^(ID|ID_LIKE)=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')"

# ========================== FUNKCE PRO SPRÁVU SYSTÉMU ==========================
kontrola_aktualizaci() {
    echo "📌 Kontrola dostupných aktualizací..."
    case $OS in
        debian|ubuntu) sudo apt update && sudo apt list --upgradable ;;
        centos|rhel) sudo yum check-update ;;
        arch) sudo pacman -Sy ;;
    esac
}

vymazani_cache() {
    echo "📌 Vymazání cache RAM a disku..."
    sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
    echo "✅ Cache byla vymazána."
}

reset_swap() {
    echo "📌 Resetování swapu..."
    sudo swapoff -a && sudo swapon -a
    echo "✅ Swap byl resetován."
}

zaloha_serveru() {
    BACKUP_DIR="/backup"
    DATE=$(date +%Y%m%d)
    mkdir -p $BACKUP_DIR
    echo "📌 Zálohuji server..."
    tar -czf $BACKUP_DIR/server_backup_$DATE.tar.gz /etc /var/www /home /var/log
    echo "✅ Záloha uložena: $BACKUP_DIR/server_backup_$DATE.tar.gz"
}

kontrola_zateze() {
    echo "📌 Kontrola zatížení CPU a RAM..."
    uptime
    free -h
}

kontrola_disku() {
    echo "📌 Kontrola využití disku..."
    df -h
}

kontrola_sitoveho_pripojeni() {
    echo "📌 Kontrola síťového připojení..."
    ping -c 4 8.8.8.8
}

# ========================== SPRÁVA ZASEKÁVÁNÍ SERVERU ==========================
ukonceni_nejnarocnejsi_aplikace() {
    echo "📌 Hledám nejvíce zatěžující procesy..."
    TOP_PID=$(ps -eo pid,%cpu,%mem,cmd --sort=-%cpu | head -n 2 | tail -n 1 | awk '{print $1}')
    echo "🔴 Ukončuji proces: $TOP_PID"
    sudo kill -9 $TOP_PID
    echo "✅ Proces byl ukončen."
}

nejvetsi_soubor() {
    echo "📌 Hledám největší soubor v systému..."
    find / -type f -exec du -Sh {} + 2>/dev/null | sort -rh | head -n 1
}

# ========================== SPRÁVA UŽIVATELŮ ==========================
vytvoreni_uzivatele() {
    read -p "Zadejte uživatelské jméno: " USERNAME
    sudo adduser $USERNAME
    echo "✅ Uživatel $USERNAME byl vytvořen."
}

odstraneni_uzivatele() {
    read -p "Zadejte uživatelské jméno k odstranění: " USERNAME
    sudo deluser $USERNAME
    echo "✅ Uživatel $USERNAME byl odstraněn."
}

# ========================== SPRÁVA FIREWALLU ==========================
nastaveni_firewallu() {
    echo "📌 Nastavuji firewall (UFW)..."
    sudo ufw enable
    sudo ufw allow ssh
    sudo ufw allow http
    sudo ufw allow https
    echo "✅ Firewall nakonfigurován."
}

restart_firewall() {
    echo "📌 Restartování firewallu..."
    sudo systemctl restart ufw
    echo "✅ Firewall byl restartován."
}

# ========================== INTERAKTIVNÍ MENU ==========================
while true; do
    echo ""
    echo "🔍 Vyber si akci (zadej číslo):"
    echo "1) Kontrola dostupných aktualizací"
    echo "2) Vymazání cache"
    echo "3) Reset swapu"
    echo "4) Záloha serveru"
    echo "5) Kontrola zatížení CPU a RAM"
    echo "6) Kontrola využití disku"
    echo "7) Kontrola síťového připojení"
    echo "8) Ukončení nejvíce zatěžující aplikace"
    echo "9) Hledání největšího souboru"
    echo "10) Vytvoření nového uživatele"
    echo "11) Odstranění uživatele"
    echo "12) Nastavení firewallu"
    echo "13) Restart firewallu"
    echo "0) Ukončit skript"

    read -p "Zadej číslo akce: " VOLBA

    case $VOLBA in
        1) kontrola_aktualizaci ;;
        2) vymazani_cache ;;
        3) reset_swap ;;
        4) zaloha_serveru ;;
        5) kontrola_zateze ;;
        6) kontrola_disku ;;
        7) kontrola_sitoveho_pripojeni ;;
        8) ukonceni_nejnarocnejsi_aplikace ;;
        9) nejvetsi_soubor ;;
        10) vytvoreni_uzivatele ;;
        11) odstraneni_uzivatele ;;
        12) nastaveni_firewallu ;;
        13) restart_firewall ;;
        0) echo "👋 Ukončuji skript."; exit ;;
        *) echo "❌ Neplatná volba. Zkus to znovu!" ;;
    esac
done
