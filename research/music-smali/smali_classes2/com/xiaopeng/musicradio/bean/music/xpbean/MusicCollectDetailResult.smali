.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MusicCollectDetailResult.java"


# instance fields
.field data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    return-void
.end method
