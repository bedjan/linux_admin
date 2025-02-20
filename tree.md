# 🌳 `tree` – Zobrazení adresářové struktury v terminálu

`tree` je jednoduchý příkaz pro zobrazení hierarchické struktury souborů a složek v terminálu.

## 🛠 Instalace `tree`
```bash
# Debian/Ubuntu
sudo apt install tree

# Fedora
sudo dnf install tree

# Arch Linux
sudo pacman -S tree

# macOS (Homebrew)
brew install tree
```

## 🖥 Základní použití
```bash
tree        # Zobrazí strukturu aktuálního adresáře
tree /home  # Zobrazí strukturu adresáře /home
tree -L 2   # Omezí zanoření na 2 úrovně
```

## 📑 Užitečné přepínače
| Příkaz | Popis |
|--------|-------|
| `tree -L n` | Omezí hloubku zobrazení na `n` úrovní |
| `tree -d` | Zobrazí pouze složky |
| `tree -f` | Zobrazí úplnou cestu k souborům |
| `tree -a` | Zobrazí i skryté soubory |
| `tree -h` | Přidá lidsky čitelnou velikost souborů |
| `tree -i` | Skryje propojení mezi složkami (čistší výstup) |
| `tree --du` | Zobrazí velikost složek (jako `du`) |
| `tree -P "*.txt"` | Zobrazí pouze soubory odpovídající vzoru |
| `tree --dirsfirst` | Složky zobrazí před soubory |

## 🔍 Příklad použití
```bash
tree -L 2 -d --dirsfirst
```
**Výstup:**
```
.
├── Dokumenty
│   ├── Projekty
│   ├── Práce
│   └── Osobní
├── Stažené
├── Obrázky
└── Videa
```

## 📄 Uložení výstupu do souboru
```bash
tree -L 2 > stromova_struktura.txt
```

## 🔄 Alternativy k `tree`
- `ls -R` – Rekurzivní výpis souborů.
- `find . -type d` – Zobrazení pouze adresářů.
- `exa --tree` – Barevný a vylepšený výpis (potřebuje `exa`).

---
💡 **Tip:** Chceš vizualizovat složky bez souborů? Použij `tree -d`.
