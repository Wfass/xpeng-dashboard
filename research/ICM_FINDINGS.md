# 仪表直接分析：2026-10-23

目标：独立歌词页或整页音乐歌词，保留地图及车况。

## 本次取得的实际进展

1. 从本车原厂诊断配置确认仪表地址 172.20.1.40。
2. 开发工具的 FtpClientConnector 调用实际使用 2221 端口。该端口已确认是 FTP（220 greeting），不是 SSH；普通 SSH、Telnet、ADB 等已检查端口均未发现可用连接。
3. 使用原厂工具内已有维护登录信息，只读登录成功。凭据不写入此报告，也不包含在辅助工具输出中。
4. FTP 根目录可见 Log、ota、ota_download、property、update.img、update.squashfs，表现为仪表数据分区入口，尚未获得系统根目录或命令执行入口。
5. 只读下载 update.squashfs（136323072 字节），解出 900MiB rootfs.ext4，以及内核、引导文件等。文件日期与仪表报告固件的 2024-10-09 一致，但还未对正在运行的系统文件做逐一哈希比对。
6. 从本地固件副本提取 /app/hmi/bin/ECluster、card.kzb、card.kzb.txt、xml/card.xml 和部分客户端库。没有修改或上传仪表固件，没有重启仪表。

原件校验清单：icm-original-manifest.json。所有解包与反汇编只针对本地副本。

## 真正的布局入口

仪表使用 Kanzi。application.cfg 规定 1920×720 的仪表窗口。

音乐页：card.kzb，路径 /Prefabs/Card_Music。

card.kzb.txt 明确列出：
- Prefabs/Card_Music/Card_Music/Image/NoneAlbum/Album
- Prefabs/Card_Music/Card_Music/Image/inImage/InImage
- Prefabs/Card_Music/Card_Music/Image/DefaltCover
- Prefabs/Card_Music/Card_Music/Text/Name/String1_Static
- Prefabs/Card_Music/Card_Music/Text/Singer/String1_Static

xml/card.xml 仅看到 Music.String1、String2、SoundState、BarValue、IsBarShow、PlayState、ImageState；未看到独立歌词场景绑定。

ECluster 中存在 GetMusicData、_HandleOnMusicEvent、KanziCard::refreshImageMusicTexture 等符号，以及 DataLayer.Card.Image.MusicTexture 字符串。未从界面可执行文件中找到 InfoCardAdd 的直接处理符号或对应通用卡片字段，通信客户端库中仍保留这些属性。此差异支持“框架接口存在但当前界面未接入”的假设，尚不能单凭符号搜索下定论。

## 已完成的只读资源解析

inspect_kzb.py 结合固件中未剥离的 Kanzi::KzbFile::loadFileDictionary 实现，验证了 card.kzb 的全部 446 个资源条目边界。

音乐 prefab 条目：偏移 131692（0x2026c），长度 4149，未压缩，metaclass 37。

导出的 property-names.json 确认：Node.Height 为属性索引21、Node.Width为属性索引80。音乐 prefab 中：
- 相对偏移 0x22b：Height=240；0x23b：Width=240。
- 相对偏移 0x3d4：Height=240；0x3dc：Width=240。
- 0x61a 另有 Width=240，附近 Height=8，可能为进度条，不能和封面节点一并放大。

这些尺寸解释了大源图仍被缩小进封面框。它们尚未全部关联到可视节点的层级、位移、遮罩和裁剪，不能只替换240就声称全页布局正确。

## 下一步的具体工作与边界

- 完成 /Prefabs/Card_Music 子节点及属性反序列化，关联图像节点、父节点、遮罩、位移与裁剪。
- 在本地副本中只改音乐场景的布局，保留地图、车况、速度、告警等其他场景，生成可复核的逐属性差异和原件恢复文件。
- 核实仪表是否存在单独资源加载/热更新机制；目前FTP仅访问数据分区，不能直接替换 /app/hmi/bin/card.kzb，常规SSH未开放。
- 在具备验证方式和恢复路径之前，不把猜测的二进制改动上传为OTA包，不触发完整固件更新。

已证实的路径是“仪表侧 Kanzi 音乐场景布局”，不是继续猜InfoCard的A1值。当前仍运行中控音乐封面大字歌词；真正独立/整页歌词尚未完成。

## 自定义卡片选项：资源与索引耦合（2026-10-28）

只读解析 `card.kzb` 的 `CardStateManager` 后确认内置卡片模板顺序为：Navigation、Music、Car、Power、Trip、SensorFault，共 6 项。`LeftListStateManager` 在 `List_Icon_5_Left` 与 `List_Icon_6_Left` 之间切换；两种选择器资源都已存在。

ECluster 的 `LampModel::refreshLeftCardMaxNum()` 根据配置字段设为 5 或 6，左右索引处理函数按该上限回绕；`KanziCard::refreshCardIndex()` 再把选中的索引写入持久属性，并刷新当前卡片与选择列表。因此新增第 7 个选项至少要同步修改：卡片 prefab、`CardStateManager` 状态、选择器标题/图标/列表数据、索引上限/回绕与 ECluster 的卡片更新路由。只向 `card.kzb` 加一个 prefab，不足以让菜单出现新卡片；只改仪表通信属性也不会生成自定义 Kanzi 场景。

较低复杂度的首个离线原型是复用 Trip 卡片索引（当前序号 4），把 `Card_Trip` 场景替换成自定义内容并改其选择图标/标题，保留其余卡片和原生索引。真正增加独立第 7 项则要改 ECluster 原生程序；当前没有其源码或已验证的仪表资源安装/回滚通道，不能承诺可上车运行。

此前 `ICM_INFOCARD_ADD` 候选消息虽然成功发送到通信层，现场卡片列表未出现新项；该路径不能作为自定义 Kanzi 卡片添加成功的证据。此次只读本地资源和二进制分析，没有修改或发送任何仪表资源。

进一步确认本地工作目录只有编译后的 `card.kzb`，没有 Kanzi Studio 工程文件、可用的 Kanzi 资源编译器或场景序列化器。这阻止了从空白场景新建任意 Kanzi 节点，但可以通过复制已有 prefab、改已知属性并重排 KZB 目录，构造一个离线复用候选。`Card_Trip` 原有节点是行程标题、数值、单位和阴影；后续歌曲+歌词候选因此复用完整的 `Card_Music` prefab，而非在 Trip 节点上凭空造控件。

真正新增第七槽仍要改 ECluster 里的卡片上限、列表状态及路由，并且需要可靠的仪表资源替换与恢复通道。下一节记录的歌曲+歌词 KZB 是静态结构通过的本地候选；Kanzi 运行时加载、仪表显示及回滚仍未验证，也没有写入设备。

## 歌曲+歌词卡片候选（2026-10-28）

用户要求开始制作歌曲+歌词页面。已生成仅供本地检查的 `patches/card.song-lyrics.UNVALIDATED.kzb`：保留原 6 项索引和 `Card_Music` 原卡片，将索引 4 的 `Card_Trip` 资源替换为 `Card_Music` prefab，复用 `MusicStateManager`；把歌词及备用封面节点的宽高由 240 调至 600；在左右 5/6 项选择器把“里程”改为“歌词”，并复用已有媒体图标。生成器为 `patches/make_song_lyrics_card_candidate.py`，报告为 `patches/song-lyrics-card-candidate.json`。

静态检查通过：KZBF 资源目录仍为 446 项；除 Trip prefab 和三个卡片选择器外，其余 442 个资源载荷逐字节未变；候选仍保留原始音乐卡片资源。候选 SHA-256 为 `1529c9da55be139ff0c395d211666ead9e02a53bc4744fcba15f7c258b90b4d1`。由于本地没有匹配的 Kanzi 工程/Studio 运行时，目前未验证场景能否由 Kanzi 加载、600×600 图片是否与歌名/歌手文字重叠、仪表实机显示效果及资源替换/回滚方式。此次只生成本地文件，未向车辆发送或写入资源。

## 写入路径复核（2026-10-28）

用户授权写入后进行了只读连接检查。ADB 在线设备 `10.159.151.36:5555` 标识为 E28 中控；读取 `ParkProbe` 返回当前车速 `0.0`、挡位 `4`（P）。这证明可通过中控查询车辆状态，不代表该 ADB 连接能访问仪表 Linux 文件系统。

仪表此前确认的入口仍为 `172.20.1.40:2221` FTP，映射到 OTA/数据分区；没有已验证的 `/app/hmi/bin/card.kzb` 单文件替换通道。进一步只读检查 `research/icm-package/update`（ARM ELF）中的升级程序字符串，发现其更新流程涉及向 eMMC 写 U-Boot、内核和 `rootfs.ext4`（`/dev/mmcblk0`、`/dev/mmcblk0p1`），完成后重启；未找到单独 KZB 安装和回滚入口证据。因此该途径属于整套系统更新，不能用于未经 Kanzi 运行时验证的单文件试验。

当前没有写入仪表。继续部署前需要获得经验证的单资源加载/回滚机制，或可实际恢复的整套原厂镜像及刷写流程，并先用匹配 Kanzi 运行时验证候选资源。

## 双地图卡片核查

用户提出两侧都选地图，一侧显示地图、一侧显示歌词。对本车 ECluster 的实际反汇编已确认：

- LampModel::solveLeftCardConflict(int&,int)（0x0d3f20）和 solveRightCardConflict（0x0d3f8c）比较左右卡片索引，相同则加一并调用handleLeft/RightCardIndex，随后保存调整后的索引。原厂主动排除左右同一类型卡片。
- KanziCard::refreshImageNaviTexture（0x0d960c）只有单个纹理更新调用，没有左右侧参数。资源中也只见一个DataLayer.Card.Image.NaviTexture。
- 因此仅强设双导航不能取得两路独立画面；即便绕过卡片冲突，也仍共用导航纹理。
- 后续值得验证的资源级方案：把导航的大图布局复制到音乐卡片，保持不同卡片索引，并绑定已有独立MusicTexture，从音乐0x21701608接收歌词图，原导航纹理不动。这还需要完整场景绑定修改和有效的仪表资源替换路径；未实现或部署。

证据文件：dual-map-disassembly.txt。此次仅本地反汇编，没有向车辆发送左右卡片切换或冲突绕过指令。

## 写入前现场备份（2026-10-28）

用户要求继续写入并先备份。通过仪表只读 FTP `RETR` 取得 `/update.squashfs`、`/update.img`、`/ota_download/OTA_PACKAGE.DAT`、`/ota_download/OTA_PACKAGE.SIG`，以及 `persist.last.partition`、左右卡片索引。文件和 SHA-256 清单见 `backups/ICM-20261028-readonly/backup-manifest.json`；OTA 包原样归档于同目录。`OTA_PACKAGE.DAT` 是包含 `update.squashfs` 与 `update.img` 的 GNU tar。现场下载的 `update.squashfs` 与 10 月 23 日留存副本字节完全一致；现场属性读数为 `persist.last.partition=B`、左卡片 `0`、右卡片 `1`。同目录中的 `card.kzb.from-OTA-image.NOT-LIVE` SHA-256 为 `a742743904465ba1932f4363ca034e385490132a758a7a29412616ed56920eac`，但它来自 OTA 镜像提取，不是从运行分区直接读取。

备份边界：FTP 只能读 OTA/数据分区，未取得活动 rootfs 或活动 `/app/hmi/bin/card.kzb` 的现场副本；对该文件的只读 RETR 尝试未返回文件，远端读取进程被终止，随后根目录列表仍正常。备份也没有经过真实回刷验证。因此这是现场 OTA/部分持久属性备份，不是已验证的仪表回滚方案。该次操作只执行 FTP 读取和本地归档，没有向仪表写入、上传或触发升级。歌曲+歌词候选仍未通过 Kanzi 运行时验证，故没有开始覆盖仪表资源。

## U-Boot 双启动与回退线索（2026-10-28）

重新核对 OTA 镜像中的 `research/icm-package/u-boot.bin`，发现它包含 `boot fail 3 times, cur boot partition = %d, change boot.`、`boot A`、`boot B` 文本及两组启动参数：一组 rootfs 为 `/dev/mmcblk0p1`，另一组为 `/dev/mmcblk0p5`，各自从不同 eMMC 扇区加载内核。这是 A/B 式备用启动槽和失败后切换的强线索，修正了此前“尚无备用启动线索”的判断。

仍不能把它当作已验证的恢复方案：这里只解析了 OTA 包中的 U-Boot，不是车上当前 U-Boot/启动环境；没有确认车上活动槽、备用槽内容、失败计数如何清零或升级后是否仍完整。`research/icm-package/update` 还会调用 `./fdiskmmc.sh`（该脚本未在已解包文件中找到），随后写 U-Boot、内核和 `/dev/mmcblk0p1` rootfs 并重启；因此分区布局是否会被重建也未知。U-Boot 本身或共享启动区损坏时，备用 rootfs 可能无法救回。`persist.last.partition=B` 是 OTA 数据区属性，尚未证明它与 U-Boot 当前活动槽对应。

因此结论是：可能存在三次启动失败后切换到另一槽的自动回退；未找到独立手动 rollback 程序，也没有验证如何强制 OTA 覆盖/降级。原厂 `OTA_PACKAGE.DAT`、签名及固件组件已备份，但现场没有试过用它重刷。对于自定义 `card.kzb`，单文件恢复通道仍未证实；若仪表仍可启动，官方 OTA/售后重刷可能是恢复手段，但执行入口和结果需要官方工具确认。

## 歌词卡片 v1 实机反馈与 v2 修正（2026-10-28）

用户确认 v1 第 4 槽“歌词”可选，但照片显示 600×600 歌词图片压住了原生歌名/歌手行；当前大字行还是 LRC 的制作信息“词：黄伟文”，并非歌词正文。这一反馈证明资源替换和卡片索引路线可运行，同时暴露了方形封面布局不能直接放大。

根据照片做了 v2：歌词图像区域改为 600×430，原生歌名/歌手行留在下方；中控端同步改为 660×473 的同宽高比 PNG，显示前句、当前句、后句；LRC 解析跳过“词/曲/词曲/作词/作曲/编曲/演唱/制作/监制/出品/发行：”元数据行。生成文件为 `patches/card.song-lyrics.v2.kzb`，SHA-256 `9e9e1b27692b210719951f2db347333d1552bdfb1e0053c7d11c1b0aea304f87`。KZBF 仍为 446 项资源；Trip prefab 与三个卡片选择器之外的资源载荷逐字节保持不变。

用户此前已授权仪表写入和继续操作。写入前通过中控查询确认 `speed=0.0`、`gear=4`（P）；将 v1 活动文件保存为 `backups/ICM-20261028-readonly/card.kzb.active-candidate-v1`。v2 先写入 `/data` 暂存并逐字节读回，随后替换 `/app/hmi/bin/card.kzb` 并重启仪表。启动后再读回活动文件，SHA-256 与 v2 一致；根分区恢复只读，ECluster 进程存在。原厂活动资源和 v1/v2 活动读回副本均记录在 `backups/ICM-20261028-readonly/backup-manifest.json`。更新后的中控歌词程序已重新编译并运行，日志显示连续提交新图片。

当前实际写入的是 v2，但仪表在 v2 下的最终视觉间距、裁切和长歌词可读性还要由用户现场确认；因此不能仅凭文件读回和进程存活宣称版式已经完全通过。


## 歌词卡片 v3：复用导航大画布（2026-10-28）

用户反馈 v2 布局仍异常，建议复用地图卡片的大面积显示区。v3 将导航卡片 prefab 用作第 4 槽“歌词”的场景模板，保留其 660×660 `MapBG`，将四处 `NaviTexture` 属性引用替换为 `MusicTexture`；原导航槽资源不变。中控端绘图同步为 660×660，图内绘制歌名、歌手和前/当前/后句，避免依赖被移除的音乐卡片原生标题行。LRC 制作信息行继续过滤。候选 SHA-256：`6bcbb9bd81512664f7a66742864a82df7097160492f235fd302706c1987c2a62`。

部署前确认 E28 速度 `0.0`、挡位 `4`（P），并确认活动 v2 与本地回退副本 SHA-256 一致。v3 写入后，活动文件读回大小为 1,255,320 字节，SHA-256 与候选一致；重启后再次读回仍一致。根分区启动后恢复只读，ECluster 进程存在；车机再次报告 P 挡。中控歌词 worker 已重启，日志有 `MUSIC_SUBMITTED`，实际提交图像 56,599 字节。v2 和原厂活动资源仍有本地备份。

这证明资源被加载链路保留且歌词图片持续提交，但还不证明屏幕上的最终排版正确。尤其导航 prefab 的 Guidance/LaneIcon 子节点在导航时是否覆盖歌词、长歌词换行和实机字形大小，仍需现场照片确认。
