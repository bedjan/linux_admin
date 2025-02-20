# Yay – AUR helper pro Arch Linux

Yay (Yet Another Yaourt) je AUR helper pro Arch Linux, který usnadňuje instalaci balíčků z Arch User Repository.

## 🛠 Instalace Yay
```bash
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## 📦 Instalace a správa balíčků
```bash
yay -S balicek  # Instalace balíčku z AUR
yay -Rns balicek  # Odstranění balíčku
yay -Syu  # Aktualizace všech balíčků včetně AUR
yay -Ss název  # Vyhledání balíčku v AUR
```

## 🔄 Alternativy k Yay
- **Paru** – Alternativa k Yay s lepším výkonem.
- **Trizen** – Další AUR helper.

---
💡 **Tip:** Yay podporuje stejné příkazy jako pacman, ale pracuje i s AUR.
