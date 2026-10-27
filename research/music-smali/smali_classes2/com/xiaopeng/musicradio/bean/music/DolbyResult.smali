.class public Lcom/xiaopeng/musicradio/bean/music/DolbyResult;
.super Ljava/lang/Object;
.source "DolbyResult.java"


# instance fields
.field private musicCollectSongListBean:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

.field private neteaseZoneDolbyBean:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicCollectSongListBean()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->musicCollectSongListBean:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    return-object v0
.end method

.method public getNeteaseZoneDolbyBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->neteaseZoneDolbyBean:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    return-object v0
.end method

.method public setMusicCollectSongListBean(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->musicCollectSongListBean:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    return-void
.end method

.method public setNeteaseZoneDolbyBean(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->neteaseZoneDolbyBean:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DolbyResult{neteaseZoneDolbyBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->neteaseZoneDolbyBean:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", musicCollectSongListBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->musicCollectSongListBean:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
