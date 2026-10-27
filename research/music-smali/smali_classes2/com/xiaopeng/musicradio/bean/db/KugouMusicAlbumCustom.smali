.class public Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;
.super Ljava/lang/Object;
.source "KugouMusicAlbumCustom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3a6c76894df36469L


# instance fields
.field private cacheId:Ljava/lang/Long;

.field private cacheTime:J

.field private createTime:J

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheId:Ljava/lang/Long;

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->uid:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->id:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->logo:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->name:Ljava/lang/String;

    .line 38
    iput-wide p6, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->createTime:J

    .line 39
    iput-wide p8, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheTime:J

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setCacheId(Ljava/lang/Long;)V

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setUid(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setLogo(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setCreateTime(J)V

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->setCacheTime(J)V

    return-void
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCacheId(Ljava/lang/Long;)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setUid(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setId(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setLogo(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCreateTime(J)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCacheTime(J)V

    return-void
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->createTime:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->name:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NeteaseMusicAlbumCustom{cacheId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->cacheId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCustom;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
