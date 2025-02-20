# 🚀 Neofetch – Systémové informace v terminálu

`neofetch` je jednoduchý, konfigurovatelný nástroj pro zobrazení systémových informací v terminálu s ASCII logem distribuce.

## 🛠 Instalace `neofetch`
```bash
# Debian/Ubuntu
sudo apt install neofetch

# Fedora
sudo dnf install neofetch

# Arch Linux
sudo pacman -S neofetch

# macOS (Homebrew)
brew install neofetch

# Windows (scoop)
scoop install neofetch
```

## 🖥 Spuštění `neofetch`
```bash
neofetch   # Zobrazí základní systémové informace
```

## ⚙ Konfigurace `neofetch`
Konfigurační soubor se nachází v:
```bash
~/.config/neofetch/config.conf
```
Lze jej upravit ručně nebo generovat nový příkazem:
```bash
neofetch --config create
```

## 🛠 Přizpůsobení výstupu
```bash
neofetch --ascii_distro arch  # Použití ASCII loga jiné distribuce
neofetch --ascii_colors 1 2 3  # Změna barev ASCII loga
neofetch --disable cpu  # Skrytí informace o CPU
neofetch --source path/to/image.png  # Použití obrázku místo ASCII loga
```

## 🔥 Alternativy k `neofetch`
- `screenfetch` – podobný nástroj s méně možnostmi přizpůsobení.
- `ufetch` – ultralehká varianta bez závislostí.
- `pfetch` – minimalistický, rychlý nástroj.

---
💡 **Tip:** Chceš zobrazit vlastní ASCII obrázek? Použij:
```bash
neofetch --ascii path/to/ascii.txt
```
