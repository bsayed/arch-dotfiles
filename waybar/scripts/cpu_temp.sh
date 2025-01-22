#!/bin/bash
# Fetch the temperature value from `sensors`
temp=$(sensors -u k10temp-pci-00c3 | awk '/temp1_input/ {print $2}')
echo "{\"text\": \"${temp}°C\", \"tooltip\": \"CPU Temperature\"}"
