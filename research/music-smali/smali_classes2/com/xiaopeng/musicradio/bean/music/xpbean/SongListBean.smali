.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "SongListBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    return-void
.end method
