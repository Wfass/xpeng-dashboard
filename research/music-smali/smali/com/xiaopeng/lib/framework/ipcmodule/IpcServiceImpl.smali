.class public Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcModuleServiceSingle;,
        Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;,
        Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;
    }
.end annotation


# static fields
.field private static final IPC_MIN_REGISTER_INTERVAL:I = 0x1f4

.field private static final IPC_SERVICE_BIND_INTERVAL:I = 0x3e8

.field private static final MSG_BIND_SERVICE:I = 0x1

.field private static final MSG_UNBIND_SERVICE:I = 0x2

.field private static final PACKAGE_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "IpcServiceImpl"


# instance fields
.field private volatile ipcService:Lcom/xiaopeng/ipc/a;

.field private volatile mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIPCCallback:Lcom/xiaopeng/ipc/b;

.field private mLastRegisterTime:J

.field private mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingRunnable:Ljava/lang/Runnable;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mLastRegisterTime:J

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mIPCCallback:Lcom/xiaopeng/ipc/b;

    .line 79
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mSendingRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 138
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ipcmodule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->ipcService:Lcom/xiaopeng/ipc/a;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)Lcom/xiaopeng/ipc/a;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->ipcService:Lcom/xiaopeng/ipc/a;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->registerIpcClient(Lcom/xiaopeng/ipc/a;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mIPCCallback:Lcom/xiaopeng/ipc/b;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/ServiceConnection;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
    .locals 1

    .line 202
    invoke-static {}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcModuleServiceSingle;->access$500()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method private registerIpcClient(Lcom/xiaopeng/ipc/a;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerIpcClient:\t service !=null:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/AppInfoUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 190
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/AppInfoUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mIPCCallback:Lcom/xiaopeng/ipc/b;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/ipc/a;->a(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mLastRegisterTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mLastRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init--> moreThanInterval:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpcServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 236
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->ipcService:Lcom/xiaopeng/ipc/a;

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->registerIpcClient(Lcom/xiaopeng/ipc/a;)V

    .line 238
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerIpcClient:\t exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpcServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mContext:Landroid/content/Context;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->sendBindServiceMessage()V

    return-void
.end method

.method protected sendBindServiceMessage()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->removeMessages(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public varargs sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 252
    array-length v0, p3

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    array-length v1, p3

    .line 259
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p3, v3

    add-int/lit8 v4, v4, 0x1

    .line 261
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v1, :cond_0

    const-string v5, ";"

    .line 263
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_1
    new-instance p3, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;)V

    .line 269
    new-instance v1, Lcom/xiaopeng/ipc/IpcMessage;

    invoke-direct {v1}, Lcom/xiaopeng/ipc/IpcMessage;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/ipc/IpcMessage;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1, p1}, Lcom/xiaopeng/ipc/IpcMessage;->a(I)V

    .line 272
    invoke-virtual {v1, p2}, Lcom/xiaopeng/ipc/IpcMessage;->a(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual {p3, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->setData(Lcom/xiaopeng/ipc/IpcMessage;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->setAppIds(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mSendingRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 253
    :cond_2
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "destination is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "please init context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendUnbindServiceMessage()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->removeMessages(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->mHandler:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->sendEmptyMessage(I)Z

    return-void
.end method
