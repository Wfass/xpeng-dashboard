.class Lazy$2;
.super Ljava/lang/Object;
.source "MusicAlbumOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/HashSet;

.field final synthetic e:Lazy;


# direct methods
.method constructor <init>(Lazy;Ljava/lang/String;Ljava/util/List;ZLjava/util/HashSet;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lazy$2;->e:Lazy;

    iput-object p2, p0, Lazy$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lazy$2;->b:Ljava/util/List;

    iput-boolean p4, p0, Lazy$2;->c:Z

    iput-object p5, p0, Lazy$2;->d:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 90
    iget-object v0, p0, Lazy$2;->e:Lazy;

    iget-object v1, p0, Lazy$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lazy$2;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicAlbumOperationBase"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Lbfh$a;

    iget-boolean v1, p0, Lazy$2;->c:Z

    invoke-direct {v0, v4, v1}, Lbfh$a;-><init>(IZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCollectedList:TYPE_NO_UPDATED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lazy$2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lazy$2;->e:Lazy;

    iget-object v1, v1, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    iget-object v5, p0, Lazy$2;->e:Lazy;

    .line 100
    invoke-virtual {v5}, Lazy;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    iget-object v6, p0, Lazy$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    iget-object v5, p0, Lazy$2;->e:Lazy;

    .line 101
    invoke-virtual {v5}, Lazy;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    iget-object v5, p0, Lazy$2;->e:Lazy;

    .line 102
    invoke-virtual {v5}, Lazy;->e()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v5, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 105
    iget-object v1, p0, Lazy$2;->e:Lazy;

    iget-object v1, v1, Lazy;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->detachAll()V

    .line 106
    iget-object v1, p0, Lazy$2;->e:Lazy;

    iget-object v4, p0, Lazy$2;->b:Ljava/util/List;

    invoke-virtual {v1, v4}, Lazy;->a(Ljava/util/List;)V

    .line 107
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lazy$2;->e:Lazy;

    iget-object v1, p0, Lazy$2;->d:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lazy;->a(Lazy;Ljava/util/HashSet;)V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    iget-object v1, p0, Lazy$2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 112
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lazy$2;->e:Lazy;

    invoke-static {v1, v0}, Lazy;->a(Lazy;Ljava/util/HashMap;)V

    .line 116
    new-instance v0, Lbfh$a;

    invoke-direct {v0, v6}, Lbfh$a;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCollectedList:TYPE_UPDATED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lazy$2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
