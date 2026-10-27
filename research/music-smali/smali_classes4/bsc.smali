.class public Lbsc;
.super Ljava/lang/Object;
.source "InfoTransferImpl.java"

# interfaces
.implements Lbsb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 3

    .line 15
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setHash(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSong(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 20
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setMusicFrom(I)V

    .line 21
    sget-object v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setData(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoNeed()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setInfoNeed(I)V

    .line 24
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setOldMusicFrom(I)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTs(J)V

    .line 28
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbea;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCanPlay()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCanPlay(Z)V

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setPlayTime(J)V

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setNeedVip(Z)V

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setFileList(Ljava/util/List;)V

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 37
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setListenUrlRefreshTime(J)V

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongPlayTime(I)V

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setVersion(I)V

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getInfoNeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoNeed(I)V

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setData(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    const-wide/16 v1, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setListenUrlRefreshTime(J)V

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 67
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v1

    invoke-virtual {v1}, Lbcj;->b()Lbci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setVersion(I)V

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 3

    .line 74
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheTime(J)V

    return-object v0
.end method
