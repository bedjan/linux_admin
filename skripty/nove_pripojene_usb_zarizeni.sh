#!/bin/bash

echo "Nove pripojene usb zarizeni"

while true; do
    lsusb > /tmp/usb_now
    if ! cmp -s /tmp/usb_now /tmp/usb_prev; then
        echo "Nové USB zařízení připojeno!"
    fi
    mv /tmp/usb_now /tmp/usb_prev
    sleep 5
done
