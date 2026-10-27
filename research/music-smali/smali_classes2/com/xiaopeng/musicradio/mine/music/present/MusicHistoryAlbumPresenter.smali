.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;
.super Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
.source "MusicHistoryAlbumPresenter.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 34
    invoke-static {p1}, Laxu;->c(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->e()V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;->h()V

    return-void
.end method
