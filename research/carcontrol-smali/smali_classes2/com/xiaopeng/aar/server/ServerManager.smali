.class public Lcom/xiaopeng/aar/server/ServerManager;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/ServerManager$LockHelper;,
        Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;,
        Lcom/xiaopeng/aar/server/ServerManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SerMg"


# instance fields
.field private mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

.field private mInit:Z

.field private mLockHelper:Lcom/xiaopeng/aar/server/ServerManager$LockHelper;

.field private mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

.field private mServerListener:Lcom/xiaopeng/aar/server/ServerListener;

.field private final mSubscribeModules:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    const-string/jumbo v0, "sdks-"

    .line 39
    invoke-static {v0}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->init()V

    .line 41
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/aar/server/ServerManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aar/server/ServerManager$1;-><init>(Lcom/xiaopeng/aar/server/ServerManager;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->setOnClientListener(Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/ServerManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ServerManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/aar/server/ServerManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/aar/server/ServerManager;->call(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/aar/server/ServerManager;)Lcom/xiaopeng/aar/server/ServerConfig;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/aar/server/ServerManager;)Landroid/util/ArraySet;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/aar/server/ServerManager;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/server/ServerManager;->unSubscribe(Ljava/lang/String;)V

    return-void
.end method

.method private call(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mLockHelper:Lcom/xiaopeng/aar/server/ServerManager$LockHelper;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->access$700(Lcom/xiaopeng/aar/server/ServerManager$LockHelper;)V

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "call--%s, %s, %s, %s"

    .line 203
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerListener:Lcom/xiaopeng/aar/server/ServerListener;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p1, "call listener is null"

    .line 207
    invoke-static {v1, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    const-string p3, "1"

    packed-switch p1, :pswitch_data_0

    return-object v2

    .line 222
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/aar/server/ServerManager;->subscribes(Ljava/lang/String;)V

    return-object p3

    .line 225
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/aar/server/ServerManager;->unSubscribe(Ljava/lang/String;)V

    return-object p3

    .line 219
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/aar/server/ServerManager;->subscribe(Ljava/lang/String;)V

    return-object p3

    .line 213
    :cond_2
    :try_start_0
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/xiaopeng/aar/server/ServerListener;->onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get()Lcom/xiaopeng/aar/server/ServerManager;
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager$SingletonHolder;->access$500()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v0

    return-object v0
.end method

.method private interceptEnable()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig;->isInterceptSendWhenNotSubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private interceptSend(Ljava/lang/String;)Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 314
    monitor-exit v0

    return p1

    .line 316
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$send$1(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    if-eqz p0, :cond_2

    const-string p0, "."

    .line 284
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    add-int/2addr p0, v1

    .line 286
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    const-string v2, "_"

    .line 288
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_1

    add-int/2addr v2, v1

    .line 290
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p3, v0, p0

    const/4 p0, 0x3

    invoke-static {p4}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const-string/jumbo p0, "send--%s, %s, %s, %s"

    .line 292
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SerMg"

    invoke-static {v0, p0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_2
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private send(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    .line 277
    invoke-static {p4}, Lcom/xiaopeng/aar/LogBlackList;->hit(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    and-int v3, p1, v0

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig;->isSendAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 281
    new-instance v0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;

    move-object v2, v0

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    aput-object p3, p1, v1

    const/4 v0, 0x2

    aput-object p4, p1, v0

    const/4 v0, 0x3

    invoke-static {p5}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string/jumbo v0, "send--%s, %s, %s, %s"

    .line 299
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SerMg"

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_1
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method private subscribe(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SerMg"

    const-string/jumbo v1, "subscribe-- module:%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 159
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerListener:Lcom/xiaopeng/aar/server/ServerListener;

    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-string v0, "SerMg"

    const-string/jumbo v1, "subscribe--repeat module:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 167
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/xiaopeng/aar/server/ServerListener;->onSubscribe(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 165
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private subscribes(Ljava/lang/String;)V
    .locals 3

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ";"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 153
    invoke-direct {p0, v2}, Lcom/xiaopeng/aar/server/ServerManager;->subscribe(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unSubscribe(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SerMg"

    const-string/jumbo v1, "unSubscribe-- module:%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 180
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerListener:Lcom/xiaopeng/aar/server/ServerListener;

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/aar/server/ServerManager;->mSubscribeModules:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-string v0, "SerMg"

    const-string/jumbo v1, "unSubscribe--repeat module:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 188
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/xiaopeng/aar/server/ServerListener;->onUnSubscribe(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 186
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mInit:Z

    if-eqz v0, :cond_0

    const-string p1, "SerMg"

    const-string v0, "init already initialized  !!!"

    .line 97
    invoke-static {p1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 100
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mInit:Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aar/Apps;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SerMg"

    const-string v2, "init appId is null !!!"

    .line 103
    invoke-static {v1, v2}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v1, :cond_2

    const-string v1, "SerMg"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0.0.7_HEAD_6abb929_2024/05/31 03:28:13"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    .line 108
    invoke-virtual {v3}, Lcom/xiaopeng/aar/server/ServerConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "SerMg"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0.0.7_HEAD_6abb929_2024/05/31 03:28:13"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->setAppId(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mLockHelper:Lcom/xiaopeng/aar/server/ServerManager$LockHelper;

    if-eqz v1, :cond_3

    .line 116
    invoke-static {v1}, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->access$600(Lcom/xiaopeng/aar/server/ServerManager$LockHelper;)V

    .line 119
    :cond_3
    new-instance v1, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    if-nez v0, :cond_4

    const-string/jumbo v0, "server"

    :cond_4
    invoke-direct {v1, v0}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    .line 120
    new-instance v0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;-><init>(Lcom/xiaopeng/aar/server/ServerManager;Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initConfig(Lcom/xiaopeng/aar/server/ServerConfig;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SerMg"

    const-string v0, "initConfig config is null !!!"

    .line 73
    invoke-static {p1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v0, :cond_1

    const-string p1, "SerMg"

    const-string v0, "initConfig config already initialized !!!"

    .line 77
    invoke-static {p1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    .line 82
    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->isWaitInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;

    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->getWaitTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mLockHelper:Lcom/xiaopeng/aar/server/ServerManager$LockHelper;

    .line 86
    :cond_2
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->getTargetPackages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->setTargetPackages(Ljava/util/Map;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->setTargetPackage(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogLevel(I)V

    .line 90
    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->getLogLength()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/aar/utils/LogUtils;->setLength(I)V

    const-string v0, "SerMg"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/aar/server/ServerConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$init$0$ServerManager(Landroid/content/Context;)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig;->isKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/aar/server/ipc/IpcServer;->keepAlive(Landroid/content/Context;)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/utils/Utils;->isUserRelease()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/xiaopeng/aar/server/RunningConfig;->get()Lcom/xiaopeng/aar/server/RunningConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/aar/server/RunningConfig;->init(Landroid/content/Context;)V

    :cond_1
    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerConfig:Lcom/xiaopeng/aar/server/ServerConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig;->isUseMock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :cond_2
    invoke-static {}, Lcom/xiaopeng/aar/server/MockTest;->get()Lcom/xiaopeng/aar/server/MockTest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aar/server/MockTest;->init(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public send(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)V
    .locals 10

    const-string v0, "SerMg"

    if-eqz p1, :cond_4

    .line 259
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$800(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$900(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1000(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ServerManager;->interceptEnable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$800(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/aar/server/ServerManager;->interceptSend(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$800(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$900(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1100(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1200(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/aar/utils/LogUtils;->bytesLog([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string/jumbo p1, "send intercept!!!!!! module:%s ,msgId:%s ,data:%s ,blob-th:%s"

    .line 268
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/16 v2, 0xc9

    :cond_3
    move v5, v2

    .line 273
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1300(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Z

    move-result v4

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$800(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$900(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1100(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->access$1200(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)[B

    move-result-object v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/aar/server/ServerManager;->send(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void

    :cond_4
    :goto_1
    const-string/jumbo p1, "send builder is null !!!!!!!"

    .line 260
    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ServerManager;->send(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public send(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10

    if-nez p1, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ServerManager;->interceptEnable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/aar/server/ServerManager;->interceptSend(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 252
    invoke-static {p4}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-static {p5}, Lcom/xiaopeng/aar/utils/LogUtils;->bytesLog([B)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string/jumbo p2, "send intercept!!!!!! module:%s ,msgId:%s ,data:%s ,blob-th:%s"

    .line 251
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SerMg"

    invoke-static {p2, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 254
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/server/ServerManager;->send(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v4, 0x1

    const/16 v5, 0xc9

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 247
    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/aar/server/ServerManager;->send(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setServerListener(Lcom/xiaopeng/aar/server/ServerListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager;->mServerListener:Lcom/xiaopeng/aar/server/ServerListener;

    return-void
.end method
