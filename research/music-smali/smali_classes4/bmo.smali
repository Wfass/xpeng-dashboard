.class public Lbmo;
.super Ljava/lang/Object;
.source "ReadHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmo$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lbmo;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 41
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getReadHistoryInfoDao()Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    move-result-object v0

    iput-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    return-void
.end method

.method public static a()Lbmo;
    .locals 1

    .line 37
    sget-object v0, Lbmo$a;->a:Lbmo;

    return-object v0
.end method

.method static synthetic a(Lbmo;)Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;
    .locals 0

    .line 24
    iget-object p0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    return-object p0
.end method

.method static synthetic a(Lbmo;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 0

    .line 24
    iput-object p1, p0, Lbmo;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    return-object p1
.end method

.method static synthetic b(Lbmo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lbmo;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    return-object p0
.end method

.method private g()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 3

    .line 79
    iget-object v0, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(IJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lbmo;->g()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 108
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lbmo;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 53
    new-instance v0, Lbmo$1;

    invoke-direct {v0, p0, p1}, Lbmo$1;-><init>(Lbmo;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 5

    .line 64
    iget-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lbmo;->g()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sub-int/2addr v0, v1

    .line 68
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReadHistoryOperation"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 72
    iget-object v2, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 2

    .line 127
    iget-object v0, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lbmo$3;

    invoke-direct {v0, p0, p1, p2}, Lbmo$3;-><init>(Lbmo;J)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()J
    .locals 2

    .line 90
    iget-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lbmo;->a:Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 96
    iget-object v3, p0, Lbmo;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 112
    new-instance v0, Lbmo$2;

    invoke-direct {v0, p0}, Lbmo$2;-><init>(Lbmo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public f()Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 1

    .line 141
    iget-object v0, p0, Lbmo;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    return-object v0
.end method
