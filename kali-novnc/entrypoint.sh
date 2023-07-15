#!/bin/bash

# create a dbus system daemon
#dbus-daemon --system

x11vnc -create -env FD_PROG=/usr/bin/xfce4-session \
   -env X11VNC_FINDDISPLAY_ALWAYS_FAILS=1 \
   -env X11VNC_CREATE_GEOM=${1:-1024×768x24} \
   -gone 'killall Xvfb' \
   -xkb \
   -noxrecord \
   -noxfixes \
   -noxdamage \
   -nopw \
   -forever \
   -bg &

/usr/share/novnc/utils/novnc_proxy --listen 8080