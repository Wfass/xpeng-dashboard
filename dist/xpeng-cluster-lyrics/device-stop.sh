#!/system/bin/sh
BASE=/data/local/tmp/music-lyrics
if [ -f "$BASE.pid" ]; then
  PID=$(cat "$BASE.pid")
  if [ -r "/proc/$PID/cmdline" ] && tr '\000' ' ' < "/proc/$PID/cmdline" | grep -q 'MusicLyrics'; then
    kill "$PID"; echo "Stopped: $PID"
  fi
  rm -f "$BASE.pid"
fi
export CLASSPATH=/data/local/tmp/cluster-lyrics.jar:/system/framework/android.car.jar
app_process /system/bin MusicLyrics --restore
