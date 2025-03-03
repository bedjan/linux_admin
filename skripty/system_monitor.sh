#!/bin/bash

echo "Monitorovani systemu"

echo "Využití CPU:"
top -b -n1 | grep "Cpu(s)"

echo "Využití RAM:"
free -h

echo "Využití disku:"
df -h
