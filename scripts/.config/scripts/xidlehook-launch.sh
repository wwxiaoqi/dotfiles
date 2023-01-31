#!/usr/bin/env bash
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 60 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; betterlockscreen -l' \
    '' \
  --timer 3600 \
    'systemctl poweroff' \
    ''
