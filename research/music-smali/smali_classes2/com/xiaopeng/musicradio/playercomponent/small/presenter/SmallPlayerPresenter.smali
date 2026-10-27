.class public Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;
.source "SmallPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter<",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->d()V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->g()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;->refreshInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;->reset(I)V

    :cond_1
    return-void
.end method

.method public dealBtConnectState(Lasa$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 121
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealBtConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmallPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->g()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshType: ========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/b;->refreshType(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 59
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 62
    invoke-interface {v0}, Laqt;->pause()V

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v0}, Laqt;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 86
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Laqt;->b()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 93
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Laqt;->a()V

    :cond_0
    return-void
.end method

.method public onBtHpfConnect(Lasa$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtHpfConnect: ======== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmallPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 132
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

    const-string v0, "SmallPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SmallPlayerPresenter"

    const-string v0, "onCreate: =========="

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->g()V

    return-void
.end method

.method public onReadReloadAlbum(Lasj$z;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadStatusUpdate(Lasj$aa;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    return-void
.end method

.method public onReadingUnbinded(Lasj$ac;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->d()V

    return-void
.end method
