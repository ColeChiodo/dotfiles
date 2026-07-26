#!/usr/bin/env bash

hyprctl dispatch moveworkspacetomonitor 2 eDP-1

# Start D-Bus session
export $(dbus-launch)

# Start GNOME Keyring and export vars
eval $(gnome-keyring-daemon --start --components=secrets)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
