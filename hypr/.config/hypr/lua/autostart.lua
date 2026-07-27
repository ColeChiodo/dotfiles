-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function () 
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("waybar & blueman-applet & swaync")
  hl.exec_cmd("/usr/bin/linux-wallpaperengine --silent --no-fullscreen-pause --screen-root eDP-1 3582809467")
  hl.exec_cmd("~/.config/hypr/scripts/startup.sh & fcitx5 -d")
  hl.exec_cmd("elephant service enable & systemctl --user start elephant.service & walker --gapplication-service")
  hl.exec_cmd("~/.config/hypr/scripts/external-monitor-quickfix.sh")
end)
