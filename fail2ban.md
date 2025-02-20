# Fail2ban – Ochrana proti brute-force útokům

Fail2ban chrání systém proti neúspěšným pokusům o přihlášení blokováním IP adres.

## 🛠 Instalace Fail2ban
```bash
# Debian/Ubuntu
sudo apt install fail2ban

# Fedora
sudo dnf install fail2ban

# Arch Linux
sudo pacman -S fail2ban
```

## 📦 Konfigurace Fail2ban
```bash
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local  
sudo nano /etc/fail2ban/jail.local  
```
Přidej nebo uprav:
```ini
[sshd]
enabled = true
bantime = 600
findtime = 300
maxretry = 3
```

## 📦 Správa služby Fail2ban
```bash
sudo systemctl start fail2ban  
sudo systemctl enable fail2ban  
sudo fail2ban-client status  
sudo fail2ban-client status sshd  
sudo fail2ban-client unban IP_ADRESA  
```

## 🔄 Alternativy k Fail2ban
- **DenyHosts** – Blokování SSH brute-force útoků.
- **UFW** – Jednoduchá správa firewallu.

---
💡 **Tip:** Fail2ban lze použít i pro ochranu webového serveru, např. `fail2ban-client status apache-auth`.
