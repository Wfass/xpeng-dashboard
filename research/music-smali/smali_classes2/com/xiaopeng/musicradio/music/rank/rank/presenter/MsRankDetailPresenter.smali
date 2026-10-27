.class public Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.source "MsRankDetailPresenter.java"


# instance fields
.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->e:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->m:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->m:I

    return p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->m:I

    return p0
.end method


# virtual methods
.method protected c()V
    .locals 8

    .line 25
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->n:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->e:I

    iget v5, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->m:I

    new-instance v7, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;

    invoke-direct {v7, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)V

    const/16 v4, 0x32

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Lasp;->a(Ljava/lang/String;IIIIZLbkv;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->n:I

    return-void
.end method
