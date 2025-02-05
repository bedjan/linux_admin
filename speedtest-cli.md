#!/usr/bin/env mdsh
# Skript v Markdownu

```bash


## If migrating from prior bintray install instructions please first...
# https://www.speedtest.net/apps/cli #informace ke stažení programu
# sudo rm /etc/apt/sources.list.d/speedtest.list # smazani zdroje z minulosti
# sudo apt-get update # aktualizace repozitaru
# sudo apt-get remove speedtest # odstraneni stare verze speedtest
# sudo apt-get remove speedtest-cli # odstraneni speedtest-cli
sudo apt-get install curl # instalace curlu
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest # instalace speedtest
speedtest  # spusteni testu

```


