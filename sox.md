# SoX – Zpracování zvukových souborů

SoX (*Sound eXchange*) je nástroj pro manipulaci se zvukovými soubory.

## 🛠 Instalace SoX
```bash
# Debian/Ubuntu
sudo apt install sox

# Fedora
sudo dnf install sox

# Arch Linux
sudo pacman -S sox
```

## 📦 Základní použití
```bash
sox vstup.wav výstup.mp3  # Konverze zvukového souboru
sox vstup.wav výstup.wav reverse  # Obrácení zvuku
sox vstup.wav výstup.wav speed 1.5  # Zrychlení zvuku 1.5×
sox vstup.wav výstup.wav trim 0 30  # Oříznutí prvních 30 sekund
```

## 🔄 Alternativy k SoX
- **FFmpeg** – Výkonnější nástroj na zpracování zvuku a videa.
- **Audacity** – GUI editor zvuku.

---
💡 **Tip:** Použitím `sox --help` zobrazíš všechny dostupné efekty.
