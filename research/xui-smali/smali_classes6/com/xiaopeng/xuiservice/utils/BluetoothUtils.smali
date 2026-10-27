.class public Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field private static mInstance:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnableStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$1;-><init>(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->initStatus()V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->startObserver()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->notifyListener()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mInstance:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mInstance:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mInstance:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mInstance:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    return-object v0
.end method

.method private initStatus()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "BluetoothUtils"

    const-string v1, "Unable to initialize BluetoothManager."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 39
    const-string v0, "BluetoothUtils"

    const-string v1, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void
.end method

.method private notifyListener()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;

    .line 89
    .local v2, "listener":Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;
    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;->onEnable()V

    .line 90
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;
    goto :goto_0

    .line 91
    :cond_0
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isBluetoothConnected()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBluetoothEnable()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startObserver()V
    .locals 3

    .line 95
    const-string v0, "BluetoothUtils"

    const-string v1, "startObserver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$BluetoothEnableState;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->mBluetoothEnableStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
