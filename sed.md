# 🛠 `sed` – Stream Editor (zpracování textu)

`sed` (*Stream Editor*) je výkonný nástroj pro zpracování textu v souborech a datech ze vstupu (`stdin`). Umožňuje úpravy textu, hledání a nahrazování, mazání řádků a mnoho dalšího.

## 🛠 Instalace `sed`
`sed` je součástí většiny Unix/Linux systémů a není nutné jej instalovat.

## 📖 Základní použití
```bash
sed 's/starý_text/nový_text/' soubor.txt   # Nahradí první výskyt v každém řádku
sed 's/starý_text/nový_text/g' soubor.txt  # Nahradí všechny výskyty v řádku
sed '2s/text/nahrada/' soubor.txt          # Nahradí pouze ve 2. řádku
sed -i 's/text/nahrada/g' soubor.txt       # Přepíše změny přímo do souboru
```

## 🔍 Hledání a nahrazování
| Příkaz | Popis |
|--------|-------|
| `sed 's/old/new/'` | Nahradí **první** výskyt `old` v každém řádku |
| `sed 's/old/new/g'` | Nahradí **všechny** výskyty `old` v řádku |
| `sed 's/old/new/gi'` | Nahradí bez ohledu na velikost písmen |
| `sed '3s/old/new/'` | Nahradí pouze ve **3. řádku** |
| `sed -i 's/old/new/g' file.txt` | Upraví soubor na místě |

## 🗑 Mazání řádků
```bash
sed '2d' soubor.txt      # Smaže 2. řádek
sed '1,5d' soubor.txt    # Smaže řádky 1-5
sed '/pattern/d' soubor.txt  # Smaže řádky obsahující "pattern"
```

## 🎯 Extrakce textu
```bash
sed -n '3p' soubor.txt  # Vypíše pouze 3. řádek
sed -n '5,10p' soubor.txt  # Vypíše řádky 5 až 10
sed -n '/regex/p' soubor.txt  # Vypíše řádky odpovídající regexu
```

## 🔄 Práce s více soubory
```bash
sed -i 's/old/new/g' *.txt   # Hromadná úprava všech .txt souborů
```

## 🛠 Pokročilé příklady
- **Nahrazení jen ve specifických řádcích**:
  ```bash
  sed '3,5s/foo/bar/g' soubor.txt  # Nahrazení ve 3.-5. řádku
  ```
- **Přidání textu na začátek/na konec řádku**:
  ```bash
  sed 's/^/Začátek: /' soubor.txt   # Přidá "Začátek: " na začátek každého řádku
  sed 's/$/ :Konec/' soubor.txt     # Přidá " :Konec" na konec každého řádku
  ```
- **Vložení textu na nový řádek**:
  ```bash
  sed '2a Nový řádek' soubor.txt  # Přidá "Nový řádek" po 2. řádku
  sed '2i Vložený řádek' soubor.txt  # Přidá "Vložený řádek" před 2. řádek
  ```

## 🔄 Alternativy k `sed`
- `awk` – Pokročilejší textový procesor.
- `perl -p -e 's/old/new/g' file.txt` – Nahrazování s Perl regulárními výrazy.
- `tr` – Nahrazení znaků v textu.

---
💡 **Tip:** `sed` podporuje **rozšířené regulární výrazy** pomocí `sed -E 's/(text)/\1_replacement/'`.
