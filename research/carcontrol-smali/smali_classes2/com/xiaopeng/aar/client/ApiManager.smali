.class public Lcom/xiaopeng/aar/client/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;,
        Lcom/xiaopeng/aar/client/ApiManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiMg"

.field private static final THREAD_COUNT:I = 0x5


# instance fields
.field private mApiListener:Lcom/xiaopeng/aar/client/ApiListener;

.field private final mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

.field private mAsyncRequestId:J

.field private mReceivedId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdkc-"

    .line 41
    invoke-static {v0}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    const-string v0, "ApiMg"

    const-string v1, "init ,0.0.7_HEAD_6abb929_2024/05/31 03:28:13"

    .line 42
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->init()V

    .line 44
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$dhBX_iU8GUFgerWgJTxLdo9ebfg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$dhBX_iU8GUFgerWgJTxLdo9ebfg;-><init>(Lcom/xiaopeng/aar/client/ApiManager;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/client/ipc/Ipc;->setOnServerListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;)V

    .line 45
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$1S-8tXbZsX8MtIqjPdtoDTZwNdc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$1S-8tXbZsX8MtIqjPdtoDTZwNdc;-><init>(Lcom/xiaopeng/aar/client/ApiManager;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/client/ipc/Ipc;->addOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V

    .line 58
    invoke-static {}, Lcom/xiaopeng/aar/client/RunningConfig;->get()Lcom/xiaopeng/aar/client/RunningConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/RunningConfig;->init()V

    const/4 v0, 0x5

    .line 59
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/ApiManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/ApiManager;-><init>()V

    return-void
.end method

.method private _call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/ApiManager;->getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "call--not app!!!!   appId:%s "

    .line 117
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApiMg"

    invoke-static {p2, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aar/client/app/AppProcessor;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/aar/client/ApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/aar/client/ApiManager;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/aar/client/ApiManager;)Lcom/xiaopeng/aar/client/ApiListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mApiListener:Lcom/xiaopeng/aar/client/ApiListener;

    return-object p0
.end method

.method private declared-synchronized createReceivedId()J
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mReceivedId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mReceivedId:J

    .line 180
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mReceivedId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mReceivedId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createRequestId()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 184
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncRequestId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 185
    iput-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncRequestId:J

    .line 187
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncRequestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncRequestId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static get()Lcom/xiaopeng/aar/client/ApiManager;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/aar/client/ApiManager$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/ApiManager;

    move-result-object v0

    return-object v0
.end method

.method private getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;
    .locals 1

    .line 173
    invoke-static {}, Lcom/xiaopeng/aar/client/app/ProcessorManager;->get()Lcom/xiaopeng/aar/client/app/ProcessorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aar/client/app/ProcessorManager;->getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$dhBX_iU8GUFgerWgJTxLdo9ebfg(Lcom/xiaopeng/aar/client/ApiManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaopeng/aar/client/ApiManager;->onReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private onReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 13

    move-object v0, p0

    move-object v5, p2

    move-object/from16 v6, p3

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/ApiManager;->createReceivedId()J

    move-result-wide v3

    const-string v1, "."

    .line 132
    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v7, 0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v1, v7

    .line 134
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    const-string v8, "_"

    .line 136
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v2, :cond_1

    add-int/2addr v8, v7

    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/xiaopeng/aar/LogBlackList;->hit(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, "ApiMg"

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v2, v7

    aput-object v5, v2, v9

    aput-object v1, v2, v8

    const/4 v1, 0x4

    aput-object p4, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v1

    const-string v1, "onReceived--%s, %s, %s, %s, %s, %s"

    .line 142
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/ApiManager;->receivedType(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v5, v1, v10

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "onReceived--type Undefined   appId:%s, type:%s "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_3
    iget-object v2, v0, Lcom/xiaopeng/aar/client/ApiManager;->mApiListener:Lcom/xiaopeng/aar/client/ApiListener;

    if-nez v2, :cond_4

    const-string v1, "onReceived listener is null"

    .line 151
    invoke-static {v11, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_4
    invoke-direct {p0, p2}, Lcom/xiaopeng/aar/client/ApiManager;->getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;

    move-result-object v1

    if-nez v1, :cond_5

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v10

    const-string v2, "onReceived--not app!!!!   appId:%s "

    .line 156
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p1, :cond_7

    .line 160
    invoke-static {}, Lcom/xiaopeng/aar/client/SubscribeManager;->get()Lcom/xiaopeng/aar/client/SubscribeManager;

    move-result-object v12

    invoke-virtual {v12, p2, v6}, Lcom/xiaopeng/aar/client/SubscribeManager;->check(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 161
    invoke-interface/range {v1 .. v9}, Lcom/xiaopeng/aar/client/app/AppProcessor;->onReceived(Lcom/xiaopeng/aar/client/ApiListener;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    :cond_6
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v5, v1, v10

    aput-object v6, v1, v7

    aput-object p4, v1, v9

    const-string v2, "onReceived--not subscribe appId:%s ,module:%s,msgId:%s"

    .line 163
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 167
    invoke-interface/range {v1 .. v9}, Lcom/xiaopeng/aar/client/app/AppProcessor;->onReceived(Lcom/xiaopeng/aar/client/ApiListener;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_1
    return-void
.end method

.method private receivedType(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/aar/client/ApiManager;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p5

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    invoke-static {p4}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p5}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "call end ipc--%s, %s, %s, %s, %s, result:%s"

    .line 101
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApiMg"

    invoke-static {p2, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p5
.end method

.method public callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11

    move-object v8, p0

    .line 108
    iget-object v9, v8, Lcom/xiaopeng/aar/client/ApiManager;->mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;-><init>(Lcom/xiaopeng/aar/client/ApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 110
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static/range {p6 .. p6}, Lcom/xiaopeng/aar/utils/LogUtils;->bytesLog([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "callAsync-- requestId:%s, appId:%s ,method:%s ,param:%s ,blob-th:%s "

    .line 109
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic lambda$new$0$ApiManager(Ljava/lang/String;I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ApiManager;->mApiListener:Lcom/xiaopeng/aar/client/ApiListener;

    const-string v1, "ApiMg"

    if-nez v0, :cond_0

    const-string p1, "onServerStatus listener is null"

    .line 48
    invoke-static {v1, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/ApiManager;->getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "onServerStatus--not app!!!!   appId:%s "

    .line 53
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    invoke-interface {v2, v0, p1, p2}, Lcom/xiaopeng/aar/client/app/AppProcessor;->onServerStatus(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized setApiListener(Lcom/xiaopeng/aar/client/ApiListener;)V
    .locals 0

    monitor-enter p0

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/aar/client/ApiManager;->mApiListener:Lcom/xiaopeng/aar/client/ApiListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogLevel(I)V

    return-void
.end method

.method public setMock(Z)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/xiaopeng/aar/utils/Utils;->isUserRelease()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lcom/xiaopeng/aar/client/MockTest;->get()Lcom/xiaopeng/aar/client/MockTest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/aar/client/MockTest;->init()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/client/MockTest;->get()Lcom/xiaopeng/aar/client/MockTest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/aar/client/MockTest;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setReTrySubscribeEnable(Ljava/lang/String;Z)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaopeng/aar/client/SubscribeManager;->get()Lcom/xiaopeng/aar/client/SubscribeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->setReTryEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string/jumbo v1, "subscribe-- appId:%s ,module:%s ,subscriber:%s"

    .line 86
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaopeng/aar/client/SubscribeManager;->get()Lcom/xiaopeng/aar/client/SubscribeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/aar/client/SubscribeManager;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unSubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string/jumbo v1, "unSubscribe-- appId:%s ,module:%s ,subscriber:%s"

    .line 92
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/aar/client/SubscribeManager;->get()Lcom/xiaopeng/aar/client/SubscribeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/aar/client/SubscribeManager;->unSubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
