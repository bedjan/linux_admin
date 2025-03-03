#!/bin/bash

echo "Největší soubory na serveru:"
find / -type f -exec du -Sh {} + | sort -rh | head -n 10
