# 🚀 `snap` – Správa univerzálních balíčků

`snap` je správce balíčků od Canonicalu (tvůrců Ubuntu), který umožňuje instalaci sandboxovaných aplikací nezávisle na distribuci.

## 🛠 Instalace `snapd`
```bash
# Debian/Ubuntu (je předinstalován na novějších verzích Ubuntu)
sudo apt install snapd

# Fedora
sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap  # Povolení Snap na Fedoře

# Arch Linux
sudo pacman -S snapd
sudo systemctl enable --now snapd

# OpenSUSE
sudo zypper install snapd
sudo systemctl enable --now snapd
```

## 📦 Instalace a odstranění balíčků
```bash
sudo snap install balicek  # Instalace balíčku ze Snap Store
sudo snap install balicek --classic  # Instalace balíčku bez sandboxu
sudo snap install balicek --channel=beta  # Instalace beta verze balíčku
sudo snap remove balicek  # Odstranění balíčku
```

## 🔎 Hledání balíčků
```bash
snap find nazev  # Hledání aplikace v Snap Store
snap info balicek  # Zobrazení detailních informací o balíčku
```

## 🎯 Správa balíčků
```bash
snap list  # Zobrazení nainstalovaných balíčků
snap refresh  # Aktualizace všech nainstalovaných balíčků
snap refresh balicek  # Aktualizace konkrétního balíčku
snap revert balicek  # Návrat k předchozí verzi balíčku
```

## 📁 Správa oprávnění
```bash
snap connections balicek  # Zobrazení oprávnění balíčku
snap disconnect balicek:interface  # Odpojení oprávnění
snap connect balicek:interface  # Připojení oprávnění
```

## 🔄 Správa služby Snap
```bash
sudo systemctl status snapd  # Kontrola, zda Snap běží
sudo systemctl restart snapd  # Restart Snap služby
sudo systemctl enable --now snapd  # Povolení Snap při startu systému
```

## 🗑 Odstranění Snap
```bash
sudo snap remove balicek  # Odstranění balíčku
sudo apt purge snapd  # Kompletní odstranění Snap z Ubuntu
sudo rm -rf /var/lib/snapd /snap /var/snap /var/lib/snapd /var/cache/snapd  # Úplné smazání Snap
```

## 🔄 Alternativy k `snap`
- `flatpak` – Univerzální systém balíčků s lepší integrací do desktopu.
- `AppImage` – Samostatné aplikace běžící bez instalace.
- `dnf`, `apt`, `pacman` – Nativní správci balíčků pro distribuce.

---
💡 **Tip:** Pokud ti Snap nefunguje správně, restartuj službu:
```bash
sudo systemctl restart snapd
```
