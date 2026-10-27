.class public Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;
.super Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;
.source "SearchForLeftTabPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstalledEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppInstalledEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchForLeftTabPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;->b()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->onAppInstalled(IZ)V

    :cond_0
    return-void
.end method

.method public onCloseSearchEvent(Lbnw$e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->closeSearch()V

    :cond_0
    return-void
.end method

.method public onSearchEvent(Lbnw$f;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-virtual {p1}, Lbnw$f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->onSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
