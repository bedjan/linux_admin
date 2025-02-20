# Iptables – Pokročilá správa firewallu

Iptables je nástroj pro filtrování paketů a správu síťového provozu v Linuxu.

## 🛠 Instalace Iptables
```bash
# Debian/Ubuntu
sudo apt install iptables

# Fedora
sudo dnf install iptables

# Arch Linux
sudo pacman -S iptables
```

## 📦 Základní pravidla Iptables
```bash
# Povolení SSH přístupu
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT  

# Blokování IP adresy
sudo iptables -A INPUT -s 192.168.1.100 -j DROP  

# Povolení veškerého odchozího provozu
sudo iptables -A OUTPUT -j ACCEPT  

# Zobrazení aktuálních pravidel
sudo iptables -L -v -n  
```

## 📦 Uložení a obnova pravidel
```bash
sudo iptables-save > /etc/iptables.rules  
sudo iptables-restore < /etc/iptables.rules  
```

## 🔄 Alternativy k Iptables
- **UFW** – Jednodušší alternativa k Iptables.
- **Firewalld** – Dynamická správa firewallu.

---
💡 **Tip:** Pro povolení pouze SSH spojení a blokování všeho ostatního:
```bash
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```
