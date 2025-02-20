# Brew (Linuxbrew) – Správce balíčků pro Linux

Brew (Linuxbrew) je balíčkovací systém inspirovaný Homebrew pro macOS, který umožňuje snadnou instalaci softwaru na Linux.

## 🛠 Instalace Brew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 📦 Základní příkazy
```bash
brew install balicek  # Instalace balíčku
brew uninstall balicek  # Odstranění balíčku
brew list  # Seznam nainstalovaných balíčků
brew update  # Aktualizace balíčků
brew upgrade  # Upgrade všech balíčků
```

## 🔄 Alternativy k Brew
- **Apt** (Debian/Ubuntu)
- **Dnf** (Fedora)
- **Pacman** (Arch Linux)

---
💡 **Tip:** Brew umožňuje instalaci softwaru do uživatelské složky bez nutnosti root oprávnění.
