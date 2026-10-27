.class public Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "MsDailyDetailPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->m:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->m:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->m:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->m:I

    return p0
.end method


# virtual methods
.method protected c()V
    .locals 4

    .line 22
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->m:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lasp;->a(IZLbkv;)V

    return-void
.end method
