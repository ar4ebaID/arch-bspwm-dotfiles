#!/bin/bash

cursor_speed="-0.7"

for id in $(xinput list --id-only); do
    if xinput --list-props "$id" 2>/dev/null | grep -q "libinput Accel Speed (290)"; then
        xinput --set-prop "$id" 290 -0.7
    fi
done
