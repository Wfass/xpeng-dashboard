.class public Lbad;
.super Lbae;
.source "MusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbae<",
        "Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lbae;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbad;
    .locals 1

    .line 24
    sget-object v0, Lbad$a;->a:Lbad;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lbad;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 48
    iget-object v0, p0, Lbad;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->SearchSongText:Lorg/greenrobot/greendao/Property;

    .line 49
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 54
    iget-object v0, p0, Lbad;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->Song:Lorg/greenrobot/greendao/Property;

    .line 55
    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->Singer:Lorg/greenrobot/greendao/Property;

    .line 56
    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 55
    invoke-virtual {v0, p2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1
.end method

.method protected a(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 71
    iget-object v1, p0, Lbad;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lbad;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a(IJ)V
    .locals 3

    .line 61
    iget-object v0, p0, Lbad;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao$Properties;->Creatime:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lbad;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lbad;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lbci;
    .locals 1

    .line 84
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lbad;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method
