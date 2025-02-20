# Wget – Stahování souborů z internetu

Wget je příkazový nástroj pro stahování souborů pomocí protokolů HTTP, HTTPS a FTP.

## 🛠 Instalace Wget
```bash
# Debian/Ubuntu
sudo apt install wget

# Fedora
sudo dnf install wget

# Arch Linux
sudo pacman -S wget
```

## 📦 Použití Wget
```bash
wget URL  # Stažení souboru
wget -O soubor.html URL  # Uložení pod jiným názvem
wget -c URL  # Pokračování přerušeného stahování
wget -r URL  # Rekurzivní stahování webové stránky
```

## 🔄 Alternativy k Wget
- **Curl** – Práce s HTTP(S) požadavky.
- **Aria2** – Pokročilé stahování s podporou BitTorrent.

---
💡 **Tip:** Pro anonymní stažení lze použít `wget --no-check-certificate`.
