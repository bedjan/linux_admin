# FD – Rychlá alternativa k Find

FD je vylepšený nástroj pro vyhledávání souborů, rychlejší a intuitivnější než `find`.

## 🛠 Instalace FD
```bash
# Debian/Ubuntu
sudo apt install fd-find

# Fedora
sudo dnf install fd-find

# Arch Linux
sudo pacman -S fd
```

## 📦 Základní použití
```bash
fd "název_souboru"  # Hledání souboru podle názvu
fd -e txt  # Hledání všech .txt souborů
fd "text" -x rm {}  # Hromadné odstranění nalezených souborů
```

## 🔄 Alternativy k FD
- **Find** – Tradiční vyhledávání souborů.
- **Locate** – Rychlé databázové vyhledávání.

---
💡 **Tip:** FD automaticky ignoruje soubory ve `.gitignore`.
