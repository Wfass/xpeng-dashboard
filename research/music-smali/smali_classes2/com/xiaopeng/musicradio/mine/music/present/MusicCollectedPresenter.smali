.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;
.super Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;
.source "MusicCollectedPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x32

    .line 30
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;-><init>(ILjava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->q:I

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->q:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->q:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->v()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "MusicCollectedMusicPresenter"

    const-string v1, "getDataListPosted"

    .line 43
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->e()V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->h()V

    return-void
.end method
