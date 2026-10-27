.class public Lbat;
.super Lbab;
.source "KugouMusicCustomOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbat$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab<",
        "Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lbab;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbat;
    .locals 1

    .line 32
    sget-object v0, Lbat$a;->a:Lbat;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->copyFrom(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)V

    return-object v0
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;-><init>()V

    .line 45
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 0

    .line 21
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;

    invoke-virtual {p0, p1}, Lbat;->a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kugou_mobile_custom_hash_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 85
    invoke-virtual {p0}, Lbat;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lbat;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lbat;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lbat;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p0}, Lbat;->c()Lorg/greenrobot/greendao/Property;

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

    .line 88
    invoke-virtual {p0}, Lbat;->c()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;

    .line 92
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;-><init>()V

    .line 93
    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)V

    .line 94
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected synthetic c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lbat;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 71
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
