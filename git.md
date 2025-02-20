# Git – Systém pro správu verzí

Git je distribuovaný systém pro správu verzí kódu, umožňující efektivní spolupráci na projektech.

## 🛠 Instalace Gitu
```bash
# Debian/Ubuntu
sudo apt install git

# Fedora
sudo dnf install git

# Arch Linux
sudo pacman -S git
```

## 📦 Základní použití
```bash
git init  # Inicializace nového repozitáře
git clone URL  # Klonování existujícího repozitáře
git add soubor.txt  # Přidání souboru do změn
git commit -m "Popis změny"  # Uložení změn
git push origin main  # Odeslání změn na vzdálený repozitář
git pull origin main  # Stažení změn z repozitáře
```

## 🔄 Alternativy k Gitu
- **Mercurial** – Alternativní systém správy verzí.
- **Subversion (SVN)** – Centralizovaný systém verzování.

---
💡 **Tip:** Pro kontrolu konfigurace použij `git config --list`.
