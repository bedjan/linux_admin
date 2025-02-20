# At – Jednorázové naplánování úloh

At umožňuje naplánování úloh, které se spustí pouze jednou v budoucnu.

## 🛠 Instalace At
```bash
# Debian/Ubuntu
sudo apt install at

# Fedora
sudo dnf install at

# Arch Linux
sudo pacman -S at
```

## 📦 Použití At
```bash
echo "echo 'Hotovo' > ~/vysledek.txt" | at 15:30  # Spustí příkaz v 15:30
at now + 1 hour  # Naplánuje úlohu na příští hodinu
at -l  # Zobrazí naplánované úlohy
at -c [číslo]  # Zobrazí obsah úlohy
atrm [číslo]  # Zruší naplánovanou úlohu
```

## 🔄 Alternativy k At
- **Cron** – Pro opakované úlohy.
- **Systemd timers** – Moderní alternativa plánování úloh.

---
💡 **Tip:** `atq` zobrazí seznam naplánovaných úloh.
