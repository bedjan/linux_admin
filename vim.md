# Vim: Nejčastější zkratky a příklady použití

Vim je výkonný textový editor běžně používaný v Linuxu. Nabízí mnoho klávesových zkratek, které zrychlují úpravy textu. Níže je seznam nejčastějších zkratek rozdělených podle režimů.

---

## 📋 **Základní režimy**

1. **Normální režim (defaultní)** - pro navigaci a manipulaci s textem  
2. **Vkládací režim (Insert mode)** - pro psaní textu  
3. **Příkazový režim (Command-line mode)** - pro spouštění příkazů (např. uložení, zavření)  
4. **Vizualizační režim (Visual mode)** - pro výběr textu  

---

## 🚀 **Nejčastější zkratky**

### ✅ **Přepínání mezi režimy**

| Zkratka | Význam                        | Příklad použití            |
|---------|------------------------------|----------------------------|
| `i`     | Vložit před kurzor (Insert)  | `i` → začneš psát text     |
| `I`     | Vložit na začátek řádku      | `I` → píšeš od začátku řádku |
| `a`     | Vložit za kurzor             | `a` → psaní hned za kurzorem |
| `A`     | Vložit na konec řádku        | `A` → psaní na konci řádku   |
| `Esc`   | Návrat do normálního režimu  | `Esc` → ukončíš vkládání    |
| `v`     | Vizualizační režim (výběr)   | `v` → vybereš znaky         |
| `V`     | Vizualizační režim (řádek)   | `V` → vybereš celý řádek    |
| `:`     | Příkazový režim              | `:` → napíšeš např. `:wq`   |

---

### 🗂️ **Ukládání a zavírání souborů**

| Zkratka | Význam                              | Příklad použití        |
|---------|------------------------------------|------------------------|
| `:w`    | Uložit soubor                      | `:w` → uloží soubor    |
| `:q`    | Zavřít soubor                      | `:q` → zavře soubor    |
| `:wq`   | Uložit a zavřít                    | `:wq` → uloží a zavře  |
| `:q!`   | Zavřít bez uložení                 | `:q!` → zruší změny    |

---

### ⌨️ **Pohyb kurzoru**

| Zkratka | Význam                        | Příklad použití         |
|---------|------------------------------|-------------------------|
| `h`     | Pohyb vlevo                  | `h` → vlevo             |
| `l`     | Pohyb vpravo                 | `l` → vpravo            |
| `j`     | Pohyb dolů                    | `j` → dolů              |
| `k`     | Pohyb nahoru                  | `k` → nahoru            |
| `w`     | Skok na další slovo           | `w` → další slovo       |
| `b`     | Skok na předchozí slovo       | `b` → zpět slovo        |
| `gg`    | Skok na začátek souboru       | `gg` → začátek souboru  |
| `G`     | Skok na konec souboru         | `G` → konec souboru     |

---

### ✂️ **Kopírování, mazání a vkládání textu**

| Zkratka | Význam                            | Příklad použití         |
|---------|----------------------------------|-------------------------|
| `yy`    | Kopírovat celý řádek             | `yy` → kopíruje řádek   |
| `dd`    | Vyjmout celý řádek               | `dd` → smaže řádek      |
| `p`     | Vložit za kurzor                 | `p` → vloží text        |
| `P`     | Vložit před kurzor               | `P` → vloží text        |
| `x`     | Smazat znak pod kurzorem         | `x` → smaže znak        |
| `d$`    | Smazat od kurzoru do konce řádku | `d$` → smaže do konce   |

---

### 🔎 **Vyhledávání a nahrazování**

| Zkratka | Význam                             | Příklad použití         |
|---------|-----------------------------------|-------------------------|
| `/text` | Hledat „text“                     | `/vim` → hledá „vim“    |
| `?text` | Hledat „text“ zpětně              | `?vim` → hledá „vim“ zpětně |
| `n`     | Další výskyt                      | `n` → další shoda       |
| `N`     | Předchozí výskyt                  | `N` → předchozí shoda   |
| `:%s/star/end/g` | Nahradit „star“ za „end“ v celém souboru | `:%s/foo/bar/g` |

---

## 🏁 **Závěr**

Vim je extrémně výkonný editor, který se vyplatí ovládnout. Tyto základní zkratky ti pomohou efektivně editovat text. Pokud chceš více informací, můžeš v Vim spustit **`:help`**.


