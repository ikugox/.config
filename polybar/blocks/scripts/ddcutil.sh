#!/bin/bash
# Usage: ./brightness.sh up/down value (e.g., ./brightness.sh up 10)
direction=$1 # "up" or "down"
value=$2     # The amount to increase or decrease

# Get the current brightness value
current_brightness=$(ddcutil getvcp 10 | awk -F'=' '/current value/ {print $2}' | awk -F',' '{print $1}' | xargs)

# Calculate new brightness value
if [ "$direction" = "up" ]; then
    new_brightness=$((current_brightness + value))
elif [ "$direction" = "down" ]; then
    new_brightness=$((current_brightness - value))
else
    echo "Usage: $0 up/down value"
    exit 1
fi

# Ensure the new brightness is within the valid range (0-100)
if [ "$new_brightness" -gt 100 ]; then
    new_brightness=100
elif [ "$new_brightness" -lt 0 ]; then
    new_brightness=0
fi

# Set the new brightness value
ddcutil setvcp 10 $new_brightness

echo "Brightness set to $new_brightness%"
