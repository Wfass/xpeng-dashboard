.class public abstract Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "XPengBleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;
    }
.end annotation


# static fields
.field protected static final CMD_STOP_WORK:Ljava/lang/String; = "/CX/AB0/999/000/#"

.field protected static final CMD_SUFFIX:Ljava/lang/String; = "/#"

.field protected static mErrorCode:Ljava/lang/String;

.field protected static mNotifyString:Ljava/lang/String;


# instance fields
.field private QUERY_ALL_CMD_BYTES:[B

.field private TAG:Ljava/lang/String;

.field private bMonitorProp:Z

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

.field protected mConnectState:Ljava/lang/String;

.field protected mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field protected mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceStoreKey:Ljava/lang/String;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field protected mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

.field private mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mNotifyUuid:J

.field private mServiceUuid:J

.field private mTargetMtu:I

.field private mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mWriteUuid:J

.field private subTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyString:Ljava/lang/String;

    .line 73
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    .line 36
    const-string v0, "XPengBleManager"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    .line 61
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mTargetMtu:I

    .line 66
    const-wide/16 v0, 0x5850

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mServiceUuid:J

    .line 67
    const-wide/16 v0, 0x5244

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyUuid:J

    .line 68
    const-wide/16 v0, 0x5754

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteUuid:J

    .line 69
    const-string v0, "/CX/XPE/000/ALL/#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->QUERY_ALL_CMD_BYTES:[B

    .line 71
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->resetStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mTargetMtu:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceDisConnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceInit()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceConnect()V

    return-void
.end method

.method private deviceConnect()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;Z)V

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect,mDeviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",adapter state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 462
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    const-string v1, "deviceConnect, no device to connect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void
.end method

.method private deviceDisConnect()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->onResetStatus()V

    .line 478
    return-void
.end method

.method private deviceInit()V
    .locals 3

    .line 438
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceStoreKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->subTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->subTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->setDeviceId(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 447
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    const-string v1, "deviceInit, get device null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void
.end method

.method private doFullQuery()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->QUERY_ALL_CMD_BYTES:[B

    const v1, 0xffff

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->writeToServer([BI)V

    .line 526
    return-void
.end method

.method public static synthetic lambda$addDevice$1(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 337
    return-void
.end method

.method public static synthetic lambda$addDevice$2(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceConnect()V

    .line 341
    return-void
.end method

.method public static synthetic lambda$baseInit$0(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->selfGetPropertyMap()V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public static synthetic lambda$processServicesOn$3(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 400
    :cond_0
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processServicesOn e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->subTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->onBleDeviceConnected(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->doFullQuery()V

    .line 406
    return-void
.end method

.method public static synthetic lambda$removeDevice$4(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 501
    const-string v0, "connect_state"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->notifyPropEventWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method private notifyPropEventWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWithId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 18
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 357
    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 358
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processServicesOn@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz v1, :cond_6

    .line 361
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 362
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 363
    .local v5, "uuidMsb":J
    const/16 v7, 0x20

    ushr-long v8, v5, v7

    .line 364
    .local v8, "uuid":J
    iget-object v10, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processServicesOn,find uuid:0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-wide v10, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mServiceUuid:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_4

    .line 366
    iget-object v10, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    const-string v11, "mServiceUuid found"

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v10

    .line 368
    .local v10, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v10, :cond_3

    .line 370
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 371
    .local v12, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v13

    .line 372
    .local v13, "chUuid":Ljava/util/UUID;
    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    ushr-long/2addr v14, v7

    .line 373
    .local v14, "uuid32":J
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .local v16, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "find uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-wide v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyUuid:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_0

    .line 375
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_2

    .line 376
    :cond_0
    iget-wide v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteUuid:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_1

    .line 377
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 379
    :cond_1
    :goto_2
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_2

    .line 381
    goto :goto_3

    .line 383
    .end local v12    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v13    # "chUuid":Ljava/util/UUID;
    .end local v14    # "uuid32":J
    :cond_2
    nop

    .line 370
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/16 v7, 0x20

    goto :goto_1

    .line 385
    .end local v10    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :goto_3
    goto :goto_4

    .line 386
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_5

    .line 388
    goto :goto_5

    .line 391
    .end local v3    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v5    # "uuidMsb":J
    .end local v8    # "uuid":J
    :cond_5
    :goto_4
    nop

    .line 361
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 395
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :goto_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$oFviTrFAkPBTee5AbHls90fdi5U;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$oFviTrFAkPBTee5AbHls90fdi5U;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v1, v2, v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void
.end method

.method private removeDevice()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice, device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$iFnlIRFv4lIWSWM1_dKdH3mSM10;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$iFnlIRFv4lIWSWM1_dKdH3mSM10;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 505
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceStoreKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceDisConnect()V

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    .line 508
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 509
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 510
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 512
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 514
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized resetStatus()V
    .locals 1

    monitor-enter p0

    .line 530
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 531
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 532
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    .line 533
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mNotifyString:Ljava/lang/String;

    .line 534
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mErrorCode:Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->onResetStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
    throw v0
.end method

.method private writeToServer([BI)V
    .locals 3
    .param p1, "cmd"    # [B
    .param p2, "type"    # I

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeCh is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 522
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDevice, older:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->removeDevice()V

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceStoreKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add device-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceInit()V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->selfGetPropertyMap()V

    .line 335
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$DizNlwhiiXZcF6oPhlbkP765WBE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$DizNlwhiiXZcF6oPhlbkP765WBE;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 339
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$9P2gI7rI6BtvJSSb79RWIuch4g4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$9P2gI7rI6BtvJSSb79RWIuch4g4;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 310
    return-void
.end method

.method public addInnerDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 315
    return-void
.end method

.method protected baseInit(Ljava/lang/String;Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;)V
    .locals 3
    .param p1, "subTag"    # Ljava/lang/String;
    .param p2, "instanceDevice"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .param p3, "deviceStoreKey"    # Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->subTag:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInstanceDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 232
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceStoreKey:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->deviceInit()V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$UYJm3H5MgcpwdMJ21Gpo2_K7KpU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$UYJm3H5MgcpwdMJ21Gpo2_K7KpU;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 242
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    invoke-direct {v0, p0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 244
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 347
    return-void
.end method

.method public getDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->selfGetPropertyMap()V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getPropertyCommand(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyMap but device is null for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->selfGetPropertyMap()V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 250
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice fail,mDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void
.end method

.method protected notifyPropEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",jsonStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    return-void
.end method

.method protected notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->bMonitorProp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_1
    return-void
.end method

.method protected onBleDeviceConnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected abstract onGetPropMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract onNotify([B)V
.end method

.method protected abstract onResetStatus()V
.end method

.method protected selfGetPropertyMap()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 483
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 489
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 491
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->onGetPropMap(Ljava/util/Map;)V

    .line 493
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5db3ec2c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cmd_remove_device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->removeDevice()V

    .line 305
    :cond_3
    :goto_2
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",setPropertyMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, "index":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "prop":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    .local v3, "propVal":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->getPropertyCommand(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 275
    .local v4, "cmd":[B
    if-eqz v4, :cond_0

    .line 276
    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->writeToServer([BI)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 279
    .end local v2    # "prop":Ljava/lang/String;
    .end local v3    # "propVal":Ljava/lang/String;
    .end local v4    # "cmd":[B
    :cond_0
    goto :goto_0

    .line 280
    :cond_1
    return-void
.end method

.method protected setTargetMtu(I)V
    .locals 0
    .param p1, "mtuVal"    # I

    .line 350
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mTargetMtu:I

    .line 351
    return-void
.end method
