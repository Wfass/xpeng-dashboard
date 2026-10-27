.class public Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;,
        Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientManager"

.field private static final THREAD_COUNT:I = 0x5


# instance fields
.field private mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

.field private mClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

.field private mListener:Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

.field private mPkgName:Ljava/lang/String;

.field private mServiceStatusListener:Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mListener:Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    return-object p0
.end method

.method public static get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
    .locals 1

    .line 67
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$SingletonHolder;->access$200()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindService(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    if-eqz p1, :cond_0

    const-string v0, "init"

    .line 106
    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->bindService(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
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

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const/4 v5, 0x3

    aput-object p4, v1, v5

    const-string v6, "call start = appId:%s, module:%s, method:%s, param:%s"

    .line 119
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "ClientManager"

    invoke-static {v6, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "no proper AppClient!!!"

    .line 126
    invoke-static {v6, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 130
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object p1, v7, v3

    aput-object p2, v7, v4

    aput-object p3, v7, v5

    aput-object p4, v7, v0

    const/4 p1, 0x5

    aput-object v1, v7, p1

    const-string p1, "call end = time:%s, appId:%s, module:%s, method:%s, param:%s, result:%s"

    .line 129
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "appId",
            "module",
            "method",
            "param"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public destroy()V
    .locals 3

    const-string v0, "ClientManager"

    const-string v1, "destroy"

    .line 139
    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->destroy()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 148
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->clear()V

    return-void
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "config",
            "listener"
        }
    .end annotation

    const-string v0, "ClientManager"

    const-string v1, "init"

    .line 73
    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mPkgName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mServiceStatusListener:Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;

    .line 76
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    const-string v2, "carcontrol"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    const-string v2, "settings"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    const-string v2, "powercenter"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mIpcCallback:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    const-string v2, "hvac"

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 82
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mAsyncExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public notifyServiceConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appId",
            "source"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ClientManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mServiceStatusListener:Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;

    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;->onServiceConnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyServiceDisconnected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mServiceStatusListener:Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;->onServiceDisconnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSignalCallbackAdded(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->onSignalCallbackAdded()V

    :cond_0
    return-void
.end method

.method public setClientListener(Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->mListener:Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    return-void
.end method
