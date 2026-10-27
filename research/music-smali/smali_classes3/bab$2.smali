.class Lbab$2;
.super Ljava/lang/Object;
.source "MusicCustomOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbab;


# direct methods
.method constructor <init>(Lbab;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lbab$2;->b:Lbab;

    iput-object p2, p0, Lbab$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 199
    iget-object v0, p0, Lbab$2;->b:Lbab;

    iget-object v0, v0, Lbab;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lbab$2;->b:Lbab;

    .line 200
    invoke-virtual {v1}, Lbab;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    iget-object v2, p0, Lbab$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 205
    iget-object v3, p0, Lbab$2;->b:Lbab;

    invoke-virtual {v3, v2}, Lbab;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lbab$2;->b:Lbab;

    invoke-static {v0, v1}, Lbab;->a(Lbab;Ljava/util/List;)V

    return-void
.end method
