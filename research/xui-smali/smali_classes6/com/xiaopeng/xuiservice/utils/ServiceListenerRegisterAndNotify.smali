.class public Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.super Ljava/lang/Object;
.source "ServiceListenerRegisterAndNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;,
        Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerType::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/util/Pair<",
            "T",
            "ListenerType;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleTag"    # Ljava/lang/String;

    .line 57
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ServiceListenerRegisterAndNotify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic lambda$clear$2(Landroid/util/Pair;)V
    .locals 3
    .param p0, "p"    # Landroid/util/Pair;

    .line 205
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method static synthetic lambda$listeners$1(Landroid/util/Pair;)Landroid/os/IInterface;
    .locals 1
    .param p0, "p"    # Landroid/util/Pair;

    .line 197
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public static synthetic lambda$register$0(Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;Landroid/os/IInterface;IILandroid/os/IBinder;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IInterface;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "listenerBinder"    # Landroid/os/IBinder;

    .line 119
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote app died, do unregister. listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 122
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onBinderDied(Landroid/os/IBinder;)V

    .line 123
    return-void
.end method

.method private register(Landroid/os/IInterface;II)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    .locals 8
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            "II)",
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TListenerType;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 113
    .local v6, "listenerBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->AlreadyExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    return-object v0

    .line 117
    :cond_0
    new-instance v7, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;-><init>(Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;Landroid/os/IInterface;IILandroid/os/IBinder;)V

    move-object v0, v7

    .line 125
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link death for recipient, looks like remote died. binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->RemoteDied:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    return-object v2
.end method

.method private unregister(Landroid/os/IInterface;)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")",
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TListenerType;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 183
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 184
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<TListenerType;Landroid/os/IBinder$DeathRecipient;>;"
    if-eqz v1, :cond_1

    .line 185
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 186
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    :goto_0
    return-object v2

    .line 188
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->NotExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    return-object v2
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 2

    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    throw v0
.end method

.method public final declared-synchronized listeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "T",
            "ListenerType;",
            ">;"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$hyCZTNgoxZwUKuazOcGJ3rzHxNU;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$hyCZTNgoxZwUKuazOcGJ3rzHxNU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    throw v0
.end method

.method protected onBinderDied(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 49
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    return-void
.end method

.method protected onFirstRegistered()V
    .locals 2

    .line 29
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    const-string v1, "onFirstRegistered"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 38
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    const-string v1, "onLastUnregistered"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final declared-synchronized registerListener(Landroid/os/IInterface;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")Z"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TListenerType;"
    monitor-enter p0

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    const-string v2, "registerListener listener=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return v0

    .line 61
    .end local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 67
    .restart local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 68
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 70
    .local v2, "uid":I
    invoke-direct {p0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->register(Landroid/os/IInterface;II)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    move-result-object v3

    .line 72
    .local v3, "result":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-ne v3, v4, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 77
    :cond_1
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-ne v3, v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener return First, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_2
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-ne v3, v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener return Success, but not First, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->AlreadyExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-ne v3, v4, :cond_4

    .line 82
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener return AlreadyExist, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->RemoteDied:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-ne v3, v4, :cond_5

    .line 84
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener return RemoteDied, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_5
    :goto_0
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    if-eq v3, v4, :cond_7

    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    :goto_2
    monitor-exit p0

    return v0

    .line 61
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    .end local v3    # "result":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    .end local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :goto_3
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    throw v0
.end method

.method public final declared-synchronized unregisterListener(Landroid/os/IInterface;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")Z"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TListenerType;"
    monitor-enter p0

    .line 136
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    const-string v2, "unregisterListener listener=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return v0

    .line 135
    .end local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 141
    .restart local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 142
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 144
    .local v2, "uid":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregister(Landroid/os/IInterface;)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    move-result-object v3

    .line 148
    .local v3, "result":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    if-ne v3, v4, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 153
    :cond_1
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    if-ne v3, v4, :cond_2

    .line 154
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener return Empty, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    if-ne v3, v4, :cond_3

    .line 156
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener return Success, but not Empty, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->NotExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    if-ne v3, v4, :cond_4

    .line 158
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener return NotExist, listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    :goto_0
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    monitor-exit p0

    return v0

    .line 135
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    .end local v3    # "result":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    .end local p1    # "listener":Landroid/os/IInterface;, "TListenerType;"
    :goto_3
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;, "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<TListenerType;>;"
    throw p1
.end method
