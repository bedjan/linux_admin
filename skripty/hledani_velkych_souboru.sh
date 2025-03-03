#!/bin/bash

echo "Najde největší soubory v systému:"
find / -type f -exec du -Sh {} + | sort -rh | head -n 10
