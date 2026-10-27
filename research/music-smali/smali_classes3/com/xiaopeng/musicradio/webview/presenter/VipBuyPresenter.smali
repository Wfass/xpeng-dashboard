.class public Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "VipBuyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/webview/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/webview/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/webview/view/a;->showLoadingView()V

    .line 32
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    .line 33
    invoke-interface {v0, p1}, Lbsi;->userBuyUrl(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onUserBuyUrlEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "VipBuyViewPresenter"

    const-string v1, "onUserBuyUrlEvent"

    .line 43
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;->a()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/webview/view/a;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/webview/view/a;->showErrorView(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/webview/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;->a()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/webview/view/a;->onUserBuyUrl(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V

    :cond_1
    :goto_0
    return-void
.end method
