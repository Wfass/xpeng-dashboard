.class public Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;
.super Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/BaseRadioPresenter;
.source "LocalRadioBannerItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/BaseRadioPresenter<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/BaseRadioPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->c:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method public onAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;->a(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/BaseRadioPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;->a(I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
