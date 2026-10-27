.class public Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
.super Ljava/lang/Object;
.source "RdAlbumBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean$SORT;
    }
.end annotation


# static fields
.field public static final SORT_ASC:I = 0x0

.field public static final SORT_DESC:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private artist:Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

.field private authorized:Z

.field private canDownload:Z

.field private categoryName:Ljava/lang/String;

.field private channelId:J

.field private displayHistoryInfo:I

.field private fromSource:Ljava/lang/String;

.field private id:J

.field private intro:Ljava/lang/String;

.field private largeLogo:Ljava/lang/String;

.field private transient mHighlightTitle:Landroid/text/SpannableStringBuilder;

.field private mediumLogo:Ljava/lang/String;

.field private paymentType:I

.field private playCount:J

.field private rdTag:Ljava/lang/String;

.field private shortIntro:Ljava/lang/String;

.field private smallLogo:Ljava/lang/String;

.field private sort:I

.field private status:I

.field private subscribe:Z

.field private title:Ljava/lang/String;

.field private trackCount:J

.field private trackInfo:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->sort:I

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->fromSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->status:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 270
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    return-object v0
.end method

.method public getBestSizeLogo()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->largeLogo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->largeLogo:Ljava/lang/String;

    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mediumLogo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mediumLogo:Ljava/lang/String;

    return-object v0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->channelId:J

    return-wide v0
.end method

.method public getDisplayHistoryInfo()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->displayHistoryInfo:I

    return v0
.end method

.method public getFromSource()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->fromSource:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightTitle()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mHighlightTitle:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->id:J

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->largeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->paymentType:I

    return v0
.end method

.method public getPlayCount()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->playCount:J

    return-wide v0
.end method

.method public getRdTag()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->rdTag:Ljava/lang/String;

    return-object v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->sort:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackCount:J

    return-wide v0
.end method

.method public getTrackInfo()Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackInfo:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->updateTime:J

    return-wide v0
.end method

.method public isAuthorized()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->authorized:Z

    return v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->canDownload:Z

    return v0
.end method

.method public isSubscribe()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->subscribe:Z

    return v0
.end method

.method public setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->authorized:Z

    return-void
.end method

.method public setCanDownload(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->canDownload:Z

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(J)V
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->channelId:J

    return-void
.end method

.method public setDisplayHistoryInfo(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->displayHistoryInfo:I

    return-void
.end method

.method public setFromSource(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->fromSource:Ljava/lang/String;

    return-void
.end method

.method public setHighlightTitle(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mHighlightTitle:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->id:J

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->paymentType:I

    return-void
.end method

.method public setPlayCount(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->playCount:J

    return-void
.end method

.method public setRdTag(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->rdTag:Ljava/lang/String;

    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->shortIntro:Ljava/lang/String;

    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->smallLogo:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean$SORT;
        .end annotation
    .end param

    .line 203
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->sort:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->status:I

    return-void
.end method

.method public setSubscribe(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->subscribe:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTrackCount(J)V
    .locals 0

    .line 195
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackCount:J

    return-void
.end method

.method public setTrackInfo(Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackInfo:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RdAlbumBean{artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackInfo:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->canDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", largeLogo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->largeLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediumLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->mediumLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", smallLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->smallLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", intro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->intro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shortIntro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->shortIntro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", playCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->playCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", trackCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->trackCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sort="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->sort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayHistoryInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->displayHistoryInfo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->fromSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rdTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->rdTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
