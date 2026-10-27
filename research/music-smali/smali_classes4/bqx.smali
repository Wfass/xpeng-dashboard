.class public Lbqx;
.super Ljava/lang/Object;
.source "AudioLogoOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqx$a;,
        Lbqx$b;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbqx;->b:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lbqx;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    return-void
.end method

.method public static a()Lbqx;
    .locals 1

    .line 23
    sget-object v0, Lbqx$b;->a:Lbqx;

    return-object v0
.end method

.method static synthetic a(Lbqx;)Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;
    .locals 0

    .line 16
    iget-object p0, p0, Lbqx;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    return-object p0
.end method


# virtual methods
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

    .line 104
    iget-object v0, p0, Lbqx;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    new-instance v0, Lbqx$3;

    invoke-direct {v0, p0, p2, p1}, Lbqx$3;-><init>(Lbqx;Ljava/util/List;I)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Lbqx$2;

    invoke-direct {v0, p0, p1}, Lbqx$2;-><init>(Lbqx;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Lbqx$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lbqx$a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lbqx;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 58
    new-instance p1, Lbqx$1;

    invoke-direct {p1, p0, v1, v0, p2}, Lbqx$1;-><init>(Lbqx;Ljava/util/List;Ljava/util/List;Lbqx$a;)V

    invoke-static {p1}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {p2, v0}, Lbqx$a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lbqx;->a:Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 119
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->notIn(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
