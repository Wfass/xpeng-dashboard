.class public Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;
.super Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;
.source "SearchResultMixQQPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    :cond_0
    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->hasData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbnz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    .line 40
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    .line 37
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbnz;->a(I)V

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    .line 48
    :cond_3
    invoke-static {}, Lbom;->a()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    const-string p1, "SearchResultMixQQPresenter"

    const-string v0, "onCreateView"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 30
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onMusicAuth(Lasj$n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SearchResultMixQQPresenter"

    const-string v0, "onKugouBinded: "

    .line 103
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SearchResultMixQQPresenter"

    const-string v0, "onMusicBinded: "

    .line 60
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SearchResultMixQQPresenter"

    const-string v0, "onMusicBinded: "

    .line 69
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    :cond_0
    return-void
.end method

.method public onNewSearchKeyword(Lbnw$c;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoading(ZII)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    .line 98
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbnz;->a(I)V

    return-void
.end method

.method public userLogout(Lasj$ag;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SearchResultMixQQPresenter"

    const-string v0, "userLogout: "

    .line 78
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->t_()V

    :cond_0
    return-void
.end method
