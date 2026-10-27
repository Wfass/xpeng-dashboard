.class public Lbmp;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmp$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

.field private volatile c:Z

.field private d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lbmp;->c:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lbmp;->d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    .line 44
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getReadLoveInfoDao()Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    move-result-object v0

    iput-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    .line 46
    new-instance v0, Lbmp$1;

    invoke-direct {v0, p0}, Lbmp$1;-><init>(Lbmp;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lbmp;
    .locals 1

    .line 40
    sget-object v0, Lbmp$a;->a:Lbmp;

    return-object v0
.end method

.method static synthetic a(Lbmp;)Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    return-object p0
.end method

.method static synthetic a(Lbmp;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 0

    .line 27
    iput-object p1, p0, Lbmp;->d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    return-object p1
.end method

.method static synthetic a(Lbmp;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lbmp;->c:Z

    return p1
.end method

.method static synthetic b(Lbmp;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmp;->d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    return-object p0
.end method


# virtual methods
.method public a(IJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 138
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lbmp;->d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    .line 63
    new-instance v0, Lbmp$2;

    invoke-direct {v0, p0, p1}, Lbmp$2;-><init>(Lbmp;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 85
    iget-object v2, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 86
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sub-int/2addr v0, v1

    .line 87
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 89
    iget-object v1, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(J)V
    .locals 2

    .line 111
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lbmp$4;

    invoke-direct {v0, p0, p1, p2}, Lbmp$4;-><init>(Lbmp;J)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public c()V
    .locals 1

    .line 96
    new-instance v0, Lbmp$3;

    invoke-direct {v0, p0}, Lbmp$3;-><init>(Lbmp;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c(J)Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lbmp;->c:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 159
    :cond_0
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 142
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->deleteAll()V

    .line 143
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lbmp;->d:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    return-void
.end method

.method public f()J
    .locals 2

    .line 149
    iget-boolean v0, p0, Lbmp;->c:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 152
    :cond_0
    iget-object v0, p0, Lbmp;->b:Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
