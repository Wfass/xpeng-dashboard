.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;
.super Ljava/lang/Object;
.source "MusicListenFileBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private endMs:I

.field private listenFile:Ljava/lang/String;

.field private lyricContent:Ljava/lang/String;

.field private needVip:Z

.field private quality:I

.field private startMs:I

.field private userVip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndMs()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->endMs:I

    return v0
.end method

.method public getListenFile()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->listenFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->lyricContent:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->quality:I

    return v0
.end method

.method public getStartMs()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->startMs:I

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->needVip:Z

    return v0
.end method

.method public isUserVip()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->userVip:Z

    return v0
.end method

.method public setEndMs(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->endMs:I

    return-void
.end method

.method public setListenFile(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->listenFile:Ljava/lang/String;

    return-void
.end method

.method public setLyricContent(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->lyricContent:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->needVip:Z

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->quality:I

    return-void
.end method

.method public setStartMs(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->startMs:I

    return-void
.end method

.method public setUserVip(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicListenFileBean$DataBean;->userVip:Z

    return-void
.end method
