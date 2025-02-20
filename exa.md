# 🚀 `exa` – Barevná a moderní alternativa k `ls`

`exa` je vylepšený příkaz pro výpis souborů v terminálu. Nabízí barvy, podporu Git, zobrazení stromové struktury a další funkce, které `ls` nemá.

## 🛠 Instalace `exa`
```bash
# Debian/Ubuntu
sudo apt install exa

# Fedora
sudo dnf install exa

# Arch Linux
sudo pacman -S exa

# macOS (Homebrew)
brew install exa
```

## 🖥 Základní použití
```bash
exa        # Barevný výpis souborů (alternativa `ls`)
exa -l     # Podrobný výpis souborů (alternativa `ls -l`)
exa -a     # Zobrazí i skryté soubory (alternativa `ls -a`)
exa -h     # Zobrazí lidsky čitelnou velikost souborů
exa -T     # Zobrazí soubory ve stromové struktuře
```

## 📑 Užitečné přepínače
| Příkaz | Popis |
|--------|-------|
| `exa -l` | Podrobný výpis souborů |
| `exa -a` | Zobrazí i skryté soubory |
| `exa -h` | Přidá lidsky čitelnou velikost souborů |
| `exa -T` | Zobrazí stromovou strukturu složek |
| `exa --long --git` | Zobrazí podrobnosti včetně informací z Gitu |
| `exa -s=size` | Seřadí soubory podle velikosti |
| `exa -r` | Seřadí soubory sestupně |
| `exa --color=always` | Vynutí barevný výstup |
| `exa --icons` | Přidá ikonky souborů (potřebuje Nerd Fonts) |

## 🌳 Výpis stromové struktury
```bash
exa -T -L 2
```
**Výstup:**
```
.
├── Dokumenty
│   ├── Projekt1
│   ├── Projekt2
│   └── Poznámky.txt
├── Stažené
└── Obrázky
```

## 🛠 Použití s Git
```bash
exa -l --git   # Zobrazení Git metadat
exa --git-ignore  # Skryje soubory ignorované Gitem
```

## 📄 Uložení výstupu do souboru
```bash
exa -T -L 2 > struktura.txt
```

## 🔄 Alternativy k `exa`
- `ls` – Základní výpis souborů v Linuxu.
- `tree` – Vizualizace složek v hierarchii.
- `lsd` – Další moderní náhrada `ls` s podporou ikon.

---
💡 **Tip:** Pro zobrazení ikon souborů si nainstaluj **Nerd Fonts** a spusť `exa --icons`.
