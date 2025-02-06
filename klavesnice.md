# 🖋️ Jak psát speciální znaky na klávesnici v Linuxu

V Linuxu existuje několik způsobů, jak psát speciální znaky na klávesnici. Využít lze **AltGr**, **Compose Key**, **Unicode kódy** nebo různé klávesové zkratky. Tento průvodce ukazuje nejpoužívanější metody a seznam běžných speciálních znaků.

---

## ⚡ **Způsoby psaní speciálních znaků**

### 1️⃣ **Použití klávesy AltGr**

**AltGr** (pravý Alt) umožňuje přístup k dalším znakům na klávesnici.

| Znak  | Kombinace kláves (CZ klávesnice) |
|-------|----------------------------------|
| `@`   | `AltGr + V`                     |
| `€`   | `AltGr + E`                     |
| `{`   | `AltGr + B`                     |
| `}`   | `AltGr + N`                     |
| `[`   | `AltGr + F`                     |
| `]`   | `AltGr + G`                     |
| `|`   | `AltGr + W`                     |
| `\`   | `AltGr + Q`                     |
| `~`   | `AltGr + \`` (pravý horní kláves) |

---

### 2️⃣ **Použití Compose Key (kombinační klávesa)**

**Compose Key** umožňuje psát znaky pomocí sekvence kláves.

#### 🔧 **Nastavení Compose Key**
```bash
setxkbmap -option compose:rctrl
```
*(nastaví pravý Ctrl jako Compose Key)*

| Znak | Kombinace s Compose Key |
|------|-------------------------|
| `é`  | `Compose` → `'` → `e`  |
| `É`  | `Compose` → `'` → `E`  |
| `ä`  | `Compose` → `"` → `a`  |
| `ö`  | `Compose` → `"` → `o`  |
| `ü`  | `Compose` → `"` → `u`  |
| `ç`  | `Compose` → `,` → `c`  |
| `ñ`  | `Compose` → `~` → `n`  |
| `ø`  | `Compose` → `/` → `o`  |
| `ß`  | `Compose` → `s` → `s`  |
| `£`  | `Compose` → `L` → `-`  |
| `©`  | `Compose` → `o` → `c`  |
| `™`  | `Compose` → `T` → `M`  |
| `→`  | `Compose` → `-` → `>`  |
| `←`  | `Compose` → `-` → `<`  |
| `∞`  | `Compose` → `8` → `8`  |

---

### 3️⃣ **Psaní pomocí Unicode kódů**

Lze také psát znaky podle jejich Unicode kódů.

#### **Jak na to:**
1. Stiskni `Ctrl + Shift + U`
2. Zadej Unicode kód (např. `00E9` pro `é`)
3. Stiskni `Enter` nebo `Space`

| Znak  | Unicode kód | Klávesová zkratka |
|-------|------------|------------------|
| `€`   | U+20AC     | `Ctrl + Shift + U`, `20AC`, `Enter` |
| `∞`   | U+221E     | `Ctrl + Shift + U`, `221E`, `Enter` |
| `±`   | U+00B1     | `Ctrl + Shift + U`, `00B1`, `Enter` |
| `¼`   | U+00BC     | `Ctrl + Shift + U`, `00BC`, `Enter` |
| `½`   | U+00BD     | `Ctrl + Shift + U`, `00BD`, `Enter` |
| `¾`   | U+00BE     | `Ctrl + Shift + U`, `00BE`, `Enter` |
| `©`   | U+00A9     | `Ctrl + Shift + U`, `00A9`, `Enter` |
| `™`   | U+2122     | `Ctrl + Shift + U`, `2122`, `Enter` |
| `✓`   | U+2713     | `Ctrl + Shift + U`, `2713`, `Enter` |

---

## 🌍 **Přepínání klávesnicového rozložení v příkazové řádce**

### 1️⃣ **Přepnutí rozložení pomocí `setxkbmap`**
```bash
setxkbmap cz    # Přepnutí na české rozložení
setxkbmap us    # Přepnutí na americké rozložení
```
- **Přepínání mezi dvěma rozloženími (např. CZ a US)**:
```bash
setxkbmap -layout "us,cz" -option "grp:alt_shift_toggle"
```
*(přepínání pomocí `Alt + Shift`)*

---

### 2️⃣ **Dočasná změna rozložení (jen pro aktuální terminál)**
```bash
loadkeys us  # Přepnutí na US klávesnici
loadkeys cz  # Přepnutí na CZ klávesnici
```
*(funguje pouze v konzoli, ne v grafickém prostředí!)*

---

### 3️⃣ **Trvalá změna rozložení**
Pro trvalou změnu uprav soubor `/etc/default/keyboard`:
```bash
sudo nano /etc/default/keyboard
```
Změň řádek:
```
XKBLAYOUT="cz"
```
Poté restartuj nastavení klávesnice:
```bash
sudo dpkg-reconfigure keyboard-configuration
sudo service keyboard-setup restart
```

---

## 🔠 **Další užitečné speciální znaky**

| Znak  | Unicode kód | Compose Key |
|-------|------------|------------|
| `©`   | `U+00A9`   | `Compose` → `o` → `c` |
| `™`   | `U+2122`   | `Compose` → `T` → `M` |
| `§`   | `U+00A7`   | `Compose` → `S` → `S` |
| `÷`   | `U+00F7`   | `Compose` → `/` → `:` |
| `×`   | `U+00D7`   | `Compose` → `*` → `x` |
| `°`   | `U+00B0`   | `Compose` → `o` → `o` |
| `¶`   | `U+00B6`   | `Compose` → `P` → `P` |
| `µ`   | `U+00B5`   | `Compose` → `m` → `u` |
| `«`   | `U+00AB`   | `Compose` → `<` → `<` |
| `»`   | `U+00BB`   | `Compose` → `>` → `>` |
| `†`   | `U+2020`   | `Compose` → `t` → `t` |

---

## 🚀 **Závěr**

Linux nabízí různé způsoby, jak pohodlně psát speciální znaky. Ať už pomocí **AltGr**, **Compose Key** nebo **Unicode kódů**, psaní je flexibilní a lze ho snadno přizpůsobit podle svých potřeb.
