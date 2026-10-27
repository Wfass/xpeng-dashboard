.class public Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "VipSaleBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/vip/view/a;",
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
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public vipSaleEven(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "sunny123"

    const-string v0, "vipSaleEven: "

    .line 28
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/vip/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/vip/view/a;->updateBannerData()V

    :cond_0
    return-void
.end method

.method public vipSaleEvenV2(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "sunny123"

    const-string v0, "vipSaleEven: "

    .line 36
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/vip/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/vip/view/a;->updateBannerData()V

    :cond_0
    return-void
.end method
