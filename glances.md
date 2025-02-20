# 🚀 `glances` – Pokročilý systémový monitor

`glances` je výkonný, multiplatformní systémový monitor, který poskytuje přehled o CPU, paměti, disku, síti a dalších systémových metrikách v reálném čase. Oproti `htop` nebo `top` nabízí širší spektrum informací a možnost vzdáleného monitoringu.

## 🛠 Instalace `glances`
```bash
# Debian/Ubuntu
sudo apt install glances

# Fedora
sudo dnf install glances

# Arch Linux
sudo pacman -S glances

# macOS (Homebrew)
brew install glances

# Instalace přes pip (funguje na většině systémů)
pip install glances
```

## 🖥 Spuštění `glances`
```bash
glances        # Spustí glances v základním režimu
glances -t 5   # Nastaví obnovovací frekvenci na 5 sekund
glances -C /path/to/config.conf  # Použití vlastního konfiguračního souboru
glances -B 0.0.0.0  # Spustí webový server pro vzdálený monitoring
```

## ⌨ Klávesové zkratky v `glances`
| Klávesa | Akce |
|---------|------|
| `q` | Ukončení `glances` |
| `h` | Zobrazení nápovědy |
| `1` | Podrobné zobrazení CPU jader |
| `m` | Přepnutí mezi různými režimy využití paměti |
| `d` | Zobrazení I/O operací na disku |
| `n` | Zobrazení síťového provozu |
| `s` | Seřazení procesů podle spotřeby CPU |
| `t` | Seřazení procesů podle spotřeby paměti |
| `i` | Seřazení procesů podle I/O aktivity |
| `l` | Zobrazení logů systému |
| `f` | Zobrazení systémových senzorů |
| `c` | Vymazání upozornění a zpráv |
| `b` | Přepnutí mezi bajty a bity u síťového provozu |

## 🌍 Vzdálený monitoring pomocí webového serveru
Glances lze spustit jako webovou službu:
```bash
glances -w  # Spustí webový server na portu 61208
```
Poté lze přistupovat přes prohlížeč na adrese:
```
http://server-ip:61208/
```

Pro vzdálené monitorování z jiného počítače:
```bash
glances -c server-ip
```

## 📁 Konfigurační soubor
Konfigurační soubor se nachází v:
```bash
~/.config/glances/glances.conf
```
Příklad úpravy pro změnu barevného schématu:
```ini
[colors]
cpu_careful=yellow
cpu_warning=red
```
Načtení konfigurace:
```bash
glances --config ~/.config/glances/glances.conf
```

## 🔄 Alternativy k `glances`
- `htop` – interaktivní monitor procesů.
- `btop` – vizuálně atraktivní alternativa.
- `nmon` – podrobný výkonový monitor pro servery.

---
💡 **Tip:** `glances` může běžet na Raspberry Pi, serverech i běžných počítačích. Pro integraci s API použij:
```bash
glances --export influxdb
```
