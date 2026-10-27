# 小鹏仪表歌词控制代码包

构建日期：2026-10-28

## 当前状态

- 仪表第 4 槽已部署 v3 卡片资源，复用导航 MapBG 的 660×660 画布。候选与仪表 v3 读回哈希均为 `6bcbb9bd81512664f7a66742864a82df7097160492f235fd302706c1987c2a62`。
- 歌词控制 APK 和源码已包含。控制页支持歌词颜色、主/副字号、上下句间距和多行行距，设置文件由歌词 worker 读取。控制页已安装并打开。
- 歌词绘制 worker 已通过 ADB 启动。车机重启后需要重新启动。
- 普通控制 APK 暂不能自行启动 worker：本车 `android.car.permission.CAR_VENDOR_EXTENSION` 是 `signature|privileged`，APK 位于 `/data/app`。当前控制 APK只保存样式；车机重启后可在电脑运行 `bash start.sh`。应用内自启需系统特权安装及权限白名单。

## 快速构建

在仓库根目录运行：

```sh
bash build.sh
bash control-app/build-control-app.sh
```

现成 APK 位于 `artifacts/歌词控制.apk`，使用开发签名。为避免公开签名私钥，本包未包含调试 keystore。构建脚本会在本地生成密钥；若要覆盖更新已有安装，请保留本机 `build/lyrics-control/debug.keystore`。密钥丢失时，需先卸载旧版再安装新构建的 APK。

## 启停

歌词 worker 启动：

```sh
bash start.sh
```

停止 worker：

```sh
bash stop.sh
```

`stop.sh` 通过设备启停脚本停止 worker；如果此前改过原厂音乐同步属性，也会恢复并重启 XUIService。涉及车机操作时先确认安全驻车。

## 目录说明

- `src/`：LRC 解析和歌词渲染 worker。
- `control-app/`：横屏控制页 Android 应用。
- `patches/`：v3 KZB 候选和离线生成器。
- `instrument-backups/`：原厂活动资源、v2 回退资源、v3 活动读回资源。
- `research/`：仪表接口与 KZB 资源研究所需材料。
- `artifacts/`：可运行 DEX JAR、控制 APK、仪表部署辅助 JAR 与开发签名。

本包未包含整份 OTA 固件，也未包含仪表 rootfs 的完整镜像。
