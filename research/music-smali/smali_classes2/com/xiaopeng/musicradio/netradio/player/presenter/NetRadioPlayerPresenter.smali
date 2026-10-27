.class public Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;
.source "NetRadioPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter<",
        "Lcom/xiaopeng/musicradio/netradio/player/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbuc$g;->netradio_play_live:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget p1, Lbuc$g;->netradio_live_no_program:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%s\uff1a%s"

    if-eqz v0, :cond_1

    .line 62
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v5, Lbuc$g;->netradio_play_live:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v5, Lbuc$g;->netradio_play_back:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->updateLove(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected d()V
    .locals 4

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->updateLove(ZZ)V

    :cond_0
    return-void
.end method

.method public dealLoveEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "NetRadioPlayerPresenter"

    const-string v0, "dealLoveEvent.."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->h()V

    return-void
.end method

.method public dealNetLoveEvent(Lbju$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "NetRadioPlayerPresenter"

    const-string v0, "dealNetLoveEvent.."

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->h()V

    return-void
.end method

.method public e()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    const-string v1, "NetRadioPlayerPresenter"

    const-string v2, "clickLove: ========="

    .line 77
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickLove: ==========name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Layv;->a()Layv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Layv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .line 106
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected g()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->setDefault(I)V

    :cond_0
    return-void
.end method

.method public q_()V
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->q_()V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->g()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->refrshTip(Z)V

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/b;->refrshTip(Z)V

    :cond_2
    :goto_1
    return-void
.end method
