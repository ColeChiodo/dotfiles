CONNECTED_OUTPUTS=$(hyprctl monitors | grep "Monitor" | awk '{print $2}')

if echo "$CONNECTED_OUTPUTS" | grep -q "$EXTERNAL"; then
    # External is connected: disable internal, enable external
    hyprctl keyword monitor "$INTERNAL, disable"
    hyprctl keyword monitor "$EXTERNAL, preferred, auto, 1"
else
    # External is not connected: enable internal, disable external
    hyprctl keyword monitor "$EXTERNAL, disable"
    hyprctl keyword monitor "$INTERNAL, preferred, auto, 1"
fi
