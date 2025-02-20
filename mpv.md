# MPV – Přehrávač médií pro terminál

MPV je moderní přehrávač videí s podporou vysoké kvality obrazu a širokých možností konfigurace.

## 🛠 Instalace MPV
```bash
# Debian/Ubuntu
sudo apt install mpv

# Fedora
sudo dnf install mpv

# Arch Linux
sudo pacman -S mpv
```

## 📦 Základní použití
```bash
mpv video.mp4  # Přehrání videa
mpv --volume=50 video.mp4  # Nastavení hlasitosti na 50 %
mpv --loop video.mp4  # Opakované přehrávání
mpv --sub-file titulky.srt video.mp4  # Přidání titulků
```

## 🔄 Alternativy k MPV
- **VLC** – Univerzální multimediální přehrávač.
- **SMPlayer** – GUI nadstavba pro MPV.

---
💡 **Tip:** Použitím `mpv --hwdec=auto` aktivuješ hardwarovou akceleraci.
