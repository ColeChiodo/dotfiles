# Waybar

![Waybar Example](../.resources/waybar.png)

## Layout

```
Left:    Clock
Center:  Hyprland workspaces
Right:   System tray, CPU, Memory, Bluetooth, Network, Power profile, PulseAudio
```

## Modules

| Module | Description | Click |
|--------|-------------|-------|
| **Clock** | `%H:%M - %a, %b %d` | Copies date in various formats to clipboard |
| **CPU** | Usage percentage with htop on click | Opens `htop` in a floating Kitty terminal |
| **Memory** | Usage percentage with btop on click | Opens `btop` in a floating Kitty terminal |
| **Bluetooth** | Connection count | Opens `bluetui` |
| **Network** | WiFi/Ethernet bandwidth | Opens `impala` (left) / `nmtui` (right) |
| **PulseAudio** | Volume percentage (up to 150%) | Opens `pulsemixer` (left) / `wiremix` (right) / toggles audio monitor (middle) |
| **Power Profile** | Battery + power-saver/balanced/performance | Cycles profiles and adjusts refresh rate |

## Custom Scripts

- **`scripts/power-status.sh`** — Outputs battery capacity, power profile, and charge info as JSON for the `custom/power` module.
- **`scripts/toggle-power-mode.sh`** — Cycles `power-saver` → `performance` → `balanced`, switching between 60 Hz and 120 Hz on `eDP-1`.
- **`scripts/audio-monitor-toggle.sh`** — Toggles a PulseAudio loopback module (monitor playback on/off).

## Dependencies

- **Waybar** (with `hyprland` and `pulseaudio` support)
- **Hyprland** (for workspace module and `hyprctl`)
- **Kitty** (terminal for click actions)
- **power-profiles-daemon** (`powerprofilesctl`)
- **PulseAudio** / `pactl`
- **upower**
- **wl-clipboard** (`wl-copy`)
- **Nerd Font** (Iosevka Nerd Font)

Optional for click actions: `htop`, `btop`, `bluetui`, `impala`, `nmtui`, `pulsemixer`, `wiremix`.
