.class public abstract Lazs;
.super Lbdn;
.source "LatelyMusicOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazs$a;
    }
.end annotation

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

.field protected final b:Lban;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lban<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lbdn;-><init>()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lazs;->c:Z

    const-string v0, "LatelyMusicOperationBase"

    const-string v1, "LatelyMusicOperationBase init"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    .line 32
    new-instance p1, Lban;

    const-string v0, "LatelyMusicOperation"

    const/16 v1, 0x1f4

    invoke-direct {p1, v0, v1}, Lban;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lazs;->b:Lban;

    return-void
.end method

.method private a()V
    .locals 5

    .line 78
    invoke-virtual {p0}, Lazs;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lazs;->a(Ljava/lang/String;Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_0

    const/4 v4, 0x1

    .line 81
    invoke-virtual {p0, v0, v4}, Lazs;->a(Ljava/lang/String;Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sub-int/2addr v2, v3

    .line 83
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMax:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",size="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LatelyMusicOperationBase"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Z)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TK;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lazs;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 163
    new-array p2, p2, [Lorg/greenrobot/greendao/Property;

    .line 164
    invoke-virtual {p0}, Lazs;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "LatelyMusicOperationBase"

    .line 172
    :try_start_0
    iget-object v1, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lazs;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSyncByUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " list = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSyncByUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lazs;->b:Lban;

    new-instance v1, Lazs$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lazs$a;-><init>(Lazs$1;)V

    invoke-virtual {v0, p1, v1}, Lban;->a(Ljava/util/List;Lban$a;)Z

    .line 94
    iget-object v0, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lazs;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lazs;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    invoke-virtual {p0}, Lazs;->e()I

    move-result v3

    invoke-virtual {p0, v3}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSyncByKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LatelyMusicOperationBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 102
    :cond_0
    new-instance p1, Lasj$p;

    invoke-direct {p1, v2}, Lasj$p;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract c()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lazs$1;

    invoke-direct {v0, p0, p1}, Lazs$1;-><init>(Lazs;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected abstract d()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract d(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
.end method

.method protected abstract e()I
.end method

.method public e(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lazs;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lazs;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lazs;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {p0}, Lazs;->e()I

    move-result v4

    invoke-virtual {p0, v4}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lazs;->c(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lazs;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0, v1}, Lazs;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " latelyMusicInfo.getUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LatelyMusicOperationBase"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, p1}, Lazs;->d(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    .line 60
    :goto_0
    iget-object v1, p0, Lazs;->b:Lban;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lban;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lazs;->b:Lban;

    invoke-virtual {v0, v3, p1}, Lban;->a(ILjava/lang/Object;)V

    .line 63
    :cond_2
    invoke-direct {p0}, Lazs;->a()V

    .line 64
    new-instance v0, Lasj$p;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lasj$p;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lazs;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accounType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lazs;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LatelyMusicOperationBase"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lazs;->b:Lban;

    invoke-virtual {v1, v0}, Lban;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v3, " name:"

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAlluid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hash = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0, v0, v1}, Lazs;->a(Ljava/lang/String;Z)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/16 v4, 0x1f4

    .line 140
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 145
    invoke-virtual {p0, v5}, Lazs;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_2
    iget-boolean v1, p0, Lazs;->c:Z

    if-eqz v1, :cond_4

    .line 148
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAll2uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Lazs;->c:Z

    .line 154
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set LatelyCache uid size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lazs;->b:Lban;

    invoke-virtual {v1, v0, v4}, Lban;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 185
    iget-object v0, p0, Lazs;->b:Lban;

    invoke-virtual {v0}, Lban;->a()V

    return-void
.end method

.method public h()J
    .locals 3

    .line 189
    iget-object v0, p0, Lazs;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lazs;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {p0}, Lazs;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v0

    return-wide v0
.end method
