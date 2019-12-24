#!/bin/sh
killall -q polybar
while pgrep -u "$(id -ru)" -x polybar >/dev/null; do sleep 1; done

NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
export NETWORK_INTERFACE
polybar bar &

echo "Started Polybar"
