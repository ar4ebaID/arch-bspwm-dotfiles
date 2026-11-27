#!/bin/bash

killall -q polybar

polybar dp-0 2>&1 | tee -a /tmp/polybar.log & disown
polybar hdmi-0 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
