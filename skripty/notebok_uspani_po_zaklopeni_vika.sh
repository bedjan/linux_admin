#!/bin/bash

LID_STATE=$(cat /proc/acpi/button/lid/LID0/state)

if [[ "$LID_STATE" == "state: closed" ]]; then
    echo "Víko je zavřené, uspávám notebook..."
    systemctl suspend
fi
