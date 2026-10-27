.class public Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;
.super Ljava/lang/Object;
.source "OperationKeyValueService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;,
        Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
    }
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xpKeyValue"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

.field private final repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->getInstance()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    return-object v0
.end method

.method public static synthetic lambda$saveMultiple$0(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->syncAddMultiple(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$saveSingle$2(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->syncSaveSingle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$syncAddMultiple$1(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "success"    # Z

    .line 109
    if-eqz p5, :cond_1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    move-result-object v1

    .line 112
    .local v1, "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    if-nez v1, :cond_0

    .line 113
    const-string/jumbo v2, "xpKeyValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMultiple success, but not find local, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v0

    return-void

    .line 116
    :cond_0
    const/16 v2, 0x9

    iput v2, v1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V

    .line 118
    .end local v1    # "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    :cond_1
    const-string/jumbo v0, "xpKeyValue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportMultiple fail, only local storage. key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public static synthetic lambda$syncSaveSingle$3(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "success"    # Z

    .line 154
    if-eqz p5, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    move-result-object v1

    .line 157
    .local v1, "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    if-nez v1, :cond_0

    .line 158
    const-string/jumbo v2, "xpKeyValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSingle success, but not find local, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_0
    const/16 v2, 0x9

    iput v2, v1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V

    .line 163
    .end local v1    # "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    const-string/jumbo v0, "xpKeyValue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSingle fail, only local storage. key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void
.end method

.method private syncAddMultiple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->insert(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 100
    .local v1, "id":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->onMultipleAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$vcgKVEfjCwCA0AHOMZGXe2Ra32c;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, v1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$vcgKVEfjCwCA0AHOMZGXe2Ra32c;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->reportMultiple(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    .line 123
    return-void

    .line 100
    .end local v1    # "id":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private syncSaveSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->queryByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->firstOf(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    .line 139
    .local v1, "kv":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    if-nez v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->insert(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "id":J
    goto :goto_0

    .line 142
    .end local v2    # "id":J
    :cond_0
    iget-wide v2, v1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->id:J

    .line 143
    .restart local v2    # "id":J
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v4, v1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;Ljava/lang/String;)V

    .line 145
    .end local v1    # "kv":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 147
    .end local v2    # "id":J
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 148
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;

    move-object v4, v2

    move-object v5, p0

    move-wide v6, v0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->reportSingle(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    .line 168
    return-void

    .line 145
    .end local v0    # "id":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public register(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->register(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public saveKeyValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "single"    # Z

    .line 79
    if-eqz p3, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->saveSingle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->saveMultiple(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void
.end method

.method public saveMultiple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$3YWhMjYmu9JjttM9qX2LcOtwkvc;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$3YWhMjYmu9JjttM9qX2LcOtwkvc;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 92
    return-void

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public saveSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$TnwKydd-kTigXqwSqsOAg3F9yK8;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$TnwKydd-kTigXqwSqsOAg3F9yK8;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 131
    return-void

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method public syncGetSingle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    return-object v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->repository:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->querySingleByKey(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    move-result-object v2

    .line 176
    .local v2, "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    nop

    :cond_1
    monitor-exit v0

    return-object v1

    .line 177
    .end local v2    # "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregister(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->registerAndNotify:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
