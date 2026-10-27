.class public Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.source "BannerItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    return-void
.end method

.method public c()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTotal()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a(Ljava/util/List;ILjava/lang/String;I)V

    .line 88
    invoke-static {}, Lbmx;->a()V

    .line 89
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lbmm;->a(ZZ)V

    :goto_0
    return-void
.end method

.method public onAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onPagerSelectedEvent(Lash$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c:I

    invoke-virtual {p1}, Lash$b;->a()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->g()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->a(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->a(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
