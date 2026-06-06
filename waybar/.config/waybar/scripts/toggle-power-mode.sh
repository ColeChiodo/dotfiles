#!/bin/bash

MONITOR="eDP-1"

current=$(powerprofilesctl get)

case "$current" in
    balanced)

        powerprofilesctl set power-saver

        hyprctl keyword monitor "$MONITOR,preferred,auto,1"

        hyprctl keyword monitor "$MONITOR,1920x1080@60,0x0,1"

        notify-send "Power Saver" "60Hz enabled"

        ;;

    power-saver)

        powerprofilesctl set performance

        hyprctl keyword monitor "$MONITOR,1920x1080@120,0x0,1"

        notify-send "Performance" "120Hz enabled"

        ;;

    performance)

        powerprofilesctl set balanced

        hyprctl keyword monitor "$MONITOR,1920x1080@120,0x0,1"

        notify-send "Balanced" "120Hz enabled"

        ;;
esac
