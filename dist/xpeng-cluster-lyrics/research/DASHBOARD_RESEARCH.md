# 仪表系统重做：代码与平台研究记录

更新：2026-10-28

## 研究目标

评估能否重做仪表显示，并区分三种完全不同的工作：

1. 在中控 Android 应用内读取车辆信号并绘制自己的页面。
2. 向原厂仪表现有卡片送入自定义图片。
3. 替换仪表完整 UI、布局与数据绑定。

目前证据表明，这三条路径权限、分辨率、更新频率和部署风险不同，不能把其中一条误当成整套仪表替换能力。

## 当前设备与目标车型

- 当前连接的 ADB 设备是 E28、Android 9 / API 28，构建号 `XMARTQ1ZHE28F5_V5.1.6.8807_20260521222514.1_REV01_USER_Release`。
- 项目交接材料提到用户车辆为 2021 P7 F30。当前连接设备与该目标记录不一致，因此 E28 的结论不能直接视作 F30 结论。
- 2026-10-28 的只读状态为车速 `0.0`、P 挡；本次车端检查满足静止研究条件。
- 本报告的运行时结果只对应上述 E28 固件；尚未连接或验证 F30。

## 发现一：车辆数据接口在中控 CarService

`OP-CarPlay/common/src/main/java/com/shilapi/xcertplay/P7InstrumentWorker.java` 通过 Android `car_service` 获取 `xp_vehicle` 与 `xp_shared_memory` Binder，并反射调用原厂接口。`IXpVehicle` 列出了速度、挡位、电量、续航等直接 getter；例如速度 getter 对应属性 `0x21601225`。

反汇编中 `CarPropertyService.getProperty` 和 `registerListener` 确实先执行 `assertSystemUidOrSystemSignatures`，再按属性权限检查。但运行时探针显示，当前固件 shell UID 2000 对 `CAR_VENDOR_EXTENSION` 的检查结果为 0（`PERMISSION_GRANTED`），且从 `xp_vehicle` Binder 直接读到速度 `0.0`。设备 `/system/priv-app/CarService/CarService.apk` 与本地反汇编 APK 的 SHA-256 一致（`370e20c155b50b2f2d3a6623aea835dd065c3bd537ff57422ef38fe48a816830`）。因此静态门槛并不等于本机 shell 一定被拒绝；当前固件的授权条件实际允许这条只读调用。

同一只读探针调用 `getNaviBmpInfoRequiredByIcm()` 得到 `Need=true`、`Size-w=660`、`Size-h=660`、`Fps=5`、`Format=2`。这是仪表当前发出的请求，不只是旧文档样本。共享内存 `queueMemoryBuffer` 的静态实现要求 `CAR_VENDOR_EXTENSION`，当前权限检查也已通过；但本次没有调用队列提交或向仪表发送图片，所以尚未完成端到端图像验证。OP-CarPlay APK 当前未安装，也未运行。

## 发现二：OP-CarPlay 只提供原生导航卡片图片通道

项目代码路径为：

`CarPlay 辅屏视频 → ClusterMapRenderer 解码/裁切/压缩 → 本地受限 socket → shell worker → IXpSharedMemory.queueMemoryBuffer(0x2170161d) → 仪表原生导航图片卡片`

worker 读取 `getNaviBmpInfoRequiredByIcm()` 的请求尺寸、帧率和格式，并对图像大小、JPEG 和帧序号做校验。项目文档记录的验证样本为老款 P7 E28；当前 E28 实测请求也为 660×660、5 fps，且只读权限检查通过，说明图片卡片方向在接口层与当前固件吻合。仍需独立验证提交图片、仪表显示和退出恢复；本次未做这些写操作。worker 可有限度暂停/恢复原厂 MiniMapService，或通过现有车辆接口管理车道条；它没有负责重画速度、电量、挡位、告警、仪表主题或整屏布局。

所以 OP 的代码可作为“如何把自定义内容送进现有一个卡片”的参考，不是完整仪表系统的渲染框架。

## 发现三：仪表本体使用 Kanzi，资源路径明确，部署路径未明确

本地 E28 仪表固件副本显示仪表应用运行在独立 Linux/i.MX6 上，UI 使用 Kanzi。`application.cfg` 指定 1920×720；主应用 `ECluster` 处理卡片与数据层，资源包包含 `main.kzb`、`card.kzb`、`warning.kzb`、`adas.kzb`、`overlay.kzb`、`telltale.kzb` 等场景资源。

音乐卡片在 `card.kzb` 的 `/Prefabs/Card_Music`，其中图片框为 240×240。左右卡片冲突处理会避免同一类型同时放在左右两侧；反汇编中只有一个 `DataLayer.Card.Image.NaviTexture`，因此双地图不能自然得到两路独立画面。`/dev/fb1` 字符串只证明程序有相关 framebuffer 路径，不能证明从 Android 安全写它即可接管整屏。

已找到的仪表连接方式是本地固件/资源分析；已有只读 FTP 证据只到数据分区，没有证明能替换 `/app/hmi/bin/card.kzb`。尚无经验证的资源热加载、更新包签名/刷写或恢复流程。因此，资源可解析不等于可部署。

### 用户提出的中间行车界面：用大地图替换 3D 车道场景

当前 E28 固件的资源证据支持“改中间行车 UI”这条方向，不必把地图塞回原导航卡片：`adas.kzb` 含 `Screens/Screen/RootPage/ADAS_1`，其场景树明确有 `Scene/Camera`、`Scene/RoadRoot`、`CarRoot/MainCar`，以及车辆网格、道路网格和车道线节点；`xml/adas.xml` 又提供四组道路线参数、车辆周围目标物和告警状态。这说明眼前的 3D 车+车道属于仪表本地 Kanzi 场景及其数据模型，是可定位、可重构的 UI 组成部分。

主场景 `main.kzb` 和卡片资源 `card.kzb` 都登记了 `DataLayer.Card.Image.NaviTexture`，但 ECluster 反汇编只显示 `KanziCard::refreshImageNaviTexture` 通过当前卡片图像更新入口更新该导航纹理；`adas.kzb` 本身没有登记这个纹理属性。因此现有代码并未证明导航图能直接显示在 ADAS 中间场景。可行的改造方向是：在 ADAS 中央视口加入大尺寸 Kanzi 图像/地图面，隐藏或移走 `RoadRoot` 与 `MainCar` 等 3D 绘制节点，再把地图帧接到这个面；这需要验证主场景数据层能否共享纹理，或修改 ECluster 的纹理更新目标/增加专用绑定，不是简单改卡片尺寸。

屏幕画布是 1920×720，地图画面可在视觉上扩到中央可用区域；但当前车端请求的原生导航图源是 660×660、5 fps。若仅把这路图放大，尺寸能变大，细节会随缩放变软，动态更新节奏也受 5 fps 限制。要做到大面积且清晰，需要取得更高分辨率的地图画面源，或在中控侧按更高目标分辨率独立渲染/解码后交给仪表新增的地图纹理入口。

重构时可移除中央道路和车模的常态绘制，同时把车速、挡位、告警灯与碰撞/盲区等必要提示保留在独立 UI 层；不能因隐藏整个 ADAS 资源就一并丢掉 AEB/FCW、雷达等提示。技术上判断为**有明确切入点、资源和绑定改造可行；实际能否部署取决于仪表资源更新/回滚通道，当前尚未证实**。

## 发现四：`instrument-projection` 是另一代平台的 framebuffer 叠加原型

`zgaiss/instrument-projection` README 标注目标为 E28U / Android 12（`au8295_xp`）车机，连接独立 Linux 3.0.35 / ARMv7 / i.MX6 仪表。其链路由中控绘制 1920×720 RGB565 整帧，经 49173 推流；仪表侧读取原车 `fb0` 并写前景 `fb1`，用渐变边带遮罩保留原仪表外围元素。代码将管理 RPC 写死为 `172.20.1.40:30510`，并通过 shell 字段下发 root 命令。

它不能和当前 E28 Android 9 固件混为一谈。项目自述 30510 无鉴权且可获得仪表 root shell，这是显著安全边界。其技术评审还记录，原接收程序要求通道 ioctl 返回 `0x0a6ff7fe`，实车读到 `0x0a6ff7ff` 后会以 `instrument_busy` 拒绝启动。帧接收端压缩数据上限为 1 MiB，而 1920×720 RGB565 原始帧为 2,764,800 字节；项目实测解压/合成约 5–8 fps。代码包含备份、租约 watchdog 和恢复逻辑，但父守护进程被杀时恢复可能失效，评审指出可能留下黑色前景层。

因此该仓库适合帮助理解“原车层 + framebuffer overlay”的实现机制和失效模式，不是当前固件可直接复用的部署方案，也不是完整仪表 UI 的资源替换方案。对其 30510 管理通道不应做连通性试探或调用：该接口本身具有仪表 root 命令执行能力。

## 对重做方案的架构判断

- 若目标是“新仪表 UI”，应以仪表侧 Kanzi 场景和 `ECluster` 数据绑定为主线调查；首先厘清经过授权且可回滚的资源更新入口。当前没有已证实的部署机制，这是整屏重做的首要阻塞项。
- 若目标是快速验证视觉方案，先在电脑上按 1920×720 制作离线模型，用明确的信号样例模拟车速、挡位、能量和告警；这能先验证信息层级和布局。
- 若目标只是展示额外的一块自定义内容，当前 E28 已确认原生图片卡片请求 660×660、5 fps，且只读所需权限可用；完成端到端显示验证后，可作为低侵入原型通道，但不适合替代整块仪表。
- `instrument-projection` 的 fb1 叠加可作研究参考；由于设备代际、仪表固件、root 管理面和恢复风险均未匹配，不应作为当前车实施基线。
- 若目标是从中控 app 独立画全屏仪表，当前证据不支持：Android 侧只有中控屏显示设备，仪表是独立 Linux UI；没有已证实的跨显示全屏 surface 接口。
- 车辆状态数据与仪表像素输出是两条独立链路。重做 UI 还需要逐项建立信号映射、单位/量纲、刷新率、失效状态和告警优先级，不能只拿到一个 speed getter 就认为数据层已解决。

## 已完成的阶段性成果与后续门槛

1. **已核实当前 E28 数据读取入口**：shell UID 2000 权限检查通过，可只读调用速度 getter；记录了当前导航图片请求参数。
2. **已划清两条代码路线**：OP-CarPlay 是仪表现有导航图片卡片；`instrument-projection` 是另一代平台的 framebuffer 叠加原型；两者都不是当前固件的完整 UI 替换实现。
3. **已确定整屏重做前置条件**：匹配目标固件、取得可维护的 Kanzi 资源构建/更新入口、建立可验证的回滚方案。当前仪表资源只有本地解析成果，部署方式尚未证实。
4. 下一阶段解析 Kanzi 场景节点和 `ECluster` 数据绑定，形成组件—场景—信号映射；整理全量信号表（字段 ID、类型、单位、刷新率、权限、错误值、显示规则）。
5. 先在离线画布确认信息结构与视觉方案。任何需要向仪表提交图像、写 framebuffer、改变卡片、安装应用、重启或 OTA 的验证都需列出恢复条件；本次没有执行这些动作。
6. 最终实施对象仍需明确为当前 E28 还是交接记录中的 P7 F30；平台证据不能跨车型直接套用。

### 针对“大地图替换中间 3D UI”的具体实施拆分

1. 先离线解析 `adas.kzb` 的 ADAS_1 根节点、Camera/Viewport 尺寸和节点可见性，确定仅替换 RoadRoot/MainCar 后中央可用矩形及告警保留层。
2. 独立追踪 `NaviTexture` 从 CarService 到 `KanziInterface::updateKanziImage` 的实际尺寸/格式限制；评估新地图纹理入口是否能由现有 image setter 更新，还是需要改 ECluster。
3. 制作 1920×720 离线效果稿，中央地图尽量铺满，车速/挡位和关键告警保持清晰；用当前 660×660 地图源做一次缩放质量评估，再决定是否需要高分辨率源。
4. 只在资源安装与恢复方式、原车警告层保留、静止验证步骤均明确后，才考虑上车显示验证。

## 可复核证据

- `research/ICM_FINDINGS.md`：本地仪表固件、Kanzi 卡片布局、双地图冲突及当前未知项。
- `research/car-smali/smali/com/android/car/CarPropertyService.smali`：车辆属性读取/订阅权限检查。
- `research/car-smali/smali/com/android/car/ICarImpl.smali`：系统身份与签名校验逻辑。
- `research/car-smali/smali/com/android/car/XpVehicleService.smali`：车辆 getter 到属性 ID 的映射。
- `../OP-CarPlay/common/src/main/java/com/shilapi/xcertplay/P7InstrumentWorker.java`：E28 导航图片 worker、请求检查和共享内存提交。
- `../OP-CarPlay/docs/IMPLEMENTATION.md`、`../OP-CarPlay/docs/USAGE.md`：该项目记录的架构与实车验证范围。
- 当前车端只读探针结果（临时探针运行后已删除）：build、权限结果、速度 `0.0`、仪表请求 `660×660 @ 5 fps`；没有提交图片或写车辆属性。
- [instrument-projection README](https://github.com/zgaiss/instrument-projection)：目标平台、帧投送链路和项目自述实测范围。
- [instrument-projection 技术评审](https://github.com/zgaiss/instrument-projection/blob/main/%E4%BB%AA%E8%A1%A8%E6%8A%95%E6%94%BE%E6%96%B9%E6%A1%88%E6%8A%80%E6%9C%AF%E8%AF%84%E5%AE%A1.md)：通道不匹配、帧大小上限、帧率和恢复风险。
- `/tmp/instrument-projection/src/ultra_app_receiver.c`、`src/UltraProjectionRunner.java`：只读核查的仪表接收端及中控推流/管理实现；未执行该项目代码。

