#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
polybar bar &

echo "Started Polybar"