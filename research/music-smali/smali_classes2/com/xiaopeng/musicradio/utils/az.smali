.class public Lcom/xiaopeng/musicradio/utils/az;
.super Ljava/lang/Object;
.source "ProgramInfoTransferUtil.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
        .end annotation
    .end param

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setIntro(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setPlayCount(J)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setShortIntro(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setChannelId(J)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAuthorized(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setPaymentType(I)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackAuthorized(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackPaymentType(I)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumId(J)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumId(J)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setArtistId(J)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setArtist(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTs(J)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLogo(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLargeLogo(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLogo(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLargeLogo(Ljava/lang/String;)V

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackId(J)V

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackTitle(Ljava/lang/String;)V

    int-to-long v1, p1

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setSeek(J)V

    .line 153
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setUid(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setUpdateTime(J)V

    .line 155
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setSort(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setDuration(J)V

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setOrderNum(I)V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setPaymentType(I)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAuthorized(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackPaymentType(I)V

    .line 161
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackAuthorized(Z)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 164
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackAuthorized(Z)V

    :goto_2
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 5

    .line 97
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtistId(J)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtist(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setTs(J)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUpdateTime(J)V

    .line 111
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUid(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setShortIntro(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setIntro(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPlayCount(J)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPaymentType(I)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAuthorized(Z)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;J)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 1

    .line 261
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;-><init>()V

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setTs(J)V

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtist(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getUpdateTime()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUpdateTime(J)V

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getId()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtistId(J)V

    .line 271
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUid(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPlayCount(J)V

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setShortIntro(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setIntro(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAuthorized(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPaymentType(I)V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setCategoryName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setIntro(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getFromSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setFromSource(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPlayCount(J)V

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setShortIntro(Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumLogo(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTrackId(J)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setSmallLogo(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setMediumLogo(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setLargeLogo(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistId(J)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getListenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setListenUrl(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setDuration(I)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setUpdateTime(J)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setCreateTime(J)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumId(J)V

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOrderNum(I)V

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setCategoryName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumPaymentType(I)V

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumAuthorized(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPaymentType(I)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->isAuthorized()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTrackId(J)V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTitle(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setSmallLogo(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setMediumLogo(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setLargeLogo(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistId(J)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getListenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setListenUrl(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setDuration(I)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setUpdateTime(J)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setCreateTime(J)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumId(J)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOrderNum(I)V

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPaymentType(I)V

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumId(J)V

    .line 85
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getFromSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setFromSource(Ljava/lang/String;)V

    .line 86
    invoke-static {p2}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumLogo(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setShortIntro(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPlayCount(J)V

    .line 89
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setIntro(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumPaymentType(I)V

    .line 91
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumAuthorized(Z)V

    :cond_1
    return-object p1
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;-><init>()V

    .line 334
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTrackId(J)V

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setTitle(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setSmallLogo(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setMediumLogo(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setLargeLogo(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistId(J)V

    .line 340
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getListenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setListenUrl(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setArtistName(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setDuration(I)V

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setUpdateTime(J)V

    .line 345
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getOriginAlbumId()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOriginalAlbumId(J)V

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumName(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getOrderNum()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOrderNum(I)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getMediumLogo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAlbumLogo(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setChannelId(I)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;II)Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;
    .locals 3

    .line 251
    new-instance v0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;-><init>()V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->setAlbumId(J)V

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->setTrackId(J)V

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->setChannelId(I)V

    .line 255
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->setTotalPage(I)V

    int-to-long p0, p1

    .line 256
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->setSeek(J)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setUpdateTime(J)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getChannelId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setChannelId(J)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setLargeLogo(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setMediumLogo(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setSmallLogo(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setId(J)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;)V

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setIntro(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setShortIntro(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPlayCount(J)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setCategoryName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPaymentType(I)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->isAuthorized()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setAuthorized(Z)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 4

    .line 229
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setUpdateTime(J)V

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setLargeLogo(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setMediumLogo(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setSmallLogo(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setId(J)V

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPlayCount(J)V

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setShortIntro(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setIntro(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setAuthorized(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPaymentType(I)V

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setCategoryName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 3

    .line 282
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;-><init>()V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setTs(J)V

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtist(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUpdateTime(J)V

    .line 289
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtistId(J)V

    .line 292
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUid(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setIntro(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setShortIntro(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPlayCount(J)V

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPaymentType(I)V

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->isAuthorized()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAuthorized(Z)V

    return-object v0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 199
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setUpdateTime(J)V

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setSmallLogo(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setMediumLogo(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setLargeLogo(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setSmallLogo(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setMediumLogo(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setLargeLogo(Ljava/lang/String;)V

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setId(J)V

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->setName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;)V

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPlayCount(J)V

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setShortIntro(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setIntro(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setAuthorized(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setPaymentType(I)V

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setSubscribe(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getFromSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setCategoryName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lbls;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Lbls;

    invoke-direct {v0}, Lbls;-><init>()V

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbls;->e(J)V

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->d(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbls;->c(J)V

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->l(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->c(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lbls;->b(I)V

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getFromSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->b(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->f(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->j(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->k(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->g(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lbls;->c(I)V

    .line 318
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbls;->a(J)V

    .line 319
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lbls;->a(I)V

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->e(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->i(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->h(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbls;->b(J)V

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbls;->a(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbls;->d(J)V

    return-object v0
.end method
