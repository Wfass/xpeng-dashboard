.class Lbab$1;
.super Ljava/lang/Object;
.source "MusicCustomOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab;->a(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lbab;


# direct methods
.method constructor <init>(Lbab;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 112
    iput-object p1, p0, Lbab$1;->d:Lbab;

    iput-object p2, p0, Lbab$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbab$1;->b:Ljava/util/List;

    iput-boolean p4, p0, Lbab$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 115
    iget-object v0, p0, Lbab$1;->d:Lbab;

    iget-object v1, p0, Lbab$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lbab$1;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicCustomOperation"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save:TYPE_NO_UPDATED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbab$1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lbfh$i;

    iget-boolean v1, p0, Lbab$1;->c:Z

    invoke-direct {v0, v4, v1}, Lbfh$i;-><init>(IZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lbab$1;->d:Lbab;

    iget-object v1, v1, Lbab;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    iget-object v5, p0, Lbab$1;->d:Lbab;

    .line 125
    invoke-virtual {v5}, Lbab;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v5

    iget-object v6, p0, Lbab$1;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v5, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 128
    iget-object v1, p0, Lbab$1;->d:Lbab;

    iget-object v1, v1, Lbab;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->detachAll()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v4, p0, Lbab$1;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    .line 131
    iget-object v6, p0, Lbab$1;->d:Lbab;

    invoke-virtual {v6, v5}, Lbab;->c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v4, p0, Lbab$1;->d:Lbab;

    iget-object v4, v4, Lbab;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 134
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lbab$1;->d:Lbab;

    iget-object v1, p0, Lbab$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lbab;->a(Lbab;Ljava/util/List;)V

    .line 136
    new-instance v0, Lbfh$i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbfh$i;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save:TYPE_UPDATED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbab$1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
