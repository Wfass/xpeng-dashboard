.class public Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "HomeMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/home/view/a;",
        ">;"
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
.method public onAppFirstFrame(Lcom/xiaopeng/musicradio/event/common/CommonEvent$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/home/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/home/view/a;->onAppFirstFrameComplete()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "HomeMainPresenter"

    const-string v0, "onCreateView"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public selectMenuEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$at;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/home/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$at;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/home/view/a;->selectMenu(I)V

    :cond_0
    return-void
.end method
