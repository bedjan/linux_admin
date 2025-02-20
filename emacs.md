# 🚀 `Emacs` – Výkonný textový editor

`Emacs` je flexibilní a rozšiřitelný textový editor s podporou programování, správy souborů, e-mailu a dalších funkcí.

## 🛠 Instalace `Emacs`
```bash
# Debian/Ubuntu
sudo apt install emacs

# Fedora
sudo dnf install emacs

# Arch Linux
sudo pacman -S emacs

# macOS (Homebrew)
brew install emacs
```

## 🖥 Spuštění `Emacs`
```bash
emacs        # Spustí Emacs v grafickém režimu
emacs -nw    # Spustí Emacs v terminálu (bez GUI)
emacs soubor.txt  # Otevře soubor v Emacsu
```

## ⌨ Základní klávesové zkratky (`C` = `Ctrl`, `M` = `Alt/Esc`)
| Klávesa | Akce |
|---------|------|
| `C-x C-f` | Otevře soubor |
| `C-x C-s` | Uloží soubor |
| `C-x C-w` | Uloží soubor pod jiným názvem |
| `C-x C-c` | Ukončí Emacs |
| `C-g` | Přerušení příkazu |
| `C-x u` | Zpět (undo) |
| `C-/` | Alternativní undo |
| `C-x k` | Zavře aktuální buffer |
| `C-x b` | Přepnutí mezi buffery |
| `C-x C-b` | Zobrazí seznam bufferů |
| `M-x` | Spuštění příkazu |
| `C-x 2` | Rozdělení okna horizontálně |
| `C-x 3` | Rozdělení okna vertikálně |
| `C-x o` | Přepnutí mezi okny |
| `C-x 0` | Zavře aktuální okno |
| `C-x 1` | Zavře všechna ostatní okna |
| `C-s` | Hledání v souboru |
| `C-r` | Hledání zpět |
| `M-%` | Najít a nahradit |

## 🎯 Navigace v souboru
| Klávesa | Akce |
|---------|------|
| `C-a` | Skok na začátek řádku |
| `C-e` | Skok na konec řádku |
| `M-f` | Skok o slovo vpřed |
| `M-b` | Skok o slovo zpět |
| `C-v` | Posun o stránku dolů |
| `M-v` | Posun o stránku nahoru |
| `C-l` | Zarovná řádek do středu obrazovky |

## 🔎 Správa souborů v `Emacs`
- **Otevření souboru**: `C-x C-f`
- **Přepnutí mezi soubory**: `C-x b`
- **Uložení souboru**: `C-x C-s`
- **Uložení pod jiným názvem**: `C-x C-w`
- **Zavření souboru**: `C-x k`

## 🛠 Emacs jako terminál
Emacs obsahuje vestavěný terminál (`eshell`):
```bash
M-x eshell
```
Pro spuštění běžného shellu (`bash`, `zsh` atd.):
```bash
M-x shell
```

## ⚙ Přizpůsobení `Emacs`
Emacs lze konfigurovat pomocí souboru `~/.emacs` nebo `~/.emacs.d/init.el`.
Příklad změny barevného tématu:
```elisp
(load-theme 'wombat t)
```
Příklad nastavení automatického ukládání:
```elisp
(setq auto-save-default t)
```

## 📦 Instalace balíčků pomocí `MELPA`
Přidej následující kód do `~/.emacs.d/init.el` pro správu balíčků:
```elisp
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
```
Nyní můžeš instalovat balíčky pomocí:
```bash
M-x package-refresh-contents
M-x package-install RET use-package
```

## 🔄 Alternativy k `Emacs`
- `Vim` – Výkonný modální editor.
- `nano` – Jednoduchý textový editor v terminálu.
- `Neovim` – Modernější verze Vimu.

---
💡 **Tip:** Pokud jsi nováček v Emacsu, spusť interaktivní tutoriál:
```bash
M-x help-with-tutorial
```
