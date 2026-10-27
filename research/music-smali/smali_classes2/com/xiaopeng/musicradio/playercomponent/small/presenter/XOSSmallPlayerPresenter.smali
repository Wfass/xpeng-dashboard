.class public Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;
.source "XOSSmallPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter<",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;-><init>()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 79
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->d()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->updateLove(ZZ)V

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->updateLove(ZZ)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->updateLove(ZZ)V

    :goto_0
    return-void
.end method

.method private p()Z
    .locals 2

    .line 226
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected d()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->d()V

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->o()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->g()V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Layh;->a()Layh;

    move-result-object v1

    invoke-virtual {v1}, Layh;->e()Layh$b;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Layh$b;->g()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->reset(I)V

    :cond_2
    return-void
.end method

.method protected e()V
    .locals 4

    .line 197
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->e()Layh$b;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshLogo: ======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XOSSmallPlayerPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Layh$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v0}, Layh$b;->g()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget v1, Lble$c;->img_cd_netease_empty:I

    goto :goto_0

    :cond_0
    sget v1, Lble$c;->img_cd_empty:I

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshCover(I)V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_2
    :goto_1
    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {v0}, Layh$b;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-virtual {v0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->p()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->p()Z

    move-result v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->p()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected g()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->e()I

    move-result v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->refreshType(II)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "XOSSmallPlayerPresenter"

    const-string v1, "prev: ===="

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Laqt;->b()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "XOSSmallPlayerPresenter"

    const-string v1, "next: ===="

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Laqt;->a()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    const-string v0, "XOSSmallPlayerPresenter"

    const-string v1, "playOrPause: ===="

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 147
    invoke-interface {v0}, Laqt;->pause()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0}, Laqt;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "XOSSmallPlayerPresenter"

    const-string v1, "clickLove: ======"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->c()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 230
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 1

    .line 262
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .line 266
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Laqt;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBtHpfConnect(Lasa$c;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBtHpfConnect: ======== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$c;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XOSSmallPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
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

    const-string v0, "XOSSmallPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onChangeMusicSource(Lasj$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->g()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->g()V

    return-void
.end method

.method public onEvent(Lasj$q;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->o()V

    return-void
.end method

.method public onFinishAni(Lbli$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "XOSSmallPlayerPresenter"

    const-string v1, "onFinishAni: ==== "

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-virtual {p1}, Lbli$b;->a()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->resetView(F)V

    :cond_0
    return-void
.end method

.method public onOpenPlayer(Lasg$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "XOSSmallPlayerPresenter"

    const-string v0, "onFinishAni: ==== "

    .line 255
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->openPlayer()V

    :cond_0
    return-void
.end method

.method public onReadReloadAlbum(Lasj$z;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadStatusUpdate(Lasj$aa;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadingUnbinded(Lasj$ac;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->d()V

    return-void
.end method

.method public onStartAni(Lbli$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "XOSSmallPlayerPresenter"

    const-string v0, "onFinishAni: ==== "

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/f;->startCloseAnim()V

    :cond_0
    return-void
.end method

.method public onUpdateLove(Lasj$ae;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 185
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1}, Lasj$ae;->a()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->o()V

    :cond_0
    return-void
.end method
