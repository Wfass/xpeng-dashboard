.class public abstract Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SmallPlayerSubBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/d;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 34
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->g()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/d;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/d;->showDefault()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected g()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 2

    const-string v0, "SmallPlayerBasePresente"

    const-string v1, "refresh: ========== "

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->c()V

    return-void
.end method

.method public onAudioChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->j()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;->c()V

    return-void
.end method
