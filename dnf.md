# 🚀 `dnf` – Správa balíčků v Fedora, RHEL, CentOS

`dnf` (*Dandified Yum*) je správce balíčků používaný v distribucích Fedora, RHEL a CentOS. Umožňuje instalaci, aktualizaci, odstranění a správu softwaru.

## 🛠 Aktualizace systému
```bash
sudo dnf check-update  # Zkontroluje dostupné aktualizace
sudo dnf update  # Aktualizuje všechny balíčky
sudo dnf upgrade  # Alternativa k `update` (doporučeno)
sudo dnf distro-sync  # Synchronizace verzí balíčků s repozitáři
```

## 📦 Instalace a odstranění balíčků
```bash
sudo dnf install balicek  # Instalace balíčku
sudo dnf install balicek1 balicek2  # Instalace více balíčků
sudo dnf remove balicek  # Odstranění balíčku
sudo dnf erase balicek  # Alternativa k `remove`
```

## 🔎 Hledání balíčků
```bash
dnf search nazev  # Hledání balíčku podle názvu
dnf info balicek  # Zobrazení detailních informací o balíčku
dnf list --installed  # Výpis všech nainstalovaných balíčků
dnf list available  # Výpis všech dostupných balíčků
dnf list balicek  # Kontrola, zda je balíček nainstalován nebo dostupný
```

## 📁 Práce s repozitáři
```bash
sudo dnf repolist  # Zobrazí seznam aktivních repozitářů
sudo dnf repolist all  # Zobrazí všechny dostupné repozitáře
sudo dnf config-manager --add-repo URL  # Přidání vlastního repozitáře
sudo dnf config-manager --set-disabled repo-id  # Zakázání repozitáře
sudo dnf config-manager --set-enabled repo-id  # Povolení repozitáře
```

## 🔄 Práce s cache a čištění
```bash
sudo dnf clean packages  # Odstraní stažené balíčky
sudo dnf clean all  # Vyčistí cache všech repozitářů
sudo dnf autoremove  # Odstraní nepotřebné balíčky
```

## 📝 Instalace a správa skupin balíčků
```bash
dnf group list  # Zobrazí dostupné skupiny balíčků
sudo dnf groupinstall "Development Tools"  # Instalace skupiny balíčků
sudo dnf groupremove "Development Tools"  # Odstranění skupiny balíčků
```

## 📦 Instalace balíčků `.rpm`
```bash
sudo dnf install balicek.rpm  # Instalace lokálního RPM balíčku
sudo dnf localinstall balicek.rpm  # Alternativa k `install`
```

## 🔄 Alternativy k `dnf`
- `yum` – Starší verze správce balíčků (stále dostupná v RHEL/CentOS).
- `rpm` – Přímá manipulace s `.rpm` balíčky.
- `flatpak` – Alternativní systém balíčků.
- `snap` – Další univerzální správce aplikací.

---
💡 **Tip:** Pro rychlou aktualizaci systému použij:
```bash
sudo dnf upgrade --refresh -y
```

