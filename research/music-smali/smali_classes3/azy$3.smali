.class Lazy$3;
.super Ljava/lang/Object;
.source "MusicAlbumOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lazy;


# direct methods
.method constructor <init>(Lazy;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lazy$3;->c:Lazy;

    iput-object p2, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iput-object p3, p0, Lazy$3;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 207
    iget-object v0, p0, Lazy$3;->c:Lazy;

    iget-object v0, v0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lazy$3;->c:Lazy;

    .line 208
    invoke-virtual {v1}, Lazy;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    iget-object v2, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    iget-object v3, p0, Lazy$3;->c:Lazy;

    .line 209
    invoke-virtual {v3}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    iget-object v4, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lazy$3;->c:Lazy;

    .line 210
    invoke-virtual {v3}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    iget-object v4, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 208
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iget-object v2, p0, Lazy$3;->c:Lazy;

    invoke-virtual {v2, v0}, Lazy;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 217
    :goto_0
    iget-object v0, p0, Lazy$3;->c:Lazy;

    iget-object v1, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v0, v1}, Lazy;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V

    .line 218
    iget-object v0, p0, Lazy$3;->c:Lazy;

    iget-object v1, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazy;->a(Lazy;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lazy$3;->c:Lazy;

    iget-object v1, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lazy$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lazy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lazy$3;->b:Landroidx/lifecycle/r;

    if-eqz v0, :cond_1

    .line 221
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
