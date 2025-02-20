# Docker – Kontejnerizace aplikací

Docker umožňuje vytváření, nasazení a správu kontejnerizovaných aplikací.

## 🛠 Instalace Dockeru
```bash
# Debian/Ubuntu
sudo apt install docker.io

# Fedora
sudo dnf install docker

# Arch Linux
sudo pacman -S docker

# Povolení služby
sudo systemctl enable --now docker
```

## 📦 Základní použití
```bash
docker run hello-world  # Otestování Dockeru
docker pull nginx  # Stažení image
docker run -d -p 8080:80 nginx  # Spuštění kontejneru
docker ps  # Zobrazení běžících kontejnerů
docker stop container_id  # Zastavení kontejneru
```

## 🔄 Alternativy k Dockeru
- **Podman** – Rootless alternativa k Dockeru.
- **LXC** – Lehká virtualizace.

---
💡 **Tip:** Pro přidání uživatele do Docker skupiny použij `sudo usermod -aG docker $USER`.
