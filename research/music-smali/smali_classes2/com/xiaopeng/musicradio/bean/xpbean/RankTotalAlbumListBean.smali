.class public Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "RankTotalAlbumListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/RankTotalAlbumListBean$DataBean;

    return-void
.end method
