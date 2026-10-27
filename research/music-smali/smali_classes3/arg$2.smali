.class Larg$2;
.super Ljava/lang/Object;
.source "XpCacheOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larg;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larg;


# direct methods
.method constructor <init>(Larg;)V
    .locals 0

    .line 60
    iput-object p1, p0, Larg$2;->a:Larg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Larg$2;->a:Larg;

    invoke-static {v0}, Larg;->a(Larg;)Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao$Properties;->Key:Lorg/greenrobot/greendao/Property;

    const-string v2, "%music_data_%"

    .line 64
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method
