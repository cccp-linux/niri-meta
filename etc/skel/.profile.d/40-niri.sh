#!/bin/sh

if [ -z "$DISPLAY" -a -z "$WAYLAND_DISPLAY" ]; then
    case $(tty) in /dev/tty[1-3]) exec niri --session >~/.local/state/niri.log 2>&1;; esac
fi
