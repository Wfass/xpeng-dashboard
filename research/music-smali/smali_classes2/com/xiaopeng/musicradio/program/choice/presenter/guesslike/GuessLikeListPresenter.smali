.class public Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;
.source "GuessLikeListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    return p0
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showLoading(ZII)V

    .line 53
    :cond_0
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b:I

    .line 56
    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->addGuessLikeList(Ljava/util/List;IZ)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c:I

    invoke-interface {v0, v3, p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showLoading(ZII)V

    return-void

    .line 64
    :cond_1
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(ILbkv;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c()V

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method
