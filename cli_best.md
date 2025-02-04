# 📌 Nejčastější použití základních CLI příkazů v Linuxu

## 1. ls – výpis souborů a adresářů

ls              # Výpis souborů v aktuálním adresáři
ls -l           # Podrobný výpis s právy, vlastníkem a datem změny
ls -a           # Zobrazí i skryté soubory (začínající tečkou)
ls -lh          # Výpis velikostí souborů v lidsky čitelné formě
ls -lt          # Seřadí podle času změny
ls /etc         # Výpis souborů v jiném adresáři (/etc)


## 2. cd – změna adresáře

cd /home/user   # Přechod do adresáře /home/user
cd Documents    # Přechod do podadresáře Documents
cd ..           # Přechod o úroveň výše
cd ../..        # Přechod o dvě úrovně výše
cd ~            # Přechod do domovského adresáře uživatele
cd -            # Návrat do předchozího adresáře

## 3. pwd – aktuální pracovní adresář

pwd             # Zobrazení aktuálního adresáře

## 4. cp – kopírování souborů

cp soubor.txt /backup/      # Kopírování souboru do jiného adresáře
cp soubor.txt nový.txt      # Kopírování souboru s přejmenováním
cp -r složka/ /backup/      # Rekurzivní kopírování složky
cp -i soubor.txt /backup/   # Dotaz před přepsáním existujícího souboru
cp -u soubor.txt /backup/   # Kopírování pouze pokud je soubor novější

## 5. mv – přesun nebo přejmenování souborů

mv soubor.txt nový.txt      # Přejmenování souboru
mv soubor.txt /backup/      # Přesun souboru do jiného adresáře
mv -i soubor.txt /backup/   # Dotaz před přepsáním
mv složka/ /backup/         # Přesun složky

## 6. rm – smazání souboru nebo adresáře

rm soubor.txt               # Smazání souboru
rm -i soubor.txt            # Dotaz před smazáním
rm -r složka/               # Rekurzivní smazání složky
rm -rf složka/              # Silné rekurzivní smazání (bez dotazu)
rm -v soubor.txt            # Zobrazení informací o mazání

## 7. find – vyhledávání souborů v systému

find /home -name "dokument.txt"   # Hledání souboru podle jména
find /var/log -type f             # Hledání pouze souborů
find /home -type d                # Hledání pouze adresářů
find . -name "*.txt"              # Hledání všech textových souborů v aktuální složce
find . -size +10M                 # Hledání souborů větších než 10 MB
find /home -mtime -1              # Hledání souborů změněných za posledních 24 hodin
find . -exec rm {} \;             # Hledání a smazání nalezených souborů

## 8. locate – rychlé vyhledávání souborů

locate dokument.txt      # Vyhledání souboru podle názvu
locate -i Dokument       # Nezáleží na velikosti písmen
locate "*.mp3"           # Vyhledání všech MP3 souborů
updatedb                 # Aktualizace databáze souborů pro locate

## 9. stat – podrobné informace o souboru

stat soubor.txt          # Podrobné informace o souboru (velikost, čas změny, oprávnění)
stat složka/             # Informace o adresáři
stat -c "%s bytes" soubor.txt   # Zobrazení pouze velikosti souboru

## 10. df – informace o využití diskového prostoru

df                      # Zobrazení využití diskového prostoru
df -h                   # Výstup v lidsky čitelné podobě
df -T                   # Zobrazení typu souborového systému
df /home                # Informace o konkrétním disku/oddílu

## 11. du – velikost souborů a složek

du -sh složka/          # Zobrazení celkové velikosti složky
du -ah                  # Zobrazení velikostí všech souborů a složek
du -c                   # Celková velikost všech souborů
du -d 1                 # Zobrazení velikostí jen v první úrovni složky
