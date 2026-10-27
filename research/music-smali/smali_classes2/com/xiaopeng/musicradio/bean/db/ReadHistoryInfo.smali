.class public Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
.super Ljava/lang/Object;
.source "ReadHistoryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private albumId:J

.field private albumName:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artistId:J

.field private authorized:Z

.field private categoryName:Ljava/lang/String;

.field private channelId:J

.field private duration:J

.field private intro:Ljava/lang/String;

.field private largeLogo:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private mediumLogo:Ljava/lang/String;

.field private orderNum:I

.field private paymentType:I

.field private playCount:J

.field private seek:J

.field private shortIntro:Ljava/lang/String;

.field private sort:Ljava/lang/String;

.field private trackAuthorized:Z

.field private trackId:J

.field private trackPaymentType:I

.field private trackTitle:Ljava/lang/String;

.field private ts:J

.field private uid:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    .line 24
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artistId:J

    .line 29
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    .line 31
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    const-string v2, ""

    .line 33
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->uid:Ljava/lang/String;

    .line 34
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->updateTime:J

    .line 35
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->ts:J

    const-string v0, "timeAsc"

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->sort:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->orderNum:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZIZJ)V
    .locals 4

    move-object v0, p0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    .line 24
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artistId:J

    .line 29
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    .line 31
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    const-string v3, ""

    .line 33
    iput-object v3, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->uid:Ljava/lang/String;

    .line 34
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->updateTime:J

    .line 35
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->ts:J

    const-string v1, "timeAsc"

    .line 36
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->sort:Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->orderNum:I

    move-wide v1, p1

    .line 58
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    move-object v1, p3

    .line 59
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumName:Ljava/lang/String;

    move-wide v1, p4

    .line 60
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artistId:J

    move-object v1, p6

    .line 61
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artist:Ljava/lang/String;

    move-object v1, p7

    .line 62
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->logo:Ljava/lang/String;

    move-object v1, p8

    .line 63
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->largeLogo:Ljava/lang/String;

    move-object v1, p9

    .line 64
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->mediumLogo:Ljava/lang/String;

    move-wide v1, p10

    .line 65
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    move-object/from16 v1, p12

    .line 66
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackTitle:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 67
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    move-wide/from16 v1, p15

    .line 68
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->duration:J

    move-object/from16 v1, p17

    .line 69
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->uid:Ljava/lang/String;

    move-wide/from16 v1, p18

    .line 70
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->updateTime:J

    move-wide/from16 v1, p20

    .line 71
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->ts:J

    move-object/from16 v1, p22

    .line 72
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->sort:Ljava/lang/String;

    move/from16 v1, p23

    .line 73
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->orderNum:I

    move-object/from16 v1, p24

    .line 74
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->shortIntro:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 75
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->intro:Ljava/lang/String;

    move-wide/from16 v1, p26

    .line 76
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->playCount:J

    move-object/from16 v1, p28

    .line 77
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->categoryName:Ljava/lang/String;

    move/from16 v1, p29

    .line 78
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->paymentType:I

    move/from16 v1, p30

    .line 79
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->authorized:Z

    move/from16 v1, p31

    .line 80
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackPaymentType:I

    move/from16 v1, p32

    .line 81
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackAuthorized:Z

    move-wide/from16 v1, p33

    .line 82
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->channelId:J

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artistId:J

    return-wide v0
.end method

.method public getAuthorized()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->authorized:Z

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->channelId:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->duration:J

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->largeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->orderNum:I

    return v0
.end method

.method public getPaymentType()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->paymentType:I

    return v0
.end method

.method public getPlayCount()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->playCount:J

    return-wide v0
.end method

.method public getPlayingPercent()Ljava/lang/String;
    .locals 8

    .line 247
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-wide/16 v4, 0x64

    .line 250
    iget-wide v6, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    mul-long/2addr v6, v4

    div-long/2addr v6, v0

    cmp-long v0, v6, v2

    if-gtz v0, :cond_1

    const-wide/16 v6, 0x1

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeek()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    return-wide v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackAuthorized()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackAuthorized:Z

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    return-wide v0
.end method

.method public getTrackPaymentType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackPaymentType:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->updateTime:J

    return-wide v0
.end method

.method public isAuthorized()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->authorized:Z

    return v0
.end method

.method public isTrackAuthorized()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackAuthorized:Z

    return v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(J)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->artistId:J

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->authorized:Z

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(J)V
    .locals 0

    .line 263
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->channelId:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->duration:J

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->orderNum:I

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->paymentType:I

    return-void
.end method

.method public setPlayCount(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->playCount:J

    return-void
.end method

.method public setSeek(J)V
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->seek:J

    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->shortIntro:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->sort:Ljava/lang/String;

    return-void
.end method

.method public setTrackAuthorized(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackAuthorized:Z

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    return-void
.end method

.method public setTrackPaymentType(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackPaymentType:I

    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackTitle:Ljava/lang/String;

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 221
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadHistoryInfo{albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->albumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->trackId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
