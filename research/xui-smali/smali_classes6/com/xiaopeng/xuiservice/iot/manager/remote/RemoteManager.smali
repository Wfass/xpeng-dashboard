.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$RemoteManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;
    }
.end annotation


# static fields
.field private static final MSG_ADD_DEVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteManager"

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final mServiceUuid:J = 0x5850L


# instance fields
.field private DEVICE:Ljava/lang/String;

.field private ENABLE:Z

.field private bMonitorProp:Z

.field private hasConnected:Z

.field private hasUpgrade:Z

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private mConnectState:Ljava/lang/String;

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHidService:Landroid/bluetooth/BluetoothHidHost;

.field private mOtaListener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

.field private final mPropMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReadChara:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteChara:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 549
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mPropMap:Ljava/util/Map;

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mStringMap:Ljava/util/Map;

    .line 68
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mConnectState:Ljava/lang/String;

    .line 69
    const-string v0, "persist.sys.xpeng.remote.device"

    const-string v1, "XPeng-RM0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->DEVICE:Ljava/lang/String;

    .line 70
    const-string v0, "persist.sys.xpeng.remote.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->ENABLE:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->bMonitorProp:Z

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasUpgrade:Z

    .line 80
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$3;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mOtaListener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    .line 99
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 553
    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$7;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$7;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHandler:Landroid/os/Handler;

    .line 562
    const-string v1, "remote"

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$qZs4XCesCm7kVc55TJXt-0yh_9k;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$qZs4XCesCm7kVc55TJXt-0yh_9k;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasUpgrade:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasUpgrade:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mConnectState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->onNotify(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getHidProfileProxy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->deviceDisConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->deviceInit(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mOtaListener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothHidHost;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHidService:Landroid/bluetooth/BluetoothHidHost;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidHost;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHidService:Landroid/bluetooth/BluetoothHidHost;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->deviceConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method

.method private checkDeviceId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkVal(III)I
    .locals 1
    .param p1, "val"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 170
    if-gt p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    if-lt p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private deviceConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 287
    if-eqz p1, :cond_0

    .line 288
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "RemoteManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;Z)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method private deviceDisConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_0

    .line 302
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDisConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "RemoteManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private deviceInit(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "hasBond"    # Z

    .line 259
    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHidService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getHidProfileProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 262
    .local v0, "res":Z
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 263
    new-instance v3, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    const-string v4, "Remote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RM0_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XP_Remote"

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    .line 264
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasConnected:Z

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->initStatus(Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;Z)V

    .line 266
    const-string v3, "RemoteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceInit, hasBond="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", getHidProfileProxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v5, "succeed"

    goto :goto_2

    :cond_3
    const-string v5, "failed"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 269
    :try_start_0
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 270
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$itr_PncAKVLpTBr3-xW3KWwY6T0;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$itr_PncAKVLpTBr3-xW3KWwY6T0;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 279
    if-nez p2, :cond_6

    .line 280
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    move v0, v1

    .line 282
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBond "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v3, "..."

    goto :goto_4

    :cond_5
    const-string v3, "failed!"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_6
    return-void

    .line 271
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAddress()Ljava/lang/String;
    .locals 3

    .line 174
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_remote_address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHidProfileProxy()Z
    .locals 4

    .line 230
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 231
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    .line 230
    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .locals 1

    .line 570
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$RemoteManagerHolder;->access$2000()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-result-object v0

    return-object v0
.end method

.method private getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 193
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "-1"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private initStatus(Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;Z)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;
    .param p2, "hasConnected"    # Z

    .line 200
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)V

    .line 208
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStatus, propertyMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 211
    return-void
.end method

.method public static synthetic lambda$deviceInit$1(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 277
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateProperty$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method private onNotify(Ljava/lang/String;)V
    .locals 7
    .param p1, "sdata"    # Ljava/lang/String;

    .line 334
    const-string v0, "/RM0/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "array":[Ljava/lang/String;
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", split to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "/S/RM0/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 339
    move v1, v2

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 340
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mPropMap:Ljava/util/Map;

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, "prop":Ljava/lang/String;
    aget-object v4, v0, v1

    .line 343
    .local v4, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mStringMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mStringMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    .end local v3    # "prop":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    const-string v1, "/R/RM0/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 349
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 350
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mPropMap:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 351
    .local v2, "prop":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    .line 353
    .local v3, "val":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mStringMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mStringMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_2
    add-int/lit8 v1, v1, 0x2

    move v2, v1

    goto :goto_1

    .line 359
    .end local v1    # "i":I
    .end local v2    # "prop":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 11
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 362
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processServicesOn@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 367
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 368
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    .line 370
    .local v2, "uuid":J
    const-wide/16 v5, 0x5850

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "uuid":J
    goto :goto_0

    .line 372
    .restart local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .restart local v2    # "uuid":J
    :cond_1
    const-string v5, "RemoteManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processServicesOn, find uuid: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 375
    .local v6, "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v7

    shr-long v2, v7, v4

    .line 377
    const-string v7, "RemoteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find uuid: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-wide/16 v7, 0x5244

    cmp-long v7, v2, v7

    if-nez v7, :cond_4

    .line 380
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v7

    .line 382
    .local v7, "charaProp":I
    or-int/lit8 v8, v7, 0x2

    if-lez v8, :cond_2

    .line 383
    const-string v8, "RemoteManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readCharacteristic, uuid: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v10}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 388
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v10}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 391
    :cond_2
    or-int/lit8 v8, v7, 0x10

    if-lez v8, :cond_3

    .line 392
    const-string v8, "RemoteManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCharacteristicNotification, uuid: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 396
    :cond_3
    iput-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mReadChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 397
    .end local v7    # "charaProp":I
    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x5754

    cmp-long v7, v2, v7

    if-nez v7, :cond_5

    .line 398
    iput-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mWriteChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 400
    .end local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_5
    :goto_2
    goto/16 :goto_1

    .line 402
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "uuid":J
    :cond_6
    goto/16 :goto_0

    .line 403
    :cond_7
    return-void
.end method

.method private putStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 187
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 589
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 593
    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    return-void
.end method

.method private removeAddress()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_remote_address"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private removeBond(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 314
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 315
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeAddress()V

    .line 317
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method private removeDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 320
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->deviceDisConnect(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeBond(Ljava/lang/String;)V

    .line 325
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->hasConnected:Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    .line 327
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 328
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_remote_address"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private testOta()V
    .locals 2

    .line 747
    const-string v0, "telink"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/OtaManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;

    move-result-object v0

    .line 749
    .local v0, "otaManager":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;
    if-eqz v0, :cond_0

    .line 750
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mOtaListener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->registerOtaStatusListener(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;)V

    .line 751
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->upgrade(Z)Z

    .line 753
    :cond_0
    return-void
.end method

.method private declared-synchronized updateProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "val":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    throw p1
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 685
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "address":Ljava/lang/String;
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->deviceInit(Ljava/lang/String;Z)V

    .line 690
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->setAddress(Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 675
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 676
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 695
    const-string v0, "dump RemoteManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    if-eqz p2, :cond_5

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "cmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 701
    .local v1, "hasDevice":Z
    :goto_0
    move-object v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "cmd":Ljava/lang/String;
    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_5

    .line 702
    aget-object v5, p2, v0

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "--stopScan"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_1
    const-string v7, "--removeDevice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_2
    const-string v7, "--scanDevice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_3

    :sswitch_3
    const-string v7, "--testOta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_3

    :sswitch_4
    const-string v7, "--setSleepTime"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_5
    const-string v7, "--readCharacteristic"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_6
    const-string v7, "--getPropertyMap"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_3

    :cond_1
    :goto_2
    move v5, v6

    :goto_3
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 729
    :pswitch_0
    const-string v4, "sleep_time"

    goto :goto_4

    .line 725
    :pswitch_1
    const-string v5, "--readCharacteristic"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mReadChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5, v7, v8, v6}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 727
    goto :goto_4

    .line 722
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--getPropertyMap: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v6}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v6

    nop

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    goto :goto_4

    .line 718
    :pswitch_3
    const-string v5, "--removeDevice "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeDevice(Ljava/lang/String;)V

    .line 720
    goto :goto_4

    .line 714
    :pswitch_4
    const-string v5, "--stopScan"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v2, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->scanDevice(ZI)V

    .line 716
    goto :goto_4

    .line 710
    :pswitch_5
    const-string v5, "--scanDevice"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->scanDevice(ZI)V

    .line 712
    goto :goto_4

    .line 704
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 705
    const-string v2, "--testOta"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->testOta()V

    .line 708
    :cond_3
    return-void

    .line 733
    :goto_4
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    array-length v5, p2

    sub-int/2addr v5, v3

    if-ge v0, v5, :cond_4

    .line 734
    move-object v5, v4

    .local v5, "prop":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    aget-object v6, p2, v6

    .line 736
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    .line 739
    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$8;

    invoke-direct {v8, p0, v5, v6}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$8;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0, v7, v8}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 701
    .end local v5    # "prop":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 744
    .end local v0    # "i":I
    .end local v1    # "hasDevice":Z
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6309084f -> :sswitch_6
        -0x5987f98f -> :sswitch_5
        -0x3fc865e -> :sswitch_4
        -0x22cc876 -> :sswitch_3
        0x2af1bcd3 -> :sswitch_2
        0x53bc259a -> :sswitch_1
        0x6725d73f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 610
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    .line 615
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 3

    .line 599
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, default device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    .line 602
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->init()V

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "RemoteManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 605
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->registerReceiver()V

    .line 606
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->ENABLE:Z

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 653
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice, deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->bMonitorProp:Z

    .line 658
    :cond_0
    return-void
.end method

.method protected removeDeviceWhenPackageUninstall()V
    .locals 2

    .line 756
    const-string v0, "RemoteManager"

    const-string v1, "removeDeviceWhenPackageUninstall"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;

    if-eqz v0, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeDevice(Ljava/lang/String;)V

    .line 761
    :cond_0
    return-void
.end method

.method public scanDevice(ZI)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "pid"    # I

    .line 574
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "start"

    goto :goto_0

    :cond_0
    const-string v2, "stop"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    if-eqz p1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->stopLeScan()V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "RemoteManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->startLeScan(I)V

    goto :goto_1

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->stopLeScan()V

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "RemoteManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterScanCallback(Ljava/lang/String;)V

    .line 584
    :goto_1
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 662
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand, deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "cmd_remove_device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->removeDevice(Ljava/lang/String;)V

    .line 671
    :cond_0
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
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

    .line 620
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPropertyMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 624
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 626
    .local v2, "cmd":[B
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x16e774cb

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "sleep_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    .line 629
    :cond_2
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 630
    .local v3, "val":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/CX/RM0/03,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x168

    invoke-direct {p0, v3, v6, v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->checkVal(III)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 635
    .end local v3    # "val":I
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_2

    .line 633
    :catch_0
    move-exception v3

    .line 634
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "RemoteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set sleep time failed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mWriteChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v3, :cond_3

    .line 640
    const-string v3, "RemoteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeCharacteristic, uuid: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mWriteChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 641
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v7

    const/16 v5, 0x20

    shr-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->mWriteChara:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 647
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "cmd":[B
    :cond_3
    goto/16 :goto_0

    .line 649
    :cond_4
    return-void
.end method
