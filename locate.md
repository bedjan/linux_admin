# Locate – Rychlé vyhledávání souborů

Locate umožňuje rychlé vyhledávání souborů pomocí předem vytvořené databáze.

## 🛠 Instalace Locate
```bash
# Debian/Ubuntu
sudo apt install mlocate
sudo updatedb  # Aktualizace databáze

# Fedora
sudo dnf install mlocate
sudo updatedb

# Arch Linux
sudo pacman -S mlocate
sudo updatedb
```

## 📦 Základní použití
```bash
locate soubor  # Hledání souboru
locate -i soubor  # Hledání bez ohledu na velikost písmen
locate -r ".*\.log$"  # Hledání souborů s příponou .log
```

## 🔄 Alternativy k Locate
- **Find** – Klasické vyhledávání souborů.
- **Fd** – Rychlejší alternativa k Find.

---
💡 **Tip:** Pro rychlou aktualizaci databáze použij `sudo updatedb`.
