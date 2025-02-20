# Figlet – Generování ASCII textu

Figlet umožňuje generovat ASCII text pro zobrazení v terminálu.

## 🛠 Instalace Figlet
```bash
# Debian/Ubuntu
sudo apt install figlet

# Fedora
sudo dnf install figlet

# Arch Linux
sudo pacman -S figlet
```

## 📦 Použití Figlet
```bash
figlet Hello  # Vytvoří ASCII nápis "Hello"
figlet -f slant "Hello"  # Použití jiného fontu
```

## 📦 Seznam dostupných fontů
```bash
showfigfonts  # Zobrazí dostupné fonty
figlet -f big "Hello"  # Použití fontu "big"
```

## 🔄 Alternativy k Figlet
- **Toilet** – Vylepšená verze Figletu s více efekty.

---
💡 **Tip:** ASCII nápisy lze kombinovat s `lolcat` pro barevné efekty (`figlet Hello | lolcat`).
