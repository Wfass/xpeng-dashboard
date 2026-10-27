.class public Lbqy;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqy$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbqy;->b:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lbqy;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    return-void
.end method

.method public static a()Lbqy;
    .locals 1

    .line 22
    sget-object v0, Lbqy$a;->a:Lbqy;

    return-object v0
.end method

.method static synthetic a(Lbqy;)Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;
    .locals 0

    .line 15
    iget-object p0, p0, Lbqy;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lbqy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lbqy;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lbqy;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-object v0

    .line 41
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbqy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lbqy;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    new-instance v0, Lbqy$4;

    invoke-direct {v0, p0, p2, p1}, Lbqy$4;-><init>(Lbqy;Ljava/util/List;I)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 1

    .line 46
    new-instance v0, Lbqy$1;

    invoke-direct {v0, p0, p1}, Lbqy$1;-><init>(Lbqy;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lbqy$3;

    invoke-direct {v0, p0, p1}, Lbqy$3;-><init>(Lbqy;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioParseOperation"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lbqy;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->insertOrReplace(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioParseOperation"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteNotIn: ====== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lbqy;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 94
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->notIn(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Lbqy$2;

    invoke-direct {v0, p0, p1}, Lbqy$2;-><init>(Lbqy;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
