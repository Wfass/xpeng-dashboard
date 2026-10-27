.class public Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SearchActivityMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/search/home/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:I

.field private c:Z

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    .line 43
    iput v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->b:I

    return-void
.end method

.method private e()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c:Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e()V

    .line 181
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0xb

    .line 182
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;)V

    .line 183
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    return v0
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 110
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public exitNonVoiceSearchEvent(Lasi$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public exitNonVoiceSearchEvent(Lasi$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->isTopActivity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 47
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_INDEX"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->b:I

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e()V

    return-void
.end method

.method public onExitSearchActivity(Lasi$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public onHistorySearchKeyword(Lbnw$d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    invoke-static {}, Lbnx;->a()Lbnx;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->b:I

    invoke-virtual {v0, v1}, Lbnx;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHistorySearchKeyword: menuIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchActivityMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/home/view/b;->onSwitchToSearchHome()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lbnw$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/search/home/view/b;->onSwitchToSearchResultMain(Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/logic/a;->a(Ljava/lang/String;)V

    .line 83
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-virtual {p1}, Lbnw$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->refreshSearchKeyword(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public receiveKugouBindChanged(Lasj$n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 158
    invoke-virtual {p1}, Lasj$n;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public receiveVoiceSearchCountDownSeconds(Lcom/xiaopeng/musicradio/event/common/b$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$e;->a()I

    move-result p1

    rsub-int/lit8 p1, p1, 0xa

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->updateCountDownClose(I)V

    :cond_0
    return-void
.end method

.method public receiveVoiceSearchTimerEvent(Lcom/xiaopeng/musicradio/event/common/b$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$d;->a()Z

    move-result p1

    const-string v0, "SearchActivityMainPresenter"

    if-eqz p1, :cond_0

    const-string p1, "initCloseVoiceSearch"

    .line 120
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c()V

    goto :goto_0

    :cond_0
    const-string p1, "disposeCloseVoiceSearch"

    .line 123
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->e()V

    .line 125
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$e;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$e;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resultBackPress(Lbnw$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->onSwitchToSearchHome()V

    :cond_0
    return-void
.end method
