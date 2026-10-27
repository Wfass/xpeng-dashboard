.class public final Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;
.super Ljava/lang/Object;
.source "SyncTransferTools.java"


# static fields
.field private static final KYE_SYNC_TRANSFER_UID_ARRAY:Ljava/lang/String; = "kye_sync_transfer_uid_array"

.field private static final KYE_SYNC_TRANSFER_UID_INIT_FLAG:Ljava/lang/String; = "kye_sync_transfer_uid_init_flag_v1"

.field private static final KYE_SYNC_TRANSFER_UID_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "SyncTransferTools"

.field private static volatile sInstance:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;


# instance fields
.field private mDataAccessor:Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

.field private mDataCenter:Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

.field private volatile mUidArray:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mUidArray:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->isDatabaseExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;)Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataCenter:Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;)Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataCenter:Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;)Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataAccessor:Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mUidArray:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->readTransferUidArray()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private eraseDb(J)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eraseDb: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncTransferTools"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mUidArray:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mUidArray:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v1

    const-string v2, "kye_sync_transfer_uid_array"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataAccessor:Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->erase(J)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;
    .locals 2

    .line 24
    sget-object v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;-><init>()V

    sput-object v1, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    return-object v0
.end method

.method private static isDatabaseExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private readOnceAllSyncDataToUidArray()Ljava/lang/String;
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataAccessor:Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    invoke-virtual {v1}, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->queryUid()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 111
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readOnceAllSyncDataToUidArray: uidArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncTransferTools"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readTransferUidArray()Ljava/lang/String;
    .locals 5

    .line 79
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v0

    const-string v1, "kye_sync_transfer_uid_init_flag_v1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readTransferUidArray: isInit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncTransferTools"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "kye_sync_transfer_uid_array"

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->readOnceAllSyncDataToUidArray()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTransferUidArray: uidArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public getUidSyncDbOnWorkThread(J)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mUidArray:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SyncTransferTools"

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUidSyncDbOnWorkThread: current uid has no sync db; uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->mDataAccessor:Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->queryUid(J)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 62
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;

    if-eqz v4, :cond_2

    .line 68
    iget-object v5, v4, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUidSyncDbOnWorkThread: uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; result.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->eraseDb(J)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public initDb(Landroid/app/Application;)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDb: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncTransferTools"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;-><init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Landroid/app/Application;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
