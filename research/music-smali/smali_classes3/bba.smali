.class public Lbba;
.super Lbae;
.source "NeteaseMusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbba$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbae<",
        "Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbae;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbba;
    .locals 1

    .line 28
    sget-object v0, Lbba$a;->a:Lbba;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 46
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1}, Lbba;->a(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->copyFrom(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 2

    .line 61
    iget-object v0, p0, Lbba;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->SearchSongText:Lorg/greenrobot/greendao/Property;

    .line 62
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 3

    .line 67
    iget-object v0, p0, Lbba;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->Song:Lorg/greenrobot/greendao/Property;

    .line 68
    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->Singer:Lorg/greenrobot/greendao/Property;

    .line 69
    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 68
    invoke-virtual {v0, p2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    return-object p1
.end method

.method protected a(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 84
    iget-object v1, p0, Lbba;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    iget-object p2, p0, Lbba;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a(IJ)V
    .locals 3

    .line 74
    iget-object v0, p0, Lbba;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;->Creatime:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbba;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lbci;
    .locals 1

    .line 97
    invoke-static {}, Lbck;->a()Lbck;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbba;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object p1

    return-object p1
.end method
