.class public Lbif;
.super Ljava/lang/Object;
.source "InfoTransferUtil.java"


# static fields
.field private static a:Lbig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lbih;

    invoke-direct {v0}, Lbih;-><init>()V

    sput-object v0, Lbif;->a:Lbig;

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 3

    .line 415
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    const/4 v1, 0x4

    .line 417
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDissExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDissExtraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 61
    invoke-static {v0, p0}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 64
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHttpCache(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
