# FFmpeg – Převod a úprava videí

FFmpeg je výkonný nástroj pro zpracování, konverzi a streamování audio/video souborů.

## 🛠 Instalace FFmpeg
```bash
# Debian/Ubuntu
sudo apt install ffmpeg

# Fedora
sudo dnf install ffmpeg

# Arch Linux
sudo pacman -S ffmpeg
```

## 📦 Základní použití
```bash
ffmpeg -i vstup.mp4 výstup.avi  # Konverze videa
ffmpeg -i vstup.mp4 -vn -acodec copy zvuk.mp3  # Extrakce zvuku
ffmpeg -i vstup.mp4 -c:v libx264 -crf 23 -preset fast výstup.mp4  # Rekódování videa
ffmpeg -i vstup.mp4 -ss 00:00:10 -t 5 výstup.mp4  # Výřez 5 sekund od 10. sekundy
```

## 🔄 Alternativy k FFmpeg
- **HandBrake** – GUI pro převod videí.
- **Avidemux** – Jednoduchá úprava videí.

---
💡 **Tip:** Pomocí `ffmpeg -codecs` zobrazíš podporované kodeky.
