.class public Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MediaLogoBlurPresener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/a;",
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
.method public c()V
    .locals 3

    .line 32
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->e()Layh$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/a;

    invoke-virtual {v0}, Layh$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Layh$b;->e()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 20
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;->c()V

    return-void
.end method

.method public onRefreshLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;->c()V

    :cond_0
    return-void
.end method
