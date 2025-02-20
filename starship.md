# Starship – Moderní prompt pro shell

Starship je rychlý a přizpůsobitelný prompt pro shell.

## 🛠 Instalace Starship
```bash
# Debian/Ubuntu
curl -sS https://starship.rs/install.sh | sh

# Fedora
sudo dnf install starship

# Arch Linux
sudo pacman -S starship
```

## 📦 Aktivace Starship v Zsh/Bash/Fish
```bash
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'eval "$(starship init fish)"' >> ~/.config/fish/config.fish
```

## 📦 Přizpůsobení vzhledu
Konfigurace soubor: `~/.config/starship.toml`
```toml
[character]
success_symbol = "[➜](bold green)"
error_symbol = "[✗](bold red)"
```

## 🔄 Alternativy ke Starship
- **Powerlevel10k** – Výkonný a přizpůsobitelný prompt pro Zsh.
- **Oh My Posh** – Prompt pro Windows i Linux.

---
💡 **Tip:** Použitím `starship preset nerd-font-symbols` lze získat hezké ikony.
