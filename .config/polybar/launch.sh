#!/bin/sh
pkill -x polybar
while pgrep -x polybar >/dev/null; do sleep 0.2; done
polybar main &
