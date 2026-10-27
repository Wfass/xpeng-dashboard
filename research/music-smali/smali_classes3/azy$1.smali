.class Lazy$1;
.super Ljava/lang/Object;
.source "MusicAlbumOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lazy;


# direct methods
.method constructor <init>(Lazy;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lazy$1;->b:Lazy;

    iput-object p2, p0, Lazy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    iget-object v0, p0, Lazy$1;->b:Lazy;

    iget-object v0, v0, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lazy$1;->b:Lazy;

    .line 67
    invoke-virtual {v1}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    iget-object v3, p0, Lazy$1;->b:Lazy;

    .line 68
    invoke-virtual {v3}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    iget-object v4, p0, Lazy$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lazy$1;->b:Lazy;

    invoke-virtual {v3, v2}, Lazy;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 77
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, p0, Lazy$1;->b:Lazy;

    invoke-static {v1, v0}, Lazy;->a(Lazy;Ljava/util/HashSet;)V

    .line 81
    iget-object v0, p0, Lazy$1;->b:Lazy;

    invoke-static {v0, v2}, Lazy;->a(Lazy;Ljava/util/HashMap;)V

    return-void
.end method
