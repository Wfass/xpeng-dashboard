.class public Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;
.super Ljava/lang/Object;
.source "MusicBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private artist:Ljava/lang/String;

.field private progress:Ljava/lang/String;

.field private song:Ljava/lang/String;

.field private startPosition:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->startPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->total:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->artist:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->progress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0
    .param p1, "song"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->song:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setStartPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "startPosition"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->startPosition:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->status:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->total:Ljava/lang/String;

    .line 36
    return-void
.end method
