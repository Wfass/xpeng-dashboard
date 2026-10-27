.class public Lbal;
.super Ljava/lang/Object;
.source "MusicUrlOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbal$a;
    }
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    .line 36
    new-instance p1, Lbal$1;

    invoke-direct {p1, p0}, Lbal$1;-><init>(Lbal;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a()Lbal;
    .locals 1

    .line 31
    sget-object v0, Lbal$a;->a:Lbal;

    return-object v0
.end method

.method private c()V
    .locals 7

    .line 127
    iget-object v0, p0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x2ee

    if-le v0, v1, :cond_3

    .line 129
    iget-object v2, p0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao$Properties;->UpdateTime:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 130
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sub-int/2addr v0, v1

    .line 131
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    move v1, v5

    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 133
    iget-object v2, p0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    move v3, v5

    .line 136
    :goto_1
    iget-object v4, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 137
    iget-object v4, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v2, :cond_2

    .line 144
    iget-object v3, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;
    .locals 4

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 113
    :goto_0
    iget-object v3, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 114
    iget-object v3, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    .line 115
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 121
    iget-object p1, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 123
    :cond_3
    monitor-exit p0

    return-object v1

    .line 110
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 74
    :cond_0
    new-instance v0, Lbal$2;

    invoke-direct {v0, p0, p1}, Lbal$2;-><init>(Lbal;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 83
    iget-object v2, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 90
    iget-object v1, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 92
    :cond_3
    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    :goto_2
    invoke-direct {p0}, Lbal;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 71
    :cond_5
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MusicUrlOperation"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAll: list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->loadAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lbal;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
