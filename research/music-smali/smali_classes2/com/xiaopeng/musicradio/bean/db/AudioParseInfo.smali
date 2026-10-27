.class public Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;
.super Ljava/lang/Object;
.source "AudioParseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private audio:Z

.field private duration:J

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private song:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->id:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->path:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->song:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->singer:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->albumTitle:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->logo:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->audio:Z

    .line 43
    iput-wide p8, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->duration:J

    return-void
.end method


# virtual methods
.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAudio()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->audio:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public isAudio()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->audio:Z

    return v0
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method public setAudio(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->audio:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->duration:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioParseInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", song=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", albumTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->audio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
