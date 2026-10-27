.class public Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;
.source "CategoryListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter<",
        "Lcom/xiaopeng/musicradio/program/category/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:J

.field private e:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->d:J

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c:I

    return p1
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b:I

    return p1
.end method

.method private e()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/a;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c:I

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/program/category/view/a;->showLoading(ZII)V

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->e()V

    .line 67
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->d:J

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, p1, v3}, Lbmu;->a(JZII)Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)V

    new-instance v2, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)V

    .line 70
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(I)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->e()V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/category/view/a;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/a;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/a;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method
