.class public Lbay;
.super Lazy;
.source "NeteaseMusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazy<",
        "Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lazy;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbay;
    .locals 1

    .line 25
    sget-object v0, Lbay$a;->a:Lbay;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 68
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;

    invoke-virtual {p0, p1}, Lbay;->a(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 84
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;-><init>()V

    .line 85
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)V

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lbay;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;-><init>()V

    .line 76
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)V

    .line 77
    iget-object p1, p0, Lbay;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 95
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;-><init>()V

    .line 96
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)V

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lbay;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao$Properties;->Append:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected f()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
