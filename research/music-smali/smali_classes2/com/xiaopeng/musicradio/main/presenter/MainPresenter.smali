.class public Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/main/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private c()V
    .locals 4

    const-string v0, "MainPresenter"

    const-string v1, "refreshUsbIconState"

    .line 64
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/main/view/a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {v1, v0, v3}, Lcom/xiaopeng/musicradio/main/view/a;->updatePlayingState(ZI)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "MainPresenter"

    const-string v1, "refreshBtIconState"

    .line 77
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 81
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/musicradio/main/view/a;->updatePlayingState(ZI)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/musicradio/main/view/a;->updatePlayingState(ZI)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dealCancelOrError(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 289
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$b;->a()Z

    move-result p1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealCancelOrError isAppInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->neteaseCancelOrError(Z)V

    :cond_0
    return-void
.end method

.method public dealDownloadProgress(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 307
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$d;->a()F

    move-result p1

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->neteaseDownloadProgress(F)V

    :cond_0
    return-void
.end method

.method public dealIsAppInstalled(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$g;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 271
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$g;->a()Z

    move-result p1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealIsAppInstalled isAppInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->neteaseisAppInstalled(Z)V

    :cond_0
    return-void
.end method

.method public dealPauseOrStart(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$t;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$t;->a()Z

    move-result p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPauseOrStart isPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->neteasePauseOrStart(Z)V

    :cond_0
    return-void
.end method

.method public dealUninstalled(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$af;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$af;->a()Z

    move-result p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealUninstalled isAppUninstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->neteaseUninstalled(Z)V

    :cond_0
    return-void
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->d()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 58
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->d()V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->c()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/main/view/a;->updatePlayingState(ZI)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/main/view/a;->updatePlayingState(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStart(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method
