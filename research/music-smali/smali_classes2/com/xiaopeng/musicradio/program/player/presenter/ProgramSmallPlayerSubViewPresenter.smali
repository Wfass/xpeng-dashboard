.class public Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;
.source "ProgramSmallPlayerSubViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter<",
        "Lcom/xiaopeng/musicradio/program/player/view/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;-><init>()V

    return-void
.end method

.method private h()V
    .locals 7

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/view/c;

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

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/program/player/view/c;->updateLove(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 78
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(F)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 27
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    .line 33
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {v1, v2, v0}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    return-void
.end method

.method public d()F
    .locals 1

    .line 82
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    return v0
.end method

.method public dealClearProgramData(Lasj$f;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/c;

    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lbmp;->c(J)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/c;->updateLove(Z)V

    :cond_1
    return-void
.end method

.method public dealDownloadProgram(Lblv$a;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 48
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/c;

    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lbmp;->c(J)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/c;->updateLove(Z)V

    :cond_1
    return-void
.end method

.method public dealProgramSpeed(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->e()V

    return-void
.end method

.method public dealReadLove(Lasj$x;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 39
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lasj$x;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    :goto_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/c;

    invoke-virtual {p1}, Lasj$x;->b()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/player/view/c;->updateLove(Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->d()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/c;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->d()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3fa00000    # 1.25f

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a(F)V

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a(F)V

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a(F)V

    goto :goto_0

    :cond_2
    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 105
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->a(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->h()V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->e()V

    return-void
.end method
