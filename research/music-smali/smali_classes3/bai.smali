.class public Lbai;
.super Lbaj;
.source "MusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbaj<",
        "Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lbaj;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbai;
    .locals 1

    .line 27
    sget-object v0, Lbai$a;->a:Lbai;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lbai;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 69
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "listsign_recommend_music"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v2

    invoke-virtual {v2}, Lbac;->b()Lbab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbab;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 83
    :try_start_0
    iget-object p1, p0, Lbai;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;->updateInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicRadioOperation"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
