# Iftop – Monitorování síťového provozu

Iftop je interaktivní nástroj pro sledování síťového provozu v reálném čase.

## 🛠 Instalace Iftop
```bash
# Debian/Ubuntu
sudo apt install iftop

# Fedora
sudo dnf install iftop

# Arch Linux
sudo pacman -S iftop
```

## 📦 Základní použití
```bash
sudo iftop  # Spustí sledování síťového provozu
sudo iftop -i eth0  # Monitoruje konkrétní síťové rozhraní
sudo iftop -P  # Zobrazuje IP adresy a porty
sudo iftop -B  # Přepnutí do zobrazení v bajtech místo bitů
```

## 📦 Klávesové zkratky v Iftop
| Klávesa | Akce |
|---------|------|
| `q` | Ukončení iftop |
| `t` | Přepnutí zobrazení TX/RX provozu |
| `n` | Přepínání mezi IP adresami a hostname |
| `s` | Seřazení provozu podle přenesených dat |
| `p` | Zobrazení portů |

## 🔄 Alternativy k Iftop
- **Nload** – Grafické zobrazení síťového provozu.
- **Bmon** – Pokročilé sledování sítě.

---
💡 **Tip:** Spuštění `sudo iftop -i wlan0` sleduje WiFi síťový provoz.
