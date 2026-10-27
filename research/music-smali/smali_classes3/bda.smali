.class public Lbda;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbda$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbda;->a:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbda;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 64
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNetRadioCollectDao()Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    move-result-object v0

    iput-object v0, p0, Lbda;->b:Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    .line 65
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lbda;->g()V

    return-void
.end method

.method synthetic constructor <init>(Lbda$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbda;-><init>()V

    return-void
.end method

.method public static a()Lbda;
    .locals 1

    .line 60
    sget-object v0, Lbda$a;->a:Lbda;

    return-object v0
.end method

.method static synthetic a(Lbda;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;
    .locals 0

    .line 41
    iget-object p0, p0, Lbda;->b:Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    return-object p0
.end method

.method static synthetic a(Lbda;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object p1
.end method

.method static synthetic a(Lbda;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lbda;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 122
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 123
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x6

    if-ne v0, p1, :cond_1

    .line 130
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 132
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->play()V

    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1, p2}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object p2

    new-instance v0, Lbda$4;

    invoke-direct {v0, p0}, Lbda$4;-><init>(Lbda;)V

    invoke-virtual {p2, p1, v0}, Lbew;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    :goto_0
    return-void
.end method

.method static synthetic b(Lbda;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lbda;->a:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
    .locals 4

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setCacheTime(J)V

    .line 326
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    new-instance v0, Lbda$8;

    invoke-direct {v0, p0, p1}, Lbda$8;-><init>(Lbda;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 338
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;-><init>(JZLcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 331
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private g()V
    .locals 1

    .line 71
    new-instance v0, Lbda$1;

    invoke-direct {v0, p0}, Lbda$1;-><init>(Lbda;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 393
    iget-object v0, p0, Lbda;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lbda;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(IJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->f()J

    move-result-wide v0

    .line 173
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCollectedNetRadioList: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", cacheCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", pageSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetRadioOperation"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v0

    .line 179
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 182
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getCacheTime()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 183
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 188
    :cond_2
    iget-object v0, p0, Lbda;->b:Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 190
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 191
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 193
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public a(II)V
    .locals 3

    .line 388
    iget-object v0, p0, Lbda;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v0, Lasf$a;

    invoke-direct {v0, p2, p1}, Lasf$a;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
    .locals 4

    .line 343
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    new-instance v0, Lbda$9;

    invoke-direct {v0, p0, p1}, Lbda$9;-><init>(Lbda;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 352
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 353
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;-><init>(JZLcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 345
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/av;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    iput-object p1, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 281
    invoke-direct {p0, v0}, Lbda;->b(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    iget-object p2, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz p2, :cond_4

    .line 284
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 285
    invoke-virtual {p0}, Lbda;->c()V

    .line 288
    :cond_4
    invoke-virtual {p0, v0}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 103
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 104
    new-instance v1, Lbda$2;

    invoke-direct {v1, p0, v0, p1}, Lbda$2;-><init>(Lbda;Landroidx/lifecycle/r;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/s;)V

    .line 111
    new-instance p1, Lbda$3;

    invoke-direct {p1, p0, v0}, Lbda$3;-><init>(Lbda;Landroidx/lifecycle/r;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    iget-object v4, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 205
    iget-object v5, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 206
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getCacheTime()J

    move-result-wide v7

    sub-long v7, v2, v7

    const-wide/32 v9, 0x1d4c0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 207
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 211
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v2, "NetRadioOperation"

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveLoveNetRadioInfoList:recentList="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",lastSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 215
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 216
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 219
    :cond_3
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "NetRadioOperation"

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveNetRadioCollect: mCachedList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", loveNetRadioInfoList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 223
    iget-object v2, p0, Lbda;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 224
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    iput-object v2, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 226
    iput-object v2, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 229
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    .line 230
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLoveNetRadioInfoList:sourceList="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetRadioOperation"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 236
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 237
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    :cond_7
    new-instance v0, Lbda$5;

    invoke-direct {v0, p0, p1}, Lbda$5;-><init>(Lbda;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_3

    .line 249
    :cond_8
    new-instance p1, Lbda$6;

    invoke-direct {p1, p0, v0}, Lbda$6;-><init>(Lbda;Ljava/util/LinkedList;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(J)Z
    .locals 4

    .line 362
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 364
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 369
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z
    .locals 2

    .line 357
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lbda;->a(J)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v1

    .line 158
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lbda;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 161
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    iput-object v1, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 159
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .line 306
    new-instance v0, Lbda$7;

    invoke-direct {v0, p0}, Lbda$7;-><init>(Lbda;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "NetRadioOperation"

    const-string v1, "deleteAll: =="

    .line 374
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v0, p0, Lbda;->b:Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->deleteAll()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lbda;->d:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void

    :catchall_0
    move-exception v1

    .line 377
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 1

    .line 400
    iget-object v0, p0, Lbda;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 401
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f()J
    .locals 2

    .line 405
    iget-object v0, p0, Lbda;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onEvent(Lasb;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 384
    invoke-direct {p0}, Lbda;->g()V

    return-void
.end method
