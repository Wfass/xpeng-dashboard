# 仪表写入前只读备份

采集日期：2026-10-28  
来源：仪表 `172.20.1.40:2221` FTP，只执行 `RETR`。  
校验清单：[`backup-manifest.json`](backup-manifest.json)

## 已保存

- OTA 数据区的 `update.squashfs`、`update.img`。
- OTA 暂存区的 `OTA_PACKAGE.DAT` 与 `OTA_PACKAGE.SIG`。
- `persist.last.partition`、`persist.hmi.left_card`、`persist.hmi.right_card`。
- `OTA_FLAG1.DAT`、`OTA_FLAG_OLD.DAT` 和最近可见的 `ota-20261027.log`，用于保留 OTA 状态线索。
- `card.kzb.from-OTA-image.NOT-LIVE`：从 OTA 镜像提取的原卡片资源副本，名称明确标出它不是活动分区读回。

现场 `update.squashfs` 与本地 2026-10-23 留存镜像逐字节相同。现场属性值为 `persist.last.partition=B`、`left_card=0`、`right_card=1`。

## 备份边界

FTP 未开放活动 rootfs 或活动 `/app/hmi/bin/card.kzb` 的读取。随目录保存的原卡片文件（SHA-256 `a742743904465ba1932f4363ca034e385490132a758a7a29412616ed56920eac`）是从 OTA 固件镜像提取的副本，并非活动分区现场读回。此备份尚未进行仪表回刷验证，不能视作已验证的回滚方案。

活动卡片读取尝试（FTP `RETR /app/hmi/bin/card.kzb` 及相对路径）没有返回文件；远端读取进程被终止，随后根目录只读列表仍正常。没有把这个结果记作活动卡片备份。

本目录是现场 OTA/部分持久属性的只读快照。采集过程没有向仪表上传、写入或触发升级。
