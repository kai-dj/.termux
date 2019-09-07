#!/data/data/com.termux/files/usr/bin/bash
BATTERY_LEVEL=$(su -c 'dumpsys battery | grep level | cut -d ":" -f2 | xargs')
termux-tts-speak -l en "battery is at ""$BATTERY_LEVEL"" percent."
