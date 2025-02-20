# Oh My Zsh – Rozšíření pro Zsh

Oh My Zsh je framework pro správu konfigurace Zsh, který přidává pluginy a témata.

## 🛠 Instalace Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 📦 Přizpůsobení Oh My Zsh
- Konfigurační soubor: `~/.zshrc`
- Témata: `ZSH_THEME="agnoster"`
- Pluginy: `plugins=(git zsh-autosuggestions)`

## 📦 Instalace pluginů
```bash
# Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

## 🔄 Alternativy k Oh My Zsh
- **Prezto** – Lehčí alternativa pro správu Zsh.
- **Zim** – Rychlý framework pro Zsh.

---
💡 **Tip:** Pro aktivaci změn spusť `source ~/.zshrc`.
