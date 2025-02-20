# OpenSSL – Šifrování a SSL/TLS operace

OpenSSL je nástroj pro šifrování, generování certifikátů a práci s SSL/TLS protokolem.

## 🛠 Instalace OpenSSL
```bash
# Debian/Ubuntu
sudo apt install openssl

# Fedora
sudo dnf install openssl

# Arch Linux
sudo pacman -S openssl
```

## 📦 Použití OpenSSL
```bash
# Vytvoření privátního klíče
openssl genpkey -algorithm RSA -out private.key  

# Vytvoření CSR (Certificate Signing Request)
openssl req -new -key private.key -out request.csr  

# Vytvoření samopodepsaného certifikátu (platný 365 dní)
openssl req -x509 -new -key private.key -out certificate.crt -days 365  

# Šifrování souboru
openssl enc -aes-256-cbc -salt -in soubor.txt -out soubor.enc  

# Dešifrování souboru
openssl enc -d -aes-256-cbc -in soubor.enc -out soubor.txt  
```

## 🔄 Alternativy k OpenSSL
- **GPG** – Šifrování a podepisování souborů.
- **LibreSSL** – Alternativa k OpenSSL.

---
💡 **Tip:** Pro kontrolu SSL certifikátu webové stránky použij:
```bash
openssl s_client -connect example.com:443
```
