.class public Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;
.super Ljava/lang/Object;
.source "XpengTrackInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private albumId:J

.field private artist:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;

.field private canDownload:Z

.field private duration:J

.field private free:Z

.field private id:J

.field private isNew:Z

.field private largeLogo:Ljava/lang/String;

.field private listenFileSize:J

.field private listenUrl:Ljava/lang/String;

.field private mediumLogo:Ljava/lang/String;

.field private orderNum:J

.field private originAlbumId:J

.field private smallLogo:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateTime:J

.field private vipFirstStatus:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->albumId:J

    return-wide v0
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->duration:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->id:J

    return-wide v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->largeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getListenFileSize()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenFileSize:J

    return-wide v0
.end method

.method public getListenUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->orderNum:J

    return-wide v0
.end method

.method public getOriginAlbumId()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->originAlbumId:J

    return-wide v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->updateTime:J

    return-wide v0
.end method

.method public getVipFirstStatus()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->vipFirstStatus:J

    return-wide v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->canDownload:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->free:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->isNew:Z

    return v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->albumId:J

    return-void
.end method

.method public setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;

    return-void
.end method

.method public setCanDownload(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->canDownload:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->duration:J

    return-void
.end method

.method public setFree(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->free:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->id:J

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public setListenFileSize(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenFileSize:J

    return-void
.end method

.method public setListenUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenUrl:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->isNew:Z

    return-void
.end method

.method public setOrderNum(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->orderNum:J

    return-void
.end method

.method public setOriginAlbumId(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->originAlbumId:J

    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->smallLogo:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->updateTime:J

    return-void
.end method

.method public setVipFirstStatus(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->vipFirstStatus:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XpengTrackInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->albumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", originAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->originAlbumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listenFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->orderNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vipFirstStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->vipFirstStatus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfoArtist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listenUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->listenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", smallLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->smallLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediumLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->mediumLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", largeLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->largeLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", canDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->canDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->isNew:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XpengTrackInfo;->free:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
