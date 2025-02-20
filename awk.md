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
```awk
BEGIN { inicializace } 
podmínka { akce } 
END { závěrečný kód }
```

## 📊 Práce se sloupci
| Příkaz | Popis |
|--------|-------|
| `awk '{print $1}'` | Vypíše první sloupec |
| `awk '{print $1, $3}'` | Vypíše první a třetí sloupec |
| `awk '{print $NF}'` | Vypíše poslední sloupec |
| `awk '{print $(NF-1)}'` | Vypíše předposlední sloupec |

## 🎯 Filtrování řádků
```bash
awk '$3 > 50' soubor.txt    # Vypíše řádky, kde 3. sloupec > 50
awk '/error/' log.txt       # Vypíše řádky obsahující "error"
awk '!/warning/' log.txt    # Vypíše řádky, které neobsahují "warning"
```

## 🔢 Výpočty a operace
```bash
awk '{sum+=$2} END {print sum}' soubor.txt  # Sečte druhý sloupec
awk '{count++; sum+=$2} END {print sum/count}' soubor.txt  # Průměr
awk '{print $1, $2*10}' soubor.txt  # Vynásobí druhý sloupec 10
```

## 🔄 Práce s oddělovači
```bash
awk -F ',' '{print $1, $2}' soubor.csv   # Použití čárky jako oddělovače
awk -F ':' '{print $1, $3}' /etc/passwd  # Použití dvojtečky jako oddělovače
```

## 📝 Nahrazování textu
```bash
awk '{gsub("old", "new"); print}' soubor.txt  # Nahradí "old" za "new"
```

## 📂 Práce s více soubory
```bash
awk 'FNR==1 {print "=== Soubor:", FILENAME " ==="} {print}' *.txt
```

## 🔄 Alternativy k `awk`
- `sed` – Proudový editor pro jednoduché úpravy textu.
- `cut` – Extrakce sloupců ze souboru.
- `perl` – Výkonnější skriptovací jazyk pro textovou manipulaci.

---
💡 **Tip:** `awk` podporuje regulární výrazy! Použij `/regex/ {print $0}` pro filtrování řádků.
