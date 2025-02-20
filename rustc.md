# Rustc – Kompilátor pro jazyk Rust

Rustc je výchozí kompilátor pro jazyk Rust.

## 🛠 Instalace Rustc
```bash
# Linux (doporučeno přes rustup)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Ověření instalace
rustc --version
```

## 📦 Kompilace Rust programů
```bash
rustc program.rs  # Přeložení Rust programu
./program  # Spuštění přeloženého programu
```

## 📦 Práce s Cargo (správce projektů v Rust)
```bash
cargo new projekt  # Vytvoření nového projektu
cargo build  # Kompilace projektu
cargo run  # Spuštění projektu
cargo test  # Spuštění testů
```

## 🔄 Alternativy k Rustc
- **GCC-rs** – Alternativní backend pro Rust.

---
💡 **Tip:** Použitím `cargo fmt` lze automaticky formátovat kód v Rustu.
