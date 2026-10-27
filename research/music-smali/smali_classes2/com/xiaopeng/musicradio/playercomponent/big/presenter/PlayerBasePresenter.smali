.class public abstract Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "PlayerBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/b;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract d()V
.end method

.method protected abstract g()V
.end method

.method public onAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->q_()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 19
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->q_()V

    :cond_0
    return-void
.end method

.method public q_()V
    .locals 1

    .line 31
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->d()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->g()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->g()V

    :goto_0
    return-void
.end method
