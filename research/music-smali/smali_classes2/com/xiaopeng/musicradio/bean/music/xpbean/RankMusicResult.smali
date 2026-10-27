.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "RankMusicResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    return-void
.end method
