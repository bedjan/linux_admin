# 🚀 `btop` – Pokročilý systémový monitor

`btop` je výkonný a vizuálně atraktivní systémový monitor, který zobrazuje využití CPU, paměti, disku, síťového provozu a procesů v reálném čase. Je modernější alternativou k `htop` a `top`.

## 🛠 Instalace `btop`
```bash
# Debian/Ubuntu
sudo apt install btop

# Fedora
sudo dnf install btop

# Arch Linux
sudo pacman -S btop

# macOS (Homebrew)
brew install btop

# Windows (scoop)
scoop install btop
```

## 🖥 Spuštění `btop`
```bash
btop       # Spustí btop s výchozí konfigurací
btop --utf-force  # Vynutí použití UTF-8
btop --debug      # Spustí v ladicím režimu
```

## ⚙ Hlavní funkce `btop`
- Dynamické zobrazení **CPU, RAM, swapu, disku a síťového provozu**.
- Stromové zobrazení procesů.
- Podpora myši i klávesnice.
- Možnost přizpůsobení přes konfigurační soubor.

## 📁 Konfigurační soubor
Konfigurační soubor se nachází v:
```bash
~/.config/btop/btop.conf
```
Lze ho upravit ručně nebo změnit přímo v rozhraní `btop`.

## ⌨ Klávesové zkratky v `btop`
| Klávesa | Akce |
|---------|------|
| `?` | Zobrazí nápovědu |
| `Esc/q` | Ukončí `btop` |
| `Enter` | Podrobnosti o vybraném procesu |
| `← / →` | Přepínání mezi panely |
| `F2` | Nastavení |
| `F9` | Zabít vybraný proces |

## 🔄 Alternativy k `btop`
- `htop` – populární interaktivní správce procesů.
- `glances` – monitorovací nástroj s více funkcemi.
- `nmon` – zaměřený na výkon systému.

---
💡 **Tip:** `btop` podporuje **barevná schémata**! Můžeš je změnit v nastavení (`F2`).
