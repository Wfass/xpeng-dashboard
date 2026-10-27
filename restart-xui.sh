#!/bin/bash
# Only use in a parked maintenance window: XUIService also provides other vehicle UI services.
set -euo pipefail
adb shell 'target_pid=$(pidof com.xiaopeng.xuiservice); case "$target_pid" in ""|*[!0-9]*) echo "Cannot identify XUIService main process" >&2; exit 1;; esac; echo "Restarting XUIService main process: $target_pid"; am crash --user 0 "$target_pid"'
