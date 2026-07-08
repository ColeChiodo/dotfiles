#!/usr/bin/env bash

APP=$(hyprctl activewindow -j | jq -r '.class')

NODE=$(pw-dump | jq -r --arg app "$APP" '
  .[]
  | select(.type == "PipeWire:Interface:Node")
  | select(.info.props["application.name"] | ascii_downcase | contains($app | ascii_downcase))
  | .id
' | head -n1)

if [ -n "$NODE" ]; then
    wpctl set-mute "$NODE" toggle
else
    notify-send "Mute Tab" "No matching audio stream"
fi
