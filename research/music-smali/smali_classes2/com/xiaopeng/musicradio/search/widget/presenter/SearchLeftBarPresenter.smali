.class public Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;
.super Lcom/xiaopeng/musicradio/search/widget/presenter/SearchTopBarPresenter;
.source "SearchLeftBarPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchTopBarPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public emptySearchBar(Lbnw$e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/widget/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/b;->g()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchTopBarPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SearchLeftBarPresenter"

    const-string v0, "onCreateView"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public updateSearchBar(Lbnw$g;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/widget/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/b;->f()V

    :cond_0
    return-void
.end method
