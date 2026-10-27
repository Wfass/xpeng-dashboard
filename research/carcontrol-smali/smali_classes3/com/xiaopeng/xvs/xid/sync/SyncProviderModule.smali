.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;
.super Ljava/lang/Object;
.source "SyncProviderModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProviderModule"


# instance fields
.field private final mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "xvs-sync-provider-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mWorkHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    return-void
.end method


# virtual methods
.method public applyClearRemoteHabitData()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->applyClearRemoteHabitData()V

    return-void
.end method

.method get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "appId"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "method",
            "appId"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeneral(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->getGeneral(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method init(Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Lcom/xiaopeng/xvs/xid/sync/api/SyncType;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncProviderModule"

    const-string v1, "init: "

    .line 35
    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerContentObserver begin beginTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v3, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    new-instance v4, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;

    iget-object v5, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;Landroid/os/Handler;Lcom/xiaopeng/xvs/xid/base/ICallback;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerContentObserver end endTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";spendTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    new-instance v2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const v3, 0x9c46

    invoke-direct {v2, v3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-interface {p1, v2}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init fatal: e="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method isInit()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->isInit()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInit: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncProviderModule"

    invoke-static {v2, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method put(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "key",
            "value",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], value = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderModule"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->putIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method put(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "key",
            "value",
            "appId"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], value = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderModule"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->putIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], value = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderModule"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "appId"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], value = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderModule"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCurrentHabitReloadState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->setCurrentHabitReloadState(Z)V

    return-void
.end method

.method public setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "appId"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->mSyncValueTable:Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncValueTable;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
