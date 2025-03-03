#!/bin/bash

echo "Spouštím synchronizaci"
sync
echo "Uvolňuji RAM..."
sync; echo 3 > /proc/sys/vm/drop_caches
echo "Hotovo."
