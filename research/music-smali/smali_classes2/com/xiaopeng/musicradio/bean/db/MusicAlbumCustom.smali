.class public Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
.super Ljava/lang/Object;
.source "MusicAlbumCustom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3a6c76894df36469L


# instance fields
.field private cacheId:Ljava/lang/Long;

.field private cacheTime:J

.field private createTime:J

.field public dissExtraId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheId:Ljava/lang/Long;

    .line 35
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->uid:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->id:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->logo:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->name:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->dissExtraId:Ljava/lang/String;

    .line 40
    iput-wide p7, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->createTime:J

    .line 41
    iput-wide p9, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheTime:J

    return-void
.end method


# virtual methods
.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->createTime:J

    return-wide v0
.end method

.method public getDissExtraId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->dissExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->createTime:J

    return-void
.end method

.method public setDissExtraId(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->dissExtraId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->name:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicAlbumCustom{cacheId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->cacheId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
