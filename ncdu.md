# 🚀 `ncdu` – Interaktivní analýza využití disku

`ncdu` (*NCurses Disk Usage*) je rychlý, interaktivní nástroj pro analýzu využití disku. Nabízí přehledné zobrazení obsazeného místa s možností snadné navigace.

## 🛠 Instalace `ncdu`
```bash
# Debian/Ubuntu
sudo apt install ncdu

# Fedora
sudo dnf install ncdu

# Arch Linux
sudo pacman -S ncdu

# macOS (Homebrew)
brew install ncdu
```

## 🖥 Spuštění `ncdu`
```bash
ncdu        # Analyzuje aktuální adresář
ncdu /home  # Analyzuje adresář /home
ncdu -x /   # Analyzuje pouze aktuální souborový systém
ncdu --exclude cache  # Vyloučí složky obsahující "cache"
```

## ⌨ Klávesové zkratky v `ncdu`
| Klávesa | Akce |
|---------|------|
| `↑ / ↓` | Pohyb mezi soubory |
| `Enter` | Vstoupí do adresáře |
| `d` | Smaže vybraný soubor/adresář |
| `n` | Přepíná mezi velikostí a procentuálním zobrazením |
| `g` | Seřadí podle velikosti |
| `s` | Seřadí podle názvu |
| `q` | Ukončí `ncdu` |

## 📊 Export a analýza dat
```bash
ncdu -o data.json /home  # Uloží analýzu do souboru
ncdu -f data.json  # Načte dříve uloženou analýzu
```

## 🔄 Alternativy k `ncdu`
- `du` – standardní unixový nástroj pro analýzu disku.
- `baobab` – grafický analyzátor využití disku (GNOME).
- `dust` – rychlejší alternativa s lepší čitelností výstupu.

---
💡 **Tip:** Chceš uvolnit místo? Použij `ncdu` k nalezení velkých souborů a smaž je přímo v rozhraní!
