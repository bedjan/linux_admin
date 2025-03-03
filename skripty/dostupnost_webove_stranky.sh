#!/bin/bash

echo "Dostupnost webove stranky"

URL="https://www.google.com"

if curl -s --head $URL | grep "200 OK" > /dev/null
then
    echo "Webová stránka je dostupná!"
else
    echo "Webová stránka NENÍ dostupná!"
fi
