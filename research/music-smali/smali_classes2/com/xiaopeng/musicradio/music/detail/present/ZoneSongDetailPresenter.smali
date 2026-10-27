.class public Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "ZoneSongDetailPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 5

    .line 14
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->e:I

    new-instance v3, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v1, v2, v4, v3}, Lasp;->c(Ljava/lang/String;IILbkv;)V

    return-void
.end method
