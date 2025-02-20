# 🚀 `screen` – Terminálový multiplexor

`screen` je terminálový multiplexor umožňující spravovat více terminálových relací v jednom okně. Je obzvláště užitečný pro práci na vzdálených serverech, kde umožňuje odpojit se od běžícího procesu a později se k němu znovu připojit.

## 🛠 Instalace `screen`
```bash
# Debian/Ubuntu
sudo apt install screen

# Fedora
sudo dnf install screen

# Arch Linux
sudo pacman -S screen

# macOS (Homebrew)
brew install screen
```

## 🖥 Spuštění `screen`
```bash
screen        # Spustí novou relaci
screen -S jmeno_sesny  # Spustí novou relaci s názvem
screen -ls   # Zobrazí seznam běžících relací
screen -r jmeno_sesny  # Připojí se k běžící relaci
screen -d -r jmeno_sesny  # Odpojí jinou relaci a připojí se k ní
screen -X -S jmeno_sesny quit  # Ukončí konkrétní relaci
```

## ⌨ Základní klávesové zkratky
Všechny příkazy `screen` začínají **prefixem**:  
**Výchozí prefix:** `Ctrl + a`

| Klávesa | Akce |
|---------|------|
| `Ctrl + a` `c` | Vytvoří nové okno |
| `Ctrl + a` `n` | Přepne na další okno |
| `Ctrl + a` `p` | Přepne na předchozí okno |
| `Ctrl + a` `"` | Zobrazí seznam oken |
| `Ctrl + a` `0-9` | Přepne na konkrétní okno (0-9) |
| `Ctrl + a` `A` | Přejmenuje aktuální okno |
| `Ctrl + a` `d` | Odpojí aktuální relaci (běží na pozadí) |
| `Ctrl + a` `k` | Ukončí aktuální okno |
| `Ctrl + a` `x` | Uzamkne obrazovku |
| `Ctrl + a` `[` | Vstoupí do režimu posouvání (scrollback) |
| `Ctrl + a` `]` | Vloží kopírovaný text |

## 🎯 Práce se sezeními
```bash
screen -S nazev_sesny  # Vytvoření nové relace
screen -ls  # Seznam běžících relací
screen -r nazev_sesny  # Připojení k relaci
screen -d -r nazev_sesny  # Připojení k relaci a odpojení jiného uživatele
screen -X -S nazev_sesny quit  # Ukončení relace
```

## ⚙ Přizpůsobení `screen`
Konfigurační soubor se nachází v:
```bash
~/.screenrc
```
Příklad konfigurace pro zlepšení uživatelského zážitku:
```bash
# Povolení historie posouvání (scrollback buffer)
defscrollback 5000

# Povolení vizuálních stavových informací
caption always "%{= kw}%-w%{= bw}%n %t%{-}%+w"
hardstatus alwayslastline "%{= rw}Screen: %H"

# Povolení podpory myši
termcapinfo xterm* ti@:te@
```
Po úpravě konfigurace stačí spustit `screen`, změny se načtou automaticky.

## 🔄 Alternativy k `screen`
- `tmux` – modernější a flexibilnější alternativa.
- `byobu` – rozšíření `screen` nebo `tmux` s vylepšeným rozhraním.

---
💡 **Tip:** `screen` umožňuje **sdílení relace** mezi více uživateli. Použij:
```bash
screen -S sdilena
screen -x sdilena
```
