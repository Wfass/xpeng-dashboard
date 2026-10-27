#!/bin/bash
# Adjust only the original music-to-instrument sync switch. Does not restart services.
set -euo pipefail
STATE=/data/local/tmp/music-lyrics-sync-original
case "${1:-}" in
  apply)
    adb shell 'test -e /data/local/tmp/music-lyrics-sync-original || getprop persist.sys.send.xpmusic.toicm > /data/local/tmp/music-lyrics-sync-original'
    adb shell setprop persist.sys.send.xpmusic.toicm false
    ;;
  restore)
    adb shell 'if [ -f /data/local/tmp/music-lyrics-sync-original ]; then previous=$(cat /data/local/tmp/music-lyrics-sync-original); setprop persist.sys.send.xpmusic.toicm "$previous"; else echo "No saved switch value" >&2; exit 1; fi'
    ;;
  *) echo 'Usage: bash music-sync-config.sh apply|restore' >&2; exit 2 ;;
esac
adb shell getprop persist.sys.send.xpmusic.toicm
