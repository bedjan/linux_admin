# Iostat – Monitorování výkonu CPU a diskových operací

Iostat je nástroj pro analýzu výkonu CPU a diskových operací.

## 🛠 Instalace Iostat
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
iostat  # Zobrazení využití CPU a disků
iostat -d 2 5  # Aktualizace diskových statistik každé 2 sekundy (5x)
iostat -x  # Podrobné informace o I/O operacích
iostat -c  # Pouze informace o CPU
```

## 📦 Výstup příkazu `iostat`
| Sloupec | Význam |
|---------|--------|
| `tps` | Počet přenosů na disk za sekundu |
| `kB_read/s` | Počet KB přečtených za sekundu |
| `kB_wrtn/s` | Počet KB zapsaných za sekundu |
| `%util` | Vytížení disku (100% = plná kapacita) |

## 🔄 Alternativy k Iostat
- **Vmstat** – Základní informace o CPU, paměti a I/O.
- **Iotop** – Interaktivní monitor využití disku procesy.

---
💡 **Tip:** Pro sledování konkrétního disku použij `iostat -p /dev/sda`.
