.class public Lbar;
.super Lazv;
.source "KugouLocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazv<",
        "Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;",
        "Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lazv;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbar;
    .locals 1

    .line 28
    sget-object v0, Lbar$a;->a:Lbar;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;
    .locals 3

    .line 61
    iget-object v0, p0, Lbar;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 62
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;-><init>()V

    .line 73
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;->copyTo(Lcom/xiaopeng/musicradio/bean/db/LocalLove;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;

    invoke-virtual {p0, p1}, Lbar;->a(Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object p1

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
            "Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lbar;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

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

    const/4 v0, 0x4

    return v0
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbar;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lbae;
    .locals 1

    .line 84
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 94
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 6

    .line 44
    iget-object v0, p0, Lbar;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;

    .line 48
    invoke-virtual {p0}, Lbar;->c()Lbae;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/KugouLocalLove;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lbae;->a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {p0}, Lbar;->c()Lbae;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbae;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 51
    new-instance v3, Lasj$r;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lasj$r;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lbar;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->deleteInTx(Ljava/lang/Iterable;)V

    :cond_2
    return-void
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
