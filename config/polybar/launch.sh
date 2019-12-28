#!/bin/sh
killall -q polybar
while pgrep -u "$(id -ru)" -x polybar >/dev/null; do sleep 1; done

NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
export NETWORK_INTERFACE

if type "xrandr"; then
  m=$(xrandr --query | grep " connected" | cut -d" " -f1 | head -n 1)
  echo "Adding bar for monitor $m"
  MONITOR=$m polybar bar &
else
  polybar bar &
fi

echo "Started Polybar"
