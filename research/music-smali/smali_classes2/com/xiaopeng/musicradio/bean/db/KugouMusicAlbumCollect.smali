.class public Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;
.super Ljava/lang/Object;
.source "KugouMusicAlbumCollect.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_APP_CUSTOM:I = 0x2

.field public static final TYPE_APP_FAV:I = 0x3

.field public static final TYPE_MY_FAV:I = 0x4

.field public static final TYPE_PHONE_IMPORT:I = 0x1

.field public static final TYPE_TYPE_ERROR:I = -0x1

.field private static final serialVersionUID:J = -0x7ca267950f41422fL


# instance fields
.field private append:Z

.field private cacheId:Ljava/lang/Long;

.field private cacheTime:J

.field private createTime:J

.field private description:Ljava/lang/String;

.field private dissExtraId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private songCount:I

.field private type:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJZJLjava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    .line 65
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->uid:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->id:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->logo:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->name:Ljava/lang/String;

    .line 69
    iput p6, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->songCount:I

    .line 70
    iput-object p7, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->description:Ljava/lang/String;

    .line 71
    iput p8, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->type:I

    .line 72
    iput-wide p9, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->createTime:J

    .line 73
    iput-boolean p11, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->append:Z

    .line 74
    iput-wide p12, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheTime:J

    .line 75
    iput-object p14, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getSongCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setSongCount(I)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getAppend()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setAppend(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    return-void
.end method

.method public getAppend()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->append:Z

    return v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDissExtraId()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isAppend()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->append:Z

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->append:Z

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 173
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->createTime:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->description:Ljava/lang/String;

    return-void
.end method

.method public setDissExtraId(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->name:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicAlbumCollect{cacheId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->songCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
