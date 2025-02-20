# 🛠 `awk` – Výkonný nástroj pro zpracování textu

`awk` je skriptovací jazyk pro manipulaci s textem a daty v souborech. Umožňuje filtrování, výběr, formátování a analýzu dat na základě pravidel a vzorců.

## 🛠 Instalace `awk`
`awk` je součástí většiny Linuxových distribucí, není nutná instalace.

Pro GNU verzi `awk` (`gawk`):
```bash
# Debian/Ubuntu
sudo apt install gawk

# Fedora
sudo dnf install gawk

# Arch Linux
sudo pacman -S gawk
```

## 📖 Základní použití
```bash
awk '{print $1}' soubor.txt   # Vypíše první sloupec každého řádku
awk '{print $1, $3}' soubor.txt   # Vypíše první a třetí sloupec
awk '/hledany_text/' soubor.txt   # Vypíše řádky obsahující "hledany_text"
awk '{sum+=$2} END {print sum}' soubor.txt   # Sečte druhý sloupec
```

## 📑 Struktura `awk` skriptu
