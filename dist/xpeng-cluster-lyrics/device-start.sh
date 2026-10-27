#!/system/bin/sh
BASE=/data/local/tmp/music-lyrics
if [ -f "$BASE.pid" ]; then
  PID=$(cat "$BASE.pid")
  if [ -r "/proc/$PID/cmdline" ] && tr '\000' ' ' < "/proc/$PID/cmdline" | grep -q 'MusicLyrics'; then
    echo "Already running: $PID"; exit 0
  fi
fi
export CLASSPATH=/data/local/tmp/cluster-lyrics.jar:/system/framework/android.car.jar
nohup app_process /system/bin MusicLyrics > "$BASE.log" 2>&1 < /dev/null &
echo $! > "$BASE.pid"
echo "Started music card lyrics: $(cat "$BASE.pid")"
