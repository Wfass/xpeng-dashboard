.class public Lcom/xiaopeng/libbluetooth/BluetoothBoxes;
.super Ljava/lang/Object;
.source "BluetoothBoxes.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INTENT_BLUETOOTH_SERVICE:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.XpBluetoothService"

.field private static final PACKAGE_BLUETOOTH_SERVICE:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice"

.field private static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

.field private static sID:Ljava/lang/String;


# instance fields
.field private mBtService:Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

.field private mBtServiceConnection:Landroid/content/ServiceConnection;

.field private mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libbluetooth/AbstractConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;-><init>(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtServiceConnection:Landroid/content/ServiceConnection;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->notifyDisconnected()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->sID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 17
    sput-object p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->sID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtService:Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;
    .param p1, "x1"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtService:Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;
    .param p1, "x1"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->notifyConnected(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V

    return-void
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->sID:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/libbluetooth/BluetoothBoxes;
    .locals 2

    .line 39
    sget-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mInstance:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mInstance:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-direct {v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;-><init>()V

    sput-object v1, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mInstance:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mInstance:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    return-object v0
.end method

.method private notifyConnected(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 3
    .param p1, "btService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libbluetooth/AbstractConnection;

    .line 142
    .local v2, "callback":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->onConnected(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V

    .line 143
    .end local v2    # "callback":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDisconnected()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libbluetooth/AbstractConnection;

    .line 134
    .local v2, "callback":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    invoke-virtual {v2}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->onDisconnected()V

    .line 135
    .end local v2    # "callback":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    goto :goto_0

    .line 136
    :cond_0
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/libbluetooth/AbstractConnection;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtService:Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtService:Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->connectService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/libbluetooth/AbstractConnection;

    .line 157
    invoke-virtual {p1}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->onUnregister()V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connectBluetooth()V
    .locals 6

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.xpbluetoothservice"

    const-string v3, "com.xiaopeng.xpbluetoothservice.XpBluetoothService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 58
    return-void
.end method

.method public disconnectBluetooth()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libbluetooth/AbstractConnection;

    .line 62
    .local v1, "connection":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->unregisterCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V

    .line 63
    .end local v1    # "connection":Lcom/xiaopeng/libbluetooth/AbstractConnection;
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mBtServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    return-void
.end method

.method public getA2DPControlBox(Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;)Lcom/xiaopeng/libbluetooth/A2DPControlBox;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    .line 72
    new-instance v0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;-><init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;)V

    .line 74
    .local v0, "box":Lcom/xiaopeng/libbluetooth/A2DPControlBox;
    return-object v0
.end method

.method public getGeneralControlBox(Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    .line 84
    new-instance v0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;-><init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;)V

    .line 86
    .local v0, "box":Lcom/xiaopeng/libbluetooth/GeneralControlBox;
    return-object v0
.end method

.method public getPhoneControlBox(Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;)Lcom/xiaopeng/libbluetooth/PhoneControlBox;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    .line 78
    new-instance v0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;-><init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;)V

    .line 80
    .local v0, "box":Lcom/xiaopeng/libbluetooth/PhoneControlBox;
    return-object v0
.end method

.method public registerCallback(Lcom/xiaopeng/libbluetooth/AbsControlBox;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/libbluetooth/AbsControlBox;

    .line 68
    iget-object v0, p1, Lcom/xiaopeng/libbluetooth/AbsControlBox;->mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->registerCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V

    .line 69
    return-void
.end method

.method public releaseA2DPControlBox(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    .line 98
    iget-object v0, p1, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->unregisterCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V

    .line 99
    return-void
.end method

.method public releaseGeneralControlBox(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    .line 90
    iget-object v0, p1, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->unregisterCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V

    .line 91
    return-void
.end method

.method public releasePhoneControlBox(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    .line 94
    iget-object v0, p1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->unregisterCallback(Lcom/xiaopeng/libbluetooth/AbstractConnection;)V

    .line 95
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method
