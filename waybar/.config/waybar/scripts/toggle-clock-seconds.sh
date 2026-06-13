#!/bin/bash
state_file="${XDG_RUNTIME_DIR:-/tmp}/waybar_clock_seconds"
if [[ -f "$state_file" ]]; then
    rm "$state_file"
else
    touch "$state_file"
fi
