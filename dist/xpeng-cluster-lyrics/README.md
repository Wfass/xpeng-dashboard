# 小鹏仪表歌词与控制页

## 当前状态

仪表第 4 槽的 v3 歌词卡片资源已部署，复用地图卡片 660×660 的大画布。按用户最新要求，歌词绘制后台已通过 ADB 启动，控制页也已在车机打开。

歌词控制应用现支持白天/夜间分色、自动跟随车机日夜主题、透明背景、12–110 px 主歌词字号及最小字号、两行/三行切换、上下句字号与间距、歌词宽度/垂直位置/单句换行数/行距、歌名/歌手显示与字号、字重和背景透明度。歌词切换加入约 0.5 秒上滑淡入淡出。默认图片背景透明，避免地图画布周围出现黑块。控制页只保存样式文件；绘制进程运行后约每秒读取并应用。旧版设置会迁移，保留已有字号、间距和颜色。

## 控制页构建

```sh
bash control-app/build-control-app.sh
```

APK：`build/lyrics-control/歌词控制.apk`（Android 9/API 28 起，版本 1.2），已安装并在车机打开。设置保存于应用外部文件目录 `Android/data/com.xpeng.clusterlyrics.control/files/lyrics-style.json`。后台当前运行；车机重启后仍需执行 `bash start.sh`。普通 APK 缺少系统特权，不能自行启动歌词 worker。

`start.sh` 会重新编译并启动歌词后台；`stop.sh` 用于停止。启动后台后，控制页改动会随下一帧/下一次歌词刷新生效。

## 数据与接口

- 从 `com.xiaopeng.musicradio` 的媒体会话 `lyricInfo.lyricContent` 读取 LRC。
- 根据 `PlaybackState` 的位置、更新时间、播放速度同步当前句，暂停时不推进。
- 原厂 `XUIService` 的 `NewIcmHandler` 使用 JSON：`enable=1`、`msgtype=7`、`music={song,artist,progress,total,startPosition,status}`、`reporttime`。
- `song` 替换为当前句；`artist` 替换为原歌名和歌手。进度及总时长使用秒。
- 使用 `xp_shared_memory.queueMemoryBuffer(0x21701608, fd, length)`，内容为 4 字节小端 JSON 字节长度及 UTF-8 JSON，不附封面，与原厂不更新封面时的调用方式一致。
- 每次歌词变化提交，另每秒补发一次。原厂切歌等操作仍可能发送歌名信息，是否存在可见覆盖需现场观察；此版本没有拦截原厂进程。

## 当前核实结果

用户确认先前导航图片通道能显示歌词，但与地图交替闪烁。用户要求保留地图后，已停止图片进程，恢复独立 MiniMapService，日志确认地图、主导航、定位服务均在运行。

本车原厂程序已尝试通过 `sendLyricsMessage` 向 `0x2170166e` 发送独立歌词消息，但日志显示底层 SomeIP 返回 `ICM_LYRICS_MSG fail, client (0x0)`，随后抛出设置失败异常。因此不能把该接口存在当作本车支持独立歌词显示的证据。

当前音乐通道版本已实际提交成功，日志确认歌词索引及播放进度正常变化。物理仪表音乐卡片的显示效果仍待用户确认。

旧导航图片渲染入口已从源码移除，当前启动、停止脚本不调用地图控制接口。

## 源码

- `src/MusicLyrics.java`：音乐卡片歌词同步与音乐信息恢复。
- `src/ClusterLyrics.java`：LRC 解析、Binder 反射辅助函数。
- `build.sh`：编译 Android DEX JAR。
- `start.sh` / `stop.sh`：部署与启停。
- `research/`：本车 APK、接口与诊断证据。

## 原厂歌名覆盖：已定位，待应用

用户确认音乐卡片歌词与歌名交替。`XUIService` 的 `ICMCommunicator.sendMediaInfoToIcm()` 在原厂音乐来源下检查 `Config.SendXpMusicInfoToIcm`；该值在类初始化时从 `persist.sys.send.xpmusic.toicm` 读取，默认 true。

本车 shell 实测可写此属性。探测写入 false 后已经恢复原先的空值（采用默认 true），尚未重启 XUIService，因此当前没有关闭原厂同步。

`music-sync-config.sh apply` 保存原值并设置 false；`restore` 恢复保存的原值。两者都不自动重启服务。XUIService 是 UID 1000 的 persistent 核心服务，属性更改要等其进程重新启动才生效；重启需安排在用户确认的驻车窗口。不能仅凭属性值已改变就宣称覆盖已修复。

后续需验证：原厂音乐识别满足 `isXpMusic()`、原厂歌曲消息不再回写、歌词卡片稳定、中控音乐与地图功能正常、恢复开关并重启后能回到原厂行为。

## 本车已应用原厂同步开关

在用户明确确认车辆驻好、允许重启后，已保存原属性值（空值，默认 true），设置 `persist.sys.send.xpmusic.toicm=false`，并按精确主进程 PID 重启 XUIService。主进程从 1030 更换为 4731。地图、导航、定位服务保持运行，歌词工作进程持续提交。

注意：按包名执行 `am crash` 可能选中 `:opencarsvc` 子进程，不能保证音乐配置重新加载；`restart-xui.sh` 使用 `pidof com.xiaopeng.xuiservice` 获取精确主进程 PID。

本配置为持久属性，会跨重启保留。`stop.sh` 现在会停止歌词、恢复原属性，并重启 XUIService 以恢复原厂音乐同步，需在驻车时执行。仅停止工作进程不会使已加载的原厂同步配置立即恢复。

完全恢复后再次启用：驻车时执行 `music-sync-config.sh apply`、`restart-xui.sh`，待 XUIService 恢复，再执行 `start.sh`。如果开关已为 false 且已生效，仅执行 `start.sh` 即可。`start.sh` 本身不重启 XUIService。

## 地图残留画面与音乐图片版

用户反馈地图仍停留在旧歌词画面。仅恢复 MiniMapService 服务并不等于已输出新地图：同尺寸更新可能不触发渲染 Surface 重建。已调用原厂 `com.xiaopeng.montecarlo.minimap.RESET`，日志确认 Surface 重建，随后持续发送新的地图图片（28426、31478、31522 字节）。此前把服务运行状态等同于实际地图恢复的判断不充分。

音乐版本现在把歌名、歌手保留在原字段，并通过音乐消息附带 660×660 PNG 歌词图：歌名、歌手、前一句、当前句高亮、后一句。格式参照原厂 ICMHandler.getBitmapByte() 的 PNG 编码，传输仍为 0x21701608，未写入导航图片通道。

车端已成功生成并提交图片，首帧日志 imageBytes=33670。首次绘制遇到默认字体初始化断言，已通过显式设置 sans-serif 字体修复，并验证进程持续运行。

图片在原厂音乐卡片内的实际显示范围由仪表布局决定。660×660 源图片不能单独证明可以占满整个音乐页；仍待现场确认。若仅显示在封面框内，实现真正全页需要仪表侧布局能力，当前接口分析尚未找到该能力，不能宣称已实现全页歌词。

## 整页音乐歌词的当前阻碍

现场确认：660×660 PNG 被仪表缩放进固定音乐封面框，不能占满音乐页。已核对车端 `NewIcmHandler`、`MusicBean`、`MusicIcmBean`、`CarIcmManager`、`XpVehicleService`，音乐消息结构未发现封面位置、显示宽高、全页模式字段。

`dumpsys display` 仅显示 Android 中控屏 2400×1200，没有可由 Android Activity/Presentation 直接绘制的仪表显示设备。早先的 660×660 全页效果依赖导航图片属性 0x2170161d，用户要求保留地图，因此不能复用该效果作为音乐页实现。

框架还存在通用 InfoCard/OSD 字符串接口，但当前缺少本车对应消息格式、模板定义与实际支持证据，未向车辆发送猜测的模板、布局或卡片控制指令。

下一步需要仪表端 UI/固件、可核实的全页音乐或歌词协议，或仪表端可访问的调试入口。仅对中控原厂音乐应用做 hook 可以改变音乐数据，无法据此保证能改变仪表的固定封面布局。当前保留地图正常工作的状态，音乐封面歌词程序仍运行。

## 歌词样式更新（2026-10-30）

按用户反馈修正自动日夜取值映射（原来白天取了夜间颜色）。新增两行/三行布局按钮，以及切歌时约 0.5 秒上滑淡入淡出。控制 APK 版本 1.2 已安装并打开，worker 已重启并提交歌词图片；原有样式 JSON 未被覆盖。最终日夜配色仍需在仪表实车画面分别观察确认。

## 新增独立歌词卡片：准备中

已读取本车 ICarProperty.getPropertyArray()：ICM_INFOCARD_ADD(0x21101613)、UPDATE(0x21101614)、REMOVE(0x21101615) 均公开为可写字符串属性；不能把属性存在当作实际模板可用的证据。

当次读取车速 52.9，因此未发送新增、更新、删除卡片指令。

`LyricCardTrial` 已编译至单独 `/data/local/tmp/lyric-card-trial.jar`，预览完成。它只操作唯一 ID `wayne_lyrics_01`，不会全量刷新或替换原厂卡片列表，也不会修改地图或车况数据。所有变更入口要求读取车速为 0 且档位为本车此前驻车读数 4，接口读取异常直接退出。

候选 JSON 外层 `msgId` / `card`、内层字段来自 CarIcmManager.InfoCard_03 / InfoCard_A1。`cardType=A1` 仅根据模型名称推断，尚无真实调用样本确认；删除请求仅携带相同 cardId 的格式也未验证。测试属于验证该候选协议，不可声称已新增成功。先做一次新增并检查仪表与底层日志；若底层不支持或格式不接受，停止试探，不枚举覆盖其他卡片。

## 新卡片实车请求结果（2026-10-23）

09:58 驻车检查通过后，已使用同一个独立 ID `wayne_lyrics_01` 提交新增请求。调用正常返回，车机 SomeipClient 日志确认发送到 `[ICM] [2240:CDU_ICM_InfoCardAdd:6]`，消息长度 232 字节。

这只证明发送到仪表通信接口，不能证明仪表支持候选 A1 模板或已创建卡片。已请用户在仪表卡片列表中查看“歌词 / 歌词卡片测试”，等待实际显示结果后再接入持续歌词。没有执行全卡片刷新、替换或占用地图/车况。

### 新卡片现场反馈：未显示

用户确认仪表卡片列表没有出现新增卡片。随后只读检查 ICM_ALLCARD_REFRSH，接口返回“ECU not sending related data”，无法从该属性取得卡片列表或确认结果。公开检索 setIcmInfoCardAdd / CarIcmManager cardType 也未找到可核实的实际消息样本。

当前结论是“候选消息未产生可见卡片”，不是“本车绝对不支持信息卡片”。未验证字段包含 cardType=A1、msgId 取值规则、消息封装和新增/删除消息格式。后续必须取得真实卡片消息或仪表端模板定义，不再枚举猜测值。

已对独立测试 ID wayne_lyrics_01 提交删除请求作为清理；删除调用返回仅代表发送请求，不等同于仪表确认。原厂卡片列表、地图与车况未被替换。

## 已取得仪表固件并定位真实布局

用户要求继续后，已从原厂工具核实 2221 FTP 维护入口，并只读导出当前日期对应的仪表更新包。现已取得仪表 Linux 文件系统、Kanzi 界面程序与 card.kzb；封面240×240的限制已在真实音乐场景中定位，不再只依赖中控接口推测。

细节与下一步见 research/ICM_FINDINGS.md；原件校验见 research/icm-original-manifest.json。未执行仪表写入、刷写或重启。真正整页布局仍未完成。
