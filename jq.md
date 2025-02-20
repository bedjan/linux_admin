# 🛠 `jq` – Manipulace s JSON daty v terminálu

`jq` je výkonný příkazový nástroj pro zpracování, filtrování a transformaci JSON dat.

## 🛠 Instalace `jq`
```bash
# Debian/Ubuntu
sudo apt install jq

# Fedora
sudo dnf install jq

# Arch Linux
sudo pacman -S jq

# macOS (Homebrew)
brew install jq
```

## 📖 Základní použití
```bash
cat data.json | jq   # Formátování JSON s odsazením
jq '.' data.json     # Totéž jako výše
jq '.key' data.json  # Výběr hodnoty z klíče "key"
jq '.key1.key2' data.json  # Výběr vnořeného klíče
```

## 🎯 Výběr hodnot
| Příkaz | Popis |
|--------|-------|
| `jq '.'` | Zobrazí celý JSON ve formátovaném výstupu |
| `jq '.key'` | Vypíše hodnotu klíče `key` |
| `jq '.key1.key2'` | Vypíše hodnotu vnořeného klíče |
| `jq '.[0]'` | Zobrazí první prvek pole |
| `jq '.[].key'` | Zobrazí všechny hodnoty `key` z pole |

## 🔍 Filtrování JSON dat
```bash
jq '.[] | select(.age > 30)' data.json  # Vybere objekty, kde age > 30
jq '.users[] | select(.name == "John")' data.json  # Najde "John"
```

## 🔄 Transformace JSON
```bash
jq '{name: .username, email: .contact.email}' data.json  # Přemapování klíčů
jq 'map({name, age})' data.json  # Vybere pouze `name` a `age` z pole objektů
jq '.[0] | {name, age}' data.json  # Vybere první objekt a formátuje jinak
```

## 📊 Práce s poli
```bash
jq 'map(.age)' data.json  # Vytáhne všechny věky do pole
jq 'map(select(.age > 25))' data.json  # Vybere jen objekty s age > 25
jq 'length' data.json  # Počet prvků v poli
jq 'add' '[1,2,3,4]'  # Sečte čísla v poli
```

## 📝 Nahrazování hodnot
```bash
jq '.key = "new_value"' data.json  # Změní hodnotu `key`
jq '(.users[] | select(.name == "John")).age = 40' data.json  # Změní věk Johna
```

## 📂 Uložení JSON do souboru
```bash
jq '.users' data.json > users.json
```

## 🔄 Alternativy k `jq`
- `python -m json.tool` – Formátování JSON pomocí Pythonu.
- `gron` – Převod JSON do formátu podobného grep.
- `yq` – Podobný `jq`, ale pro YAML.

---
💡 **Tip:** `jq` podporuje **řetězení příkazů**, např. `jq '.users | map(.name)'`.
