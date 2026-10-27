.class public Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;
.super Ljava/lang/Object;
.source "AppClient.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_INTERVAL:I = 0x1388

.field private static final MAX_RETRY_COUNT:I = 0xa

.field private static final RECALL_DEFAULT:Z = true

.field private static final RETRY_DELAY_TIME:I = 0x1388

.field private static final WAIT_TIMEOUT_DEFAULT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private connection:Landroid/content/ServiceConnection;

.field private volatile hasSignalCallbackAdded:Z

.field private final mAppId:Ljava/lang/String;

.field private mBindTs:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

.field private mLastBindServiceTime:J

.field private mNotifyConnected:Ljava/lang/Runnable;

.field private mNotifyDied:Ljava/lang/Runnable;

.field private mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

.field private mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

.field private final mPkgName:Ljava/lang/String;

.field private final mRequestFailDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportRecall:Z

.field private mWaitTimeout:I

.field private retryCount:I

.field private serviceBinded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "ipcCallback",
            "config"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppClient"

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mWaitTimeout:I

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->serviceBinded:Z

    .line 65
    iput-boolean v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mSupportRecall:Z

    .line 68
    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    iput-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyDied:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$2;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    iput-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyConnected:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    iput-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->connection:Landroid/content/ServiceConnection;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    .line 108
    invoke-static {p2}, Lcom/xiaopeng/smartcontrol/utils/Apps;->getPackageNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    .line 109
    new-instance p1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;)V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    .line 110
    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    if-eqz p4, :cond_1

    .line 112
    invoke-virtual {p4}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->isSticky()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mSupportRecall:Z

    .line 113
    invoke-virtual {p4}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->getWaitTimeout()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p4}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->getWaitTimeout()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mWaitTimeout:I

    .line 114
    invoke-virtual {p4}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mCallbackHandler:Landroid/os/Handler;

    .line 116
    :cond_1
    new-instance p1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->reCallFailRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->serviceBinded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mBindTs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->initConnection(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$808(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->retryCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    return p0
.end method

.method private blockIfDisconnect()V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartControlSDKServiceBinder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wait getBinder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "API_CALL"

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->initConnection(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mLastBindServiceTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait bindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mBindTs:J

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.smartcontrol.BindAidlService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mLastBindServiceTime:J

    .line 234
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mWaitTimeout:I

    if-lez v2, :cond_3

    const-wide/16 v2, 0x32

    .line 237
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 242
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 243
    iget v4, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mWaitTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wait timeout !!! "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private deInitConnection()V
    .locals 2

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyDied:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyDied:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private initConnection(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binder",
            "source"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConnection source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    :try_start_0
    new-instance p2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$7vfHVuDxL7tEfOTvHdikP8Y0INU;

    invoke-direct {p2, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$7vfHVuDxL7tEfOTvHdikP8Y0INU;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    invoke-static {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/aidl/IPipeBus;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz p1, :cond_0

    .line 269
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    if-eqz p2, :cond_0

    .line 271
    :try_start_1
    invoke-interface {p1, p2}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->registerListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string p2, "registerListener true"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "2.4.5.2_HEAD_367045e_2024/09/10 10:57:32"

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->checkVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    invoke-interface {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->hasInitCompleted()Z

    move-result p1

    .line 283
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u89e6\u53d1\u5ba2\u6237\u7aef\u91cd\u53d1\u5931\u8d25\u7684\u8bf7\u6c42 initConnection\u65f6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 284
    iget-boolean p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    if-eqz p1, :cond_1

    .line 285
    new-instance p1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$xSfAdMdn47JMnI1S5JNg5T8iXXA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$xSfAdMdn47JMnI1S5JNg5T8iXXA;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 288
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string p2, "registerListener false!!!"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 296
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyConnected:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mNotifyConnected:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    .line 262
    :catch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string p2, "PipeListener is dead, ignoring it"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$xSfAdMdn47JMnI1S5JNg5T8iXXA(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->reCallFailRequest()V

    return-void
.end method

.method private reCallFailRequest()V
    .locals 13

    .line 334
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mSupportRecall:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string v1, "mSupportRecall is false, ignore reCall fail request"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestFailDataMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 341
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;

    .line 344
    iget-object v3, v2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->module:Ljava/lang/String;

    .line 345
    iget-object v4, v2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->method:Ljava/lang/String;

    .line 346
    iget-object v2, v2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->param:Ljava/lang/String;

    .line 347
    iget-object v5, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    iget-object v7, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string v8, "re-call %s %s %s"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    aput-object v4, v10, v5

    const/4 v12, 0x2

    aput-object v2, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v7, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    invoke-interface {v7, v3, v4, v2, v6}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v6, v11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 358
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "null"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v6, v11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 361
    :cond_2
    aget-object v2, v6, v11

    .line 363
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string v7, "re-callback %s %s %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v3, v8, v11

    aput-object v4, v8, v5

    aput-object v2, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    invoke-interface {v5, v3, v4, v2}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 370
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 374
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private saveFailRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reason",
            "module",
            "method",
            "param"
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mSupportRecall:Z

    if-nez v0, :cond_0

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string p2, "mSupportRecall is false, ignore save fail request"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "service not connected!!!"

    goto :goto_0

    :cond_2
    const-string v1, "call failed!!!"

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string v3, "%s, save call: %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object p2, v4, v2

    const/4 v1, 0x2

    aput-object p3, v4, v1

    const/4 v1, 0x3

    aput-object p4, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mRequestFailDataMap:Ljava/util/HashMap;

    new-instance v2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;

    invoke-direct {v2, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public bindService(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartControlSDKServiceBinder_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBinder: success--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_SERVICE--"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->initConnection(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mAppId:Ljava/lang/String;

    const-string v3, "BIND_SERVICE"

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->notifyServiceConnected(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->retryCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mBindTs:J

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.smartcontrol.BindAidlService"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mLastBindServiceTime:J

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->retryCount:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "module",
            "method",
            "param"
        }
    .end annotation

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v3, 0x2

    aput-object p4, v0, v3

    const-string v3, "call: %s %s %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->blockIfDisconnect()V

    .line 188
    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz v3, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->callWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 193
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->saveFailRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    aget-object p1, p1, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    :cond_1
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->saveFailRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0, v1}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->unRegisterListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V

    .line 209
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->serviceBinded:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterListener exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public synthetic lambda$initConnection$0$AppClient()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeathRecipient binderDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->deInitConnection()V

    const-string v0, "binderDied"

    .line 259
    invoke-virtual {p0, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method public onSignalCallbackAdded()V
    .locals 4

    .line 154
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalCallbackAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusListener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    if-eqz v1, :cond_1

    .line 164
    :try_start_0
    invoke-interface {v0, v1}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->notifyStickySend(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStickySend exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->mPipeBusClient:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    invoke-interface {v0}, Lcom/xiaopeng/ipc/aidl/IPipeBus;->hasInitCompleted()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u89e6\u53d1\u5ba2\u6237\u7aef\u91cd\u53d1\u5931\u8d25\u7684\u8bf7\u6c42 onSignalCallbackAdded\u65f6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->hasSignalCallbackAdded:Z

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$xSfAdMdn47JMnI1S5JNg5T8iXXA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$xSfAdMdn47JMnI1S5JNg5T8iXXA;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalCallbackAdded exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
