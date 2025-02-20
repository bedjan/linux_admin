# Curl – Práce s HTTP(S) požadavky a API

Curl je nástroj pro práci s HTTP, HTTPS, FTP a dalšími protokoly, který umožňuje přenos souborů a práci s API.

## 🛠 Instalace Curl
```bash
# Debian/Ubuntu
sudo apt install curl

# Fedora
sudo dnf install curl

# Arch Linux
sudo pacman -S curl
```

## 📦 Základní použití
```bash
curl URL  # Stažení obsahu URL
curl -O URL  # Uložení souboru
curl -I URL  # Zobrazení HTTP hlaviček
curl -d "param1=value1&param2=value2" -X POST URL  # Odeslání dat na server
```

## 🔄 Alternativy k Curl
- **Wget** – Specializovaný nástroj pro stahování souborů.
- **Httpie** – Jednodušší API klient.

---
💡 **Tip:** Curl lze použít i pro testování API, např. `curl -X GET "https://api.example.com"`.
