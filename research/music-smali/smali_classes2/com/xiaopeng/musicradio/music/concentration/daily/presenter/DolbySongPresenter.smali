.class public Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;
.super Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;
.source "DolbySongPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 4

    .line 19
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;)V

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Lasp;->a(IILbkv;)V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "DolbySongPresenter"

    const-string v0, "onMusicBinded: "

    .line 34
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;->e()V

    return-void
.end method
