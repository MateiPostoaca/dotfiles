#!/bin/bash

# Get the current brightness value
current=$(xrandr --verbose | grep -i brightness | awk '{ print $2 }')

# Convert the current brightness to a percentage
percentage=$(echo "$current * 100" | bc | awk '{printf "%.0f", $0}')

# Select icon based on brightness level
case 1 in
    $(( percentage >= 98 )) ) status="󰛨 " ;;
    $(( percentage >= 90 )) ) status="󱩖 " ;;
    $(( percentage >= 80 )) ) status="󱩕 " ;;
    $(( percentage >= 70 )) ) status="󱩔 " ;;
    $(( percentage >= 60 )) ) status="󱩓 " ;;
    $(( percentage >= 50 )) ) status="󱩒 " ;;
    $(( percentage >= 40 )) ) status="󱩑 " ;;
    $(( percentage >= 30 )) ) status="󱩐 " ;;
    $(( percentage >= 20 )) ) status="󱩏 " ;;
    *) status="󰛩 " ;;
esac

# Output the icon and current brightness percentage
echo "$status$percentage%"
