.class public abstract Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SmallPlayerBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/e;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 113
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->refreshPlayState(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->hidePlayState()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "SmallPlayerBasePresente"

    const-string v1, "refresh: ========== "

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->d()V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->e()V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->f()V

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->h()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 3

    .line 61
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->e()Layh$b;

    move-result-object v0

    const-string v1, "SmallPlayerBasePresente"

    const-string v2, "onRefreshLogo: ======="

    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 79
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 84
    invoke-interface {v0}, Laqt;->getSecondPosition()I

    move-result v1

    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Laqt;->getSecondPosition()I

    move-result v1

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0}, Laqt;->getPosition()I

    move-result v3

    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->refreshPos(III)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0, v1, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->refreshPos(III)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {v0, v1, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->refreshPos(III)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public onAudioChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->g()V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->h()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->d()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->f()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->c()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onIGChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIGChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerBasePresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->hidePlayState()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->h()V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->d()V

    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->h()V

    return-void
.end method

.method public onPosChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->f()V

    return-void
.end method

.method public onRefreshLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 54
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

    const-string v1, "SmallPlayerBasePresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->e()V

    :cond_0
    return-void
.end method

.method public onThemeChange(Larv$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/e;->changeTheme()V

    :cond_0
    return-void
.end method
