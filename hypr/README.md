# Hyprland

![Hyprland Example](../.resources/hyprland.png)

## Structure

```
.config/hypr/
├── hyprland.conf        # Main config: keybinds, monitors, input, window rules
└── scripts/
    ├── monitor-hotplug.sh    # Auto-disable/enable internal monitor on HDMI hotplug
    ├── mute-active-window.sh # Mute/unmute the active window's audio
    └── startup.sh            # Launches D-Bus, GNOME Keyring, and daemons
```

## Keybinds

| Key | Action |
|---|---|
| `SUPER + Q` | Open terminal (kitty) |
| `SUPER + W` | Close active window |
| `SUPER + E` | Open file manager (thunar) |
| `SUPER + V` | Toggle floating |
| `SUPER + Space` | App launcher (wofi) |
| `SUPER + R` | Floating terminal (wiremix) |
| `SUPER + F` | Fullscreen |
| `SUPER + Shift + S` | Region screenshot (clipboard) |
| `SUPER + M` | Mute active window audio |
| `SUPER + Alt + Space` | Switch keyboard layout (US/JP) |

## Dependencies

- **Hyprland** — compositor
- **kitty** — terminal
- **wofi** — app launcher
- **thunar** — file manager
- **waybar** — status bar
- **swaync** — notification daemon
- **hyprshot** — screenshots
- **fcitx5** — Japanese input
- **playerctl** — media controls
- **wpctl** (WirePlumber) — audio controls
- **brightnessctl** — backlight controls
- **linux-wallpaperengine** — animated wallpaper
- **gnome-keyring** — secret storage
- **jq** and **pw-dump** (PipeWire) — used by mute script
