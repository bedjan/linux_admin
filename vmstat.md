# Vmstat – Statistika využití CPU, paměti a disků

Vmstat (*Virtual Memory Statistics*) poskytuje přehled o využití CPU, RAM, stránkování a diskových operacích.

## 🛠 Instalace Vmstat
```bash
# Debian/Ubuntu
sudo apt install sysstat

# Fedora
sudo dnf install sysstat

# Arch Linux
sudo pacman -S sysstat
```

## 📦 Základní použití
```bash
vmstat  # Zobrazí okamžité statistiky
vmstat 2 10  # Aktualizuje statistiky každé 2 sekundy, 10krát
vmstat -s  # Podrobné statistiky systému
vmstat -d  # Informace o disku
```

## 📦 Výstup příkazu `vmstat`
| Sloupec | Význam |
|---------|--------|
| `r` | Počet procesů čekajících na CPU |
| `b` | Počet procesů ve stavu spánku |
| `swpd` | Virtuální paměť použitá (swap) |
| `free` | Volná paměť RAM |
| `si / so` | Rychlost přenosu dat ze/na swap |
| `bi / bo` | I/O operace (bloky čtené/zapsané) |
| `us / sy / id` | CPU využití uživatelskými procesy, systémem a nečinnost |

## 🔄 Alternativy k Vmstat
- **Top/Htop** – Interaktivní monitor výkonu.
- **Glances** – Pokročilý monitoring systému.

---
💡 **Tip:** Pro kontinuální sledování použij `vmstat 1` (aktualizace každou sekundu).
