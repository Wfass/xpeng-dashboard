.class public Lcom/xiaopeng/aar/client/ipc/IpcImpl;
.super Ljava/lang/Object;
.source "IpcImpl.java"

# interfaces
.implements Lcom/xiaopeng/aar/client/ipc/Ipc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/ipc/IpcImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ipc"


# instance fields
.field private mOnAppListener:Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;

.field private mPids:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServerName:Ljava/lang/String;

.field private final mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mPids:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "Ipc"

    const-string v1, "IpcImpl"

    .line 45
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    .line 47
    const-class v0, Lcom/xiaopeng/aar/server/ipc/ServerObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mServerName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/ipc/IpcImpl$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;-><init>()V

    return-void
.end method

.method private callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7

    .line 115
    invoke-static {p2}, Lcom/xiaopeng/aar/Apps;->getPackageNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Ipc"

    if-eqz v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string p2, "call--appId : %s,  pkg is null"

    .line 117
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 121
    :cond_0
    :try_start_0
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo v1, "type"

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v1, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v1, "module"

    .line 124
    invoke-virtual {p2, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v1, "method"

    .line 125
    invoke-virtual {p2, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v1, "param"

    .line 126
    invoke-virtual {p2, v1, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    if-nez p6, :cond_1

    const-string v1, "call"

    .line 128
    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 129
    invoke-static {p2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    return-object p2

    :cond_1
    const-string v1, "callBlob"

    .line 131
    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 132
    invoke-static {p2, p6}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;[B)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    const/4 p1, 0x5

    invoke-static {p6}, Lcom/xiaopeng/aar/utils/LogUtils;->bytesLog([B)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x6

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "callApiRouter error pkg:%s ,type: %s , module: %s, method: %s, param: %s, blob: %s, reason: %s"

    .line 135
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static get()Lcom/xiaopeng/aar/client/ipc/IpcImpl;
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcImpl$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/ipc/IpcImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    .line 46
    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_aar;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_aar;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public addOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    const/16 v0, 0xca

    if-ne p1, v0, :cond_1

    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 89
    iget-object p3, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mPids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    const/4 p5, 0x2

    if-nez p3, :cond_0

    .line 91
    iget-object p3, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mPids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p3, p2, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, p5

    .line 95
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 97
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, v0, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p5

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p1

    const/4 p1, 0x4

    iget-object p4, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    aput-object p4, v0, p1

    const-string p1, "onReceived--SERVER_NOTIFY_STARTED appId:%s, uid:%s, pid:%s, status:%s, %s"

    .line 96
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "Ipc"

    invoke-static {p4, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;

    .line 99
    invoke-interface {p4, p2, p3}, Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;->onServerStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mPids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mPids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mOnAppListener:Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;

    if-eqz v2, :cond_3

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 108
    invoke-interface/range {v2 .. v8}, Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;->onEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_3
    return-void
.end method

.method public removeOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnServerListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->mOnAppListener:Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;

    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/16 v1, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public subscribes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/16 v1, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 154
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unSubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v1, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    return-void
.end method

.method public unSubscribes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v1, 0x68

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->callApiRouter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    return-void
.end method
