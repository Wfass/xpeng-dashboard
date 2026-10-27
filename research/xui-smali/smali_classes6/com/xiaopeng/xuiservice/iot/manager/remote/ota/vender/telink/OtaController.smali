.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;
.super Ljava/lang/Object;
.source "OtaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_READ_INTERVAL:I = 0x8

.field public static final OTA_STATE_FAILURE:I = 0x0

.field public static final OTA_STATE_PROGRESS:I = 0x2

.field public static final OTA_STATE_SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TelinkOtaManager.OtaController"

.field private static final TAG_OTA_END:I = 0x7

.field private static final TAG_OTA_FW_VERSION_REQ:I = 0x9

.field private static final TAG_OTA_LAST:I = 0x3

.field private static final TAG_OTA_READ:I = 0x2

.field private static final TAG_OTA_REQUEST_MTU:I = 0x4

.field private static final TAG_OTA_START:I = 0x6

.field private static final TAG_OTA_START_EXT:I = 0x8

.field private static final TAG_OTA_VERSION:I = 0x5

.field private static final TAG_OTA_WRITE:I = 0x1

.field private static final TIMEOUT_VERSION_RSP:J = 0xbb8L


# instance fields
.field private final OTA_CMD_CB:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

.field private mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

.field private mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

.field private final mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

.field private final mTask:Ljava/lang/Runnable;

.field protected mTimeoutHandler:Landroid/os/Handler;

.field private otaProtocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

.field private otaRunning:Z

.field private otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 206
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V
    .locals 3
    .param p1, "gattConnection"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    .line 412
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->OTA_CMD_CB:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 469
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTask:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    .line 53
    const-string v0, "TelinkOtaManager.OtaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtaController, isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaStartCmd()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendNextOtaPacketCommand()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;
    .param p1, "x1"    # Z

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onEndCmdComplete(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaEndCommand()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->validateOta()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    return-void
.end method

.method private checkCRC([B)Z
    .locals 7
    .param p1, "firmware"    # [B

    .line 227
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    array-length v1, p1

    .line 230
    .local v1, "len":I
    add-int/lit8 v2, v1, -0x4

    new-array v2, v2, [B

    .line 231
    .local v2, "buffer":[B
    array-length v3, v2

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 232
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v3, v3

    .line 236
    .local v3, "crcInFirmware":J
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/CrcUtils;->calCrc32([B)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 227
    .end local v1    # "len":I
    .end local v2    # "buffer":[B
    .end local v3    # "crcInFirmware":J
    :cond_2
    :goto_0
    return v0
.end method

.method private getOtaCharacteristic()Ljava/util/UUID;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 396
    :goto_0
    return-object v0
.end method

.method private getOtaService()Ljava/util/UUID;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->serviceUUID:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->serviceUUID:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->OTA_SERVICE_UUID:Ljava/util/UUID;

    .line 391
    :goto_0
    return-object v0
.end method

.method private getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4
    .param p1, "serviceUUID"    # Ljava/util/UUID;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 151
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    return-object v2

    .line 154
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    return-object v1
.end method

.method private isLegacyProtocol()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaProtocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Legacy:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$startOta$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 2

    .line 79
    const-string v0, "OTA fail: flow timeout"

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    .line 81
    return-void
.end method

.method private onEndCmdComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 401
    const-string v0, "TelinkOtaManager.OtaController"

    const-string v1, "onEndCmdComplete"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->isLegacyProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->setOtaProgressChanged()V

    .line 405
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaSuccess()V

    .line 406
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    goto :goto_0

    .line 407
    :cond_0
    if-nez p1, :cond_1

    .line 408
    const/16 v0, 0x14

    const-string v1, "OTA fail: end packet sent err"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 410
    :cond_1
    :goto_0
    return-void
.end method

.method private parseFirmware(Ljava/lang/String;Z)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "checkFirmwareCrc"    # Z

    .line 214
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 217
    .local v2, "firmware":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 218
    if-eqz p2, :cond_1

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->checkCRC([B)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v2

    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    return-object v3

    .line 219
    .end local v2    # "firmware":[B
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_2
    :try_start_4
    invoke-static {v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0
.end method

.method private resetOta()V
    .locals 2

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->clear()V

    .line 269
    return-void
.end method

.method private sendGattCmd(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;)V
    .locals 1
    .param p1, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->sendCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z

    .line 388
    :cond_0
    return-void
.end method

.method private sendNextOtaPacketCommand()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->hasNextPacket()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    move-result-object v0

    .line 347
    .local v0, "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 348
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 349
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getNextPacket()[B

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    .line 351
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    .line 353
    const-string v1, "TelinkOtaManager.OtaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNextOtaPacketCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    .line 354
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), cmd.tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->OTA_CMD_CB:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendGattCmd(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;)V

    .line 358
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->setOtaProgressChanged()V

    .line 360
    .end local v0    # "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    :cond_1
    return-void
.end method

.method private sendOTAVersionCmd()V
    .locals 3

    .line 282
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_VERSION:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaCmd(II[B)V

    .line 283
    return-void
.end method

.method private sendOtaCmd(II[B)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # [B

    .line 323
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    move-result-object v0

    .line 325
    .local v0, "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p3, :cond_0

    .line 326
    new-array v3, v3, [B

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    move-object v1, v3

    .local v1, "cmdData":[B
    goto :goto_0

    .line 328
    .end local v1    # "cmdData":[B
    :cond_0
    array-length v4, p3

    add-int/2addr v4, v3

    new-array v4, v4, [B

    .line 329
    .local v4, "cmdData":[B
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 330
    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 331
    array-length v1, p3

    invoke-static {p3, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    move-object v1, v4

    .end local v4    # "cmdData":[B
    .restart local v1    # "cmdData":[B
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaService()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 335
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 336
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    .line 338
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    .line 340
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->OTA_CMD_CB:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendGattCmd(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;)V

    .line 341
    return-void
.end method

.method private sendOtaEndCommand()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getIndex()I

    move-result v0

    .line 309
    .local v0, "index":I
    const/16 v1, 0x12

    new-array v1, v1, [B

    .line 311
    .local v1, "data":[B
    const-string v2, "TelinkOtaManager.OtaController"

    const-string v3, "sendOtaEndCommand"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 314
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 315
    not-int v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 316
    not-int v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 318
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_END:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    const/4 v3, 0x7

    invoke-direct {p0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaCmd(II[B)V

    .line 319
    return-void
.end method

.method private sendOtaFwVersionReqCommand()V
    .locals 5

    .line 298
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 300
    .local v0, "reqData":[B
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->firmwareVersion:[B

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->versionCompare:Z

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 303
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaCmd(II[B)V

    .line 304
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void
.end method

.method private sendOtaStartCmd()V
    .locals 3

    .line 286
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaCmd(II[B)V

    .line 287
    return-void
.end method

.method private sendOtaStartExtCmd()V
    .locals 3

    .line 290
    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 292
    .local v0, "extData":[B
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->pduLength:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-boolean v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->versionCompare:Z

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 294
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START_EXT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaCmd(II[B)V

    .line 295
    return-void
.end method

.method private setOtaProgressChanged()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->invalidateProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaProgress()V

    .line 275
    :cond_0
    return-void
.end method

.method private updateOtaState(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;->onOtaStatusChanged(ILjava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 244
    :cond_0
    return-void
.end method

.method private validateOta()Z
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->readInterval:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    .local v0, "res":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getNextPacketIndex()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->pduLength:I

    mul-int/2addr v1, v2

    .line 367
    .local v1, "sendTotal":I
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->readInterval:I

    mul-int/2addr v2, v3

    .line 369
    .local v2, "sectionSize":I
    if-lez v1, :cond_1

    rem-int v3, v1, v2

    if-nez v3, :cond_1

    .line 370
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    move-result-object v3

    .line 372
    .local v3, "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaService()Ljava/util/UUID;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 373
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 374
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->READ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 375
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    .line 377
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->OTA_CMD_CB:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendGattCmd(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;)V

    .line 381
    .end local v1    # "sendTotal":I
    .end local v2    # "sectionSize":I
    .end local v3    # "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    :cond_1
    return v0
.end method


# virtual methods
.method public getFirmwareVersion(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 197
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 198
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 200
    .local v2, "firmware":[B
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 202
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->checkCRC([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x4

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/4 v4, 0x5

    aget-byte v4, v2, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    .line 206
    :try_start_2
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 203
    return v3

    .line 206
    .end local v2    # "firmware":[B
    :cond_0
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    .end local v0    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 206
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onOtaFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->updateOtaState(ILjava/lang/String;)V

    .line 257
    return-void
.end method

.method protected onOtaProgress()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;->onOtaProgressUpdate(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 263
    :cond_0
    return-void
.end method

.method protected onOtaStart()V
    .locals 2

    .line 247
    const-string v0, "OTA started"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->updateOtaState(ILjava/lang/String;)V

    .line 248
    return-void
.end method

.method protected onOtaSuccess()V
    .locals 2

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    .line 252
    const-string v1, "OTA success"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->updateOtaState(ILjava/lang/String;)V

    .line 253
    return-void
.end method

.method public pushNotification([B)V
    .locals 9
    .param p1, "notificationData"    # [B

    .line 97
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 101
    .local v2, "opcode":I
    const-string v4, "TelinkOtaManager.OtaController"

    const-string v5, "ota notify: %04x"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v4, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    if-ne v2, v4, :cond_4

    .line 104
    array-length v4, p1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 105
    const/16 v0, 0x12

    const-string/jumbo v1, "version response format error"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 106
    return-void

    .line 109
    :cond_1
    new-array v4, v1, [B

    .line 110
    .local v4, "deviceVersion":[B
    const/4 v5, 0x4

    aget-byte v5, p1, v5

    if-ne v5, v3, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v0

    .line 112
    .local v5, "accept":Z
    :goto_0
    invoke-static {p1, v1, v4, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 113
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    const-string v6, "TelinkOtaManager.OtaController"

    const-string/jumbo v7, "version response: version-%s accept-%b"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v8, ":"

    .line 116
    invoke-static {v4, v8}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    .line 115
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz v5, :cond_3

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaStartExtCmd()V

    goto :goto_1

    .line 122
    :cond_3
    const/16 v0, 0x13

    const-string v1, "device version compare fail"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 124
    .end local v4    # "deviceVersion":[B
    .end local v5    # "accept":Z
    :goto_1
    goto :goto_3

    :cond_4
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_RESULT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    iget v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    if-ne v2, v0, :cond_9

    .line 125
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    array-length v0, p1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    return-void

    .line 128
    :cond_6
    aget-byte v0, p1, v1

    .line 130
    .local v0, "result":B
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_SUCCESS:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    iget v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->value:I

    if-ne v0, v1, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->isLegacyProtocol()Z

    move-result v1

    if-nez v1, :cond_9

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaSuccess()V

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    goto :goto_3

    .line 136
    :cond_7
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->getResultCode(I)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    move-result-object v1

    .line 138
    .local v1, "resultCode":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    const/16 v3, 0x1d

    .line 140
    if-nez v1, :cond_8

    const-string v4, "unknown result code"

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    :goto_2
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 144
    .end local v0    # "result":B
    .end local v1    # "resultCode":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    :cond_9
    :goto_3
    return-void
.end method

.method public setOtaCallback(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;

    .line 58
    return-void
.end method

.method public startOta(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;)Z
    .locals 5
    .param p1, "setting"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x4

    const-string v2, "busy"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 63
    return v1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->validateOtaSettings()Z

    move-result v0

    .line 75
    .local v0, "res":Z
    if-eqz v0, :cond_3

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaRunning:Z

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$OtaController$OW5qw0P1oGfTSrluX5jgKb-pWWY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$OtaController$OW5qw0P1oGfTSrluX5jgKb-pWWY;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->timeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaService()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->enableNotification(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaStart()V

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->isLegacyProtocol()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOTAVersionCmd()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->sendOtaFwVersionReqCommand()V

    .line 93
    :cond_3
    :goto_0
    return v0

    .line 67
    .end local v0    # "res":Z
    :cond_4
    :goto_1
    const/16 v0, 0x18

    const-string v2, "OTA fail: device not connected"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 68
    return v1
.end method

.method public stopOta(Z)V
    .locals 1
    .param p1, "disconnect"    # Z

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->resetOta()V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->disconnect()Z

    .line 166
    :cond_0
    return-void
.end method

.method public validateOtaSettings()Z
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->firmwarePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaService()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 175
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    .line 176
    const/16 v2, 0x19

    const-string v3, "OTA fail: service not found"

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 177
    return v1

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_2

    .line 180
    const/16 v2, 0x1a

    const-string v3, "OTA fail: characteristic not found"

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 181
    return v1

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->firmwarePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-boolean v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->checkFirmwareCrc:Z

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->parseFirmware(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 185
    .local v2, "firmwareData":[B
    if-nez v2, :cond_3

    .line 186
    const/16 v3, 0x1b

    const-string v4, "OTA fail: check selected bin error"

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 187
    return v1

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->protocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaProtocol:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mOtaParser:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->otaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iget v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->pduLength:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->mConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->getMtu()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->set([BI)V

    .line 193
    const/4 v1, 0x1

    return v1

    .line 170
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "firmwareData":[B
    :cond_4
    :goto_0
    const/16 v0, 0x10

    const-string v2, "OTA fail: params error"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 171
    return v1
.end method
