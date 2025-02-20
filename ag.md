# Ag – Silver Searcher (Rychlejší alternativa k Grep)

Ag je vysoce optimalizovaný nástroj pro vyhledávání textu v souborech, mnohem rychlejší než Grep.

## 🛠 Instalace Ag
```bash
# Debian/Ubuntu
sudo apt install silversearcher-ag

# Fedora
sudo dnf install the_silver_searcher

# Arch Linux
sudo pacman -S the_silver_searcher
```

## 📦 Základní použití
```bash
ag "hledaný_text"  # Vyhledání textu v aktuálním adresáři
ag -i "text"  # Ignorování velikosti písmen
ag --hidden "text"  # Vyhledávání i ve skrytých souborech
ag --ignore "*.log" "text"  # Vynechání souborů s příponou .log
```

## 🔄 Alternativy k Ag
- **Ripgrep (rg)** – Ještě rychlejší než Ag.
- **Grep** – Tradiční nástroj pro vyhledávání.

---
💡 **Tip:** Ag automaticky ignoruje soubory ve `.gitignore`.
