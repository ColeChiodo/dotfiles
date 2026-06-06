#!/usr/bin/env bash

PID=$(hyprctl activewindow -j | jq -r '.pid')

NODE=$(pw-dump | jq -r --arg pid "$PID" '
  .[]
  | select(.type == "PipeWire:Interface:Node")
  | select(.info.props["application.process.id"] == $pid)
  | .id
' | head -n1)

[ -n "$NODE" ] && wpctl set-mute "$NODE" toggle
