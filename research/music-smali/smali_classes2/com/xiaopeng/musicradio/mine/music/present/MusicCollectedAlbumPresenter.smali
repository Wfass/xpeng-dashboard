.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;
.super Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;
.source "MusicCollectedAlbumPresenter.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "MusicCollectedAlbumPresenter"

    const-string v1, "getDataListPosted: "

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Laxu;->b(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;->e()V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;->h()V

    return-void
.end method
