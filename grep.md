# Grep – Vyhledávání textu v souborech

Grep je nástroj pro vyhledávání řetězců v textových souborech pomocí regulárních výrazů.

## 🛠 Instalace Grep
```bash
# Debian/Ubuntu
sudo apt install grep

# Fedora
sudo dnf install grep

# Arch Linux
sudo pacman -S grep
```

## 📦 Základní použití
```bash
grep "hledaný_text" soubor.txt  # Vyhledání řetězce v souboru
grep -i "text" soubor.txt  # Ignorování velikosti písmen
grep -r "text" /cesta/k/slozce  # Rekurzivní hledání v adresáři
grep -v "text" soubor.txt  # Vynechání řádků obsahujících text
```

## 🔄 Alternativy k Grep
- **Ag (Silver Searcher)** – Rychlejší alternativa k Grep.
- **Ripgrep (rg)** – Extrémně rychlý vyhledávač.

---
💡 **Tip:** Pro zobrazení čísel řádků použij `grep -n`.
