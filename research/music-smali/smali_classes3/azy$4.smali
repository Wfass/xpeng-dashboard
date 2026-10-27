.class Lazy$4;
.super Ljava/lang/Object;
.source "MusicAlbumOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lazy;


# direct methods
.method constructor <init>(Lazy;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Ljava/lang/String;Landroidx/lifecycle/r;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lazy$4;->d:Lazy;

    iput-object p2, p0, Lazy$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iput-object p3, p0, Lazy$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lazy$4;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 232
    iget-object v0, p0, Lazy$4;->d:Lazy;

    iget-object v0, v0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lazy$4;->d:Lazy;

    .line 233
    invoke-virtual {v1}, Lazy;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    iget-object v2, p0, Lazy$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    iget-object v3, p0, Lazy$4;->d:Lazy;

    .line 234
    invoke-virtual {v3}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lazy$4;->d:Lazy;

    .line 235
    invoke-virtual {v3}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    iget-object v4, p0, Lazy$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 233
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 239
    iget-object v5, p0, Lazy$4;->d:Lazy;

    invoke-virtual {v5, v3}, Lazy;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lazy$4;->d:Lazy;

    invoke-virtual {v0, v1}, Lazy;->b(Ljava/util/List;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lazy$4;->d:Lazy;

    iget-object v1, p0, Lazy$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazy;->b(Lazy;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lazy$4;->d:Lazy;

    iget-object v1, p0, Lazy$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazy;->c(Lazy;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lazy$4;->c:Landroidx/lifecycle/r;

    if-eqz v0, :cond_2

    .line 248
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
