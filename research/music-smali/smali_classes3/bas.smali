.class public Lbas;
.super Lazy;
.source "KugouMusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbas$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazy<",
        "Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Lazy;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 33
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/a;->F()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lazj;

    invoke-direct {v1}, Lazj;-><init>()V

    invoke-virtual {p1, v0, v1}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    return-void
.end method

.method public static a()Lbas;
    .locals 1

    .line 28
    sget-object v0, Lbas$a;->a:Lbas;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 72
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1}, Lbas;->a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

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

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 88
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;-><init>()V

    .line 89
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lbas;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;-><init>()V

    .line 80
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V

    .line 81
    iget-object p1, p0, Lbas;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->insertOrReplace(Ljava/lang/Object;)J

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

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 99
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;-><init>()V

    .line 100
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lbas;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;->Append:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected f()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
