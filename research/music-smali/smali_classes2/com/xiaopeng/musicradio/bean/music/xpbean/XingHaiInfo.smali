.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;
.super Ljava/lang/Object;
.source "XingHaiInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private artists:Ljava/lang/String;

.field private coverPic:Ljava/lang/String;

.field private introNightPic:Ljava/lang/String;

.field private introPic:Ljava/lang/String;

.field private startTime:Ljava/lang/Long;

.field private title:Ljava/lang/String;

.field private videoId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtists()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->artists:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverPic()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->coverPic:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroNightPic()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introNightPic:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroPic()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introPic:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->videoId:J

    return-wide v0
.end method

.method public setArtists(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->artists:Ljava/lang/String;

    return-void
.end method

.method public setCoverPic(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->coverPic:Ljava/lang/String;

    return-void
.end method

.method public setIntroNightPic(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introNightPic:Ljava/lang/String;

    return-void
.end method

.method public setIntroPic(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introPic:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->startTime:Ljava/lang/Long;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->videoId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XingHaiInfo{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->videoId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", coverPic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->coverPic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", introPic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introPic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", introNightPic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->introNightPic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artists=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->artists:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
