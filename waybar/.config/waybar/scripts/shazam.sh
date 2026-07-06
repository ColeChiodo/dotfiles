#!/usr/bin/env bash

DEVICE="alsa_output.usb-SteelSeries_SteelSeries_Arctis_7-00.stereo-game.monitor"
TIMEOUT=30

coproc SONGREC {
    stdbuf -oL songrec listen -d "$DEVICE" 2>&1
}

recording_started=false
start_time=0

while IFS= read -r line <&"${SONGREC[0]}"; do
    # Uncomment for debugging
    # echo "$line"

    if ! $recording_started; then
        [[ "$line" == *"Recording started!"* ]] || continue

        recording_started=true
        start_time=$(date +%s)

        notify-send "Music Recognition" "Started listening for music…"

        continue
    fi

    # Ignore SongRec log lines
    if [[ "$line" =~ ^\[ ]]; then
        :
    elif [[ -n "$line" ]]; then
        printf '%s' "$line" | wl-copy
        notify-send "Song found" "$line"
        kill "$SONGREC_PID" 2>/dev/null
        wait "$SONGREC_PID" 2>/dev/null
        exit 0
    fi

    now=$(date +%s)
    if (( now - start_time >= TIMEOUT )); then
        notify-send "Song recognition" "No song found after ${TIMEOUT} seconds."
        kill "$SONGREC_PID" 2>/dev/null
        wait "$SONGREC_PID" 2>/dev/null
        exit 1
    fi
done

notify-send "Song recognition" "SongRec exited unexpectedly."
exit 1
