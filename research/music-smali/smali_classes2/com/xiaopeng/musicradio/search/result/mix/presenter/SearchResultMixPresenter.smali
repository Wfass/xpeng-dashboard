.class public Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;
.source "SearchResultMixPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter<",
        "Lcom/xiaopeng/musicradio/search/result/mix/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;-><init>()V

    const/16 v0, 0x32

    .line 34
    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->b:I

    return p0
.end method


# virtual methods
.method public c(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1e

    .line 95
    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->b:I

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->resetData()V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoading(ZII)V

    .line 101
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;I)V

    const-wide/16 v1, 0x384

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    .line 174
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public dealLoveState(Lasj$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->updateMusicLove(Lasj$r;)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    .line 166
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 156
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->resetData()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoading(ZII)V

    .line 60
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;)V

    const-wide/16 v1, 0x384

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 40
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbnz;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    .line 47
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->e()V

    .line 44
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbnz;->a(I)V

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->e()V

    .line 52
    :goto_1
    invoke-static {}, Lbom;->a()V

    return-void
.end method

.method public onNewSearchKeyword(Lbnw$c;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoading(ZII)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->e()V

    .line 147
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbnz;->a(I)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->refreshData()V

    :cond_0
    return-void
.end method
