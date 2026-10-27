.class public Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->b:Z

    return-void
.end method

.method private f()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->doShowEff(Z)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->resumeEff()V

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->pauseEff()V

    goto :goto_1

    .line 92
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->doShowEff(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 125
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->f()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->refreshColor(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 140
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->e()Layh$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v0}, Layh$b;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->e()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->e()Z

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->e()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    :cond_2
    :goto_0
    return-void

    .line 142
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->e()Z

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->e()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public OnPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->f()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAudioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->switchAudio(I)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 4

    .line 110
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public e()Z
    .locals 2

    .line 163
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAudioChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "PlayerPresenter"

    const-string v0, "onCreate: ======"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->h()V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->g()V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->c()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "PlayerPresenter"

    const-string v0, "onDestroy: ====="

    .line 169
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->f()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->b:Z

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/d;->pauseEff()V

    :cond_0
    return-void
.end method

.method public onRefreshLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshLogo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onRefreshLogoColor(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->g()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    const-string p1, "PlayerPresenter"

    const-string v0, "onResume: ========="

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->c()V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->b:Z

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;->f()V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStart(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method
