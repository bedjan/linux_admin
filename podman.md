# Podman – Alternativa k Dockeru

Podman je nástroj pro správu kontejnerů bez potřeby root oprávnění.

## 🛠 Instalace Podman
```bash
# Debian/Ubuntu
sudo apt install podman

# Fedora
sudo dnf install podman

# Arch Linux
sudo pacman -S podman
```

## 📦 Základní použití
```bash
podman run hello-world  # Otestování Podmanu
podman pull nginx  # Stažení image
podman run -d -p 8080:80 nginx  # Spuštění kontejneru
podman ps  # Zobrazení běžících kontejnerů
podman stop container_id  # Zastavení kontejneru
```

## 🔄 Alternativy k Podmanu
- **Docker** – Kontejnerizace aplikací s rootem.
- **LXC** – Virtualizace na úrovni OS.

---
💡 **Tip:** Podman podporuje stejné příkazy jako Docker, takže migrace je snadná.
