.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/SongDetailBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "SongDetailBean.java"


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongDetailBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongDetailBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method
