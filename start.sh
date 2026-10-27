#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
bash build.sh
adb push build/cluster-lyrics.jar /data/local/tmp/cluster-lyrics.jar
adb push device-start.sh /data/local/tmp/cluster-lyrics-start.sh
adb push device-stop.sh /data/local/tmp/cluster-lyrics-stop.sh
adb shell sh /data/local/tmp/cluster-lyrics-stop.sh
adb shell sh /data/local/tmp/cluster-lyrics-start.sh
