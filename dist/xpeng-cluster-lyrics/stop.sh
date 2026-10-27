#!/bin/bash
# Restoring the original sync requires restarting XUIService. Use while parked.
set -euo pipefail
cd "$(dirname "$0")"
adb shell sh /data/local/tmp/cluster-lyrics-stop.sh
if adb shell test -f /data/local/tmp/music-lyrics-sync-original; then
  bash music-sync-config.sh restore
  bash restart-xui.sh
fi
