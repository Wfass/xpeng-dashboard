.class public Lazx;
.super Lazy;
.source "MusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazy<",
        "Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lazy;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lazx;
    .locals 1

    .line 21
    sget-object v0, Lazx$a;->a:Lazx;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {p0, p1}, Lazx;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lazx;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lazx;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lazx;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao$Properties;->Append:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected f()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
