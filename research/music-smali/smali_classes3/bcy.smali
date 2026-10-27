.class public Lbcy;
.super Ljava/lang/Object;
.source "NetRadioHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcy$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

.field private b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lbcy;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 39
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNetRadioHistoryDao()Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    move-result-object v0

    iput-object v0, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    return-void
.end method

.method synthetic constructor <init>(Lbcy$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbcy;-><init>()V

    return-void
.end method

.method public static a()Lbcy;
    .locals 1

    .line 35
    sget-object v0, Lbcy$a;->a:Lbcy;

    return-object v0
.end method

.method static synthetic a(Lbcy;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;
    .locals 0

    .line 20
    iget-object p0, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    return-object p0
.end method

.method static synthetic a(Lbcy;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 0

    .line 20
    iput-object p1, p0, Lbcy;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object p1
.end method

.method static synthetic b(Lbcy;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbcy;->e()V

    return-void
.end method

.method static synthetic c(Lbcy;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lbcy;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object p0
.end method

.method private d()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lbcy;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 0

    .line 20
    invoke-direct {p0}, Lbcy;->d()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 88
    iget-object v0, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lbcy;->d()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sub-int/2addr v0, v1

    .line 92
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 94
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

    const-string v2, "NetRadioHistoryOperation"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->delete(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lbcy;->d()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 49
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    .line 52
    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 58
    iput-object p1, p0, Lbcy;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 59
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    move-result-object p1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setCacheTime(J)V

    .line 62
    new-instance v0, Lbcy$1;

    invoke-direct {v0, p0, p1}, Lbcy$1;-><init>(Lbcy;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()J
    .locals 2

    .line 102
    iget-object v0, p0, Lbcy;->a:Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 73
    new-instance v0, Lbcy$2;

    invoke-direct {v0, p0, p1}, Lbcy$2;-><init>(Lbcy;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()V
    .locals 1

    .line 106
    new-instance v0, Lbcy$3;

    invoke-direct {v0, p0}, Lbcy$3;-><init>(Lbcy;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
