.class public abstract Lbaj;
.super Lbdn;
.source "MusicRadioOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/greenrobot/greendao/AbstractDao;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lbdn;"
    }
.end annotation


# instance fields
.field protected a:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lbdn;-><init>()V

    .line 33
    iput-object p1, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method

.method static synthetic a(Lbaj;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lbaj;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ")TK;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lbaj;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 74
    invoke-virtual {p0}, Lbaj;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 75
    invoke-virtual {p0}, Lbaj;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 73
    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lbaj;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lbaj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lbaj;->a(Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    .line 145
    invoke-virtual {p0, v3}, Lbaj;->a(Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sub-int/2addr v1, v2

    .line 147
    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMax:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicRadioOperation"

    invoke-static {v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lbaj;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lbaj;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lbaj;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 170
    invoke-virtual {p0}, Lbaj;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 169
    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(IJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lbaj;->a(Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lbaj;->e()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 94
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicRadioOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    instance-of v0, p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_1

    .line 100
    move-object v0, p3

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    instance-of v0, p3, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    .line 104
    move-object v1, p3

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 105
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    instance-of v0, p3, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    .line 108
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 109
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0, p2}, Lbaj;->a(Ljava/util/List;)V

    return-object p2
.end method

.method public a(Z)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TK;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lbaj;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {p0}, Lbaj;->f()I

    move-result v2

    invoke-virtual {p0, v2}, Lbaj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 159
    invoke-virtual {p0}, Lbaj;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "listsign_recommend_music"

    aput-object v7, v5, v6

    const-string v7, "listsign_rank_music"

    aput-object v7, v5, v2

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->in([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v6

    .line 158
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 161
    new-array p1, v2, [Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lbaj;->e()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected abstract a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lbaj;->f()I

    move-result v0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lbaj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 122
    new-instance v0, Lbaj$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lbaj$2;-><init>(Lbaj;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b()Lorg/greenrobot/greendao/Property;
.end method

.method public declared-synchronized b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheTime(J)V

    .line 47
    invoke-virtual {p0}, Lbaj;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lbaj;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lbaj$1;

    invoke-direct {v1, p0, v0, p1}, Lbaj$1;-><init>(Lbaj;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract c()Lorg/greenrobot/greendao/Property;
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 5

    .line 80
    iget-object v0, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lbaj;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {p0}, Lbaj;->f()I

    move-result v2

    invoke-virtual {p0, v2}, Lbaj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 82
    invoke-virtual {p0}, Lbaj;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 83
    invoke-virtual {p0}, Lbaj;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 88
    :cond_0
    new-instance p1, Lase$b;

    invoke-direct {p1}, Lase$b;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract d()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract e()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract f()I
.end method
