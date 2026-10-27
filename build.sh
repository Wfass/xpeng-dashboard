#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
SDK="${ANDROID_HOME:-$HOME/Library/Android/sdk}"
rm -rf build/classes build/dex
mkdir -p build/classes build/dex
javac -source 8 -target 8 -bootclasspath "$SDK/platforms/android-30/android.jar" -d build/classes src/*.java
"$SDK/build-tools/36.1.0/d8" --min-api 28 --output build/dex build/classes/*.class
(cd build/dex && zip -q -j ../cluster-lyrics.jar classes.dex)
