.class public Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "ChildSeatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$ChildSeatManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildSeatManager"

.field private static final cmdDisableBeltAlarm:[B

.field private static final cmdDisableISOFixAlarm:[B

.field private static final cmdDisableTempAlarm:[B

.field private static final cmdEnableBeltAlarm:[B

.field private static final cmdEnableISOFixAlarm:[B

.field private static final cmdEnableTempAlarm:[B

.field private static final cmdTurnOffHeat:[B

.field private static final cmdTurnOffVent:[B

.field private static final cmdTurnOnHeat:[B

.field private static final cmdTurnOnVent:[B

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final mServiceUuid:J = 0x181cL


# instance fields
.field private bMonitorProp:Z

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

.field private mConnectState:Ljava/lang/String;

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private final mWritePropMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    .line 36
    const-string v0, "60"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableISOFixAlarm:[B

    .line 37
    const-string v0, "61"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableISOFixAlarm:[B

    .line 38
    const-string v0, "70"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableBeltAlarm:[B

    .line 39
    const-string v0, "71"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableBeltAlarm:[B

    .line 40
    const-string v0, "90"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableTempAlarm:[B

    .line 41
    const-string v0, "91"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableTempAlarm:[B

    .line 42
    const-string v0, "87"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOnVent:[B

    .line 43
    const-string v0, "88"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOffVent:[B

    .line 44
    const-string v0, "89"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOnHeat:[B

    .line 45
    const-string v0, "8a"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOffHeat:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 415
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->bMonitorProp:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 53
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mConnectState:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    .line 416
    const-string v0, "seat"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$ktNsJJA-g69YfeUUPd-OAqHRMCc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$ktNsJJA-g69YfeUUPd-OAqHRMCc;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mConnectState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mConnectState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->resetStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceDisConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;J[B)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->onNotify(J[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceInit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceConnect(Ljava/lang/String;)V

    return-void
.end method

.method private checkDeviceId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getDeviceId()Ljava/lang/String;

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

    .line 57
    if-gt p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private cmdSetHeatUpper(I)[B
    .locals 2
    .param p1, "val"    # I

    .line 85
    const/16 v0, 0x14

    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkVal(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->toByte(S)[B

    move-result-object v0

    return-object v0
.end method

.method private cmdSetLowBatteryLower(I)[B
    .locals 2
    .param p1, "val"    # I

    .line 81
    const/16 v0, 0xa

    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkVal(III)I

    move-result v0

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->toByte(S)[B

    move-result-object v0

    return-object v0
.end method

.method private cmdSetTempAlarmLower(I)[B
    .locals 2
    .param p1, "val"    # I

    .line 73
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkVal(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->toByte(S)[B

    move-result-object v0

    return-object v0
.end method

.method private cmdSetTempAlarmUpper(I)[B
    .locals 2
    .param p1, "val"    # I

    .line 77
    const/16 v0, 0x1e

    const/16 v1, 0x3c

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkVal(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->toByte(S)[B

    move-result-object v0

    return-object v0
.end method

.method private deviceConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 148
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "ChildSeatManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    .line 156
    :cond_0
    return-void
.end method

.method private deviceDisConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 159
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDeisConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "ChildSeatManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->resetStatus()V

    .line 165
    return-void
.end method

.method private deviceInit(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 128
    const-string v0, "ChildSeatManager"

    const-string v1, "deviceInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    const-string v1, "ChildSeat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Babyfirst_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Babyfirst"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->resetStatus()V

    .line 134
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fromByte([B)S
    .locals 2
    .param p1, "bytes"    # [B

    .line 69
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .locals 1

    .line 412
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$ChildSeatManagerHolder;->access$1200()Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$addDevice$2(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 539
    return-void
.end method

.method public static synthetic lambda$addDevice$3(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceConnect(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public static synthetic lambda$removeDevice$0(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V
    .locals 2

    .line 171
    const-string v0, "connect_state"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 141
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPropEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method private onNotify(J[B)V
    .locals 6
    .param p1, "uuid"    # J
    .param p3, "bytes"    # [B

    .line 190
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->fromByte([B)S

    move-result v0

    goto :goto_0

    :cond_0
    aget-byte v0, p3, v1

    int-to-short v0, v0

    .line 192
    .local v0, "val":S
    :goto_0
    const-string v3, "ChildSeatManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotify, uuid=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", val="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    long-to-int v3, p1

    const/16 v4, 0x2a19

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2a58

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 232
    :pswitch_0
    const-string v1, "heat_protect_upper"

    div-int/lit8 v2, v0, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :pswitch_1
    const-string v1, "lowbattery_alarm_lower"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    goto/16 :goto_1

    .line 226
    :pswitch_2
    const-string v1, "temp_alarm_upper"

    div-int/lit8 v2, v0, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    goto/16 :goto_1

    .line 223
    :pswitch_3
    const-string v1, "temp_alarm_lower"

    div-int/lit8 v2, v0, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto/16 :goto_1

    .line 220
    :pswitch_4
    const-string v1, "seat_temperature"

    div-int/lit8 v2, v0, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    goto/16 :goto_1

    .line 208
    :pswitch_5
    const-string v3, "ventilation_enable"

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "ventilation_status"

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "heat_status"

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "heat_enable"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "power_supply_method"

    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    goto :goto_1

    .line 201
    :pswitch_6
    const-string v1, "isofix_alarm_status"

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "belt_alarm_status"

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "pressure_alarm_status"

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "temp_alarm_status"

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "lowbattery_alarm_status"

    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    goto :goto_1

    .line 215
    :cond_1
    const-string v3, "isofix_alarm_enable"

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "belt_alarm_enable"

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "temp_alarm_enable"

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->parseValue(IS)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    goto :goto_1

    .line 198
    :cond_2
    const-string v1, "battery_power"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    nop

    .line 235
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a22
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfff0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseValue(IS)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "val"    # S

    .line 61
    shr-int v0, p2, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 238
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processServicesOn@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 243
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    .line 245
    .local v2, "uuid":J
    const-wide/16 v5, 0x181c

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "uuid":J
    goto :goto_0

    .line 246
    .restart local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .restart local v2    # "uuid":J
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 248
    :cond_2
    const-string v5, "ChildSeatManager"

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

    .line 250
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 251
    .local v6, "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v7

    shr-long v2, v7, v4

    .line 253
    const-string v7, "ChildSeatManager"

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

    .line 255
    long-to-int v7, v2

    const/16 v8, 0x2a19

    const/4 v9, 0x1

    if-eq v7, v8, :cond_3

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    .end local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    goto :goto_2

    .line 285
    .restart local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_0
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "heat_protect_upper"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .end local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    goto :goto_2

    .line 281
    .restart local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "lowbattery_alarm_lower"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 283
    goto :goto_2

    .line 277
    :pswitch_2
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "temp_alarm_upper"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 279
    goto :goto_2

    .line 273
    :pswitch_3
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "temp_alarm_lower"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 275
    goto :goto_2

    .line 268
    :pswitch_4
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "isofix_alarm_enable"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "belt_alarm_enable"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "temp_alarm_enable"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    goto :goto_2

    .line 264
    :pswitch_5
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "ventilation_enable"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    const-string v8, "heat_enable"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    goto :goto_2

    .line 261
    :cond_3
    :pswitch_6
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 262
    nop

    .line 289
    .end local v6    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_2
    goto/16 :goto_1

    .line 290
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "uuid":J
    :cond_4
    goto/16 :goto_0

    .line 291
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2a22
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a56
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfff0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeDevice()V
    .locals 3

    .line 168
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$nPVXk0Ejv-Efwg5NpsxNEJZRW5s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$nPVXk0Ejv-Efwg5NpsxNEJZRW5s;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_child_seat_address"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceDisConnect(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    .line 177
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetPropertyMap()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "isofix_alarm_enable"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "isofix_alarm_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "belt_alarm_enable"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "belt_alarm_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "temp_alarm_lower"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "temp_alarm_upper"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "temp_alarm_enable"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "temp_alarm_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "seat_temperature"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "pressure_alarm_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "power_supply_method"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "lowbattery_alarm_lower"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "lowbattery_alarm_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "battery_power"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "ventilation_enable"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "ventilation_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "heat_protect_upper"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "heat_enable"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "heat_status"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 118
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private declared-synchronized resetStatus()V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    const-string v0, "ChildSeatManager"

    const-string v1, "resetStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->resetPropertyMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    throw v0
.end method

.method private toByte(S)[B
    .locals 2
    .param p1, "value"    # S

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private updateProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 526
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->removeDevice()V

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 534
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDevice, address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->deviceInit(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$G5T6wvmIjx2H3z6LlZMlKEe0XLg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$G5T6wvmIjx2H3z6LlZMlKEe0XLg;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 540
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$rWjHspxph_KENv9BlV_imWZbzVI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$rWjHspxph_KENv9BlV_imWZbzVI;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_child_seat_address"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 515
    const-string v0, "ChildSeatManager"

    const-string v1, "addDeviceListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 517
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 550
    const-string v0, "dump ChildSeatManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "cmd":Ljava/lang/String;
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 556
    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "--setLowBattAlarmLower"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "--setHeatEnable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_2
    const-string v5, "--setIsofixAlarmEnable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_2

    :sswitch_3
    const-string v5, "--setHeatUpper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_4
    const-string v5, "--setTempAlarmEnable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "--setBeltAlarmEnable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_6
    const-string v5, "--setVentEnable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "--getPropertyMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_2

    :sswitch_8
    const-string v5, "--setTempAlarmUpper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_9
    const-string v5, "--setTempAlarmLower"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 585
    :pswitch_0
    const-string v2, "heat_enable"

    goto :goto_3

    .line 582
    :pswitch_1
    const-string v2, "heat_protect_upper"

    .line 583
    goto :goto_3

    .line 579
    :pswitch_2
    const-string v2, "ventilation_enable"

    .line 580
    goto :goto_3

    .line 576
    :pswitch_3
    const-string v2, "lowbattery_alarm_lower"

    .line 577
    goto :goto_3

    .line 573
    :pswitch_4
    const-string v2, "temp_alarm_enable"

    .line 574
    goto :goto_3

    .line 570
    :pswitch_5
    const-string v2, "temp_alarm_upper"

    .line 571
    goto :goto_3

    .line 567
    :pswitch_6
    const-string v2, "temp_alarm_lower"

    .line 568
    goto :goto_3

    .line 564
    :pswitch_7
    const-string v2, "belt_alarm_enable"

    .line 565
    goto :goto_3

    .line 561
    :pswitch_8
    const-string v2, "isofix_alarm_enable"

    .line 562
    goto :goto_3

    .line 558
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--getPropertyMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    nop

    .line 589
    :goto_3
    if-eqz v2, :cond_1

    array-length v3, p2

    sub-int/2addr v3, v6

    if-ge v0, v3, :cond_1

    .line 590
    move-object v3, v2

    .local v3, "prop":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    .line 592
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    .line 595
    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0, v5, v6}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 555
    .end local v3    # "prop":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 600
    .end local v0    # "i":I
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b36ea7a -> :sswitch_9
        -0x7ab7bcd9 -> :sswitch_8
        -0x6309084f -> :sswitch_7
        -0x3424b906 -> :sswitch_6
        -0x18da5df9 -> :sswitch_5
        0x84f8b9e -> :sswitch_4
        0xa7a97f0 -> :sswitch_3
        0x28294d02 -> :sswitch_2
        0x2967cff5 -> :sswitch_1
        0x71ca9161 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 432
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceList:Ljava/util/ArrayList;

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

    .line 437
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->getPropertyMap()Ljava/util/Map;

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

    .line 423
    const-string v0, "ChildSeatManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

    .line 426
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "ChildSeatManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 428
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 491
    const-string v0, "ChildSeatManager"

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

    .line 493
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->bMonitorProp:Z

    .line 496
    :cond_0
    return-void
.end method

.method protected removeDeviceWhenPackageUninstall()V
    .locals 2

    .line 603
    const-string v0, "ChildSeatManager"

    const-string v1, "removeDeviceWhenPackageUninstall"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->removeDevice()V

    .line 608
    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 500
    const-string v0, "ChildSeatManager"

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

    .line 504
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

    .line 506
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->removeDevice()V

    .line 511
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

    .line 442
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->checkDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 443
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPropertyMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "prop":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .end local v1    # "prop":Ljava/lang/String;
    goto :goto_0

    .line 448
    .restart local v1    # "prop":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mWritePropMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 449
    .local v2, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 450
    .local v3, "val":Ljava/lang/String;
    const/4 v4, 0x0

    .line 452
    .local v4, "cmd":[B
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "heat_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_1
    const-string v6, "ventilation_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_2
    const-string v6, "temp_alarm_upper"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "temp_alarm_lower"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "heat_protect_upper"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_5
    const-string v6, "temp_alarm_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_6
    const-string v6, "isofix_alarm_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_7
    const-string v6, "lowbattery_alarm_lower"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_8
    const-string v6, "belt_alarm_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_7

    .line 478
    :pswitch_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOffHeat:[B

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOnHeat:[B

    :goto_2
    move-object v4, v5

    goto/16 :goto_7

    .line 475
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdSetHeatUpper(I)[B

    move-result-object v4

    .line 476
    goto/16 :goto_7

    .line 472
    :pswitch_2
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOffVent:[B

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdTurnOnVent:[B

    :goto_3
    move-object v4, v5

    .line 473
    goto :goto_7

    .line 469
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdSetLowBatteryLower(I)[B

    move-result-object v4

    .line 470
    goto :goto_7

    .line 466
    :pswitch_4
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableTempAlarm:[B

    goto :goto_4

    :cond_4
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableTempAlarm:[B

    :goto_4
    move-object v4, v5

    .line 467
    goto :goto_7

    .line 463
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdSetTempAlarmUpper(I)[B

    move-result-object v4

    .line 464
    goto :goto_7

    .line 460
    :pswitch_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdSetTempAlarmLower(I)[B

    move-result-object v4

    .line 461
    goto :goto_7

    .line 457
    :pswitch_7
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableBeltAlarm:[B

    goto :goto_5

    :cond_5
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableBeltAlarm:[B

    :goto_5
    move-object v4, v5

    .line 458
    goto :goto_7

    .line 454
    :pswitch_8
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdDisableISOFixAlarm:[B

    goto :goto_6

    :cond_6
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->cmdEnableISOFixAlarm:[B

    :goto_6
    move-object v4, v5

    .line 455
    nop

    .line 482
    :goto_7
    if-eqz v4, :cond_7

    .line 483
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v4, v7}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 485
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "cmd":[B
    :cond_7
    goto/16 :goto_0

    .line 487
    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cbf461b -> :sswitch_8
        -0x6c268373 -> :sswitch_7
        -0x603d8e60 -> :sswitch_6
        0x19699bc -> :sswitch_5
        0x24f7723 -> :sswitch_4
        0x2178cba8 -> :sswitch_3
        0x21f7f949 -> :sswitch_2
        0x2a1d56a5 -> :sswitch_1
        0x71ddc6b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
