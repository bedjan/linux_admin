# 🚀 `ranger` – Terminálový správce souborů

`ranger` je moderní textový správce souborů pro terminál inspirovaný `vim`. Nabízí klávesové zkratky podobné `vim`, náhledy souborů a snadnou navigaci.

## 🛠 Instalace `ranger`
```bash
# Debian/Ubuntu
sudo apt install ranger

# Fedora
sudo dnf install ranger

# Arch Linux
sudo pacman -S ranger

# macOS (Homebrew)
brew install ranger
```

## 🖥 Spuštění `ranger`
```bash
ranger        # Spustí ranger v aktuálním adresáři
ranger /home  # Spustí ranger v zadaném adresáři
ranger --clean  # Spustí ranger bez konfigurace
```

## ⌨ Klávesové zkratky v `ranger`
| Klávesa | Akce |
|---------|------|
| `h` | Pohyb vlevo (do nadřazené složky) |
| `l` | Pohyb vpravo (otevře složku/soubor) |
| `j` | Pohyb dolů |
| `k` | Pohyb nahoru |
| `gg` | Skok na začátek seznamu |
| `G` | Skok na konec seznamu |
| `/` | Vyhledávání |
| `n` | Další výsledek hledání |
| `N` | Předchozí výsledek hledání |
| `yy` | Kopírování souboru/adresáře |
| `pp` | Vložení souboru/adresáře |
| `dd` | Vyjmutí souboru/adresáře |
| `D` | Trvalé smazání souboru |
| `r` | Přejmenování souboru |
| `a` | Přidání přípony k názvu souboru |
| `z` | Komprese souboru/adresáře |
| `F` | Spuštění souboru v příslušném programu |
| `q` | Ukončení rangeru |

## 🎯 Navigace a operace se soubory
- **Otevření souboru**: `l` (nebo `Enter`)
- **Náhled souboru**: `i`
- **Označení souboru**: `Space`
- **Seřazení souborů**: `o`
- **Kopírování souborů**: `yy` (kopírovat), `pp` (vložit)
- **Přesunutí souborů**: `dd` (vyjmout), `pp` (vložit)
- **Smazání souboru**: `D`
- **Vytvoření složky**: `mkdir název_složky`
- **Hledání souboru**: `/název_souboru`

## ⚙ Konfigurace `ranger`
Konfigurační soubory lze vytvořit pomocí:
```bash
ranger --copy-config=all
```
Najdeš je v:
```bash
~/.config/ranger/
```
Např. pro změnu výchozího editoru:
```ini
set editor nano
```
Načtení nové konfigurace:
```bash
ranger --config ~/.config/ranger/rc.conf
```

## 📦 Komprese a dekomprese souborů
- **Rozbalení archivu**: Vyber soubor → `l`
- **Komprese souboru**: Označ soubor → `z`

## 🔄 Alternativy k `ranger`
- `mc` – dvoupanelový správce souborů.
- `vifm` – terminálový správce inspirovaný Vimem.
- `lf` – minimalistický správce souborů.

---
💡 **Tip:** `ranger` podporuje **myš**! Klikáním můžeš otevírat složky a spravovat soubory.
