.class public Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "ChildSaftySeatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$ChildSaftySeatManagerHolder;
    }
.end annotation


# static fields
.field private static final NOTIFY_PREFIX:Ljava/lang/String; = "3D68AA"

.field private static final TAG:Ljava/lang/String; = "ChildSaftySeatManager"

.field private static final cmdHeatLevel1:[B

.field private static final cmdHeatLevel2:[B

.field private static final cmdHeatLevel3:[B

.field private static final cmdHeatOff:[B

.field private static final cmdIsoLeftDoubleClick:[B

.field private static final cmdIsoLeftEnd:[B

.field private static final cmdIsoLeftStart:[B

.field private static final cmdIsoRightDoubleClick:[B

.field private static final cmdIsoRightEnd:[B

.field private static final cmdIsoRightStart:[B

.field private static final cmdVentLevel1:[B

.field private static final cmdVentLevel2:[B

.field private static final cmdVentLevel3:[B

.field private static final cmdVentOff:[B

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mHeatStatus:Ljava/lang/String;

.field private static mIsoFixStatus:Ljava/lang/String;

.field private static mNotifyString:Ljava/lang/String;

.field private static mNotifyUuid:Ljava/util/UUID;

.field private static mPowerStatus:Ljava/lang/String;

.field private static mServiceUuid:J

.field private static mVentStatus:Ljava/lang/String;

.field private static mWriteUuid:Ljava/util/UUID;


# instance fields
.field private bMonitorProp:Z

.field private mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

.field private mConnectState:Ljava/lang/String;

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    .line 42
    const-wide/32 v0, 0x783b03e

    sput-wide v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mServiceUuid:J

    .line 43
    const-string v0, "0783b03e-8535-b5a0-7140-a304d2495cb8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyUuid:Ljava/util/UUID;

    .line 44
    const-string v0, "0783b03e-8535-b5a0-7140-a304d2495cba"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteUuid:Ljava/util/UUID;

    .line 60
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyString:Ljava/lang/String;

    .line 61
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mIsoFixStatus:Ljava/lang/String;

    .line 62
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mPowerStatus:Ljava/lang/String;

    .line 63
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mVentStatus:Ljava/lang/String;

    .line 64
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mHeatStatus:Ljava/lang/String;

    .line 67
    const-string v0, "3C6906AE01EFFF1000"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftStart:[B

    .line 68
    const-string v0, "3C6906AE01EFFF0000"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftEnd:[B

    .line 69
    const-string v0, "3C6806AE0501FFFFFF"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftDoubleClick:[B

    .line 70
    const-string v0, "3C6906AE01EFFF2000"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightStart:[B

    .line 71
    const-string v0, "3C6906AE01EFFF0000"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightEnd:[B

    .line 72
    const-string v0, "3C6806AE0510FFFFFF"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightDoubleClick:[B

    .line 73
    const-string v0, "3C6906AE03FBFF0020"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentOff:[B

    .line 74
    const-string v0, "3C6906AE03FBFF0001"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel1:[B

    .line 75
    const-string v0, "3C6906AE03FBFF0002"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel2:[B

    .line 76
    const-string v0, "3C6906AE03FBFF0004"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel3:[B

    .line 77
    const-string v0, "3C6906AE03FEFF2000"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatOff:[B

    .line 78
    const-string v0, "3C6906AE03FEFF0100"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel1:[B

    .line 79
    const-string v0, "3C6906AE03FEFF0200"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel2:[B

    .line 80
    const-string v0, "3C6906AE03FEFF0400"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->hexString2bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel3:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

    .line 49
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mConnectState:Ljava/lang/String;

    .line 206
    const-string v0, "seat"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$lOqlHSSKO3ixOvKa3FMCABgxxuM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$lOqlHSSKO3ixOvKa3FMCABgxxuM;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->resetStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mConnectState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mConnectState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->processServicesOn(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .param p1, "x1"    # [B

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->onNotify([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceDisConnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceInit()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceConnect()V

    return-void
.end method

.method private deviceConnect()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->connect(Ljava/lang/String;Z)V

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    goto :goto_0

    .line 497
    :cond_0
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceConnect,mDeviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",adapter state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 498
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getAdapterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    goto :goto_0

    .line 502
    :cond_1
    const-string v0, "ChildSaftySeatManager"

    const-string v1, "deviceConnect, no device to connect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void
.end method

.method private deviceDisConnect()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "ChildSaftySeatManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->disconnect(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->close(Ljava/lang/String;)V

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->resetStatus()V

    .line 514
    return-void
.end method

.method private deviceInit()V
    .locals 4

    .line 476
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_safety_seat_address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalKids_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    const-string v2, "ChildSafetySeat"

    const-string v3, "SafetySeat-GlobalKids"

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    .line 481
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 482
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 483
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    monitor-exit v1

    .line 485
    .end local v0    # "deviceId":Ljava/lang/String;
    goto :goto_0

    .line 484
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 486
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    const-string v0, "ChildSaftySeatManager"

    const-string v1, "deviceInit, get device null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void
.end method

.method private getHeatStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_3
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_4
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 657
    const-string v0, "-1"

    return-object v0

    .line 655
    :pswitch_5
    const-string v0, "heat_level_3"

    return-object v0

    .line 653
    :pswitch_6
    const-string v0, "heat_level_2"

    return-object v0

    .line 651
    :pswitch_7
    const-string v0, "heat_level_1"

    return-object v0

    .line 649
    :pswitch_8
    const-string v0, "heat_off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .locals 1

    .line 202
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$ChildSaftySeatManagerHolder;->access$1100()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v0

    return-object v0
.end method

.method private getVentStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_3
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_4
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 642
    const-string v0, "-1"

    return-object v0

    .line 640
    :pswitch_5
    const-string v0, "vent_level_3"

    return-object v0

    .line 638
    :pswitch_6
    const-string v0, "vent_level_2"

    return-object v0

    .line 636
    :pswitch_7
    const-string v0, "vent_level_1"

    return-object v0

    .line 634
    :pswitch_8
    const-string v0, "vent_off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic lambda$addDevice$2(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 358
    return-void
.end method

.method public static synthetic lambda$addDevice$3(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceConnect()V

    .line 362
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 4

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->selfGetPropertyMap()V

    .line 217
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 219
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static synthetic lambda$processServicesOn$4(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 454
    :cond_0
    return-void
.end method

.method public static synthetic lambda$removeDevice$5(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 537
    const-string v0, "connect_state"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEventWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 458
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

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

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_1
    return-void
.end method

.method private notifyPropEventWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 468
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWithId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

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

    .line 470
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method

.method private onNotify([B)V
    .locals 9
    .param p1, "bytes"    # [B

    .line 578
    if-nez p1, :cond_0

    .line 579
    const-string v0, "ChildSaftySeatManager"

    const-string v1, "onNotify, data null!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void

    .line 582
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "val":Ljava/lang/String;
    const-string v1, "3D68AA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    const-string v1, "ChildSaftySeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify,not interested data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void

    .line 587
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    const-string v1, "ChildSaftySeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify,repeated data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void

    .line 591
    :cond_2
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyString:Ljava/lang/String;

    .line 594
    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "powerStr":Ljava/lang/String;
    const/16 v3, 0xe

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "ventStr":Ljava/lang/String;
    const/16 v5, 0x12

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "heatStr":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "isoFixStr":Ljava/lang/String;
    const-string v5, "-2147483648"

    .line 600
    .local v5, "status":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v7, "01"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_1
    const-string v7, "00"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    :cond_3
    :goto_0
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 605
    :pswitch_2
    const-string v5, "0"

    .line 606
    goto :goto_1

    .line 602
    :pswitch_3
    const-string v5, "1"

    .line 603
    nop

    .line 610
    :goto_1
    const-string v6, "ChildSaftySeatManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNotify,isofix="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",power="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",vent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getVentStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",heat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getHeatStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mIsoFixStatus:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 614
    sput-object v5, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mIsoFixStatus:Ljava/lang/String;

    .line 615
    const-string v6, "isofix_stat"

    invoke-direct {p0, v6, v5}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_4
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mPowerStatus:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 618
    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mPowerStatus:Ljava/lang/String;

    .line 619
    const-string v6, "power_state"

    invoke-direct {p0, v6, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_5
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mHeatStatus:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 622
    sput-object v4, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mHeatStatus:Ljava/lang/String;

    .line 623
    const-string v6, "heat_status"

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getHeatStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_6
    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mVentStatus:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 626
    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mVentStatus:Ljava/lang/String;

    .line 627
    const-string v6, "vent_status"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getVentStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private processServicesOn(Landroid/bluetooth/BluetoothGatt;)V
    .locals 14
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 410
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 412
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 413
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 414
    const-string v1, "ChildSaftySeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processServicesOn@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-eqz v0, :cond_6

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 418
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 419
    .local v3, "uuidMsb":J
    const/16 v5, 0x20

    shr-long v5, v3, v5

    .line 420
    .local v5, "uuid":J
    const-string v7, "ChildSaftySeatManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processServicesOn,find uuid:0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-wide v7, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mServiceUuid:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_4

    .line 422
    const-string v7, "ChildSaftySeatManager"

    const-string v8, "mServiceUuid found"

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v7

    .line 424
    .local v7, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v7, :cond_3

    .line 426
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 427
    .local v9, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 428
    .local v10, "chUuid":Ljava/util/UUID;
    const-string v11, "ChildSaftySeatManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "find uuid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v11, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyUuid:Ljava/util/UUID;

    invoke-virtual {v11, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 430
    iput-object v9, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_2

    .line 431
    :cond_0
    sget-object v11, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteUuid:Ljava/util/UUID;

    invoke-virtual {v11, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 432
    iput-object v9, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 434
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_2

    .line 436
    goto :goto_3

    .line 438
    .end local v9    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v10    # "chUuid":Ljava/util/UUID;
    :cond_2
    goto :goto_1

    .line 440
    .end local v7    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_3
    :goto_3
    goto :goto_4

    .line 441
    :cond_4
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_5

    .line 443
    goto :goto_5

    .line 446
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "uuidMsb":J
    .end local v5    # "uuid":J
    :cond_5
    :goto_4
    goto/16 :goto_0

    .line 450
    :cond_6
    :goto_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$B5atw8kYd7pWTfo_L7FQSvUtaww;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$B5atw8kYd7pWTfo_L7FQSvUtaww;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method

.method private removeDevice()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$uOpAEFdECA2GzlSvVlh1H9S7evU;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$uOpAEFdECA2GzlSvVlh1H9S7evU;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 540
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice, device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_1

    .line 542
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_safety_seat_address"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceDisConnect()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 545
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    .line 546
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 547
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 548
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 550
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized resetStatus()V
    .locals 1

    monitor-enter p0

    .line 567
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 568
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 569
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mConnectState:Ljava/lang/String;

    .line 570
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mIsoFixStatus:Ljava/lang/String;

    .line 571
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mPowerStatus:Ljava/lang/String;

    .line 572
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mVentStatus:Ljava/lang/String;

    .line 573
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mHeatStatus:Ljava/lang/String;

    .line 574
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mNotifyString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    throw v0
.end method

.method private declared-synchronized selfGetPropertyMap()V
    .locals 3

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 519
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 520
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 521
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 524
    :cond_0
    const-string v1, "connect_state"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mConnectState:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "isofix_stat"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mIsoFixStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "power_state"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mPowerStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "vent_status"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mVentStatus:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getVentStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "heat_status"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mHeatStatus:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getHeatStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    throw v0
.end method

.method private writeToServer([BI)V
    .locals 3
    .param p1, "cmd"    # [B
    .param p2, "type"    # I

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 559
    const-string v0, "ChildSaftySeatManager"

    const-string/jumbo v1, "writeCh is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mWriteCh:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 563
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDevice, older:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->removeDevice()V

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_safety_seat_address"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add device-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceInit()V

    .line 354
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->selfGetPropertyMap()V

    .line 356
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$3NznvxN-bg7Mu6LwEMPcTGrxnQk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$3NznvxN-bg7Mu6LwEMPcTGrxnQk;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$m6M6Dz35iqoj_YOAq540Py2U64k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$m6M6Dz35iqoj_YOAq540Py2U64k;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 329
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 330
    return-void
.end method

.method public addInnerDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mInnerDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 335
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 367
    const-string v0, "dump ChildSaftySeatManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->selfGetPropertyMap()V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    if-eqz p2, :cond_9

    .line 371
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_9

    .line 372
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3df868b7

    const/4 v5, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "notify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v5

    :goto_2
    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 374
    :cond_2
    add-int/lit8 v2, v1, 0x2

    array-length v3, p2

    if-ge v2, v3, :cond_8

    .line 375
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2f6c3704

    if-eq v3, v4, :cond_4

    const v4, 0xd3bbc3

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "isofix_stat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_4
    const-string v3, "connect_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v5

    :goto_4
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 386
    :pswitch_0
    const-string v2, "0"

    add-int/lit8 v3, v1, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 387
    const-string v2, "connect_state"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 390
    :cond_6
    const-string v2, "connect_state"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    goto :goto_5

    .line 377
    :pswitch_1
    const-string v2, "0"

    add-int/lit8 v3, v1, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 378
    const-string v2, "isofix_stat"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 381
    :cond_7
    const-string v2, "isofix_stat"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    nop

    .line 395
    :goto_5
    nop

    .line 371
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 398
    :cond_8
    const-string v0, "lack of notify params..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    return-void

    .line 407
    .end local v1    # "i":I
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->selfGetPropertyMap()V

    .line 230
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
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

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-nez v0, :cond_0

    .line 236
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyMap but device is null for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->selfGetPropertyMap()V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->deviceInit()V

    .line 214
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$chaQDTP_tlrOqhbYUuY63Ien49k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$chaQDTP_tlrOqhbYUuY63Ien49k;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    .line 222
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const-string v1, "ChildSaftySeatManager"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mBluetoothCallback:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 224
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->init()V

    .line 225
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->bMonitorProp:Z

    goto :goto_0

    .line 307
    :cond_0
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice fail,mDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

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

    .line 310
    :goto_0
    return-void
.end method

.method protected removeDeviceWhenPackageUninstall()V
    .locals 2

    .line 553
    const-string v0, "ChildSaftySeatManager"

    const-string v1, "removeDeviceWhenPackageUninstall"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->removeDevice()V

    .line 555
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 314
    const-string v0, "ChildSaftySeatManager"

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

    .line 315
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

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->removeDevice()V

    .line 325
    :cond_3
    :goto_2
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
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

    .line 245
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ChildSaftySeatManager"

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

    .line 246
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "prop":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "propVal":Ljava/lang/String;
    const/4 v3, 0x0

    .line 249
    .local v3, "cmd":[B
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "iso_left_end"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "iso_left_double_click"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "heat_level_3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "heat_level_2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "heat_level_1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v5, "iso_right_end"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xc

    goto :goto_1

    :sswitch_6
    const-string v5, "vent_level_3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_7
    const-string v5, "vent_level_2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_8
    const-string v5, "vent_level_1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_9
    const-string v5, "iso_left_start"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_a
    const-string v5, "heat_off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_b
    const-string v5, "iso_right_double_click"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xd

    goto :goto_1

    :sswitch_c
    const-string v5, "iso_right_start"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xb

    goto :goto_1

    :sswitch_d
    const-string v5, "vent_off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 290
    :pswitch_0
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightDoubleClick:[B

    .line 291
    goto :goto_2

    .line 287
    :pswitch_1
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightEnd:[B

    .line 288
    goto :goto_2

    .line 284
    :pswitch_2
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoRightStart:[B

    .line 285
    goto :goto_2

    .line 281
    :pswitch_3
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftDoubleClick:[B

    .line 282
    goto :goto_2

    .line 278
    :pswitch_4
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftEnd:[B

    .line 279
    goto :goto_2

    .line 275
    :pswitch_5
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdIsoLeftStart:[B

    .line 276
    goto :goto_2

    .line 272
    :pswitch_6
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel3:[B

    .line 273
    goto :goto_2

    .line 269
    :pswitch_7
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel2:[B

    .line 270
    goto :goto_2

    .line 266
    :pswitch_8
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatLevel1:[B

    .line 267
    goto :goto_2

    .line 263
    :pswitch_9
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdHeatOff:[B

    .line 264
    goto :goto_2

    .line 260
    :pswitch_a
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel3:[B

    .line 261
    goto :goto_2

    .line 257
    :pswitch_b
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel2:[B

    .line 258
    goto :goto_2

    .line 254
    :pswitch_c
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentLevel1:[B

    .line 255
    goto :goto_2

    .line 251
    :pswitch_d
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->cmdVentOff:[B

    .line 252
    nop

    .line 296
    :goto_2
    if-eqz v3, :cond_1

    .line 297
    invoke-direct {p0, v3, v6}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->writeToServer([BI)V

    .line 299
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    .end local v3    # "cmd":[B
    :cond_1
    goto/16 :goto_0

    .line 300
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d1b591b -> :sswitch_d
        -0x6cafc43b -> :sswitch_c
        -0x5a8d3929 -> :sswitch_b
        -0x419acd60 -> :sswitch_a
        -0xd99f1dc -> :sswitch_9
        0x16624ac -> :sswitch_8
        0x16624ad -> :sswitch_7
        0x16624ae -> :sswitch_6
        0x21737cfe -> :sswitch_5
        0x2df45ae7 -> :sswitch_4
        0x2df45ae8 -> :sswitch_3
        0x2df45ae9 -> :sswitch_2
        0x581c5b98 -> :sswitch_1
        0x62485b1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
