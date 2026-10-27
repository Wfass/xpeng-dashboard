.class public Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;
.source "RankListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter<",
        "Lcom/xiaopeng/musicradio/program/rank/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;-><init>()V

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->b:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->b:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c:I

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c:I

    return p0
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->d:I

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/rank/view/a;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c:I

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/program/rank/view/a;->showLoading(ZII)V

    .line 75
    :cond_1
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->d:I

    const/16 v2, 0x14

    new-instance v3, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lbmv;->a(IIILbkv;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c()V

    .line 41
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/rank/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/rank/view/a;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/view/a;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/rank/view/a;->notifyUpdatePlayState(J)V

    :cond_0
    return-void
.end method
