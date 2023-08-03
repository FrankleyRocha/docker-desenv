#!/bin/bash
export DISPLAY=:0
Xvfb "$DISPLAY" -screen 0 1024x768x24 &
xterm &
x11vnc -display "$DISPLAY" -bg -nopw -listen localhost -xkb -forever &
/usr/share/novnc/utils/launch.sh --listen 8080
