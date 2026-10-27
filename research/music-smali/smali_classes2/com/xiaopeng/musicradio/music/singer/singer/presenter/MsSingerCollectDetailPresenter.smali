.class public Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "MsSingerCollectDetailPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 6

    .line 29
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->e:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->m:I

    new-instance v5, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;)V

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lasp;->a(Ljava/lang/String;IIZLbkv;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->h:Z

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/main/view/b;->showLoadingView()V

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->l:J

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->k:Z

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->c()V

    return-void
.end method
