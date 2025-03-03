#!/bin/bash

# Uložení původního stavu pro možnost vrácení
ORIGINAL_DNS=$(cat /etc/resolv.conf)
ORIGINAL_HOSTS=$(cat /etc/hosts)
ORIGINAL_SOURCES=$(cat /etc/apt/sources.list)

# Funkce pro kontrolu systému
kontrola_aktualizaci() {
    echo "📌 Kontrola dostupných aktualizací..."
    sudo apt update
    echo "✅ Aktualizace dokončena."
}

kontrola_disku() {
    echo "📌 Kontrola využití disku..."
    df -h
}

kontrola_ram() {
    echo "📌 Kontrola využití RAM..."
    free -h
}

kontrola_zateze() {
    echo "📌 Kontrola zatížení CPU..."
    uptime
}

kontrola_sitoveho_pripojeni() {
    echo "📌 Kontrola síťového připojení..."
    ping -c 4 8.8.8.8
}

kontrola_firewallu() {
    echo "📌 Kontrola stavu firewallu (UFW)..."
    sudo ufw status
}

kontrola_souboroveho_systemu() {
    echo "📌 Kontrola integrity souborového systému..."
    sudo fsck -n /dev/sda1
}

kontrola_dns() {
    echo "📌 Kontrola aktuálního DNS nastavení..."
    cat /etc/resolv.conf
}

kontrola_hostfile() {
    echo "📌 Kontrola souboru /etc/hosts..."
    cat /etc/hosts
}

kontrola_zdroju_software() {
    echo "📌 Kontrola seznamu repozitářů..."
    cat /etc/apt/sources.list
}

# Funkce pro vrácení původního stavu
obnoveni_nastaveni() {
    echo "🔄 Obnovuji původní konfigurace..."
    echo "$ORIGINAL_DNS" | sudo tee /etc/resolv.conf > /dev/null
    echo "$ORIGINAL_HOSTS" | sudo tee /etc/hosts > /dev/null
    echo "$ORIGINAL_SOURCES" | sudo tee /etc/apt/sources.list > /dev/null
    echo "✅ Původní nastavení obnoveno!"
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
    echo "11) Obnovit původní nastavení"
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
        11) obnoveni_nastaveni ;;
        0) echo "👋 Ukončuji skript."; exit ;;
        *) echo "❌ Neplatná volba. Zkus to znovu!" ;;
    esac
done
