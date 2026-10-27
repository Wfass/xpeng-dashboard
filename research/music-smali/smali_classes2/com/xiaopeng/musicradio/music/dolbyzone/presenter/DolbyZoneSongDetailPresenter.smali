.class public Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "DolbyZoneSongDetailPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 3

    .line 16
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->b()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 18
    invoke-static {v1, v2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->i:Z

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/b;->getData(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->h:Z

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/main/view/b;->loadEnd()V

    :cond_2
    return-void
.end method
