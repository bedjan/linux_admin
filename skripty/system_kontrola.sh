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

# ========================== SPRÁVA BALÍČKŮ ==========================
instalace_balicku() {
    read -p "Zadejte název balíčku k instalaci: " PKG
    case $OS in
        debian|ubuntu) sudo apt install -y $PKG ;;
        centos|rhel) sudo yum install -y $PKG ;;
        arch) sudo pacman -S --noconfirm $PKG ;;
    esac
}

odebrani_balicku() {
    read -p "Zadejte název balíčku k odebrání: " PKG
    case $OS in
        debian|ubuntu) sudo apt remove -y $PKG ;;
        centos|rhel) sudo yum remove -y $PKG ;;
        arch) sudo pacman -R --noconfirm $PKG ;;
    esac
}

vyhledani_balicku() {
    read -p "Zadejte název balíčku k vyhledání: " PKG
    case $OS in
        debian|ubuntu) apt search $PKG ;;
        centos|rhel) yum search $PKG ;;
        arch) pacman -Ss $PKG ;;
    esac
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

# ========================== SPRÁVA SÍTĚ ==========================
zobrazeni_ip() {
    echo "📌 Zobrazení IP adresy..."
    ip a
}

restart_sitoveho_pripojeni() {
    echo "📌 Restartování síťového připojení..."
    sudo systemctl restart networking
    echo "✅ Síť restartována."
}

# ========================== SPRÁVA UŽIVATELŮ ==========================
vytvoreni_uzivatele() {
    read -p "Zadejte uživatelské jméno: " USERNAME
    sudo adduser $USERNAME
    echo "✅ Uživatel $USERNAME byl vytvořen."
}

otstraneni_uzivatele() {
    read -p "Zadejte uživatelské jméno k odstranění: " USERNAME
    sudo deluser $USERNAME
    echo "✅ Uživatel $USERNAME byl odstraněn."
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
    echo "8) Instalace balíčku"
    echo "9) Odebrání balíčku"
    echo "10) Vyhledání balíčku"
    echo "11) Nastavení firewallu"
    echo "12) Restart firewallu"
    echo "13) Zobrazení IP adresy"
    echo "14) Restart síťového připojení"
    echo "15) Vytvoření nového uživatele"
    echo "16) Odstranění uživatele"
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
        8) instalace_balicku ;;
        9) odebrani_balicku ;;
        10) vyhledani_balicku ;;
        11) nastaveni_firewallu ;;
        12) restart_firewall ;;
        13) zobrazeni_ip ;;
        14) restart_sitoveho_pripojeni ;;
        15) vytvoreni_uzivatele ;;
        16) otstraneni_uzivatele ;;
        0) echo "👋 Ukončuji skript."; exit ;;
        *) echo "❌ Neplatná volba. Zkus to znovu!" ;;
    esac
done
