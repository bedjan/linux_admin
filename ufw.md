# UFW – Jednoduchá správa firewallu

UFW (*Uncomplicated Firewall*) je nástroj pro správu firewallu v Linuxu, zaměřený na jednoduchost.

## 🛠 Instalace UFW
```bash
# Debian/Ubuntu
sudo apt install ufw

# Fedora (není výchozí)
sudo dnf install ufw
```

## 📦 Použití UFW
```bash
sudo ufw enable  # Aktivace firewallu
sudo ufw disable  # Deaktivace firewallu
sudo ufw status  # Zobrazení stavu firewallu
```

## 📦 Povolení/Blokování pravidel
```bash
sudo ufw allow 22  # Povolení SSH přístupu
sudo ufw allow 80/tcp  # Povolení HTTP
sudo ufw deny 3306  # Blokování MySQL portu
sudo ufw delete allow 22  # Odebrání pravidla
```

## 🔄 Alternativy k UFW
- **Iptables** – Pokročilý nástroj pro správu firewallu.
- **Firewalld** – Dynamický firewall v Red Hat/Fedora.

---
💡 **Tip:** Pro povolení všech příchozích SSH spojení použij `sudo ufw allow OpenSSH`.
