.class public Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;
.super Ljava/lang/Object;
.source "IpcServerImpl.java"

# interfaces
.implements Lcom/xiaopeng/aar/server/ipc/IpcServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IpcSer"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mClientName:Ljava/lang/String;

.field private mOnClientListener:Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;

.field private mTargetPkg:Ljava/lang/String;

.field private mTargetPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IpcSer"

    const-string v1, "IpcServerImpl"

    .line 46
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    const-string v0, "com.xiaopeng.napa"

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkg:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/xiaopeng/aar/client/ipc/ClientObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mClientName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;-><init>()V

    return-void
.end method

.method private callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IpcSer"

    if-eqz v0, :cond_0

    const-string p1, "not apppid "

    .line 125
    invoke-static {v1, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkgMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkgMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 135
    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->callApiRouter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 131
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " targetPkgSet is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkg:Ljava/lang/String;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->callApiRouter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_4
    return-void
.end method

.method private callApiRouter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 144
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    .line 146
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "appId"

    iget-object v1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mAppId:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "module"

    .line 148
    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "msgId"

    .line 149
    invoke-virtual {p1, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "data"

    .line 150
    invoke-virtual {p1, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    if-nez p6, :cond_0

    const-string v0, "onReceived"

    .line 152
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "onReceivedBlob"

    .line 155
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 156
    invoke-static {p1, p6}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    invoke-static {p6}, Lcom/xiaopeng/aar/utils/LogUtils;->bytesLog([B)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x5

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "callApiRouter error type: %s , module: %s, msgId: %s, data: %s, blob: %s, reason: %s"

    .line 159
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "IpcSer"

    invoke-static {p2, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$SingletonHolder;->access$100()Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    .line 47
    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_aar;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_aar;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public keepAlive(Landroid/content/Context;)V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/aar/server/ipc/KeepAliveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public synthetic lambda$setAppId$1$IpcServerImpl()V
    .locals 8

    const-string v0, "IpcSer"

    const-string/jumbo v1, "send SERVER_NOTIFY_STARTED"

    .line 93
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mAppId:Ljava/lang/String;

    const/16 v3, 0xca

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mOnClientListener:Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 118
    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;->onCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mAppId:Ljava/lang/String;

    .line 92
    new-instance p1, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$-268LCc-sVnbIQBG_t8PWWSq4wk;

    invoke-direct {p1, p0}, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$-268LCc-sVnbIQBG_t8PWWSq4wk;-><init>(Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;)V

    invoke-static {p1}, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnClientListener(Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mOnClientListener:Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;

    return-void
.end method

.method public setTargetPackage(Ljava/lang/String;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTargetPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcSer"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTargetPackages(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTargetPackages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcSer"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->mTargetPkgMap:Ljava/util/Map;

    :cond_0
    return-void
.end method
