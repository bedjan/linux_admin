#!/bin/bash

echo "Hledám podezřelé IP adresy..."
netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | while read count ip
do
    if [ $count -gt 100 ]; then
        echo "Blokuji IP: $ip"
        iptables -A INPUT -s $ip -j DROP
    fi
done
