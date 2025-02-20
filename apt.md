# 🚀 `apt` – Správa balíčků v Debian/Ubuntu

`apt` (*Advanced Package Tool*) je správce balíčků používaný v distribucích Debian a Ubuntu. Umožňuje instalaci, aktualizaci, odstranění a správu softwaru.

## 🛠 Aktualizace seznamu balíčků
```bash
sudo apt update  # Aktualizuje seznam dostupných balíčků
sudo apt upgrade  # Aktualizuje všechny nainstalované balíčky
sudo apt full-upgrade  # Aktualizuje i balíčky se změnami závislostí
sudo apt autoremove  # Odstraní nepotřebné balíčky
sudo apt clean  # Vymaže cache stažených balíčků
```

## 📦 Instalace a odstranění balíčků
```bash
sudo apt install balicek  # Instalace balíčku
sudo apt install balicek1 balicek2  # Instalace více balíčků
sudo apt remove balicek  # Odstranění balíčku (ponechá konfiguraci)
sudo apt purge balicek  # Odstranění balíčku včetně konfigurace
```

## 🔎 Hledání balíčků
```bash
apt search nazev  # Vyhledání balíčku
apt show balicek  # Zobrazení informací o balíčku
dpkg -l | grep balicek  # Kontrola, zda je balíček nainstalován
```

## 🎯 Správa repozitářů
```bash
sudo add-apt-repository ppa:repo/ppa  # Přidání PPA repozitáře
sudo apt update  # Aktualizace seznamu po přidání PPA
sudo apt remove --purge ppa:repo/ppa  # Odebrání PPA repozitáře
```

## 📁 Práce s balíčky `deb`
```bash
sudo dpkg -i balicek.deb  # Instalace lokálního .deb balíčku
sudo apt install -f  # Oprava chybějících závislostí po instalaci .deb
sudo dpkg -r balicek  # Odstranění balíčku nainstalovaného přes dpkg
```

## 🔄 Odstranění starých balíčků
```bash
sudo apt autoremove  # Odstranění nepotřebných balíčků
sudo apt autoclean  # Vymazání starých stažených balíčků
sudo apt clean  # Vymazání celé cache balíčků
```

## 🔄 Alternativy k `apt`
- `apt-get` – Starší verze `apt`, stále funkční.
- `dpkg` – Nižší úroveň správy `.deb` balíčků.
- `snap` – Správce univerzálních balíčků (Ubuntu).
- `flatpak` – Alternativní správce aplikací.

---
💡 **Tip:** Pro aktualizaci systému na jedno kliknutí použij:
```bash
sudo apt update && sudo apt upgrade -y
```
