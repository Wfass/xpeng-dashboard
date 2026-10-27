.class public Lbob;
.super Ljava/lang/Object;
.source "SearchHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbob$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lbob;->a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    .line 23
    iput-object v0, p0, Lbob;->b:Ljava/util/List;

    .line 36
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getSearchHistoryBeanDao()Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    iput-object v0, p0, Lbob;->a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    return-void
.end method

.method synthetic constructor <init>(Lbob$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lbob;-><init>()V

    return-void
.end method

.method public static a()Lbob;
    .locals 1

    .line 32
    sget-object v0, Lbob$a;->a:Lbob;

    return-object v0
.end method

.method static synthetic a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;
    .locals 0

    .line 19
    iget-object p0, p0, Lbob;->a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;
    .locals 4

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    .line 93
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    monitor-exit p0

    return-object v2

    .line 97
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbob;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lbob;->c()Ljava/util/List;

    .line 46
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->setKey(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->setUpdateTs(Ljava/lang/Long;)V

    .line 49
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v1

    invoke-virtual {v1}, Lbeb;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->setSysUid(J)V

    .line 50
    iget-object v1, p0, Lbob;->a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    if-eqz v1, :cond_4

    .line 51
    invoke-direct {p0, p1}, Lbob;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 53
    iget-object p1, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0x32

    if-lt p1, v2, :cond_2

    .line 54
    iget-object p1, p0, Lbob;->b:Ljava/util/List;

    iget-object v2, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    .line 55
    iget-object v2, p0, Lbob;->b:Ljava/util/List;

    iget-object v3, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 56
    new-instance v2, Lbob$1;

    invoke-direct {v2, p0, p1}, Lbob$1;-><init>(Lbob;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)V

    invoke-static {v2}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 63
    :cond_2
    iget-object p1, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    new-instance p1, Lbob$2;

    invoke-direct {p1, p0, v0}, Lbob$2;-><init>(Lbob;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    new-instance v1, Lbob$3;

    invoke-direct {v1, p0, p1, v0}, Lbob$3;-><init>(Lbob;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lbob;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lbob;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    :cond_0
    new-instance v0, Lbob$4;

    invoke-direct {v0, p0}, Lbob$4;-><init>(Lbob;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lbob;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 117
    :try_start_1
    iget-object v0, p0, Lbob;->a:Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao$Properties;->SysUid:Lorg/greenrobot/greendao/Property;

    .line 118
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v2

    invoke-virtual {v2}, Lbeb;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao$Properties;->UpdateTs:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    .line 119
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbob;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SearchHistoryOperation"

    const-string v2, "loadAll: "

    .line 122
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lbob;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbob;->b:Ljava/util/List;

    .line 128
    :cond_1
    iget-object v0, p0, Lbob;->b:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
