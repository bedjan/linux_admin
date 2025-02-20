# MTR – Kombinace ping a traceroute

MTR je nástroj, který kombinuje `ping` a `traceroute` pro analýzu síťové konektivity.

## 🛠 Instalace MTR
```bash
# Debian/Ubuntu
sudo apt install mtr

# Fedora
sudo dnf install mtr

# Arch Linux
sudo pacman -S mtr
```

## 📦 Použití MTR
```bash
mtr IP_adresa  # Sleduje síťovou trasu
mtr --report IP_adresa  # Vytvoří přehledný report
mtr -n IP_adresa  # Zobrazí IP adresy bez DNS jmen
```

## 🔄 Alternativy k MTR
- **Traceroute** – Diagnostika síťových tras.
- **Ping** – Testování dostupnosti serveru.

---
💡 **Tip:** Použitím `mtr -r` získáš přehlednou zprávu o trase paketů.
