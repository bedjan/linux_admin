# PM2 – Správa Node.js procesů

PM2 je nástroj pro správu a monitorování Node.js aplikací.

## 🛠 Instalace PM2
```bash
npm install -g pm2
```

## 📦 Použití PM2
```bash
pm2 start app.js  # Spuštění aplikace
pm2 list  # Seznam běžících aplikací
pm2 restart app  # Restart aplikace
pm2 stop app  # Zastavení aplikace
pm2 logs  # Zobrazení logů aplikace
pm2 save  # Uložení běžících aplikací
pm2 startup  # Nastavení PM2 pro automatické spuštění
```

## 🔄 Alternativy k PM2
- **Forever** – Alternativa k PM2 pro běh Node.js aplikací.
- **Systemctl** – Správa služeb na úrovni OS.

---
💡 **Tip:** Použitím `pm2 monit` zobrazíš živé monitorování aplikací.
