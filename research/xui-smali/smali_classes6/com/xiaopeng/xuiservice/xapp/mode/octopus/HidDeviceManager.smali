.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;
.super Ljava/lang/Object;
.source "HidDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;
    }
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HidDeviceManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHidDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mHidDeviceStatus:I

.field private mStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceStatus:I

    .line 86
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->onHidDeviceStateChanged(II)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;
    .locals 2

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    return-object v0
.end method

.method private onHidDeviceStateChanged(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 80
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceStatus:I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    .line 82
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;->onHidDeviceStateChanged(II)V

    .line 83
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private regiterReceiver()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "HidDeviceManager"

    const-string v2, "HidDeviceReceiver regiterReceiver"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public getHidDeviceState()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceStatus:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->regiterReceiver()V

    .line 39
    return-void
.end method

.method public isHidDeviceConnected()Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mHidDeviceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->mStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method
