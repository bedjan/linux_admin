# Cron – Plánování opakovaných úloh

Cron je služba v Linuxu umožňující plánování a automatizaci opakovaných úloh.

## 🛠 Instalace Cron
```bash
# Debian/Ubuntu
sudo apt install cron

# Fedora
sudo dnf install cronie
sudo systemctl enable --now crond

# Arch Linux
sudo pacman -S cronie
sudo systemctl enable --now cronie
```

## 📦 Použití Cron
```bash
crontab -e  # Úprava uživatelského cron souboru
crontab -l  # Zobrazení aktuálního cron souboru
```

## 📦 Formát crontab
```
* * * * * příkaz
| | | | |
| | | | └── Den v týdnu (0-7, neděle=0 nebo 7)
| | | └──── Měsíc (1-12)
| | └────── Den v měsíci (1-31)
| └──────── Hodina (0-23)
└────────── Minuta (0-59)
```

## 📦 Příklad naplánovaných úloh
```bash
30 7 * * * /home/user/skript.sh  # Spustí skript každý den v 7:30
0 */3 * * * /home/user/zalohuj.sh  # Spustí každé 3 hodiny
```

## 🔄 Alternativy k Cron
- **Systemd timers** – Modernější alternativa k Cronu.
- **At** – Naplánování jednorázových úloh.

---
💡 **Tip:** Pro výpis všech aktivních úloh použij `crontab -l`.
