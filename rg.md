# Ripgrep – Extrémně rychlý vyhledávač

Ripgrep (rg) je nejrychlejší vyhledávač textu, optimalizovaný pro velké projekty.

## 🛠 Instalace Ripgrep
```bash
# Debian/Ubuntu
sudo apt install ripgrep

# Fedora
sudo dnf install ripgrep

# Arch Linux
sudo pacman -S ripgrep
```

## 📦 Základní použití
```bash
rg "hledaný_text"  # Vyhledání textu v aktuálním adresáři
rg -i "text"  # Ignorování velikosti písmen
rg --hidden "text"  # Vyhledávání i ve skrytých souborech
rg -t js "text"  # Vyhledávání pouze v souborech JavaScriptu
```

## 🔄 Alternativy k Ripgrep
- **Ag (Silver Searcher)** – Rychlý vyhledávač.
- **Grep** – Tradiční vyhledávač.

---
💡 **Tip:** Ripgrep je standardně rychlejší než Ag i Grep díky paralelnímu zpracování.
