.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VipMusicCollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;,
        Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;

.field private page:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;->page:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;->data:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;->page:Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$PageBean;

    return-void
.end method
