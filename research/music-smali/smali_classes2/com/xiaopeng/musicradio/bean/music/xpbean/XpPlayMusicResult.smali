.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "XpPlayMusicResult.java"


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    return-void
.end method
