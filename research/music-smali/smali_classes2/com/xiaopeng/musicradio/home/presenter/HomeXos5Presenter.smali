.class public Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "HomeXos5Presenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/home/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 30
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "HomeXos5Presenter"

    const-string v0, "onCreateView"

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onOpenPlayer(Lbli$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/home/view/b;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lbli$a;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/home/view/b;->openFragment(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onShowHome(Lcom/xiaopeng/musicradio/event/common/CommonEvent$af;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/home/view/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/home/view/b;->openFragment(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onShowHome(Lcom/xiaopeng/musicradio/event/common/CommonEvent$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/home/view/b;->openPlayerAnimShowHome()V

    :cond_0
    return-void
.end method

.method public onSlideClosePlayer(Lbli$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/home/view/b;->slideClosePlayer()V

    :cond_0
    return-void
.end method
