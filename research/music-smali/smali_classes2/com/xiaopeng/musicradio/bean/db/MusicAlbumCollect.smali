.class public Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
.super Ljava/lang/Object;
.source "MusicAlbumCollect.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


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

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJZJLjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheId:Ljava/lang/Long;

    .line 66
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->uid:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->id:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->logo:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->name:Ljava/lang/String;

    .line 70
    iput p6, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->songCount:I

    .line 71
    iput-object p7, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->description:Ljava/lang/String;

    .line 72
    iput p8, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->type:I

    .line 73
    iput-wide p9, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->createTime:J

    .line 74
    iput-boolean p11, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->append:Z

    .line 75
    iput-wide p12, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheTime:J

    .line 76
    iput-object p14, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 3

    .line 218
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getSongCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setSongCount(I)V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getAppend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setAppend(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getSongCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setSongCount(I)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setType(I)V

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCreateTime(J)V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getAppend()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setAppend(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCacheTime(J)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    return-void
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getSongCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setSongCount(I)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setType(I)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setCreateTime(J)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getAppend()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setAppend(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setCacheTime(J)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public getAppend()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->append:Z

    return v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDissExtraId()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isAppend()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->append:Z

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->append:Z

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 173
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->createTime:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->description:Ljava/lang/String;

    return-void
.end method

.method public setDissExtraId(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->dissExtraId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->name:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicAlbumCollect{cacheId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->songCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
