#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null | head -n1)
battery_path=$(ls /sys/class/power_supply | grep BAT | head -n1)

profile=$(powerprofilesctl get)

case "$profile" in
    power-saver)
        icon="󰾆"
        class="powersaver"
        ;;
    performance)
        icon="󱐋"
        class="performance"
        ;;
    *)
        icon="󱤂"
        class="balanced"
        ;;
esac

# --- battery state + time info via upower ---
upower_path=$(upower -e | grep battery | head -n1)

state=$(upower -i "$upower_path" | awk -F: '/state/ {gsub(/ /,"",$2); print $2}')
time_empty=$(upower -i "$upower_path" | awk -F: '/time to empty/ {print $2}' | xargs)
time_full=$(upower -i "$upower_path" | awk -F: '/time to full/ {print $2}' | xargs)

# choose correct time string
if [[ "$state" == "charging" ]]; then
    time_info="Full Charge In: ${time_full:-unknown}"
elif [[ "$state" == "discharging" ]]; then
    time_info="Time Left: ${time_empty:-unknown}"
else
    time_info="⚡ ${state}"
fi

tooltip="Battery: ${capacity}%\nProfile: ${profile}\nState: ${state}\n${time_info}"

echo "{\"text\":\"bat ${capacity}% ${icon}\",\"class\":\"${class}\",\"tooltip\":\"${tooltip}\"}"
