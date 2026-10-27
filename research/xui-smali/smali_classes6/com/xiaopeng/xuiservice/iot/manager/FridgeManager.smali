.class public Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "FridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$FridgeManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;
    }
.end annotation


# static fields
.field private static final DISCONNECT_COUNT_PROP:Ljava/lang/String; = "sys.xiaopeng.fridge.dis"

.field private static final IOT_PACKAGE:Ljava/lang/String; = "com.xiaopeng.aiot"

.field private static final MAX_NAME_BYTE_LENGTH:I = 0x12

.field private static final TAG:Ljava/lang/String; = "FridgeManager##"

.field private static final XP_PRODUCT_INDEX:I = 0x1

.field private static final cmdConfigNameBytes:[B

.field private static final cmdConfigNamePrefix:Ljava/lang/String;

.field private static final cmdConfigResetBytes:[B

.field private static final cmdHighTemp:Ljava/lang/String; = "/S03/1/+06\\n"

.field private static final cmdLowTemp:Ljava/lang/String; = "/S03/1/-06\\n"

.field private static final cmdMiddleTemp:Ljava/lang/String; = "/S03/1/+00\\n"

.field private static final cmdPowerOff:Ljava/lang/String; = "/S01/1/000\\n"

.field private static final cmdPowerOn:Ljava/lang/String; = "/S01/1/001\\n"

.field private static final cmdQueryAll:Ljava/lang/String; = "/S00/1/-01\\n"

.field private static final forceEnable:Z

.field private static final fridgeProductIndex:I

.field private static final fridgeUuids:[[J

.field private static final mConfigCharactUuidLSB:J = -0x7f2e1589d8ac395dL

.field private static final mConfigServiceUuidMSB:J = -0x5db85c64f5c2bd3fL

.field private static mDebugMode:Z = false

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFeatureCode:Ljava/lang/String;

.field private static mNotifyUuid:J = 0x0L

.field private static mServiceUuid:J = 0x0L

.field private static mWriteUuid:J = 0x0L

.field private static final typeNameSet:I = 0x4

.field private static final typePower:I = 0x2

.field private static final typeQueryAll:I = 0x1

.field private static final typeReset:I = 0x5

.field private static final typeTemperature:I = 0x3


# instance fields
.field private arrayPointer:I

.field private bMonitorProp:Z

.field private connectStartTick:J

.field private disconnectStartTick:J

.field private mBatterayVoltage:Ljava/lang/String;

.field private mBatteryProtectMode:Ljava/lang/String;

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

.field private mBoxPosition:Ljava/lang/String;

.field private mCompressorSpeedStatus:Ljava/lang/String;

.field private mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mConnectState:Ljava/lang/String;

.field private mCurLeftTemperature:Ljava/lang/String;

.field private mCurRightTemperature:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mDeviceType:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mErrorCodeTimeStamps:[J

.field private mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mPowerStatus:Ljava/lang/String;

.field private mRawErrorCode:Ljava/lang/String;

.field private mRawInfoCode:Ljava/lang/String;

.field private mTargetLeftTemperature:Ljava/lang/String;

.field private mTargetRightTemperature:Ljava/lang/String;

.field private mTemperatureUnit:Ljava/lang/String;

.field private mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final recordArray:[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    .line 47
    const-string v0, "refrigerator"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->getFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFeatureCode:Ljava/lang/String;

    .line 48
    const-string v0, "persist.sys.xiaopeng.fridge.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->forceEnable:Z

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [[J

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeUuids:[[J

    .line 78
    const-string v0, "persist.sys.xiaopeng.fridge.index"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    .line 84
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mServiceUuid:J

    .line 85
    sput-wide v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyUuid:J

    .line 86
    sput-wide v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteUuid:J

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigNameBytes:[B

    .line 101
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigNameBytes:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigNamePrefix:Ljava/lang/String;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigResetBytes:[B

    .line 113
    sput-boolean v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    return-void

    nop

    :array_0
    .array-data 8
        0xfff0
        0xfff4
        0xfff1
    .end array-data

    :array_1
    .array-data 8
        0x1000
        0x1002
        0x1001
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x4t
        0x4t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x9t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

    .line 52
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    .line 53
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    .line 54
    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    .line 55
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawErrorCode:Ljava/lang/String;

    .line 56
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawInfoCode:Ljava/lang/String;

    .line 57
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceType:Ljava/lang/String;

    .line 58
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBoxPosition:Ljava/lang/String;

    .line 59
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    .line 60
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTemperatureUnit:Ljava/lang/String;

    .line 61
    const-string v1, "-2147483648"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    .line 62
    const-string v1, "-2147483648"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurRightTemperature:Ljava/lang/String;

    .line 63
    const-string v1, "-2147483648"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    .line 64
    const-string v1, "-2147483648"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetRightTemperature:Ljava/lang/String;

    .line 65
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBatteryProtectMode:Ljava/lang/String;

    .line 66
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBatterayVoltage:Ljava/lang/String;

    .line 67
    const-string v1, "-1"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCompressorSpeedStatus:Ljava/lang/String;

    .line 123
    const/16 v1, 0x40

    new-array v1, v1, [Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->recordArray:[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    .line 124
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->arrayPointer:I

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->connectStartTick:J

    .line 126
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->disconnectStartTick:J

    .line 287
    const-string v0, "fridge"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$mr_IEqnwfWRCtARE4I_Gn16o2Q0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$mr_IEqnwfWRCtARE4I_Gn16o2Q0;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 290
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->resetStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->recordArray:[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->parseInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceDisConnect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceInit()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceConnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->arrayPointer:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->arrayPointer:I

    return p1
.end method

.method static synthetic access$208(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->arrayPointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->arrayPointer:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->disconnectStartTick:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # J

    .line 42
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->disconnectStartTick:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->connectStartTick:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # J

    .line 42
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->connectStartTick:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->gattCharacteristicsReset()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method private bytesMerge([B[B)[B
    .locals 4
    .param p1, "bytes1"    # [B
    .param p2, "bytes2"    # [B

    .line 775
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 777
    .local v0, "newBytes":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 778
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 780
    return-object v0
.end method

.method private checkIfDoorOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pre"    # Ljava/lang/String;
    .param p2, "cur"    # Ljava/lang/String;

    .line 964
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 965
    .local v1, "curVal":I
    const/16 v2, 0x40

    and-int v3, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 966
    .local v3, "curOpened":Z
    :goto_0
    const-string v6, "-1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 967
    if-eqz v3, :cond_4

    .line 969
    const-string v0, "FridgeManager##"

    const-string v2, "toast:door opened"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$v_ZZK8xlpp_oeaHrOdtjBkgG6Uk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$v_ZZK8xlpp_oeaHrOdtjBkgG6Uk;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 973
    return-void

    .line 976
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 977
    .local v0, "preVal":I
    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    move v4, v5

    nop

    :cond_2
    move v2, v4

    .line 978
    .local v2, "preOpened":Z
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 979
    const-string v4, "FridgeManager##"

    const-string v5, "toast:door opened"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$t6NmO5nQTAZXMs2L1_gDwDuSq7s;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$t6NmO5nQTAZXMs2L1_gDwDuSq7s;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 983
    return-void

    .line 985
    :cond_3
    const-string v4, "FridgeManager##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfDoorOpened,preOpened:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",curOpened:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    .end local v0    # "preVal":I
    .end local v2    # "preOpened":Z
    :cond_4
    return-void
.end method

.method private deviceConnect()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->connectStartTick:J

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_0
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect,mDeviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",adapter state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 577
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    goto :goto_0

    .line 581
    :cond_1
    const-string v0, "FridgeManager##"

    const-string v1, "deviceConnect, no device to connect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void
.end method

.method private deviceDisConnect()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "FridgeManager##"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->resetStatus()V

    .line 594
    return-void
.end method

.method private deviceInit()V
    .locals 5

    .line 557
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_fridge_address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 559
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "macId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fridge_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    const-string v3, "XpFridge"

    const-string v4, "Fridge"

    invoke-direct {v2, v3, v1, v4}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    .line 563
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v0    # "macId":Ljava/lang/String;
    .end local v1    # "deviceId":Ljava/lang/String;
    goto :goto_1

    .line 565
    :cond_1
    const-string v0, "FridgeManager##"

    const-string v1, "deviceInit, get device null^~^"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_1
    return-void
.end method

.method private doFullQuery()V
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "/S00/1/-01\\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 690
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 692
    .end local v0    # "bytes":[B
    :cond_0
    return-void
.end method

.method private doReset()V
    .locals 5

    .line 765
    const-string v0, "FridgeManager##"

    const-string v1, "doReset"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigResetBytes:[B

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    goto :goto_0

    .line 770
    :cond_0
    const-string v0, "FridgeManager##"

    const-string v1, "doReset,mConfigCh is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void
.end method

.method private gattCharacteristicsReset()V
    .locals 2

    .line 1005
    const-string v0, "FridgeManager##"

    const-string v1, "gattCharacteristicsReset"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1007
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1008
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1009
    return-void
.end method

.method private generateErrorCodeTimeStampsValue()Ljava/lang/String;
    .locals 4

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1031
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .locals 1

    .line 293
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$FridgeManagerHolder;->access$1700()Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$addDevice$3(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0

    .line 538
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceConnect()V

    .line 539
    return-void
.end method

.method public static synthetic lambda$checkIfDoorOpened$5(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 1

    .line 971
    const-string v0, "notify_fridge_door_open"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyEvent(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public static synthetic lambda$checkIfDoorOpened$6(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 1

    .line 981
    const-string v0, "notify_fridge_door_open"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyEvent(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public static synthetic lambda$dump$2(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 5

    .line 403
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->setPowerState(Ljava/lang/String;)V

    .line 406
    const-string v1, "-06"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->setTargetTemperature(Ljava/lang/String;)V

    .line 408
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_1

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FridgeManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp test,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "k":I
    :cond_1
    const-string v0, "+06"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->setTargetTemperature(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 4

    .line 310
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->selfGetPropertyMap()V

    .line 311
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 313
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static synthetic lambda$processServicesOn$4(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->doFullQuery()V

    .line 684
    return-void
.end method

.method static synthetic lambda$showToast$7(I)V
    .locals 0
    .param p0, "id"    # I

    .line 992
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->show(I)V

    .line 993
    return-void
.end method

.method private notifyEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 997
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bd_event_type"

    const-string v2, "type_event_stat_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v1, "key_event_stat_notify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v1, "com.xiaopeng.aiot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1002
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 620
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 613
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

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

    .line 614
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method private parseInfo(Ljava/lang/String;)V
    .locals 18
    .param p1, "valueStr"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 784
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 785
    const-string v0, "FridgeManager##"

    const-string v3, "parseInfo, str is null!"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void

    .line 792
    :cond_0
    const-string v0, "/S00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v0, :cond_6

    .line 800
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawInfoCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    const-string v0, "FridgeManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInfo, repeated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_1
    iput-object v2, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawInfoCode:Ljava/lang/String;

    .line 809
    :try_start_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "subStr":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 811
    .local v9, "deviceType":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 812
    .local v10, "infoArray":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    .line 813
    .local v11, "boxPosition":Ljava/lang/String;
    aget-object v12, v10, v8

    .line 814
    .local v12, "powerStatus":Ljava/lang/String;
    aget-object v4, v10, v4

    .line 815
    .local v4, "temperatureUnit":Ljava/lang/String;
    aget-object v7, v10, v7

    .line 816
    .local v7, "curLeftTemperature":Ljava/lang/String;
    aget-object v3, v10, v3

    .line 817
    .local v3, "curRightTemperature":Ljava/lang/String;
    sget v13, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    if-eq v13, v8, :cond_2

    .line 818
    const-string v5, "FridgeManager##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",boxPosition="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",powerStatus="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",temperatureUnit="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",curLeftTemperature="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",curRightTemperature="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    goto :goto_0

    .line 829
    :cond_2
    aget-object v5, v10, v5

    .line 830
    .local v5, "targetLeftTemperature":Ljava/lang/String;
    const/4 v8, 0x6

    aget-object v8, v10, v8

    .line 831
    .local v8, "targetRightTemperature":Ljava/lang/String;
    aget-object v6, v10, v6

    .line 832
    .local v6, "batteryProtectMode":Ljava/lang/String;
    const/16 v13, 0x8

    aget-object v13, v10, v13

    .line 833
    .local v13, "batterayVoltage":Ljava/lang/String;
    const/16 v14, 0x9

    aget-object v14, v10, v14

    .line 834
    .local v14, "compressorSpeedStatus":Ljava/lang/String;
    const-string v15, "FridgeManager##"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "subStr":Ljava/lang/String;
    .local v16, "subStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "targetLeftTemperature="

    .end local v3    # "curRightTemperature":Ljava/lang/String;
    .local v17, "curRightTemperature":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",targetRightTemperature="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",batteryProtectMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",batterayVoltage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",compressorSpeedStatus="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 839
    iput-object v5, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    .line 840
    const-string v0, "target_temp"

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .end local v5    # "targetLeftTemperature":Ljava/lang/String;
    .end local v6    # "batteryProtectMode":Ljava/lang/String;
    .end local v8    # "targetRightTemperature":Ljava/lang/String;
    .end local v13    # "batterayVoltage":Ljava/lang/String;
    .end local v14    # "compressorSpeedStatus":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    if-nez v0, :cond_4

    .line 846
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 847
    iput-object v7, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    .line 848
    const-string v0, "temperature"

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_4
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 853
    iput-object v12, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    .line 854
    const-string v0, "switch_state"

    invoke-direct {v1, v0, v12}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "infoArray":[Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    goto :goto_1

    .line 856
    .end local v4    # "temperatureUnit":Ljava/lang/String;
    .end local v7    # "curLeftTemperature":Ljava/lang/String;
    .end local v9    # "deviceType":Ljava/lang/String;
    .end local v11    # "boxPosition":Ljava/lang/String;
    .end local v12    # "powerStatus":Ljava/lang/String;
    .end local v17    # "curRightTemperature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    goto/16 :goto_5

    .line 859
    :cond_6
    const-string v0, "/SEE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 870
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 872
    const-string v0, "FridgeManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInfo, repeated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void

    .line 875
    :cond_7
    iput-object v2, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawErrorCode:Ljava/lang/String;

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "errorStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 881
    .local v3, "realError":Z
    :try_start_1
    sget v4, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    if-eq v4, v8, :cond_8

    .line 882
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 893
    .end local v0    # "errorStr":Ljava/lang/String;
    .local v3, "errorStr":Ljava/lang/String;
    .local v4, "realError":Z
    :goto_2
    move v4, v3

    move-object v3, v0

    goto :goto_3

    .line 885
    .end local v4    # "realError":Z
    .restart local v0    # "errorStr":Ljava/lang/String;
    .local v3, "realError":Z
    :cond_8
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 886
    .local v4, "array":[Ljava/lang/String;
    if-eqz v4, :cond_9

    array-length v5, v4

    if-le v5, v7, :cond_9

    .line 887
    aget-object v5, v4, v7

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 888
    const/4 v3, 0x1

    goto :goto_2

    .line 890
    :cond_9
    const-string v5, "error"

    move-object v0, v5

    .end local v4    # "array":[Ljava/lang/String;
    goto :goto_2

    .line 893
    .end local v0    # "errorStr":Ljava/lang/String;
    .local v3, "errorStr":Ljava/lang/String;
    .local v4, "realError":Z
    :goto_3
    const-string v0, "FridgeManager##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    if-nez v0, :cond_b

    .line 896
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 897
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->checkIfDoorOpened(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iput-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    .line 899
    if-eqz v4, :cond_a

    .line 900
    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->updateErrorCodeTimeStamps(I)V

    .line 902
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v0

    .line 904
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_2
    const-string v0, "error_code"

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    const-string v0, "error_code_timestamp"

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->generateErrorCodeTimeStampsValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 909
    goto :goto_4

    .line 907
    :catch_1
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FridgeManager##"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "errorStr":Ljava/lang/String;
    .end local v4    # "realError":Z
    .end local v5    # "obj":Lorg/json/JSONObject;
    goto :goto_4

    .line 912
    :catch_2
    move-exception v0

    .line 913
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_4
    goto :goto_5

    .line 924
    :cond_c
    :try_start_4
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "infoArray":[Ljava/lang/String;
    aget-object v6, v0, v8

    .line 926
    .local v6, "targetLeftTemperature":Ljava/lang/String;
    aget-object v4, v0, v4

    .line 927
    .local v4, "targetRightTemperature":Ljava/lang/String;
    aget-object v7, v0, v7

    .line 928
    .local v7, "batteryProtectMode":Ljava/lang/String;
    aget-object v3, v0, v3

    .line 929
    .local v3, "batterayVoltage":Ljava/lang/String;
    aget-object v5, v0, v5

    .line 930
    .local v5, "compressorSpeedStatus":Ljava/lang/String;
    const-string v8, "FridgeManager##"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetLeftTemperature="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",targetRightTemperature="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",batteryProtectMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",batterayVoltage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",compressorSpeedStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 935
    iput-object v6, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    .line 936
    const-string v8, "target_temp"

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 940
    .end local v0    # "infoArray":[Ljava/lang/String;
    :cond_d
    goto :goto_5

    .line 938
    .end local v3    # "batterayVoltage":Ljava/lang/String;
    .end local v4    # "targetRightTemperature":Ljava/lang/String;
    .end local v5    # "compressorSpeedStatus":Ljava/lang/String;
    .end local v6    # "targetLeftTemperature":Ljava/lang/String;
    .end local v7    # "batteryProtectMode":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 19
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 629
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 630
    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 631
    iput-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 632
    const-string v2, "FridgeManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processServicesOn@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    if-eqz v1, :cond_7

    .line 635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 636
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 637
    .local v5, "uuidMsb":J
    const/16 v7, 0x20

    shr-long v8, v5, v7

    .line 638
    .local v8, "uuid":J
    sget-wide v10, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mServiceUuid:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_4

    .line 639
    const-string v10, "FridgeManager##"

    const-string v11, "mServiceUuid found"

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v10

    .line 641
    .local v10, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v10, :cond_3

    .line 643
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 644
    .local v12, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    shr-long/2addr v13, v7

    .line 645
    .local v13, "uuid16":J
    const-string v15, "FridgeManager##"

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

    .line 646
    sget-wide v17, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyUuid:J

    cmp-long v1, v13, v17

    if-nez v1, :cond_0

    .line 647
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_2

    .line 648
    :cond_0
    sget-wide v17, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteUuid:J

    cmp-long v1, v13, v17

    if-nez v1, :cond_1

    .line 649
    iput-object v12, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 651
    :cond_1
    :goto_2
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_2

    .line 653
    goto :goto_3

    .line 655
    .end local v12    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v13    # "uuid16":J
    :cond_2
    nop

    .line 643
    move-object/from16 v1, v16

    const/16 v7, 0x20

    goto :goto_1

    .line 658
    .end local v10    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :goto_3
    goto :goto_5

    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const-wide v10, -0x5db85c64f5c2bd3fL

    cmp-long v1, v10, v5

    if-nez v1, :cond_6

    .line 659
    const-string v1, "FridgeManager##"

    const-string v7, "mConfigServiceUuidMSB found"

    invoke-static {v1, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 661
    .local v1, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v1, :cond_6

    .line 663
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 664
    .local v10, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    .line 665
    .local v11, "uuid16":J
    const-string v13, "FridgeManager##"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "find uuid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-wide v13, -0x7f2e1589d8ac395dL

    cmp-long v13, v11, v13

    if-nez v13, :cond_5

    .line 667
    iput-object v10, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 668
    goto :goto_5

    .line 670
    .end local v10    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v11    # "uuid16":J
    :cond_5
    goto :goto_4

    .line 673
    .end local v1    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v3    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v5    # "uuidMsb":J
    .end local v8    # "uuid":J
    :cond_6
    :goto_5
    nop

    .line 635
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 677
    .end local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_7
    move-object/from16 v16, v1

    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v16    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_8

    .line 678
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 682
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$9nw4GQ80rSjPjsfao6-0O5TnnLo;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$9nw4GQ80rSjPjsfao6-0O5TnnLo;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v2, v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    return-void
.end method

.method private removeDevice()V
    .locals 2

    .line 543
    const-string v0, "FridgeManager##"

    const-string v1, "removeDevice"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_fridge_address"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceDisConnect()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    .line 550
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    .line 551
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 554
    :cond_0
    return-void
.end method

.method private resetErrorCodeTimeStamps()V
    .locals 4

    .line 1038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private declared-synchronized resetStatus()V
    .locals 1

    monitor-enter p0

    .line 945
    :try_start_0
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    .line 946
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    .line 947
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceType:Ljava/lang/String;

    .line 948
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBoxPosition:Ljava/lang/String;

    .line 949
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    .line 950
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTemperatureUnit:Ljava/lang/String;

    .line 951
    const-string v0, "-2147483648"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    .line 952
    const-string v0, "-2147483648"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurRightTemperature:Ljava/lang/String;

    .line 953
    const-string v0, "-2147483648"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    .line 954
    const-string v0, "-2147483648"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetRightTemperature:Ljava/lang/String;

    .line 955
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBatteryProtectMode:Ljava/lang/String;

    .line 956
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBatterayVoltage:Ljava/lang/String;

    .line 957
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCompressorSpeedStatus:Ljava/lang/String;

    .line 958
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawInfoCode:Ljava/lang/String;

    .line 959
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mRawErrorCode:Ljava/lang/String;

    .line 960
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->resetErrorCodeTimeStamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    .line 944
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    throw v0
.end method

.method private declared-synchronized selfGetPropertyMap()V
    .locals 3

    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 599
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 600
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 601
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 603
    :cond_0
    const-string v1, "switch_state"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "temperature"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "target_temp"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v1, "connect_state"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "error_code"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "error_code_timestamp"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->generateErrorCodeTimeStampsValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    throw v0
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 741
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceName->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",name len->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 744
    .local v0, "valueBytes":[B
    array-length v1, v0

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    .line 745
    const-string v1, "FridgeManager##"

    const-string v2, "setDeviceName length overlap, ignore!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void

    .line 747
    :cond_0
    array-length v1, v0

    if-ge v1, v2, :cond_2

    .line 748
    array-length v1, v0

    rsub-int/lit8 v1, v1, 0x12

    .line 749
    .local v1, "deltaLength":I
    new-array v2, v2, [B

    .line 750
    .local v2, "temp":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 751
    array-length v3, v0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 752
    aput-byte v4, v2, v3

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v3    # "i":I
    :cond_1
    move-object v0, v2

    .line 757
    .end local v1    # "deltaLength":I
    .end local v2    # "temp":[B
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConfigCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->cmdConfigNameBytes:[B

    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bytesMerge([B[B)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    goto :goto_1

    .line 760
    :cond_3
    const-string v1, "FridgeManager##"

    const-string v2, "setDeviceName,mConfigCh is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_1
    return-void
.end method

.method private setPowerState(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 695
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerState->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 702
    :pswitch_2
    const-string v0, "/S01/1/000\\n"

    .line 703
    goto :goto_2

    .line 699
    :pswitch_3
    const-string v0, "/S01/1/001\\n"

    .line 700
    nop

    .line 707
    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 709
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 710
    .end local v1    # "bytes":[B
    goto :goto_3

    .line 711
    :cond_1
    const-string v1, "FridgeManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerState,cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setTargetTemperature(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 716
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTargetTemperature->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xa76b

    if-eq v1, v2, :cond_2

    const v2, 0xa771

    if-eq v1, v2, :cond_1

    const v2, 0xaef3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-06"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "+06"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "+00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 726
    :pswitch_0
    const-string v0, "/S03/1/-06\\n"

    .line 727
    goto :goto_2

    .line 723
    :pswitch_1
    const-string v0, "/S03/1/+00\\n"

    .line 724
    goto :goto_2

    .line 720
    :pswitch_2
    const-string v0, "/S03/1/+06\\n"

    .line 721
    nop

    .line 732
    :goto_2
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_4

    .line 733
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 734
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 735
    .end local v1    # "bytes":[B
    goto :goto_3

    .line 736
    :cond_4
    const-string v1, "FridgeManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTargetTemperature,cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .line 991
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$HO0Y4_rPRYp2ilfzIglD-Qi6HMo;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$HO0Y4_rPRYp2ilfzIglD-Qi6HMo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 994
    return-void
.end method

.method private updateErrorCodeTimeStamps(I)V
    .locals 8
    .param p1, "errorCode"    # I

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1013
    .local v0, "timeTick":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1014
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, p1

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    .line 1015
    const-string v3, "FridgeManager##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1018
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    aput-wide v0, v3, v2

    goto :goto_1

    .line 1021
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCodeTimeStamps:[J

    aput-wide v4, v3, v2

    .line 1013
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 5
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "deviceAddr":Ljava/lang/String;
    const-string v1, "FridgeManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add device-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v1

    const-string v2, "key_fridge_address"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceInit()V

    .line 537
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$jJVNtheqry011RSi5NXgkwIF818;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$jJVNtheqry011RSi5NXgkwIF818;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 389
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 390
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 394
    const-string v0, "dump FridgeManager##"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 398
    move v1, v0

    .line 398
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 399
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3eb9fe6d

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, -0x1aeb3af7

    if-eq v4, v5, :cond_2

    const v5, 0x2b06581

    if-eq v4, v5, :cond_1

    const v5, 0x528ee5fb

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "-error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_1
    const-string v4, "-temp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    const-string v4, "-debugMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_3
    const-string v4, "-temptest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :pswitch_0
    array-length v0, p2

    sub-int/2addr v0, v6

    if-ge v1, v0, :cond_6

    .line 465
    add-int/lit8 v1, v1, 0x1

    .line 466
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    if-eqz v0, :cond_5

    .line 467
    aget-object v0, p2, v1

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    .line 468
    const-string v0, "temperature"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify temperature:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 471
    :cond_5
    const-string v0, "please enable debug mode first!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :cond_6
    const-string v0, "lag of param,please input temperature value!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    :goto_3
    return-void

    .line 438
    :pswitch_1
    array-length v0, p2

    sub-int/2addr v0, v6

    if-ge v1, v0, :cond_8

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 440
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    if-eqz v0, :cond_7

    .line 441
    aget-object v0, p2, v1

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->updateErrorCodeTimeStamps(I)V

    .line 443
    const-string v0, "-1"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->checkIfDoorOpened(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "error_code"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v2, "error_code_timestamp"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->generateErrorCodeTimeStampsValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->notifyPropEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_4

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FridgeManager##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify error code:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .end local v0    # "obj":Lorg/json/JSONObject;
    goto :goto_5

    .line 454
    :cond_7
    const-string v0, "please enable debug mode first!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 457
    :cond_8
    const-string v0, "lag of param,please input error code!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    :goto_5
    return-void

    .line 421
    :pswitch_2
    array-length v2, p2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_a

    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 423
    const-string v2, "0"

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 424
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    .line 425
    const-string v0, "disable debug mode!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 427
    :cond_9
    sput-boolean v6, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    .line 428
    const-string v0, "enable debug mode!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 431
    :cond_a
    const-string v0, "please input debugMode 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :goto_6
    return-void

    .line 401
    :pswitch_3
    const-string v0, "temperature stress set test..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$gTipIqVeBi3VVGF286DSsnxXrqs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$gTipIqVeBi3VVGF286DSsnxXrqs;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 417
    return-void

    .line 486
    .end local v1    # "i":I
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDebugMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    if-eqz v1, :cond_c

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v1, "property status:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mPowerStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mCurLeftTemperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  target temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mTargetLeftTemperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  connect state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mConnectState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  error code timestamps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->generateErrorCodeTimeStampsValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->recordArray:[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_10

    .line 501
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 503
    .local v2, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "str":Ljava/lang/String;
    const-string v4, "sys.xiaopeng.fridge.dis"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 505
    .local v4, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cur time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",total disconnect count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->recordArray:[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    array-length v6, v5

    :goto_7
    if-ge v0, v6, :cond_10

    aget-object v7, v5, v0

    .line 507
    .local v7, "record":Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;
    if-nez v7, :cond_d

    .line 508
    goto/16 :goto_9

    .line 510
    :cond_d
    new-instance v8, Ljava/util/Date;

    iget-wide v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->tick:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 511
    iget-boolean v8, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    if-eqz v8, :cond_f

    .line 512
    const-wide/16 v8, 0x0

    iget-wide v10, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->disconnectTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",connect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",disconnect "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->disconnectTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 515
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",connect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",connect with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connectTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 518
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",connect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v7    # "record":Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 522
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v2    # "curDate":Ljava/util/Date;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "count":I
    :cond_10
    :goto_9
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 326
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->selfGetPropertyMap()V

    .line 327
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

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

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->selfGetPropertyMap()V

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 298
    const-string v0, "FridgeManager##"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 299
    const-string v0, "FridgeManager##"

    const-string v2, "init enter"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeUuids:[[J

    sget v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    sput-wide v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mServiceUuid:J

    .line 302
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeUuids:[[J

    sget v2, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    aget-object v0, v0, v2

    aget-wide v0, v0, v1

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mNotifyUuid:J

    .line 303
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeUuids:[[J

    sget v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->fridgeProductIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mWriteUuid:J

    .line 306
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->deviceInit()V

    .line 308
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$bHZCqU-1JFUNmRdLx-Z9OUB8j0E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$bHZCqU-1JFUNmRdLx-Z9OUB8j0E;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->init()V

    .line 319
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "FridgeManager##"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 321
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 526
    const-string v0, "1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->forceEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->bMonitorProp:Z

    goto :goto_0

    .line 367
    :cond_0
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice fail,mFidgeDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

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

    .line 370
    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 374
    const-string v0, "FridgeManager##"

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

    .line 375
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

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->mFidgeDevice:Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->removeDevice()V

    .line 385
    :cond_3
    :goto_2
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    .line 332
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "FridgeManager##"

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

    .line 333
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

    .line 334
    .local v1, "prop":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, "propVal":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7c40223e

    if-eq v4, v5, :cond_2

    const v5, -0x2f6c3704

    if-eq v4, v5, :cond_1

    const v5, 0x5e81a7c6

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "switch_state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "connect_state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "target_temp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    goto :goto_2

    .line 344
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "propVal":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->setTargetTemperature(Ljava/lang/String;)V

    .line 345
    goto :goto_2

    .line 341
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->setPowerState(Ljava/lang/String;)V

    .line 342
    goto :goto_2

    .line 338
    :pswitch_2
    const-string v3, "FridgeManager##"

    const-string v4, "ignore op PROP_CONNECT_STATE"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    nop

    .line 349
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 350
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
