#!/bin/bash

echo "Blokovani adres pres iptables 192.168.1.100 a 10.0.0.200"

IP_LIST=("192.168.1.100" "10.0.0.200")

for ip in "${IP_LIST[@]}"; do
    sudo iptables -A INPUT -s $ip -j DROP
    echo "Blokovaná IP: $ip"
done
