# Systemctl – Správa služeb a procesů

Systemctl je nástroj pro správu služeb v Linuxu pomocí `systemd`.

## 🛠 Instalace Systemctl
Systemctl je součástí většiny moderních distribucí Linuxu.

## 📦 Použití Systemctl
```bash
systemctl list-units --type=service  # Zobrazení běžících služeb
systemctl start služba  # Spuštění služby
systemctl stop služba  # Zastavení služby
systemctl restart služba  # Restartování služby
systemctl enable služba  # Povolení služby při startu systému
systemctl disable služba  # Zakázání služby při startu systému
systemctl status služba  # Zobrazení stavu služby
```

## 🔄 Alternativy k Systemctl
- **Service** – Starší nástroj pro správu služeb.
- **Init.d** – Používán ve starších systémech.

---
💡 **Tip:** Pro zobrazení chyb služby použij `journalctl -u služba`.
