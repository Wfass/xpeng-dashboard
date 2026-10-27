.class public Lcom/xiaopeng/btservice/util/BtBoxesUtil;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INTENT_BLUETOOTH_SERVICE:Ljava/lang/String; = "com.xiaopeng.bt.ui.service.XpBtService"

.field private static final PACKAGE_BLUETOOTH_SERVICE:Ljava/lang/String; = "com.xiaopeng.bt.ui.service"

.field private static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;


# instance fields
.field private mBtServiceConnection:Landroid/content/ServiceConnection;

.field private mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/btservice/base/AbstractConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private nForeService:Lcom/nforetek/bt/aidl/UiCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;-><init>(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mBtServiceConnection:Landroid/content/ServiceConnection;

    .line 149
    new-instance v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;-><init>(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)Lcom/nforetek/bt/aidl/UiCommand;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;
    .param p1, "x1"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;
    .param p1, "x1"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->notifyConnected(Lcom/nforetek/bt/aidl/UiCommand;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->notifyDisconnected()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/btservice/util/BtBoxesUtil;
    .locals 1

    .line 100
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/btservice/util/BtBoxesUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-direct {v1, p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mInstance:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private notifyConnected(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 3
    .param p1, "nForeService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 164
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnected  from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/btservice/base/AbstractConnection;

    .line 168
    .local v2, "callback":Lcom/xiaopeng/btservice/base/AbstractConnection;
    invoke-virtual {v2, p1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->onConnected(Lcom/nforetek/bt/aidl/UiCommand;)V

    .line 169
    .end local v2    # "callback":Lcom/xiaopeng/btservice/base/AbstractConnection;
    goto :goto_0

    .line 170
    :cond_0
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDisconnected()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnected from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/btservice/base/AbstractConnection;

    .line 177
    .local v2, "callback":Lcom/xiaopeng/btservice/base/AbstractConnection;
    invoke-virtual {v2}, Lcom/xiaopeng/btservice/base/AbstractConnection;->unRegister()V

    .line 178
    .end local v2    # "callback":Lcom/xiaopeng/btservice/base/AbstractConnection;
    goto :goto_0

    .line 180
    :cond_0
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCallback(Lcom/xiaopeng/btservice/base/AbstractConnection;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbstractConnection;

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v1, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    const-string v2, "mConnectionCallbacks.add"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/btservice/base/AbstractConnection;->register(Lcom/nforetek/bt/aidl/UiCommand;)V

    .line 196
    :cond_0
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private unRegisterCallback(Lcom/xiaopeng/btservice/base/AbstractConnection;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbstractConnection;

    .line 203
    invoke-virtual {p1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->unRegister()V

    .line 204
    sget-object v0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterCallback from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
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

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.bt.ui.service"

    const-string v3, "com.xiaopeng.bt.ui.service.XpBtService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    :try_start_0
    sget-object v2, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectBluetooth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mBtServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public disconnectBluetooth()V
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mBtServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getBluetoothControl(Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    .line 80
    new-instance v0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)V

    .line 81
    .local v0, "control":Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;
    return-object v0
.end method

.method public getMAPControl(Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;)Lcom/xiaopeng/btservice/map/MAPControl;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    .line 65
    new-instance v0, Lcom/xiaopeng/btservice/map/MAPControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/btservice/map/MAPControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;)V

    .line 66
    .local v0, "control":Lcom/xiaopeng/btservice/map/MAPControl;
    return-object v0
.end method

.method public getPBAPControl(Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;)Lcom/xiaopeng/btservice/pbap/PBAPControl;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    .line 75
    new-instance v0, Lcom/xiaopeng/btservice/pbap/PBAPControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;)V

    .line 76
    .local v0, "control":Lcom/xiaopeng/btservice/pbap/PBAPControl;
    return-object v0
.end method

.method public getPhoneControl(Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;)Lcom/xiaopeng/btservice/phone/PhoneControl;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    .line 70
    new-instance v0, Lcom/xiaopeng/btservice/phone/PhoneControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/btservice/phone/PhoneControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;)V

    .line 71
    .local v0, "control":Lcom/xiaopeng/btservice/phone/PhoneControl;
    return-object v0
.end method

.method public getUsbBluetoothControl(Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;)Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    .line 85
    new-instance v0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;)V

    .line 86
    .local v0, "control":Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;
    return-object v0
.end method

.method public getXPBluetoothControl(I)Lcom/xiaopeng/btservice/external/XPBluetoothControl;
    .locals 2
    .param p1, "deviceId"    # I

    .line 90
    new-instance v0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "control":Lcom/xiaopeng/btservice/external/XPBluetoothControl;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->setDeviceId(I)V

    .line 92
    return-object v0
.end method

.method public registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/btservice/base/AbsControl;

    .line 184
    iget-object v0, p1, Lcom/xiaopeng/btservice/base/AbsControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbstractConnection;)V

    .line 185
    return-void
.end method

.method public unRegisterCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V
    .locals 1
    .param p1, "box"    # Lcom/xiaopeng/btservice/base/AbsControl;

    .line 199
    iget-object v0, p1, Lcom/xiaopeng/btservice/base/AbsControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->unRegisterCallback(Lcom/xiaopeng/btservice/base/AbstractConnection;)V

    .line 200
    return-void
.end method
