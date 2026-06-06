#!/bin/bash

STATE_FILE="/tmp/pulse_loopback_module_id"

# If file exists → loopback is active → unload it
if [ -f "$STATE_FILE" ]; then
    MODULE_ID=$(cat "$STATE_FILE")
    pactl unload-module "$MODULE_ID"
    rm -f "$STATE_FILE"
	notify-send "Audio Monitor Playback" "Off"
    exit 0
fi

# Otherwise → load loopback
MODULE_ID=$(pactl load-module module-loopback)
notify-send "Audio Monitor Playback" "On"

echo "$MODULE_ID" > "$STATE_FILE"
