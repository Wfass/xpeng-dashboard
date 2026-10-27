.class public Lbaa;
.super Lbab;
.source "MusicCustomOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab<",
        "Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lbab;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbaa;
    .locals 1

    .line 27
    sget-object v0, Lbaa$a;->a:Lbaa;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    invoke-virtual {p0, p1}, Lbaa;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object p1

    return-object p1
.end method

.method public a(IJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lbaa;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lbaa;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lbaa;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lbaa;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p0}, Lbaa;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array p2, v1, [Lorg/greenrobot/greendao/Property;

    .line 68
    invoke-virtual {p0}, Lbaa;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 0

    return-object p1
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected synthetic c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbaa;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 56
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
