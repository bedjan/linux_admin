# Pip – Správce balíčků pro Python

Pip je správce balíčků pro Python, umožňující instalaci, aktualizaci a správu Python knihoven.

## 🛠 Instalace Pip
```bash
# Debian/Ubuntu
sudo apt install python3-pip

# Fedora
sudo dnf install python3-pip

# Arch Linux
sudo pacman -S python-pip
```

## 📦 Základní použití
```bash
pip install balicek  # Instalace balíčku
pip install --upgrade balicek  # Aktualizace balíčku
pip uninstall balicek  # Odinstalace balíčku
pip list  # Zobrazení nainstalovaných balíčků
```

## 🔄 Alternativy k Pip
- **Conda** – Správce balíčků pro vědecké výpočty v Pythonu.
- **Poetry** – Pokročilá správa závislostí v Pythonu.

---
💡 **Tip:** Použij `pip freeze > requirements.txt` k uložení seznamu balíčků.
