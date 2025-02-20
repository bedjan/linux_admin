# Nmap – Síťový skener

Nmap je výkonný nástroj pro analýzu a diagnostiku síťových zařízení. Používá se ke skenování sítí a odhalování otevřených portů.

## 🛠 Instalace Nmap
```bash
# Debian/Ubuntu
sudo apt install nmap

# Fedora
sudo dnf install nmap

# Arch Linux
sudo pacman -S nmap
```

## 📦 Použití Nmap
```bash
nmap IP_adresa  # Základní skenování
nmap -p 22 IP_adresa  # Skenování konkrétního portu
nmap -sV IP_adresa  # Zjištění verzí služeb
nmap -A IP_adresa  # Podrobný sken
nmap -O IP_adresa  # Zjištění operačního systému
```

## 🔄 Alternativy k Nmap
- **Netcat** – Testování síťové komunikace.
- **MTR** – Diagnostika síťových tras.

---
💡 **Tip:** Použitím `nmap -Pn` lze skenovat i hostitele, kteří neodpovídají na ping.
