# 🚀 `pacman` – Správa balíčků v Arch Linuxu

`pacman` (*Package Manager*) je výchozí správce balíčků pro Arch Linux a jeho deriváty (např. Manjaro). Umožňuje instalaci, aktualizaci, odstranění a správu softwaru.

## 🛠 Aktualizace systému
```bash
sudo pacman -Sy    # Aktualizace seznamu balíčků
sudo pacman -Syu   # Aktualizace všech balíčků v systému
sudo pacman -Syuu  # Downgrade balíčků podle repozitářů
```

## 📦 Instalace a odstranění balíčků
```bash
sudo pacman -S balicek  # Instalace balíčku
sudo pacman -S balicek1 balicek2  # Instalace více balíčků
sudo pacman -R balicek  # Odstranění balíčku (ponechá závislosti)
sudo pacman -Rs balicek  # Odstranění balíčku a nepoužívaných závislostí
sudo pacman -Rnsc balicek  # Odstranění balíčku včetně konfigurace a závislostí
```

## 🔎 Hledání balíčků
```bash
pacman -Ss nazev  # Hledání balíčku v repozitářích
pacman -Qs nazev  # Hledání nainstalovaného balíčku
pacman -Qi balicek  # Zobrazení informací o nainstalovaném balíčku
pacman -Qil balicek  # Zobrazení seznamu souborů v balíčku
```

## 📁 Práce s cache a čištění
```bash
sudo pacman -Sc  # Smaže starší verze balíčků v cache
sudo pacman -Scc  # Smaže celou cache (pozor, nevratné!)
sudo pacman -Rns $(pacman -Qdtq)  # Odstraní sirotčí balíčky
```

## 🔄 Instalace lokálních `.pkg.tar.zst` balíčků
```bash
sudo pacman -U balicek.pkg.tar.zst  # Instalace lokálního balíčku
```

## 🔄 Oprava poškozené instalace
```bash
sudo pacman -Qk  # Zkontroluje integritu balíčků
sudo pacman -Syyu  # Vynucená aktualizace seznamu a balíčků
sudo pacman -S --needed base-devel  # Reinstalace základních nástrojů
```

## 📝 Správa repozitářů
```bash
sudo pacman -Sl  # Výpis všech balíčků v repozitářích
sudo pacman-mirrors --fasttrack  # Obnova a výběr nejrychlejších zrcadel (Manjaro)
```

## 📦 AUR (Arch User Repository)
AUR balíčky nejsou spravovány `pacman`, ale lze je instalovat pomocí `yay` nebo `paru`:
```bash
yay -S balicek  # Instalace balíčku z AUR
paru -S balicek  # Alternativa k yay
```

## 🔄 Alternativy k `pacman`
- `yay` – Správce AUR balíčků.
- `paru` – Lehká alternativa k `yay`.
- `flatpak` – Univerzální správce aplikací.
- `snap` – Alternativní správce balíčků.

---
💡 **Tip:** Pro rychlou aktualizaci systému použij:
```bash
sudo pacman -Syu --noconfirm
```
