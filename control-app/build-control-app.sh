#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
SDK_ROOT="${ANDROID_SDK_ROOT:-/Users/wayne/Library/Android/sdk}"
ANDROID_JAR="$SDK_ROOT/platforms/android-30/android.jar"
BUILD_TOOLS="$SDK_ROOT/build-tools/36.1.0"
OUT="build/lyrics-control"
mkdir -p "$OUT/classes" "$OUT/dex"
rm -rf "$OUT/classes" "$OUT/dex"
mkdir -p "$OUT/classes" "$OUT/dex"
javac -source 8 -target 8 -bootclasspath "$ANDROID_JAR" -d "$OUT/classes" control-app/src/com/xpeng/clusterlyrics/control/LyricsControlActivity.java
"$BUILD_TOOLS/aapt" package -f -M control-app/AndroidManifest.xml -S control-app/res -I "$ANDROID_JAR" --min-sdk-version 28 --target-sdk-version 28 --version-code 1 --version-name 1.0 -F "$OUT/lyrics-control-unsigned.apk"
"$BUILD_TOOLS/d8" --min-api 28 --output "$OUT/dex" "$OUT"/classes/com/xpeng/clusterlyrics/control/*.class
(cd "$OUT/dex" && zip -q -j ../lyrics-control-unsigned.apk classes.dex)
if [ ! -f "$OUT/debug.keystore" ]; then
  keytool -genkeypair -storepass android -keypass android -alias androiddebugkey -keystore "$OUT/debug.keystore" -dname "CN=Android Debug,O=Android,C=US" -keyalg RSA -keysize 2048 -validity 10000 >/dev/null 2>&1
fi
"$BUILD_TOOLS/zipalign" -f 4 "$OUT/lyrics-control-unsigned.apk" "$OUT/lyrics-control-aligned.apk"
"$BUILD_TOOLS/apksigner" sign --ks "$OUT/debug.keystore" --ks-pass pass:android --key-pass pass:android --out "$OUT/歌词控制.apk" "$OUT/lyrics-control-aligned.apk"
echo "Built $OUT/歌词控制.apk"
