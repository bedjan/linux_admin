# Iperf – Testování rychlosti sítě

Iperf je nástroj pro měření propustnosti sítě mezi dvěma body.

## 🛠 Instalace Iperf
```bash
# Debian/Ubuntu
sudo apt install iperf3

# Fedora
sudo dnf install iperf3

# Arch Linux
sudo pacman -S iperf3
```

## 📦 Použití Iperf
```bash
# Spuštění serveru
iperf3 -s  

# Spuštění klienta a test proti serveru
iperf3 -c IP_serveru  

# Test ve směru od klienta k serveru (TCP)
iperf3 -c IP_serveru -p 5201 -t 30  

# Test UDP spojení
iperf3 -u -c IP_serveru  
```

## 🔄 Alternativy k Iperf
- **Speedtest-cli** – Test rychlosti internetu.
- **MTR** – Diagnostika síťových tras.

---
💡 **Tip:** Iperf lze použít k testování latence a paketové ztráty při UDP přenosu.
