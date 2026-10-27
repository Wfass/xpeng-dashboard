.class public Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "FMAlbumTracksBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private albumId:J

.field private artist:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

.field private authorized:Z

.field private canDownload:Z

.field private createTime:J

.field private duration:I

.field private id:I

.field private largeLogo:Ljava/lang/String;

.field private listenUrl:Ljava/lang/String;

.field private mediumLogo:Ljava/lang/String;

.field private orderNum:I

.field private paymentType:I

.field private smallLogo:Ljava/lang/String;

.field private subscribe:Z

.field private title:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->albumId:J

    return-wide v0
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->duration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->id:I

    return v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->largeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getListenUrl()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->listenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->orderNum:I

    return v0
.end method

.method public getPaymentType()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->paymentType:I

    return v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->updateTime:J

    return-wide v0
.end method

.method public isAuthorized()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->authorized:Z

    return v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->canDownload:Z

    return v0
.end method

.method public isSubscribe()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->subscribe:Z

    return v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 243
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->albumId:J

    return-void
.end method

.method public setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->authorized:Z

    return-void
.end method

.method public setCanDownload(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->canDownload:Z

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->duration:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->id:I

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public setListenUrl(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->listenUrl:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->orderNum:I

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->paymentType:I

    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->smallLogo:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->updateTime:J

    return-void
.end method
