.class public Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "MineDetailPlayListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private collectSongId:I

.field private songInfoDto:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectSongId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean$ListBean;->collectSongId:I

    return v0
.end method

.method public getSongInfoDto()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean$ListBean;->songInfoDto:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public setCollectSongId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean$ListBean;->collectSongId:I

    return-void
.end method

.method public setSongInfoDto(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$DataBean$ListBean;->songInfoDto:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method
