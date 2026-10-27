.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "MusicLoveListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private createTime:J

.field private song:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

.field private syncFromKugou:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->song:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public isSyncFromKugou()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->syncFromKugou:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setSong(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->song:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method

.method public setSyncFromKugou(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicLoveListBean$DataBean$ListBean;->syncFromKugou:Z

    return-void
.end method
