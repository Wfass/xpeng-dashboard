.class public Lbik;
.super Lbio;
.source "KugouMusicPlayHandler.java"


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lbio;-><init>(Laqt;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 5

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSaveInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " matchBean = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KugouMusicPlayHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object p3

    .line 70
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setVersion(I)V

    .line 72
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 76
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 80
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 81
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 82
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 84
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 85
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 86
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 87
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 89
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 90
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSourceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFrom(I)V

    .line 93
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getOriginId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lbaq;->a()Lbaq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p3, v2}, Lbaq;->a(Ljava/util/List;Ljava/util/List;Z)V

    if-eqz p2, :cond_2

    .line 108
    invoke-virtual {p0}, Lbik;->h()Lbae;

    move-result-object p3

    invoke-virtual {p3, p2}, Lbae;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 109
    invoke-virtual {p0}, Lbik;->h()Lbae;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbae;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->L()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableCode()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isTryPlayable()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 56
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    const/16 p2, 0x3c

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 59
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    const/4 p2, -0x1

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_sp_vip_change"

    return-object v0
.end method

.method protected d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbik;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    const/16 v0, 0x3c

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    const/4 v0, -0x1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 3

    .line 150
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Last;->F()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 152
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQuality: forceQuality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KugouMusicPlayHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQuality: forceQuality = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 157
    :cond_1
    invoke-super {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    return p1
.end method

.method protected f()Lbci;
    .locals 1

    .line 49
    invoke-static {}, Lbch;->a()Lbch;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 132
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 134
    invoke-interface {v0, v1}, Lbsi;->isXpVip(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lbae;
    .locals 1

    .line 141
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouMusicPlayHandler"

    return-object v0
.end method
