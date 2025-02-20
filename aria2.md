# Aria2 – Pokročilé stahování souborů

Aria2 je výkonný nástroj pro stahování souborů s podporou protokolů HTTP, HTTPS, FTP, SFTP, BitTorrent a Metalink.

## 🛠 Instalace Aria2
```bash
# Debian/Ubuntu
sudo apt install aria2

# Fedora
sudo dnf install aria2

# Arch Linux
sudo pacman -S aria2
```

## 📦 Použití Aria2
```bash
aria2c URL  # Stažení souboru
aria2c -x 16 URL  # Paralelní stahování s 16 spojeními
aria2c -s 10 -x 10 URL  # Vícevláknové stahování
aria2c --follow-torrent=true soubor.torrent  # Stahování přes BitTorrent
aria2c -i seznam.txt  # Stahování více souborů ze seznamu
```

## 🔄 Alternativy k Aria2
- **Wget** – Základní nástroj pro stahování.
- **Curl** – Podpora API a HTTP požadavků.

---
💡 **Tip:** Aria2 lze použít ke stahování více souborů současně pomocí `-i seznam.txt`.
