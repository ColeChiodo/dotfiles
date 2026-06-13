#!/bin/bash
state_file="${XDG_RUNTIME_DIR:-/tmp}/waybar_clock_seconds"
if [[ -f "$state_file" ]]; then
    date '+%H:%M:%S - %a, %b %d'
else
    date '+%H:%M - %a, %b %d'
fi
