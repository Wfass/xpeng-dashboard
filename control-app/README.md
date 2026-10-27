# 歌词控制页

独立横屏 Android 应用，面向仪表歌词渲染参数。包含实时预览和自动保存，可选白/青/金/绿/粉/紫预设或自定义 RGB；可调当前歌词字号、上下句字号、上下句间距、多行歌词行距。

应用将设置保存到自身外部文件目录 `Android/data/com.xpeng.clusterlyrics.control/files/lyrics-style.json`。`MusicLyrics` 读取同一路径，在生成下一张仪表歌词图片时应用样式。控制页本身不启动歌词 worker，也不调用仪表共享画面服务，因此打开设置页不会持续抢仪表画面。

从仓库根目录构建：`bash control-app/build-control-app.sh`。生成文件为 `build/lyrics-control/歌词控制.apk`，包名 `com.xpeng.clusterlyrics.control`，minSdk 28。当前 APK 使用本地 debug 签名，适合本车侧载/开发，不是商店发布签名。

控制 APK 已安装并打开；歌词 worker 当前由 ADB 启动。构建 APK 本身不会启动 worker。普通 APK 没有 `android.car.permission.CAR_VENDOR_EXTENSION`（本车定义为 `signature|privileged`），因此车机重启后 worker 仍需 ADB 启动；见包内 README。
