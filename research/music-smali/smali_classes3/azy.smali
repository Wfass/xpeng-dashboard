.class public abstract Lazy;
.super Lbdn;
.source "MusicAlbumOperationBase.java"


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

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lbdn;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazy;->c:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method

.method static synthetic a(Lazy;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lazy;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lazy;Ljava/util/HashMap;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lazy;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lazy;Ljava/util/HashSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lazy;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lazy;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 152
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance p1, Lasj$l;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lasj$l;-><init>(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lazy;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lazy;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lazy;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lazy;->g(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCollectedId: == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbumOperationBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Lasj$l;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lasj$l;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCollectedId: == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbumOperationBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    new-instance v0, Lasj$l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lasj$l;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 182
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lazy;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;"
        }
    .end annotation
.end method

.method public a(IJLorg/greenrobot/greendao/Property;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lazy;->g()I

    move-result p4

    invoke-virtual {p0, p4}, Lazy;->a(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x4

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    .line 309
    iget-object v4, p0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 310
    invoke-virtual {p0}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    invoke-virtual {v5, p4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 311
    invoke-virtual {p0}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v1, v3

    .line 312
    invoke-virtual {p0}, Lazy;->f()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v1, v2

    .line 310
    invoke-virtual {v4, p4, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 312
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array p2, v2, [Lorg/greenrobot/greendao/Property;

    .line 313
    invoke-virtual {p0}, Lazy;->f()Lorg/greenrobot/greendao/Property;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 316
    invoke-virtual {p0}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v4

    invoke-virtual {v4, p4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 317
    invoke-virtual {p0}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v1, v3

    .line 318
    invoke-virtual {p0}, Lazy;->f()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v1, v2

    .line 316
    invoke-virtual {p1, p4, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array p2, v2, [Lorg/greenrobot/greendao/Property;

    .line 319
    invoke-virtual {p0}, Lazy;->f()Lorg/greenrobot/greendao/Property;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 321
    :goto_0
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 322
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 324
    invoke-virtual {p0, p3}, Lazy;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 204
    new-instance v0, Lazy$3;

    invoke-direct {v0, p0, p1, p2}, Lazy$3;-><init>(Lazy;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 57
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->g()Z

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCached:isMusicBinded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicAlbumOperationBase"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lazy;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lazy;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v0, Lazy$1;

    invoke-direct {v0, p0, p1}, Lazy$1;-><init>(Lazy;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lazy;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 87
    new-instance v6, Lazy$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lazy$2;-><init>(Lazy;Ljava/lang/String;Ljava/util/List;ZLjava/util/HashSet;)V

    invoke-static {v6}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lazy;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lazy;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Lazy$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lazy$4;-><init>(Lazy;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Ljava/lang/String;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 281
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 283
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 289
    iget-object v0, p0, Lazy;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 293
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract c()Lorg/greenrobot/greendao/Property;
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "col_album_hash_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract e()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract f()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract g()I
.end method

.method public h()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public i()J
    .locals 5

    .line 298
    invoke-virtual {p0}, Lazy;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lazy;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 301
    invoke-virtual {p0}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 300
    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()V
    .locals 2

    const-string v0, "MusicAlbumOperationBase"

    const-string v1, "deleteAll: =="

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lazy;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lazy;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 341
    iget-object v1, p0, Lazy;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v0, p0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 344
    new-instance v0, Lbfh$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbfh$a;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 342
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
