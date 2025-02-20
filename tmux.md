# 🚀 `tmux` – Terminálový multiplexor

`tmux` je výkonný nástroj, který umožňuje spravovat více terminálových relací v jedné konzoli. Je ideální pro práci na vzdálených serverech, umožňuje oddělovat a znovu připojovat se k relacím a podporuje rozdělení okna na panely.

## 🛠 Instalace `tmux`
```bash
# Debian/Ubuntu
sudo apt install tmux

# Fedora
sudo dnf install tmux

# Arch Linux
sudo pacman -S tmux

# macOS (Homebrew)
brew install tmux
```

## 🖥 Spuštění `tmux`
```bash
tmux        # Spustí novou relaci
tmux new -s jmeno_sesny  # Spustí novou relaci s názvem
tmux attach -t jmeno_sesny  # Připojí se k existující relaci
tmux list-sessions  # Zobrazí seznam běžících relací
tmux kill-session -t jmeno_sesny  # Ukončí konkrétní relaci
```

## ⌨ Základní klávesové zkratky
Všechny příkazy `tmux` začínají **prefixem**:  
**Výchozí prefix:** `Ctrl + b`

| Klávesa | Akce |
|---------|------|
| `Ctrl + b` `c` | Vytvoří nové okno |
| `Ctrl + b` `n` | Přepne na další okno |
| `Ctrl + b` `p` | Přepne na předchozí okno |
| `Ctrl + b` `w` | Zobrazí seznam oken |
| `Ctrl + b` `&` | Zavře aktuální okno |
| `Ctrl + b` `%` | Rozdělí panel vertikálně |
| `Ctrl + b` `"` | Rozdělí panel horizontálně |
| `Ctrl + b` `o` | Přepne mezi panely |
| `Ctrl + b` `x` | Zavře aktuální panel |
| `Ctrl + b` `d` | Odpojí relaci (běží na pozadí) |

## 🎯 Práce se sezeními
```bash
tmux new -s nazev_sesny  # Vytvoření nové relace
tmux list-sessions  # Seznam běžících relací
tmux attach -t nazev_sesny  # Připojení k relaci
tmux kill-session -t nazev_sesny  # Ukončení relace
```

## ⚙ Přizpůsobení `tmux`
Konfigurační soubor se nachází v:
```bash
~/.tmux.conf
```
Příklad konfigurace pro změnu prefixu a zapnutí myši:
```bash
# Změna prefixu na Ctrl + a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Povolení podpory myši
set -g mouse on
```
Po úpravě konfigurace je nutné ji načíst:
```bash
tmux source-file ~/.tmux.conf
```

## 🔄 Alternativy k `tmux`
- `screen` – starší alternativa s podobnými funkcemi.
- `byobu` – vylepšené rozhraní nad `tmux` nebo `screen`.

---
💡 **Tip:** `tmux` umožňuje **sdílení relace** mezi více uživateli. Použij:
```bash
tmux new-session -s sdilena
tmux attach-session -t sdilena
```
