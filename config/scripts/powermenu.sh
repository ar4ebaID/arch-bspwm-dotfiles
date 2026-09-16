#!/bin/env bash

options=("󰍃 Logout" " Reboot" " Shutdown")
choice=$(printf "%s\n" "${options[@]}" | rofi -m -1 -dmenu -p "" \
	-theme-str 'window {width: 540px; height: 220px;} inputbar {enabled: false;}')

case "$choice" in
  *"Logout"*) pkill -KILL -u "$USER" ;;
  *"Reboot"*) reboot ;;
  *"Shutdown"*) systemctl poweroff ;;
esac
