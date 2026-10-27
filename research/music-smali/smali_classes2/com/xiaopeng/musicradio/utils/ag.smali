.class public Lcom/xiaopeng/musicradio/utils/ag;
.super Ljava/lang/Object;
.source "InfoTransferUtil.java"


# static fields
.field private static a:Lbsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lbsc;

    invoke-direct {v0}, Lbsc;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/ag;->a:Lbsb;

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 1

    .line 346
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ag;->a:Lbsb;

    invoke-interface {v0, p0, p1}, Lbsb;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 3

    .line 414
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    const/4 v1, 0x4

    .line 416
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 417
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDissExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDissExtraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 329
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ag;->a:Lbsb;

    invoke-interface {v0, p0}, Lbsb;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanFold(Z)V

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 177
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 178
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 184
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    const/16 v0, 0x32

    if-eq p2, v0, :cond_4

    const/16 v0, 0x14

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 189
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x2

    .line 187
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 191
    :goto_2
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 193
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 194
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 200
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 201
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 202
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 203
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 206
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 207
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 208
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 210
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 98
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbea;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    const/16 p1, 0x32

    .line 104
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    const/4 p1, 0x2

    .line 105
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 106
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbub$a;->player_music_love:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongExtraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongExtraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 137
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ag;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 257
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 262
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 267
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    const/16 v1, 0x28

    .line 269
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 270
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 271
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanFold(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 60
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 63
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHttpCache(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 3

    .line 389
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    .line 390
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheTime(J)V

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCreateTime()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 398
    :goto_0
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setDeleted(Z)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 449
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ag;->a:Lbsb;

    invoke-interface {v0, p0}, Lbsb;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 381
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 244
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 86
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 152
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 153
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;
    .locals 3

    .line 370
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setHash(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setUpdateTime(J)V

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setSong(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 290
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 295
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 300
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    const/16 v1, 0x14

    .line 301
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    const/4 v1, 0x2

    .line 302
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 303
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbub$a;->player_music_bt:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    return-object v0
.end method
