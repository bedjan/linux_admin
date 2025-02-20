# 🚀 `bat` – Barevná a vylepšená alternativa `cat`

`bat` je moderní alternativa k `cat`, která přidává zvýraznění syntaxe, číslování řádků a podporu Git.

## 🛠 Instalace `bat`
```bash
# Debian/Ubuntu
sudo apt install bat

# Fedora
sudo dnf install bat

# Arch Linux
sudo pacman -S bat

# macOS (Homebrew)
brew install bat
```

💡 **Poznámka:** Na některých systémech (`Ubuntu`, `Debian`) se `bat` instaluje jako `batcat`, takže můžeš vytvořit alias:
```bash
alias bat="batcat"
```

## 🖥 Základní použití
```bash
bat soubor.txt   # Barevné zobrazení souboru
bat -n soubor.txt   # Zobrazí čísla řádků
bat -p soubor.txt   # Zobrazení bez čísel řádků a zalamování
bat --style=plain   # Čistý výstup bez barev a okrajů
```

## 📑 Užitečné přepínače
| Příkaz | Popis |
|--------|-------|
| `bat -n` | Přidá čísla řádků |
| `bat -p` | Zobrazí obsah souboru bez formátování |
| `bat -A` | Zobrazí všechny znaky (včetně netisknutelných) |
| `bat --paging=never` | Zakáže stránkování (užitečné pro pipe) |
| `bat --theme=gruvbox-dark` | Použití jiného barevného schématu |
| `bat --list-themes` | Výpis dostupných barevných schémat |
| `bat --style=plain` | Čistý výstup bez okrajů a číslování |
| `bat --diff` | Zvýraznění rozdílů mezi verzemi souboru |

## 🔍 Zobrazení obsahu složky s `bat`
```bash
bat /etc
```
Tento příkaz funguje podobně jako `ls`, ale zobrazí i krátký náhled souborů.

## 🛠 Použití s dalšími příkazy
```bash
cat soubor.txt | bat   # Barevné zobrazení výstupu
bat soubor.txt | grep "hledany_text"   # Hledání v barevném výstupu
bat -P /etc | less   # Barevné zobrazení s stránkováním
```

## 🎨 Použití různých barevných schémat
```bash
bat --list-themes   # Seznam dostupných motivů
bat --theme=Dracula soubor.txt
```

## 🔄 Alternativy k `bat`
- `cat` – základní příkaz pro zobrazení obsahu souboru.
- `less` – stránkování obsahu souboru.
- `highlight` – samostatný nástroj pro zvýraznění syntaxe.

---
💡 **Tip:** Pokud používáš `bat` často, přidej alias do `~/.bashrc` nebo `~/.zshrc`:
```bash
alias cat="bat"
```
