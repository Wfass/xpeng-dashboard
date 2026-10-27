.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;
.super Ljava/lang/Object;
.source "SyncProviderWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IWrapper;


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProviderWrapper"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mListeners:Ljava/util/Set;

    .line 32
    new-instance v0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic lambda$setSyncChangedListener$0(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "listener"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getUid()J

    move-result-wide v0

    sget-object v2, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->ACCOUNT_CHANGED:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    invoke-interface {p0, v0, v1, v2}, Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;->OnSyncChanged(JLcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    return-void
.end method


# virtual methods
.method public applyClearRemoteHabitData()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->applyClearRemoteHabitData()V

    return-void
.end method

.method get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 129
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get() called with: key = ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "], result = ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "], defaultValue = ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "]"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "SyncProviderWrapper"

    invoke-static {p4, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    return-object p3
.end method

.method get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "appId"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get() called with: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], result = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], defaultValue = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncProviderWrapper"

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    return-object p3
.end method

.method getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "key",
            "method",
            "defaultValue"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    const-string/jumbo v1, "xp_car_cashier"

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCashier() called with: key = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], result = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], defaultValue = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncProviderWrapper"

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p3

    :cond_0
    return-object p2
.end method

.method public getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit",
            "appId"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->getGeneral(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 170
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGeneral() called with: key = ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "], result = ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "], defaultValue = ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "]"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "SyncProviderWrapper"

    invoke-static {p4, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    return-object p3
.end method

.method declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->init(Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
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

    const-string v0, "@"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->put(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const p3, 0x9c43

    invoke-direct {p2, p3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method put(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    const-string v0, "@"

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->put(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const p3, 0x9c43

    invoke-direct {p2, p3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
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

    const-string v0, "@"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const p3, 0x9c43

    invoke-direct {p2, p3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "@"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const p3, 0x9c43

    invoke-direct {p2, p3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeSyncChangedListener()V
    .locals 2

    const-string v0, "SyncProviderWrapper"

    const-string v1, "removeSyncChangedListener: "

    .line 67
    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method removeSyncChangedListener(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSyncChangedListener: listener-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

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

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->setCurrentHabitReloadState(Z)V

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

    const-string v0, "@"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;

    const p3, 0x9c43

    invoke-direct {p2, p3}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;-><init>(I)V

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSyncChangedListener(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "listener",
            "callImmediately"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSyncChangedListener: callImmediately = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mSyncModule:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    invoke-virtual {p2}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->isInit()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "setSyncChangedListener: server init completed, now callImmediately"

    .line 61
    invoke-static {v1, p2}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$PfE0iyn_-P8ZOazORSbwutshezk;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$PfE0iyn_-P8ZOazORSbwutshezk;-><init>(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
