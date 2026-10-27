.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;
.super Ljava/lang/Object;
.source "AccessoryBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;
    }
.end annotation


# static fields
.field private static final ACTION_XPENG_A2DP_STATE_CHANGED:Ljava/lang/String; = "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "PassengerBluetoothManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;


# instance fields
.field private mDeviceConnected:Z

.field private mDeviceStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsetBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceConnected:Z

    .line 79
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mHeadsetBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->initHeadsetConnectStatus()V

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->startObserver()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    .line 12
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;
    .param p1, "x1"    # Z

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;
    .param p1, "x1"    # Z

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->notifyListener(Z)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    return-object v0
.end method

.method private initHeadsetConnectStatus()V
    .locals 2

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 28
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceConnected:Z

    .line 31
    :cond_0
    return-void
.end method

.method private notifyListener(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    .line 67
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;->onConnectStatusChanged(Z)V

    .line 68
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;
    goto :goto_0

    .line 69
    :cond_0
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isDeviceConnected()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceConnected:Z

    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startObserver()V
    .locals 3

    .line 73
    const-string v0, "PassengerBluetoothManager"

    const-string v1, "startObserver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mHeadsetBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->mDeviceStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
