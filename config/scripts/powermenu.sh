#!/bin/env bash

options=("󰍃 Logout" " Suspend" " Reboot" " Shutdown")
choice=$(printf "%s\n" "${options[@]}" | rofi -m -1 -dmenu -p "" \
	-theme-str 'window {width: 540px; height: 220px;} inputbar {enabled: false;} element {padding: 16px 0;} element-text {text-align: center;}')

case "$choice" in
  *"Logout"*) pkill -KILL -u "$USER" ;;
  *"Suspend"*) systemctl suspend;;
  *"Reboot"*) reboot ;;
  *"Shutdown"*) systemctl poweroff ;;
esac
