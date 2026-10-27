.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;
.super Ljava/lang/Object;
.source "OtaSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public characteristicUUID:Ljava/util/UUID;

.field public checkFirmwareCrc:Z

.field public firmwarePath:Ljava/lang/String;

.field public firmwareVersion:[B

.field public pduLength:I

.field public protocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

.field public readInterval:I

.field public serviceUUID:Ljava/util/UUID;

.field public timeout:I

.field public versionCompare:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Legacy:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->protocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->readInterval:I

    .line 12
    const/16 v1, 0x10

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->pduLength:I

    .line 13
    const v1, 0x493e0

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->timeout:I

    .line 14
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->firmwareVersion:[B

    .line 15
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->versionCompare:Z

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->checkFirmwareCrc:Z

    return-void
.end method
