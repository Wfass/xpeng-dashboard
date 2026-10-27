.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "MusicMineCollectPresenter.java"

# interfaces
.implements Laxs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;",
        ">;",
        "Laxs$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 33
    invoke-static {}, Lata;->a()Lata;

    return-void
.end method

.method private d()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateLoadingStatus(I)V

    .line 129
    :cond_0
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    invoke-virtual {v0}, Lata;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChecked:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineCollectPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 63
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateLoadingStatus(I)V

    return-void
.end method

.method public dealMusicLove(Lasj$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 73
    invoke-virtual {p1}, Lasj$r;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateMusicLove(Z)V

    :cond_1
    return-void
.end method

.method public musicAlbumLoveEvent(Lasj$l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicAlbumLoveEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMineCollectPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateAlbumLove(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 38
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    invoke-virtual {v0}, Lata;->c()V

    .line 39
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxa;->a(Laxs$a;)V

    const/4 p1, 0x2

    .line 44
    invoke-static {p1}, Laxu;->e(I)V

    .line 45
    invoke-static {}, Laxu;->f()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onDestroy"

    .line 51
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laxa;->a(Laxs$a;)V

    return-void
.end method

.method public onEvent(Lasj$q;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateMusicLove(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lbfh$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMineCollectPresenter"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateAlbumLove(Z)V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 106
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->d()V

    return-void
.end method

.method public onMusicBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 147
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    invoke-virtual {p1}, Laxa;->c()V

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 93
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->d()V

    return-void
.end method

.method public onMusicBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 134
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    invoke-virtual {p1}, Laxa;->c()V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 99
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;->d()V

    return-void
.end method

.method public onMusicBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMineCollectPresenter"

    const-string v0, "onMusicBinded: "

    .line 140
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    invoke-virtual {p1}, Laxa;->c()V

    return-void
.end method
