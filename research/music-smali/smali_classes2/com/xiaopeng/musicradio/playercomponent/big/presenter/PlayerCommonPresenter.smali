.class public Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "PlayerCommonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshPlayState(IZ)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 123
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0}, Laqt;->getPosition()I

    move-result v2

    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v3

    invoke-interface {v0}, Laqt;->getSecondPosition()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshPos(III)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0, v1, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshPos(III)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0, v1, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshPos(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 227
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->doShowEff(Z)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->resumeEff()V

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->pauseEff()V

    goto :goto_1

    .line 229
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->doShowEff(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 210
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p2, :cond_0

    .line 212
    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v1

    if-le p1, v1, :cond_0

    int-to-float p1, p1

    const/4 v1, 0x0

    add-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 213
    invoke-interface {v0}, Laqt;->getDuration()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 214
    invoke-interface {v0, p1}, Laqt;->seekTo(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {v0, p1}, Laqt;->seekTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Layh$b;)V
    .locals 2

    .line 166
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method public dealAudioPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->c()V

    :cond_0
    return-void
.end method

.method public dealAudioState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a(Z)V

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->e()V

    return-void
.end method

.method protected h()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->m()V

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->c()V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->d()V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->i()V

    return-void
.end method

.method protected i()V
    .locals 2

    .line 74
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->showPlayListIcon(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerBasePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->g()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerBasePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->h()V

    return-void
.end method

.method public l()V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOrPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerBasePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v0}, Laqt;->play()V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    invoke-interface {v0}, Laqt;->pause()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected m()V
    .locals 4

    .line 145
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const-string v1, "PlayerBasePresenter"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onRefreshLogo: =======, bt audio && music phone close"

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->pic_defaultcover_380_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->b(I)V

    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->e()Layh$b;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshLogo: ======="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Layh$b;->a()I

    move-result v1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 155
    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a(Layh$b;)V

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 4

    .line 258
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public onBtConnectEvent(Lasa$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtConnectEvent========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerBasePresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->m()V

    :cond_0
    return-void
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 174
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtPhoneMusicClose========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerBasePresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->m()V

    :cond_0
    return-void
.end method

.method public onChangeAudio(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->i()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "PlayerBasePresenter"

    const-string v0, "onCreate: ======"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 41
    new-instance p1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "PlayerBasePresenter"

    const-string v0, "onDestroy: ================="

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->e()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->pauseEff()V

    :cond_0
    return-void
.end method

.method public onPlayerNav(Lbli$d;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    invoke-virtual {p1}, Lbli$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerNav: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerBasePresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "playlist"

    .line 251
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->openPlayList()V

    .line 253
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRefreshLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->m()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->c()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->resumeEff()V

    :cond_0
    return-void
.end method
