.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;
.super Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;
.source "MusicHistoryMusicPresenter.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->v()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const/16 v0, 0x1f4

    .line 42
    invoke-static {v0}, Laxu;->a(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->e()V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryMusicPresenter;->h()V

    return-void
.end method
