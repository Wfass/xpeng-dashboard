.class public Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
.super Ljava/lang/Object;
.source "ReadLoveInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private albumId:J

.field private albumName:Ljava/lang/String;

.field private append:Z

.field private artist:Ljava/lang/String;

.field public artistId:J

.field private authorized:Z

.field private categoryName:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private isBipartite:Z

.field private largeLogo:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private mediumLogo:Ljava/lang/String;

.field private paymentType:I

.field private playCount:J

.field private shortIntro:Ljava/lang/String;

.field private ts:J

.field private uid:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    .line 20
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    const-string v2, ""

    .line 22
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    .line 23
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    .line 25
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V
    .locals 4

    move-object v0, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    .line 20
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    const-string v3, ""

    .line 22
    iput-object v3, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    .line 23
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    .line 25
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    move-wide v1, p1

    .line 49
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    move-object v1, p3

    .line 50
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumName:Ljava/lang/String;

    move-wide v1, p4

    .line 51
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    move-object v1, p6

    .line 52
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artist:Ljava/lang/String;

    move-object v1, p7

    .line 53
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    move-wide v1, p8

    .line 54
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    move-object v1, p10

    .line 55
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->logo:Ljava/lang/String;

    move-wide v1, p11

    .line 56
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    move-object/from16 v1, p13

    .line 57
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->largeLogo:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 58
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->mediumLogo:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 59
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->shortIntro:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 60
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->intro:Ljava/lang/String;

    move-wide/from16 v1, p17

    .line 61
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->playCount:J

    move-object/from16 v1, p19

    .line 62
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->categoryName:Ljava/lang/String;

    move/from16 v1, p20

    .line 63
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->paymentType:I

    move/from16 v1, p21

    .line 64
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->authorized:Z

    move/from16 v1, p22

    .line 65
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->append:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 3

    .line 249
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;-><init>()V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtistId(J)V

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtist(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUid(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setTs(J)V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUpdateTime(J)V

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setShortIntro(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setIntro(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPlayCount(J)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setCategoryName(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPaymentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPaymentType(I)V

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAuthorized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAuthorized(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAppend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAppend(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppend()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->append:Z

    return v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    return-wide v0
.end method

.method public getAuthorized()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->authorized:Z

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->largeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->paymentType:I

    return v0
.end method

.method public getPlayCount()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->playCount:J

    return-wide v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    return-wide v0
.end method

.method public isBipartite()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->isBipartite:Z

    return v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->append:Z

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->authorized:Z

    return-void
.end method

.method public setBipartite(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->isBipartite:Z

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->paymentType:I

    return-void
.end method

.method public setPlayCount(J)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->playCount:J

    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->shortIntro:Ljava/lang/String;

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadLoveInfo{albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", albumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artistId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->ts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", largeLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->largeLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediumLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->mediumLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shortIntro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->shortIntro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", intro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->intro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->playCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->paymentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->authorized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
