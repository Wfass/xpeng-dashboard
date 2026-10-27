.class public Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "MsSingerDetailPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 6

    .line 21
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->e:I

    new-instance v4, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;)V

    iget v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->m:I

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lasp;->a(Ljava/lang/String;IZLbkv;I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const/16 p1, 0x3e8

    .line 16
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->j:I

    return-void
.end method
