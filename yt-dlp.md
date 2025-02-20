# yt-dlp – Stahování videí z YouTube a dalších služeb

yt-dlp je fork youtube-dl s rozšířenými funkcemi pro stahování videí.

## 🛠 Instalace yt-dlp
```bash
# Debian/Ubuntu
sudo apt install yt-dlp

# Fedora
sudo dnf install yt-dlp

# Arch Linux
sudo pacman -S yt-dlp
```

## 📦 Základní použití
```bash
yt-dlp URL  # Stáhne video z dané URL
yt-dlp -F URL  # Zobrazí dostupné formáty videa
yt-dlp -f best URL  # Stáhne nejlepší kvalitu
yt-dlp -f 'bestaudio' -o "zvuk.mp3" URL  # Stáhne pouze zvuk
yt-dlp --write-subs --sub-lang en URL  # Stáhne titulky
```

## 🔄 Alternativy k yt-dlp
- **youtube-dl** – Starší verze yt-dlp.
- **Streamlink** – Přesměrování streamu do přehrávače.

---
💡 **Tip:** Pro automatické aktualizace použij `yt-dlp -U`.
