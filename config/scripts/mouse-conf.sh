#!/bin/bash

cursor_speed="-0.7"

for id in $(xinput --list --id-only); do
    if xinput --list-props "$id" 2>/dev/null | grep -qF 'libinput Accel Speed ('; then
        xinput --set-prop "$id" "libinput Accel Speed" "$cursor_speed"
    fi
done
