.class public Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;
.source "ProgramPlayerCommonPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 41
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(F)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 14
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    .line 15
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmt;->seekTo(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 19
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    .line 20
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lbmt;->seekTo(I)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->f()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3fa00000    # 1.25f

    if-nez v2, :cond_0

    .line 26
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    .line 30
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    :cond_2
    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 32
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f()F
    .locals 1

    .line 37
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    return v0
.end method
