.class Lbqx$1;
.super Ljava/lang/Object;
.source "AudioLogoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqx;->a(Ljava/util/List;Lbqx$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbqx$a;

.field final synthetic d:Lbqx;


# direct methods
.method constructor <init>(Lbqx;Ljava/util/List;Ljava/util/List;Lbqx$a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lbqx$1;->d:Lbqx;

    iput-object p2, p0, Lbqx$1;->a:Ljava/util/List;

    iput-object p3, p0, Lbqx$1;->b:Ljava/util/List;

    iput-object p4, p0, Lbqx$1;->c:Lbqx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lbqx$1;->d:Lbqx;

    invoke-static {v0}, Lbqx;->a(Lbqx;)Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lbqx$1;->a:Ljava/util/List;

    .line 62
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lbqx$1;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    new-instance v0, Lbqx$1$1;

    invoke-direct {v0, p0}, Lbqx$1$1;-><init>(Lbqx$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
