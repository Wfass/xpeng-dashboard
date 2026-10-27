.class public Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;
.super Ljava/lang/Object;
.source "MusicUrlInfo.java"


# instance fields
.field private hash:Ljava/lang/String;

.field private song:Ljava/lang/String;

.field private updateTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->url:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->updateTime:J

    .line 32
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->song:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->updateTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->updateTime:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicUrlInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
