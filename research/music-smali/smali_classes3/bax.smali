.class public Lbax;
.super Lazv;
.source "NeteaseLocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbax$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazv<",
        "Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lazv;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbax;
    .locals 1

    .line 25
    sget-object v0, Lbax$a;->a:Lbax;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;-><init>()V

    .line 53
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->copyTo(Lcom/xiaopeng/musicradio/bean/db/LocalLove;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;

    invoke-virtual {p0, p1}, Lbax;->a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;
    .locals 3

    .line 41
    iget-object v0, p0, Lbax;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 42
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;

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
            "Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lbax;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

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

    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lbax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lbae;
    .locals 1

    .line 64
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 69
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    return-object v0
.end method
