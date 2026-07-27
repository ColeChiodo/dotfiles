#!/bin/bash
# This script is a hotfix
# for some reason, mirroring a monitor through lua, it creates a workspace BEFORE mirroring the monitor. 
# so, once the monitors are mirrored, there is a workspace that is owned by the external monitor that cant be accessed because the monitor is mirroring.

hyprctl eval 'hl.monitor({ output="HDMI-A-1", mode="preferred", position="0x0", scale=1, mirror="eDP-1" })'
