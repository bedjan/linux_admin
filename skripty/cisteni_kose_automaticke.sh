#!/bin/bash

echo "Automaticke cisteni kose"

TRASH="$HOME/.local/share/Trash/files"
echo "Mažu všechny soubory v koši..."
rm -rf $TRASH/*
echo "Koš byl vyprázdněn."
