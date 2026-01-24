#!/bin/sh

if [ -z "$DISPLAY" -a -z "$WAYLAND_DISPLAY" ]; then
    case $(tty) in /dev/tty[1-4]) exec niri --session;; esac
fi
