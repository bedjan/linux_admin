# 📌 Nejčastější příkazy a využití `htop`

`htop` je interaktivní nástroj pro sledování systémových procesů a využití zdrojů v reálném čase. Je oblíbenou alternativou k `top`, protože nabízí barevné zobrazení, možnost posouvání a interaktivní správu procesů.

## 🛠 Instalace `htop`
```bash
# Debian/Ubuntu
sudo apt install htop

# Fedora
sudo dnf install htop

# Arch Linux
sudo pacman -S htop

# macOS (Homebrew)
brew install htop
```

## 🖥 Spuštění `htop`
```bash
htop       # Spustí nástroj
htop -d 10 # Aktualizace každých 10 desetin sekundy (výchozí je 15)
htop -u user # Zobrazí pouze procesy uživatele "user"
htop -p PID # Zobrazí pouze procesy s daným PID
```

## ⌨ Klávesové zkratky v `htop`
| Klávesa | Akce |
|---------|------|
| `F1` | Zobrazí nápovědu |
| `F2` | Konfigurace `htop` |
| `F3` | Vyhledávání procesu |
| `F4` | Filtrace procesů |
| `F5` | Stromový pohled na procesy |
| `F6` | Změna řazení procesů |
| `F7` | Snížení priority (niceness) procesu |
| `F8` | Zvýšení priority procesu |
| `F9` | Ukončení procesu (kill) |
| `F10` | Ukončení `htop` |

## 📊 Zobrazené informace v `htop`
- **Využití CPU** – Barevně zobrazuje vytížení procesoru.
- **Využití RAM a Swap** – Informace o využití paměti.
- **Seznam procesů** – Seznam všech běžících procesů s detaily (PID, uživatel, CPU %, MEM %, příkaz).
- **Load Average** – Průměrné zatížení systému.

## 🔎 Filtrování a hledání procesů
```bash
# Vyhledávání procesu
htop
# Stiskněte F3 a napište název procesu

# Zobrazení pouze procesů konkrétního uživatele
htop -u username
```

## 🛑 Správa procesů
- **Zabít proces**: Vyberte proces, stiskněte `F9` a zvolte signál (`SIGTERM` nebo `SIGKILL`).
- **Změna priority procesu**: Vyberte proces, použijte `F7` nebo `F8` pro změnu "niceness" hodnoty.

## 🔄 Alternativy k `htop`
- `top` – základní systémový monitor.
- `glances` – pokročilejší monitorovací nástroj.
- `nmon` – zaměřený na detailní statistiky výkonu.

---
💡 **Tip:** `htop` podporuje myš! Klikáním můžete vybírat a spravovat procesy.

