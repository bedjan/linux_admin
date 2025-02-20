# GPG – Šifrování a podepisování souborů

GPG (GNU Privacy Guard) umožňuje šifrování, dešifrování a podepisování souborů.

## 🛠 Instalace GPG
```bash
# Debian/Ubuntu
sudo apt install gnupg

# Fedora
sudo dnf install gnupg

# Arch Linux
sudo pacman -S gnupg
```

## 📦 Použití GPG
```bash
# Vytvoření GPG klíče
gpg --full-generate-key  

# Šifrování souboru
gpg -c soubor.txt  

# Dešifrování souboru
gpg soubor.txt.gpg  
```

## 🔄 Alternativy k GPG
- **OpenSSL** – Šifrování a SSL operace.
- **Age** – Jednodušší nástroj pro šifrování souborů.

---
💡 **Tip:** Pro sdílení veřejného klíče použij `gpg --export -a "jméno" > public.key`.
