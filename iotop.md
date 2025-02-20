# 🚀 `iotop` – Monitorování využití disku procesy

`iotop` je interaktivní nástroj pro sledování využití disku jednotlivými procesy v reálném čase. Funguje podobně jako `top` nebo `htop`, ale zaměřuje se na vstupně-výstupní operace na disku.

## 🛠 Instalace `iotop`
```bash
# Debian/Ubuntu
sudo apt install iotop

# Fedora
sudo dnf install iotop

# Arch Linux
sudo pacman -S iotop
```

## 🖥 Spuštění `iotop`
```bash
sudo iotop        # Zobrazení procesů zapisujících na disk
sudo iotop -o     # Zobrazení pouze procesů aktivně využívajících disk
sudo iotop -a     # Zobrazení kumulativního využití disku procesy
sudo iotop -P     # Skrytí vláken, zobrazení pouze hlavních procesů
sudo iotop -d 5   # Aktualizace každých 5 sekund
```

## ⌨ Klávesové zkratky v `iotop`
| Klávesa | Akce |
|---------|------|
| `↑ / ↓` | Pohyb mezi procesy |
| `r` | Přepínání mezi režimem čtení/zápisu |
| `o` | Zobrazení pouze aktivních procesů |
| `p` | Přepnutí mezi zobrazením procesů a vláken |
| `a` | Přepnutí na kumulativní režim |
| `q` | Ukončení `iotop` |

## 🔄 Alternativy k `iotop`
- `iostat` – poskytuje podrobnější statistiky o diskových operacích.
- `dstat` – zobrazí statistiky CPU, RAM, disku a sítě v reálném čase.
- `atop` – pokročilý monitorovací nástroj zobrazující informace o disku, CPU, paměti a síti.

---
💡 **Tip:** `iotop` vyžaduje oprávnění **root**. Pokud nechceš zadávat `sudo` pokaždé, můžeš použít:
```bash
sudo chmod +s /usr/sbin/iotop
```
