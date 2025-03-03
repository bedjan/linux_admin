#!/bin/bash

echo "Monitorovni cpu a ram"
while true
do
    echo "CPU: $(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
    echo "RAM: $(free -m | awk 'NR==2{printf "%s/%s MB\n", $3, $2 }')"
    sleep 5
done
