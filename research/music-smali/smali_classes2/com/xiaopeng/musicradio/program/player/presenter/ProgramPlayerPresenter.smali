.class public Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;
.source "ProgramPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter<",
        "Lcom/xiaopeng/musicradio/program/player/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 7

    .line 48
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/musicradio/program/player/view/b;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v3, v4}, Lbmp;->c(J)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/musicradio/program/player/view/b;->refreshLove(ZZ)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/program/player/view/b;->updateVipState(IZ)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->h()V

    return-void
.end method

.method public dealNetReadLove(Lblv$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->e()V

    return-void
.end method

.method public dealProgramSpeed(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->h()V

    return-void
.end method

.method public dealReadLove(Lasj$x;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->e()V

    return-void
.end method

.method public dealReadStatusUpdate(Lasj$aa;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {p1}, Lasj$aa;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lasj$aa;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    .line 67
    invoke-virtual {p1}, Lasj$aa;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPaymentType(I)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 39
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lbmp;->c(J)Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/b;->refreshLove(ZZ)V

    :cond_1
    return-void
.end method

.method public f()F
    .locals 1

    .line 104
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/b;->setDefault(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->f()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/b;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 119
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    .line 125
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {v1, v2, v0}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/b;->enableShareBtn()V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Larv$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->d()V

    return-void
.end method
