# GCC – Kompilátor C/C++

GCC je výchozí kompilátor pro programovací jazyky C a C++.

## 🛠 Instalace GCC
```bash
# Debian/Ubuntu
sudo apt install gcc

# Fedora
sudo dnf install gcc

# Arch Linux
sudo pacman -S gcc
```

## 📦 Kompilace programů
```bash
gcc program.c -o program  # Přeložení C programu
g++ program.cpp -o program  # Přeložení C++ programu
./program  # Spuštění přeloženého programu
```

## 🔄 Alternativy k GCC
- **Clang** – Alternativní kompilátor.

---
💡 **Tip:** Použitím `gcc -Wall` lze povolit výpis varování.
