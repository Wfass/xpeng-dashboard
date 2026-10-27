.class public Lazu;
.super Lazv;
.source "LocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazv<",
        "Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;",
        "Lcom/xiaopeng/musicradio/bean/db/LocalLove;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lazv;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lazu;
    .locals 1

    .line 22
    sget-object v0, Lazu$a;->a:Lazu;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/LocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    invoke-virtual {p0, p1}, Lazu;->a(Lcom/xiaopeng/musicradio/bean/db/LocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 3

    .line 38
    iget-object v0, p0, Lazu;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 39
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/LocalLove;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lazu;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lazu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lbae;
    .locals 1

    .line 56
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 61
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lbef;

    return-object v0
.end method
