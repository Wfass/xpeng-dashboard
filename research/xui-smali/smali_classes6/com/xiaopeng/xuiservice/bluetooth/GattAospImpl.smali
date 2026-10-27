.class public Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.super Ljava/lang/Object;
.source "GattAospImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattAospImplHolder;
    }
.end annotation


# static fields
.field private static final BASIC_MTU:I = 0x14

.field private static final MSG_ADAPTER_STATE:I = 0x72

.field private static final MSG_ALLOW_REPEAT_COMMAND:I = 0x74

.field private static final MSG_CLOSE:I = 0x6a

.field private static final MSG_CLOSE_ALL:I = 0x6c

.field private static final MSG_CONNECT:I = 0x67

.field private static final MSG_DISCONNECT:I = 0x69

.field private static final MSG_DISCOVER_SERVICE:I = 0x6d

.field private static final MSG_INNER_RESET:I = 0x6e

.field private static final MSG_OP_CHECK:I = 0x6f

.field private static final MSG_OP_READY:I = 0x66

.field private static final MSG_PENDING_CONNECT:I = 0x68

.field private static final MSG_READ_WRITE:I = 0x65

.field private static final MSG_SET_CONNECTION_PRIORITY:I = 0x75

.field private static final MSG_SET_MTU:I = 0x73

.field private static final MSG_SET_NOTIFY:I = 0x6b

.field private static final MSG_START_SCAN:I = 0x70

.field private static final MSG_STOP_SCAN:I = 0x71

.field private static final OP_CHECK_DURATION:J = 0xbb8L

.field private static final OP_CLOSE:I = 0xce

.field private static final OP_CONNECT:I = 0xcb

.field private static final OP_DISCONNECT:I = 0xcc

.field private static final OP_READ:I = 0xc9

.field private static final OP_SETNOTIFY:I = 0xcd

.field private static final OP_SET_CALLBACK:I = 0xcf

.field private static final OP_WRITE:I = 0xca

.field private static final STATE_CLOSED:I = 0x12e

.field private static final STATE_NORMAL:I = 0x12c

.field private static final STATE_RESET:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "GattAospImpl"

.field private static final UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field private static final mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterOnTick:J

.field private mBleHandler:Landroid/os/Handler;

.field private mBleHandlerThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBluetoothProfile:Landroid/bluetooth/BluetoothProfile;

.field private mBluetoothReceiver:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mGattCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;

.field private mGattMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;

.field private mOpRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingConnectInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingConnectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mScanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mScanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "disconnected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connecting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "disconnecting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mAdapterOnTick:J

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothReceiver:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;

    .line 110
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mLeScanCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    .line 128
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mAdapterOnTick:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # J

    .line 53
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mAdapterOnTick:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleReadWrite()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleOpCheck(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleConnect(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handlePendingConnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleCloseAll()V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleSetCharacteristicNotification(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleClose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleScanLeDevice(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleAdapterState(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleMtuSet(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleConnectionPrioritySet(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Landroid/bluetooth/le/BluetoothLeScanner;

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothProfile;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothProfile:Landroid/bluetooth/BluetoothProfile;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothProfile;

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothProfile:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->onLeScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;ILandroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/le/ScanResult;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->onLeScanResult(ILandroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doHidConnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1667
    :cond_0
    return-void
.end method

.method private dumpScanDevices(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanned devices count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string v0, "devices with names:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const/4 v0, 0x1

    .line 1496
    .local v0, "firstException":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1498
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :cond_0
    goto :goto_1

    .line 1501
    :catch_0
    move-exception v3

    .line 1505
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1506
    const-string v4, "GattAospImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get name e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const/4 v0, 0x0

    .line 1510
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1511
    .end local v0    # "firstException":Z
    :cond_2
    goto :goto_2

    .line 1512
    :cond_3
    const-string v0, "no devices scanned yet"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    :goto_2
    return-void
.end method

.method private getCharacteristicFromUuidString(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "uuidStr"    # Ljava/lang/String;

    .line 1517
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 1518
    .local v0, "uuid":Ljava/util/UUID;
    const/4 v1, 0x0

    .line 1519
    .local v1, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 1520
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    move-object v1, v3

    .line 1521
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1523
    return-object v2

    .line 1525
    :cond_0
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v3

    .line 1526
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz v3, :cond_3

    .line 1527
    const-string v4, "GattAospImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " services:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .line 1529
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    .line 1530
    .local v6, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v6, :cond_2

    .line 1531
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1532
    .local v8, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1533
    return-object v8

    .line 1535
    .end local v8    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    goto :goto_1

    .line 1537
    .end local v5    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v6    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_2
    goto :goto_0

    .line 1539
    :cond_3
    return-object v2

    .line 1521
    .end local v3    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .locals 1

    .line 132
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattAospImplHolder;->access$400()Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    move-result-object v0

    return-object v0
.end method

.method private handleAdapterState(I)V
    .locals 4
    .param p1, "status"    # I

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no listener for handleAdapterState, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 279
    .local v2, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v3, p1}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onAdapterStatusChanged(I)V

    .line 282
    .end local v2    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleClose(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 490
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_1

    .line 491
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 493
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 498
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 501
    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleCloseAll()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 518
    .local v2, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_0

    .line 519
    const-string v3, "GattAospImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##close gatt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 522
    .end local v2    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 524
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 527
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 528
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 529
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private handleConnect(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 354
    :cond_0
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 355
    const-string v0, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter not on while connect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_1
    monitor-exit v0

    .line 362
    return v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 364
    :cond_2
    const-string v0, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##connect-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",adapter enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 365
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 370
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 371
    .local v2, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    const/16 v4, 0xcf

    iget v5, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    if-eq v4, v5, :cond_6

    .line 373
    iget-object v4, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 374
    .local v4, "gatt":Landroid/bluetooth/BluetoothGatt;
    const/16 v5, 0x12c

    iget v6, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mManageState:I

    if-ne v5, v6, :cond_6

    if-eqz v4, :cond_6

    .line 375
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 376
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const/4 v7, 0x7

    .line 375
    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 377
    .local v5, "connectStatus":I
    const/4 v6, 0x2

    if-eq v6, v5, :cond_5

    if-ne v3, v5, :cond_3

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    iput v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 384
    const-string v1, "GattAospImpl"

    const-string v6, "##connect cmd success"

    invoke-static {v1, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return v3

    .line 387
    :cond_4
    const-string v6, "GattAospImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##connect fail of device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 391
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    .end local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v5    # "connectStatus":I
    goto :goto_1

    .line 379
    .restart local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v5    # "connectStatus":I
    :cond_5
    :goto_0
    const-string v1, "GattAospImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore running status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return v3

    .line 395
    .end local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v5    # "connectStatus":I
    :cond_6
    :goto_1
    iget-object v0, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 398
    .end local v2    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_7
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 399
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_8

    .line 400
    const-string v3, "GattAospImpl"

    const-string v4, "Device not found.  Unable to connect."

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return v1

    .line 406
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;

    invoke-virtual {v2, v1, p2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    .line 407
    .restart local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    invoke-direct {v1, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    move-object v5, v1

    .line 408
    .local v5, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    const/16 v1, 0xcb

    iput v1, v5, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 409
    iput v3, v5, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 410
    iput-object v0, v5, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 411
    iput-boolean p2, v5, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->autoConnect:Z

    .line 412
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    const-string v1, "GattAospImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##Trying to create a new connection@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return v3

    .line 414
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 350
    .end local v0    # "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v5    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_9
    :goto_2
    const-string v0, "GattAospImpl"

    const-string v2, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return v1
.end method

.method private handleConnectionPrioritySet(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "priority"    # I

    .line 844
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConnectionPrioritySet,target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 846
    return-void
.end method

.method private handleDisconnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 439
    const-string v0, "GattAospImpl"

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 452
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 453
    .local v2, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 460
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_3

    .line 461
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 463
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v1, :cond_3

    .line 464
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 467
    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_3
    return-void

    .line 457
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 447
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private handleMtuSet(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I

    .line 839
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtuSet,target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 841
    return-void
.end method

.method private handleOpCheck(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 616
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    iget-wide v3, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->opStartTick:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->opStartTick:J

    sub-long/2addr v1, v3

    .line 618
    .local v1, "delta":J
    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 619
    const-string v3, "GattAospImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-boolean v5, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    if-eqz v5, :cond_0

    const-string v5, "read "

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "write "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 621
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 629
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v1    # "delta":J
    :cond_1
    return-void
.end method

.method private handlePendingConnect()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->handleConnect(Ljava/lang/String;Z)Z

    .line 340
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    monitor-exit v2

    .line 337
    .end local v1    # "address":Ljava/lang/String;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    .restart local v1    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 346
    .end local v0    # "i":I
    .end local v1    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleReadWrite()V
    .locals 13

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-string v0, "GattAospImpl"

    const-string v1, "receive op msg but list is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 637
    .local v0, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    move-object v0, v2

    .line 639
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    if-nez v0, :cond_1

    .line 641
    const-string v1, "GattAospImpl"

    const-string v2, "op record null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 645
    .local v1, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v1, :cond_2

    .line 646
    const-string v2, "GattAospImpl"

    const-string v3, "gatt holder null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void

    .line 649
    :cond_2
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 650
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    const/4 v4, 0x0

    .line 651
    .local v4, "keepOperation":Z
    const/4 v5, 0x2

    iget v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    if-ne v5, v6, :cond_9

    .line 653
    iget-boolean v5, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-nez v5, :cond_8

    .line 654
    iput-boolean v7, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 655
    const/4 v5, 0x0

    .line 656
    .local v5, "opRet":Z
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    if-eqz v8, :cond_3

    .line 657
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->getWriteData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 659
    :cond_3
    iget-boolean v8, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    if-eqz v8, :cond_4

    .line 660
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    goto :goto_0

    .line 662
    :cond_4
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    .line 664
    :goto_0
    const-string v8, "GattAospImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "op@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",waitCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->waitCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 665
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    const/16 v12, 0x20

    shr-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",read="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 664
    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    if-eqz v5, :cond_6

    .line 668
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->hasPendingData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 669
    const/4 v4, 0x1

    .line 672
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->opStartTick:J

    .line 674
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v7, 0x6f

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 676
    :cond_6
    iput-boolean v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 677
    iget v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->errorCount:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->errorCount:I

    .line 678
    iget v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->errorCount:I

    const/4 v7, 0x5

    if-ge v3, v7, :cond_7

    .line 680
    const/4 v3, 0x1

    .line 681
    .end local v4    # "keepOperation":Z
    .local v3, "keepOperation":Z
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 688
    move v4, v3

    goto :goto_1

    .line 684
    .end local v3    # "keepOperation":Z
    .restart local v4    # "keepOperation":Z
    :cond_7
    const-string v3, "GattAospImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "op device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error over max,remove cur op"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .end local v5    # "opRet":Z
    :goto_1
    goto :goto_2

    .line 689
    :cond_8
    iget v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->waitCount:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->waitCount:I

    .line 691
    iget v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->waitCount:I

    const/16 v5, 0x14

    if-gt v3, v5, :cond_a

    .line 692
    const/4 v4, 0x1

    .line 693
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 697
    :cond_9
    const-string v3, "GattAospImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "op state invalid,device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_a
    :goto_2
    if-nez v4, :cond_b

    .line 701
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 702
    :try_start_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    .line 705
    const/4 v0, 0x0

    goto :goto_3

    .line 703
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 707
    :cond_b
    :goto_3
    return-void

    .line 639
    .end local v1    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v2    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v4    # "keepOperation":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private handleScanLeDevice(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "GattAospImpl"

    const-string v2, "handleScanLeDevice, get mBluetoothLeScanner null, adapter status should be checked"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    .line 293
    return-void

    .line 296
    :cond_0
    const-string v0, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScanLeDevice,enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mScanning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p1, :cond_1

    .line 298
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    if-nez v0, :cond_2

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 309
    .local v0, "settingBuilder":Landroid/bluetooth/le/ScanSettings$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 311
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mLeScanCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScanLeDevice,start e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v0    # "settingBuilder":Landroid/bluetooth/le/ScanSettings$Builder;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 302
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    if-eqz v0, :cond_2

    .line 319
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanning:Z

    .line 325
    :try_start_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mLeScanCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 328
    goto :goto_1

    .line 326
    :catch_1
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScanLeDevice,stop e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private handleSetCharacteristicNotification(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V
    .locals 9
    .param p1, "record"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 749
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCharacteristicNotification@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 752
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v0, :cond_0

    .line 753
    const-string v1, "GattAospImpl"

    const-string v2, "handleSetCharacteristicNotification,holder null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 756
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v3, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "useCharacteristicDescriptor":Z
    if-eqz v1, :cond_1

    .line 779
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .local v2, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    goto :goto_0

    .line 781
    .end local v2    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 784
    .restart local v2    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :goto_0
    if-nez v2, :cond_2

    .line 785
    const-string v3, "GattAospImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCharacteristicNotification,get null descriptor@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void

    .line 789
    :cond_2
    iget-boolean v3, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    if-eqz v3, :cond_3

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_1

    .line 790
    :cond_3
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 789
    :goto_1
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 792
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 793
    .local v3, "success":Z
    const-string v4, "GattAospImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    if-eqz v6, :cond_4

    const-string v6, "enable"

    goto :goto_2

    :cond_4
    const-string v6, "disable"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " descriptor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 794
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 793
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 164
    .local v2, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onManagerInit()V

    .line 167
    .end local v2    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLeScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 9
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 1566
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1567
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1568
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLeScanResult,callbackType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    .line 1570
    .local v1, "record":Landroid/bluetooth/le/ScanRecord;
    const/4 v2, 0x0

    .line 1571
    .local v2, "manufacturerData":[B
    const/4 v3, -0x1

    .line 1572
    .local v3, "manufacturerId":I
    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v4

    .line 1574
    .local v4, "dataList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1576
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v2, v6

    .line 1577
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 1580
    goto :goto_0

    .line 1578
    :catch_0
    move-exception v5

    .line 1579
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "GattAospImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLeScanResult, get manufacturerData,e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .end local v4    # "dataList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const-string v4, "GattAospImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeScan, device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",rssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",adv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",manufacturerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",manufacturer data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1583
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1588
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1589
    :try_start_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 1590
    .local v6, "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    if-eqz v6, :cond_3

    .line 1591
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v7

    .line 1592
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v8

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    .line 1591
    :goto_3
    invoke-interface {v6, v0, v7, v8}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 1594
    .end local v6    # "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    :cond_3
    goto :goto_2

    .line 1595
    :cond_4
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1597
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1598
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    monitor-exit v4

    goto :goto_5

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 1601
    .end local v1    # "record":Landroid/bluetooth/le/ScanRecord;
    .end local v2    # "manufacturerData":[B
    .end local v3    # "manufacturerId":I
    :cond_6
    :goto_5
    return-void
.end method

.method private onLeScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 1543
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1544
    invoke-static {p3}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseFromBytes([B)Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;

    move-result-object v0

    .line 1545
    .local v0, "record":Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->getManufacturerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->getManufacturerSpecificData(I)[B

    move-result-object v1

    .line 1546
    .local v1, "manufacturerData":[B
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLeScan, device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",adv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-static {p3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",manufacturerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->getManufacturerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",manufacturer data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1546
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1551
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1552
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 1553
    .local v4, "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    if-eqz v4, :cond_1

    .line 1554
    invoke-interface {v4, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 1556
    .end local v4    # "callback":Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
    :cond_1
    goto :goto_1

    .line 1557
    :cond_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1559
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1560
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1563
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    .end local v1    # "manufacturerData":[B
    :cond_4
    :goto_3
    return-void
.end method

.method private registerBluetoothReceiver()V
    .locals 3

    .line 1484
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1485
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1486
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1487
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothReceiver:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1489
    return-void
.end method


# virtual methods
.method public allowRepeatCommand(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .line 835
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x74

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 836
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 477
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 478
    const/16 v2, 0xce

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 479
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    nop

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 486
    return-void

    .line 479
    .restart local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 481
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close none exist device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public closeAll()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 506
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 218
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 219
    const/16 v2, 0xcb

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 220
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 222
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public connect(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 235
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 236
    const/16 v2, 0xcb

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 237
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 239
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 429
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 430
    const/16 v2, 0xcc

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 431
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 434
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-void
.end method

.method public dumpX(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 850
    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 852
    .local v0, "dumpAll":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    .local v0, "i":I
    .local v5, "dumpAll":Z
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_11

    .line 854
    aget-object v6, v3, v0

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "devices"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "closeall"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "connect"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_2

    :sswitch_3
    const-string v8, "disconnect"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_4
    const-string v8, "close"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_5
    const-string v8, "scan"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    goto :goto_2

    :sswitch_6
    const-string v8, "-all"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_7
    const-string v8, "-a"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_8
    const-string v8, "-adapter"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_9
    const-string v8, "oprecord"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_a
    const-string v8, "notify"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_2

    :cond_0
    :goto_1
    move v6, v7

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    .line 960
    :pswitch_0
    array-length v6, v3

    sub-int/2addr v6, v10

    if-ge v0, v6, :cond_10

    .line 961
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    .line 962
    .local v6, "addr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 963
    .local v7, "notifyUuid":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    array-length v9, v3

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_1

    .line 964
    add-int/lit8 v8, v0, 0x2

    aget-object v7, v3, v8

    .line 966
    :cond_1
    const/4 v8, 0x1

    .line 967
    .local v8, "enable":Z
    add-int/lit8 v9, v0, 0x2

    array-length v11, v3

    sub-int/2addr v11, v10

    if-ge v9, v11, :cond_3

    .line 968
    add-int/lit8 v9, v0, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v10, v9, :cond_2

    goto :goto_3

    :cond_2
    move v10, v4

    :goto_3
    move v8, v10

    .line 970
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set notify to:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",uuid:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",enable:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    invoke-direct {v1, v6, v7}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->getCharacteristicFromUuidString(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 973
    .local v4, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v4, :cond_4

    .line 974
    const-string v9, "notify error,null Characteristic"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 976
    :cond_4
    invoke-virtual {v1, v6, v4, v8}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 978
    :goto_4
    return-void

    .line 943
    .end local v4    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "notifyUuid":Ljava/lang/String;
    .end local v8    # "enable":Z
    :pswitch_1
    array-length v4, v3

    sub-int/2addr v4, v10

    if-ge v0, v4, :cond_8

    .line 944
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    .line 945
    .local v4, "onOff":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 946
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 947
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 949
    :cond_5
    const-string v6, "disable adapter!"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 951
    :cond_6
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 952
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 954
    :cond_7
    const-string v6, "enable adapter!"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    .end local v4    # "onOff":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void

    .line 940
    :pswitch_2
    const/4 v5, 0x1

    .line 941
    goto/16 :goto_8

    .line 926
    :pswitch_3
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 927
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 928
    .local v6, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    iget-boolean v7, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    if-eqz v7, :cond_9

    .line 929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "op device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",still busy,reset it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    iput-boolean v4, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 932
    :cond_9
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 935
    .end local v6    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :cond_a
    return-void

    .line 920
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->closeAll()V

    .line 922
    return-void

    .line 912
    :pswitch_5
    array-length v6, v3

    sub-int/2addr v6, v10

    if-ge v0, v6, :cond_10

    .line 913
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    .line 914
    .local v4, "addr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to close:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->close(Ljava/lang/String;)V

    .line 916
    return-void

    .line 904
    .end local v4    # "addr":Ljava/lang/String;
    :pswitch_6
    array-length v6, v3

    sub-int/2addr v6, v10

    if-ge v0, v6, :cond_10

    .line 905
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    .line 906
    .restart local v4    # "addr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to disconnect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->disconnect(Ljava/lang/String;)V

    .line 908
    return-void

    .line 885
    .end local v4    # "addr":Ljava/lang/String;
    :pswitch_7
    array-length v6, v3

    sub-int/2addr v6, v10

    if-ge v0, v6, :cond_10

    .line 886
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    .line 887
    .local v6, "addr":Ljava/lang/String;
    const/4 v7, 0x1

    .line 888
    .local v7, "auto":Z
    add-int/lit8 v8, v0, 0x1

    array-length v11, v3

    sub-int/2addr v11, v10

    if-ge v8, v11, :cond_c

    .line 889
    add-int/lit8 v8, v0, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 890
    .local v8, "connectType":I
    if-ne v10, v8, :cond_b

    goto :goto_6

    :cond_b
    move v10, v4

    :goto_6
    move v7, v10

    .line 891
    if-ne v9, v8, :cond_c

    .line 893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "do HID connect for:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-direct {v1, v6}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->doHidConnect(Ljava/lang/String;)V

    .line 895
    return-void

    .line 898
    .end local v8    # "connectType":I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try to connect:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",auto:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v1, v6, v7}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->connect(Ljava/lang/String;Z)V

    .line 900
    return-void

    .line 862
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "auto":Z
    :pswitch_8
    array-length v4, v3

    sub-int/2addr v4, v10

    if-ge v0, v4, :cond_f

    .line 863
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    .line 864
    .local v4, "enable":Ljava/lang/String;
    add-int/2addr v0, v10

    .line 865
    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 866
    const/4 v6, 0x0

    .line 867
    .local v6, "timeout":I
    array-length v7, v3

    sub-int/2addr v7, v10

    if-ge v0, v7, :cond_d

    .line 868
    add-int/lit8 v7, v0, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 870
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start scan,timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    mul-int/lit16 v7, v6, 0x3e8

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->startLeScan(I)V

    .line 872
    .end local v6    # "timeout":I
    goto :goto_7

    .line 873
    :cond_e
    const-string v6, "stop scan..."

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->stopLeScan()V

    .line 876
    :goto_7
    return-void

    .line 878
    .end local v4    # "enable":Ljava/lang/String;
    :cond_f
    const-string v4, "please add scan param 0 or 1"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    return-void

    .line 856
    :pswitch_9
    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->dumpScanDevices(Ljava/io/PrintWriter;)V

    .line 858
    return-void

    .line 853
    :cond_10
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 987
    .end local v0    # "i":I
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pending op count:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 989
    const-string v0, "PendingConnectList:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mPendingConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 991
    .local v4, "addr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    .end local v4    # "addr":Ljava/lang/String;
    goto :goto_9

    .line 994
    :cond_12
    const-string v0, "PendingConnectList: 0"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    :cond_13
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_14

    .line 998
    const-string v0, "no device connected"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    return-void

    .line 1001
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " connected gatt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    if-nez v5, :cond_16

    .line 1004
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 1005
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1006
    .local v6, "addr":Ljava/lang/String;
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1007
    .local v7, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v8, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 1008
    .local v8, "state":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",last op="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v8    # "state":I
    goto :goto_a

    .line 1010
    :cond_15
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const-string v0, "to dump all info,please add -a/-all"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1015
    :cond_16
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 1016
    :try_start_2
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1017
    .restart local v6    # "addr":Ljava/lang/String;
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1018
    .restart local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iget v8, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 1019
    .restart local v8    # "state":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mStateMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",last op="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    iget-object v9, v7, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1021
    .local v9, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez v9, :cond_17

    .line 1022
    :try_start_3
    const-string v10, "  gatt null"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1023
    goto :goto_b

    .line 1062
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v8    # "state":I
    .end local v9    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :catchall_1
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_12

    .line 1026
    .restart local v6    # "addr":Ljava/lang/String;
    .restart local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v8    # "state":I
    .restart local v9    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_17
    :try_start_4
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v10

    .line 1027
    .local v10, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz v10, :cond_1e

    .line 1028
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " services:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothGattService;

    .line 1030
    .local v12, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  service:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ",type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v13

    .line 1032
    .local v13, "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v13, :cond_1c

    .line 1033
    const-string v14, "    Characteristic:"

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1035
    .local v15, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v17, v16

    .line 1036
    .local v17, "charaProp":I
    const/16 v16, 0x0

    .line 1037
    .local v16, "canRead":Z
    const/16 v18, 0x0

    .line 1038
    .local v18, "canWrite":Z
    const/16 v19, 0x0

    .line 1039
    .local v19, "canNotify":Z
    move-object/from16 v20, v0

    move/from16 v0, v17

    and-int/lit8 v17, v0, 0x2

    .end local v17    # "charaProp":I
    .local v0, "charaProp":I
    if-lez v17, :cond_18

    .line 1040
    const/16 v16, 0x1

    .line 1042
    .end local v16    # "canRead":Z
    .local v1, "canRead":Z
    :cond_18
    move/from16 v1, v16

    and-int/lit8 v16, v0, 0x10

    if-lez v16, :cond_19

    .line 1043
    const/16 v19, 0x1

    .line 1047
    .end local v19    # "canNotify":Z
    .local v3, "canNotify":Z
    :cond_19
    move/from16 v3, v19

    and-int/lit8 v16, v0, 0x8

    if-gtz v16, :cond_1b

    and-int/lit8 v16, v0, 0x4

    if-lez v16, :cond_1a

    goto :goto_f

    .line 1051
    .end local v18    # "canWrite":Z
    .local v5, "canWrite":Z
    .local v21, "dumpAll":Z
    :cond_1a
    :goto_e
    move/from16 v21, v5

    move/from16 v5, v18

    goto :goto_10

    .line 1049
    .end local v21    # "dumpAll":Z
    .local v5, "dumpAll":Z
    .restart local v18    # "canWrite":Z
    :cond_1b
    :goto_f
    const/16 v18, 0x1

    goto :goto_e

    .line 1051
    .end local v18    # "canWrite":Z
    .local v5, "canWrite":Z
    .restart local v21    # "dumpAll":Z
    :goto_10
    move-object/from16 v22, v6

    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "addr":Ljava/lang/String;
    .local v22, "addr":Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    const-string v7, "      uuid:"

    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .local v23, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",values=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",prop=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",read="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",write="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1051
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    .end local v0    # "charaProp":I
    .end local v1    # "canRead":Z
    .end local v3    # "canNotify":Z
    .end local v5    # "canWrite":Z
    .end local v15    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    nop

    .line 1034
    move-object/from16 v0, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    goto/16 :goto_d

    .line 1057
    .end local v12    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v13    # "chList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v21    # "dumpAll":Z
    .end local v22    # "addr":Ljava/lang/String;
    .end local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .local v5, "dumpAll":Z
    .restart local v6    # "addr":Ljava/lang/String;
    .restart local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_1c
    move-object/from16 v20, v0

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 1029
    .end local v5    # "dumpAll":Z
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v21    # "dumpAll":Z
    .restart local v22    # "addr":Ljava/lang/String;
    .restart local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    move-object/from16 v0, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    goto/16 :goto_c

    .line 1061
    .end local v21    # "dumpAll":Z
    .end local v22    # "addr":Ljava/lang/String;
    .end local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v5    # "dumpAll":Z
    .restart local v6    # "addr":Ljava/lang/String;
    .restart local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_1d
    move-object/from16 v20, v0

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .end local v5    # "dumpAll":Z
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v21    # "dumpAll":Z
    .restart local v22    # "addr":Ljava/lang/String;
    .restart local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    goto :goto_11

    .line 1059
    .end local v21    # "dumpAll":Z
    .end local v22    # "addr":Ljava/lang/String;
    .end local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v5    # "dumpAll":Z
    .restart local v6    # "addr":Ljava/lang/String;
    .restart local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_1e
    move-object/from16 v20, v0

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .end local v5    # "dumpAll":Z
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .restart local v21    # "dumpAll":Z
    .restart local v22    # "addr":Ljava/lang/String;
    .restart local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    const-string v0, "  0 services:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    .end local v8    # "state":I
    .end local v9    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v10    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v22    # "addr":Ljava/lang/String;
    .end local v23    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :goto_11
    nop

    .line 1016
    move-object/from16 v0, v20

    move/from16 v5, v21

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    goto/16 :goto_b

    .line 1062
    .end local v21    # "dumpAll":Z
    .restart local v5    # "dumpAll":Z
    :cond_1f
    move/from16 v21, v5

    .end local v5    # "dumpAll":Z
    .restart local v21    # "dumpAll":Z
    monitor-exit v4

    .line 1063
    return-void

    .line 1062
    .end local v21    # "dumpAll":Z
    .restart local v5    # "dumpAll":Z
    :catchall_2
    move-exception v0

    move/from16 v21, v5

    .end local v5    # "dumpAll":Z
    .restart local v21    # "dumpAll":Z
    :goto_12
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_12

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df868b7 -> :sswitch_a
        -0x85d328e -> :sswitch_9
        -0x1fe797e -> :sswitch_8
        0x5d4 -> :sswitch_7
        0x15ee54 -> :sswitch_6
        0x35c67d -> :sswitch_5
        0x5a5ddf8 -> :sswitch_4
        0x1f9d589c -> :sswitch_3
        0x38b478ea -> :sswitch_2
        0x412338a9 -> :sswitch_1
        0x5cf8acdd -> :sswitch_0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdapterState()Z
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 819
    return v1

    .line 820
    :cond_0
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 809
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez v0, :cond_1

    .line 810
    const-string v2, "GattAospImpl"

    const-string v3, "getSupportedGattServices,gatt is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-object v1

    .line 813
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public init()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "GattAospImpl"

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 150
    const-string v0, "GattAospImpl"

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v1

    .line 155
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandlerThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->registerBluetoothReceiver()V

    .line 161
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$Jp_0UgrWkiLp_JxR7QFhxJPq0-g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$Jp_0UgrWkiLp_JxR7QFhxJPq0-g;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_2

    .line 174
    const-string v0, "GattAospImpl"

    const-string v1, "init,get mBluetoothLeScanner null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "data"    # [B

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 543
    const-string v0, "GattAospImpl"

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 548
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v0, :cond_1

    .line 549
    const-string v1, "GattAospImpl"

    const-string v2, "readCharacteristic,device not connect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void

    .line 553
    :cond_1
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 554
    const/16 v2, 0xc9

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 555
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BI)V

    move-object v2, v1

    .line 558
    .local v2, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 559
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    const-string v1, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to read@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",uuid16="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void

    .line 560
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 555
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xcf

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 184
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_0

    .line 185
    iput-object p2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 186
    iput v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 188
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 190
    .restart local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iput-object p2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 191
    iput v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v1

    .line 196
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :goto_0
    return-void

    .line 194
    .restart local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestConnectionPriority(Ljava/lang/String;I)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 831
    return-void
.end method

.method public requestMtu(Ljava/lang/String;I)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 826
    return-void
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enabled"    # Z

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 719
    const-string v0, "GattAospImpl"

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 724
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v0, :cond_1

    .line 725
    const-string v1, "GattAospImpl"

    const-string v2, "readCharacteristic,device not connect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void

    .line 729
    :cond_1
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 730
    const/16 v2, 0xcd

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 731
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BI)V

    .line 738
    .local v1, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 746
    return-void

    .line 731
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startLeScan(I)V
    .locals 4
    .param p1, "timeoutMs"    # I

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x70

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    if-lez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    :cond_0
    return-void
.end method

.method public stopLeScan()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public unRegisterCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 205
    :cond_0
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no callback for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void
.end method

.method public unRegisterScanCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mScanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "data"    # [B
    .param p4, "cmd"    # I

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 569
    const-string v0, "GattAospImpl"

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mGattMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 574
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v0, :cond_1

    .line 575
    const-string v1, "GattAospImpl"

    const-string v2, "readCharacteristic,device not connect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    .line 579
    :cond_1
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 580
    const/16 v2, 0xca

    :try_start_0
    iput v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 581
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 583
    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BI)V

    move-object v2, v1

    .line 584
    .local v2, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mMTU:I

    const/16 v3, 0x14

    if-le v1, v3, :cond_2

    .line 586
    iget v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mMTU:I

    add-int/lit8 v1, v1, -0x7

    iput v1, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    goto :goto_0

    .line 588
    :cond_2
    iput v3, v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    .line 590
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 592
    :try_start_1
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->allowRepeatCommand:Z

    if-nez v1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 594
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 596
    .local v4, "temp":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mCmd:I

    if-ne v5, p4, :cond_3

    .line 597
    const-string v5, "GattAospImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove same op,addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",cmd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 600
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    .line 601
    nop

    .line 603
    .end local v4    # "temp":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :cond_3
    goto :goto_1

    .line 605
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;>;"
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mOpRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    const-string v1, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to write@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",uuid16="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",data len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->mBleHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 611
    return-void

    .line 606
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 581
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
