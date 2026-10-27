.class public Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;
.source "HomeMainSearchFragmentPresenter.java"

# interfaces
.implements Lbfg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter<",
        "Lcom/xiaopeng/musicradio/search/home/view/a;",
        ">;",
        "Lbfg;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->b:Z

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public d()V
    .locals 0

    .line 98
    invoke-static {}, Lcom/xiaopeng/musicradio/search/logic/a;->a()V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->e()V

    return-void
.end method

.method public dealLoveState(Lasj$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/home/view/a;->updateMusicLove(Lasj$r;)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/a;->refreshData()V

    .line 158
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/search/home/view/a;->updatePlayState(II)V

    .line 149
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "HomeMainSearchFragmentPresenter"

    const-string v1, "startLoadHistory"

    .line 106
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 50
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_INDEX"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->c:I

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onHistorySearchKeyword(Lbnw$d;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchHistoryKeyword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeMainSearchFragmentPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lbnx;->a()Lbnx;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->c:I

    invoke-virtual {v0, v2}, Lbnx;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHistorySearchKeyword: menuIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHistorySearchKeyword \u641c\u7d22\u5173\u952e\u8bcd\u4e3a\u7a7a: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lbnw$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHistorySearchKeyword \u5c06\u641c\u7d22\u5386\u53f2\u63d2\u5165\u6570\u636e\u5e93: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/logic/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onPause(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->e()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/a;->refreshData()V

    :cond_0
    return-void
.end method
