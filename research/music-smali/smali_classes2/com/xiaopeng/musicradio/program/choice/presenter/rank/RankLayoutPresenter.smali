.class public Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.source "RankLayoutPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/rank/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 53
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;->a(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 28
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a(I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->getPlayState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a(I)V

    :cond_0
    return-void
.end method

.method public updateSpeechState(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/rank/a;->s_()V

    :cond_0
    return-void
.end method
