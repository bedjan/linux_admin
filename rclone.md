# Rclone – Synchronizace souborů s cloudem

Rclone je příkazový nástroj pro synchronizaci souborů mezi lokálním úložištěm a cloudovými službami.

## 🛠 Instalace Rclone
```bash
# Debian/Ubuntu
sudo apt install rclone

# Fedora
sudo dnf install rclone

# Arch Linux
sudo pacman -S rclone
```

## 📦 Konfigurace Rclone
```bash
rclone config  # Nastavení cloudového úložiště
rclone listremotes  # Zobrazení dostupných úložišť
```

## 📦 Použití Rclone
```bash
rclone copy /lokalni_slozka remote:/cloud_slozka  # Kopírování souborů do cloudu
rclone sync /lokalni_slozka remote:/cloud_slozka  # Synchronizace souborů
rclone ls remote:/cloud_slozka  # Výpis souborů na cloudu
```

## 🔄 Alternativy k Rclone
- **rsync** – Lokální synchronizace souborů.
- **Google Drive API** – Přímé napojení na GDrive.

---
💡 **Tip:** Pro automatickou synchronizaci použij `rclone sync --progress`.
