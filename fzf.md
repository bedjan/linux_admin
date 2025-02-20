# FZF – Interaktivní Fuzzy Finder

FZF je interaktivní vyhledávač textu v terminálu.

## 🛠 Instalace FZF
```bash
# Debian/Ubuntu
sudo apt install fzf

# Fedora
sudo dnf install fzf

# Arch Linux
sudo pacman -S fzf
```

## 📦 Základní použití
```bash
fzf  # Vyhledávání v seznamu souborů
find . -type f | fzf  # Vyhledání souboru v aktuálním adresáři
history | fzf  # Vyhledávání v historii příkazů
```

## 🔄 Alternativy k FZF
- **Fd** – Rychlé vyhledávání souborů.
- **Locate** – Databázové vyhledávání souborů.

---
💡 **Tip:** FZF lze integrovat do Bash a Zsh pro rychlé vyhledávání příkazů.
