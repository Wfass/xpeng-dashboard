.class public Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
.super Ljava/lang/Object;
.source "BleScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_SCAN_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BleScanManager##"

.field private static final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;

.field private mCallingPid:I

.field mDeviceScanListener:Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field mLastNotifyTickMs:J

.field private mScanHandler:Landroid/os/Handler;

.field private mScanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mCallingPid:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanning:Z

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mLastNotifyTickMs:J

    .line 43
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanHandler:Landroid/os/Handler;

    .line 169
    const-string v0, "BleScanManager##"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->init()V

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    .line 33
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mCallingPid:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
    .locals 1

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanManagerHolder;->access$500()Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 177
    return-void
.end method

.method public registerDeviceScanListener(Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceScanListener:Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

    .line 181
    return-void
.end method

.method public scanDevice(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "pid"    # I

    .line 184
    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mCallingPid:I

    .line 185
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 186
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanning:Z

    if-nez v1, :cond_1

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanning:Z

    .line 188
    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "BleScanManager##"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 190
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->startLeScan(I)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 197
    :cond_1
    const-string v0, "BleScanManager##"

    const-string v1, "scanDevice,already enabled"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanning:Z

    if-eqz v1, :cond_4

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mScanning:Z

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->stopLeScan()V

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v2, "BleScanManager##"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterScanCallback(Ljava/lang/String;)V

    .line 204
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;

    .line 205
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 207
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 211
    :cond_4
    const-string v0, "BleScanManager##"

    const-string v1, "scanDevice,already disabled"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void
.end method
