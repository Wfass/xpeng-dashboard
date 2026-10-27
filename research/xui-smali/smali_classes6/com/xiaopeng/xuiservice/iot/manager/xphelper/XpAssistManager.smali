.class public Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "XpAssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$XpAssistManagerHolder;
    }
.end annotation


# static fields
.field private static final ACK_FAIL:Ljava/lang/String; = "ackFail"

.field private static final ACK_SUCCESS:Ljava/lang/String; = "ackSuccess"

.field private static final TAG:Ljava/lang/String; = "XpAssistManager"

.field private static currentMtu:I = 0x0

.field private static final forceEnable:Z

.field private static final mCommandTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotifyUuid:J = 0x0L

.field private static mServiceUuid:J = 0x0L

.field private static mWriteUuid:J = 0x0L

.field private static final typeAckFail:I = 0x2

.field private static final typeAckSuccess:I = 0x1

.field private static final typeTestCommand:I = 0x3


# instance fields
.field private final BLE_TARGET_MTU:I

.field private bMonitorProp:Z

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

.field private mConnectState:Ljava/lang/String;

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private transferUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    .line 36
    const-string v0, "persist.sys.xp.iot.xpassist.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->forceEnable:Z

    .line 40
    const/16 v0, 0x14

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->currentMtu:I

    .line 43
    const-wide/16 v0, 0x5850

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mServiceUuid:J

    .line 44
    const-wide/16 v0, 0x5244

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyUuid:J

    .line 45
    const-wide/16 v0, 0x5754

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteUuid:J

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mCommandTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->bMonitorProp:Z

    .line 39
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->BLE_TARGET_MTU:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    .line 50
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mConnectState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mConnectState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .line 28
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->currentMtu:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 28
    sput p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->currentMtu:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    .line 28
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->deviceDisConnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->deviceConnect()V

    return-void
.end method

.method private deviceConnect()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    goto :goto_0

    .line 335
    :cond_0
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect,mDeviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",adapter state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 336
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v0, "XpAssistManager"

    const-string v1, "deviceConnect, no device to connect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void
.end method

.method private deviceDisConnect()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "XpAssistManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method private deviceInit()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XpAssist_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    const-string v2, "XpAssist"

    const-string v3, "XpAssist"

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    .line 319
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 320
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 321
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v1

    .line 323
    .end local v0    # "deviceId":Ljava/lang/String;
    goto :goto_0

    .line 322
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 324
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    const-string v0, "XpAssistManager"

    const-string v1, "deviceInit, get device null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .locals 1

    .line 166
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$XpAssistManagerHolder;->access$900()Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$addDevice$0(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->deviceConnect()V

    .line 252
    return-void
.end method

.method public static synthetic lambda$processServicesOn$1(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 304
    :cond_0
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 308
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 19
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 264
    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 265
    const-string v2, "XpAssistManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processServicesOn@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz v1, :cond_5

    .line 268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 269
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 270
    .local v5, "uuidMsb":J
    const/16 v7, 0x20

    shr-long v8, v5, v7

    .line 271
    .local v8, "uuid":J
    const-string v10, "XpAssistManager"

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

    .line 272
    sget-wide v10, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mServiceUuid:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_4

    .line 273
    const-string v10, "XpAssistManager"

    const-string v11, "mServiceUuid found"

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v10

    .line 275
    .local v10, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v10, :cond_4

    .line 276
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_0

    .line 277
    goto :goto_0

    .line 280
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 281
    .local v12, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    shr-long/2addr v13, v7

    .line 282
    .local v13, "uuid16":J
    const-string v15, "XpAssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "find uuid:"

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .local v16, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-wide v17, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyUuid:J

    cmp-long v1, v13, v17

    if-nez v1, :cond_1

    .line 284
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_2

    .line 285
    :cond_1
    sget-wide v17, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteUuid:J

    cmp-long v1, v13, v17

    if-nez v1, :cond_2

    .line 286
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 288
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_3

    .line 290
    goto :goto_3

    .line 292
    .end local v12    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v13    # "uuid16":J
    :cond_3
    nop

    .line 280
    move-object/from16 v1, v16

    const/16 v7, 0x20

    goto :goto_1

    .line 296
    .end local v3    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v5    # "uuidMsb":J
    .end local v8    # "uuid":J
    .end local v10    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    move-object/from16 v16, v1

    .line 268
    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :goto_3
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 300
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_5
    move-object/from16 v16, v1

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$0juUTnz2zAr_6HAiZIngHB4y-GY;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$0juUTnz2zAr_6HAiZIngHB4y-GY;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void
.end method

.method private removeDevice()V
    .locals 2

    .line 365
    const-string v0, "XpAssistManager"

    const-string v1, "removeDevice"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->deviceDisConnect()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    .line 368
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    .line 369
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 370
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selfGetPropertyMap()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 356
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 358
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 360
    :cond_0
    const-string v1, "connect_state"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mConnectState:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private splitWriteBytes(Ljava/lang/String;)[B
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 390
    .local v0, "orginBytes":[B
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    add-int/lit8 v1, v1, -0x4

    .line 391
    .local v1, "unitSize":I
    array-length v2, v0

    .line 392
    .local v2, "targetSize":I
    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    .line 393
    .local v3, "unitCount":I
    add-int/lit8 v4, v3, -0x1

    iget v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    mul-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    mul-int/2addr v5, v1

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    .line 394
    .local v4, "totalSize":I
    new-array v5, v4, [B

    .line 396
    .local v5, "targetBytes":[B
    const-string v6, "XpAssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "splitWriteBytes,transferUnit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",targetSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",totalSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",unitCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v6, 0x0

    .line 400
    .local v6, "start":I
    const/4 v7, 0x0

    .line 401
    .local v7, "dataSize":I
    const/4 v8, 0x0

    .line 402
    .local v8, "currentUnit":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 403
    sub-int v9, v4, v6

    .line 404
    .local v9, "left":I
    iget v10, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    if-ge v9, v10, :cond_0

    .line 405
    move v7, v9

    goto :goto_1

    .line 407
    :cond_0
    iget v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->transferUnit:I

    .line 409
    :goto_1
    add-int/lit8 v10, v6, 0x1

    and-int/lit16 v11, v3, 0xff

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 410
    shr-int/lit8 v10, v3, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    .line 411
    add-int/lit8 v10, v6, 0x3

    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 412
    add-int/lit8 v10, v6, 0x2

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 413
    mul-int v10, v8, v1

    add-int/lit8 v11, v6, 0x4

    add-int/lit8 v12, v7, -0x4

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 414
    add-int/lit8 v8, v8, 0x1

    .line 415
    add-int/2addr v6, v7

    .line 416
    .end local v9    # "left":I
    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    .line 418
    const/4 p1, 0x0

    .line 419
    return-object v5
.end method

.method private writeToServer(Ljava/lang/String;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 376
    const-string v0, "XpAssistManager"

    const-string/jumbo v1, "writeCh is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->splitWriteBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 380
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    .line 248
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add device-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->deviceInit()V

    .line 250
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$KHtzzuCvYX4QWrO7ceAQ6AnuQhY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$KHtzzuCvYX4QWrO7ceAQ6AnuQhY;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 238
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 257
    const-string v0, "dump XpAssistManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
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

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->selfGetPropertyMap()V

    .line 178
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDeviceList:Ljava/util/ArrayList;

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

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->selfGetPropertyMap()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 172
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;

    .line 173
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->forceEnable:Z

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->bMonitorProp:Z

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice fail,mDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

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

    .line 218
    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 222
    const-string v0, "XpAssistManager"

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

    .line 223
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

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->removeDevice()V

    .line 233
    :cond_3
    :goto_2
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
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

    .line 192
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "XpAssistManager"

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

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "prop":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "propVal":Ljava/lang/String;
    const/4 v3, 0x0

    .line 196
    .local v3, "cmdType":I
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mCommandTypeMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 197
    :try_start_0
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mCommandTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 198
    .local v5, "obj":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 199
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mCommandTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/lit8 v3, v6, 0x3

    .line 200
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->mCommandTypeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 204
    .end local v5    # "obj":Ljava/lang/Integer;
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->writeToServer(Ljava/lang/String;I)V

    .line 207
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    .end local v3    # "cmdType":I
    goto :goto_0

    .line 204
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "propVal":Ljava/lang/String;
    .restart local v3    # "cmdType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    .end local v3    # "cmdType":I
    :cond_1
    return-void
.end method
