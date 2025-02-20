# 🚀 `mc` – Midnight Commander (Správce souborů v terminálu)

`mc` (*Midnight Commander*) je textový dvoupanelový správce souborů inspirovaný Norton Commanderem. Umožňuje snadnou navigaci a správu souborů v terminálu.

## 🛠 Instalace `mc`
```bash
# Debian/Ubuntu
sudo apt install mc

# Fedora
sudo dnf install mc

# Arch Linux
sudo pacman -S mc

# macOS (Homebrew)
brew install mc
```

## 🖥 Spuštění `mc`
```bash
mc        # Spustí Midnight Commander
mc -d     # Spustí bez subshellu (užitečné při problémech s terminálem)
mc -c     # Spustí v barevném režimu (standardně zapnuto)
mc -b     # Spustí v černobílém režimu
```

## ⌨ Klávesové zkratky v `mc`
| Klávesa | Akce |
|---------|------|
| `F1` | Nápověda |
| `F2` | Nabídka akcí (např. komprimace, extrakce) |
| `F3` | Zobrazení souboru (viewer) |
| `F4` | Úprava souboru (editor) |
| `F5` | Kopírování souboru/adresáře |
| `F6` | Přesunutí/rename souboru/adresáře |
| `F7` | Vytvoření nového adresáře |
| `F8` | Smazání souboru/adresáře |
| `F9` | Aktivace horního menu |
| `F10` | Ukončení `mc` |
| `Tab` | Přepnutí mezi panely |
| `Insert` | Označení souboru/adresáře |
| `Ctrl + x c` | Otevření terminálu v aktuálním adresáři |

## 🎯 Práce se soubory
- **Kopírování souborů**: Vyber soubor (`Insert`) → `F5`
- **Přesouvání souborů**: Vyber soubor (`Insert`) → `F6`
- **Mazání souborů**: Vyber soubor (`Insert`) → `F8`
- **Zobrazení souboru**: `F3`
- **Editace souboru**: `F4`

## 🔎 Vyhledávání souborů
```bash
mc
# V `mc` stiskni `Ctrl + s` pro rychlé vyhledávání
# Nebo `Ctrl + Shift + f` pro pokročilé vyhledávání
```

## ⚙ Konfigurace `mc`
Konfigurační soubor se nachází v:
```bash
~/.config/mc/ini
```
Příklad konfigurace pro změnu barevného schématu:
```ini
[Colors]
base_color=green,black
selected_color=yellow,blue
```
Načtení konfigurace:
```bash
mc --config ~/.config/mc/ini
```

## 📦 Komprese a dekomprese souborů
- **Rozbalení archivu**: Vyber soubor → `Enter`
- **Komprese souboru**: Vyber soubor → `F2` → `Compress`

## 🔄 Alternativy k `mc`
- `ranger` – moderní správa souborů v terminálu s podporou myši.
- `vifm` – textový dvoupanelový manažer inspirovaný Vimem.
- `lf` – minimalistický správce souborů.

---
💡 **Tip:** `mc` podporuje **myš**! Klikáním můžeš otevírat složky a spravovat soubory.
