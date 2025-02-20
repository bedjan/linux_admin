# Flatpak – Alternativní správce aplikací

Flatpak je univerzální správce balíčků, který umožňuje instalaci aplikací na různých distribucích Linuxu bez ohledu na jejich specifické balíčkové systémy.

## 🛠 Instalace Flatpak
```bash
# Debian/Ubuntu
sudo apt install flatpak

# Fedora
sudo dnf install flatpak

# Arch Linux
sudo pacman -S flatpak

# Přidání Flathub repozitáře (doporučeno)
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## 📦 Instalace aplikací
```bash
flatpak install flathub název_aplikace  # Instalace aplikace z Flathubu
flatpak list  # Výpis nainstalovaných aplikací
flatpak run název.aplikace  # Spuštění aplikace
flatpak update  # Aktualizace všech aplikací
flatpak uninstall název.aplikace  # Odstranění aplikace
```

## 🔄 Alternativy k Flatpak
- **Snap** – Další univerzální správce balíčků od Canonicalu.
- **AppImage** – Přenosný formát aplikací, které nevyžadují instalaci.

---
💡 **Tip:** Po instalaci aplikací z Flathubu může být nutné odhlášení a přihlášení uživatele.
