# 仪表歌词卡片

## 当前部署版：v3

第 4 槽“歌词”现复用原导航卡片的 `MapBG` 大画布（660×660），将画布纹理输入从 `NaviTexture` 改接到 `MusicTexture`。歌词画面自带歌名、歌手和前/当前/后句，因此不依赖原音乐卡片下方的原生文本行。选择器仍显示“歌词”。

- `card.song-lyrics.v3.kzb`：从原厂 KZB 离线生成的候选。
- `song-lyrics-card-candidate-v3.json`：候选结构、部署读回和待目视确认项。
- `backups/ICM-20261028-readonly/card.kzb.active-candidate-v3`：v3 活动文件的仪表实机读回备份。
- `backups/ICM-20261028-readonly/card.kzb.active-candidate-v2`：上一版 v2 回退副本。
- `backups/ICM-20261028-readonly/card.kzb.active`：原厂活动资源备份。

v3 写入 `/app/hmi/bin/card.kzb` 后，重启前后两次从仪表读回的 SHA-256 均为 `6bcbb9bd81512664f7a66742864a82df7097160492f235fd302706c1987c2a62`。重启后根分区为只读，ECluster 进程存在；中控歌词服务已重启，日志确认提交 660×660 歌词图像。静态 KZBF 检查通过：目录仍有 446 项，除 Trip 卡片和三个左右卡片选择器条目外，其余资源载荷逐字节不变。

卡片布局和歌词字号还需要现场照片确认；导航 prefab 的 Guidance/LaneIcon 子节点在导航进行时是否会遮挡，也尚未实车确认。

## 回退副本

- 原厂：SHA-256 `a742743904465ba1932f4363ca034e385490132a758a7a29412616ed56920eac`。
- v1：SHA-256 `1529c9da55be139ff0c395d211666ead9e02a53bc4744fcba15f7c258b90b4d1`。
- v2：SHA-256 `9e9e1b27692b210719951f2db347333d1552bdfb1e0053c7d11c1b0aea304f87`。

v1 曾在实车上显示可选，但 600×600 图像与原生歌名、歌手区域重叠。v2 调整为 600×430 后仍显得布局异常，因此 v3 改用导航卡片的大面积 MapBG。
