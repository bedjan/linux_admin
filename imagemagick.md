# ImageMagick – Úprava a konverze obrázků

ImageMagick je nástroj pro manipulaci s obrázky, konverzi a úpravy.

## 🛠 Instalace ImageMagick
```bash
# Debian/Ubuntu
sudo apt install imagemagick

# Fedora
sudo dnf install imagemagick

# Arch Linux
sudo pacman -S imagemagick
```

## 📦 Základní použití
```bash
convert obraz.png obraz.jpg  # Konverze formátu
convert obraz.jpg -resize 50% obraz_mensi.jpg  # Zmenšení obrázku o 50 %
convert obraz.jpg -rotate 90 obraz_rotovany.jpg  # Otočení o 90 stupňů
convert obraz.jpg -blur 0x5 obraz_blur.jpg  # Aplikace rozmazání
convert obraz1.jpg obraz2.jpg +append spojeny.jpg  # Sloučení obrázků horizontálně
```

## 🔄 Alternativy k ImageMagick
- **GIMP** – Grafický editor s GUI.
- **GraphicsMagick** – Rychlejší alternativa ImageMagick.

---
💡 **Tip:** Použitím `identify obraz.jpg` zobrazíš informace o obrázku.
