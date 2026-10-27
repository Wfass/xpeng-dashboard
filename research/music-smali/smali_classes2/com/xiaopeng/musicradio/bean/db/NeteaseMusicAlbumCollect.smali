.class public Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;
.super Ljava/lang/Object;
.source "NeteaseMusicAlbumCollect.java"

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

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private songCount:I

.field private type:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJZJ)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->uid:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->id:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->logo:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->name:Ljava/lang/String;

    .line 68
    iput p6, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->songCount:I

    .line 69
    iput-object p7, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->description:Ljava/lang/String;

    .line 70
    iput p8, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->type:I

    .line 71
    iput-wide p9, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->createTime:J

    .line 72
    iput-boolean p11, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->append:Z

    .line 73
    iput-wide p12, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheTime:J

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getSongCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setSongCount(I)V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getAppend()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setAppend(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public getAppend()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->append:Z

    return v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isAppend()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->append:Z

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->append:Z

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->createTime:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->name:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicAlbumCollect{cacheId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->songCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCollect;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
