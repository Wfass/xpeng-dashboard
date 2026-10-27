.class public Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "BtMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lbfi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 53
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 3

    .line 57
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->d()Z

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBtConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public dealBtConnectState(Lasa$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "BtMainPresenter"

    const-string v0, "dealBtConnectState: =========="

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 81
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 5

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->d()Z

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBtConnect: ======== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->e()Z

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNoPhoneMusic: ======== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "refresNoPhoneMusic: ======== "

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-interface {v0}, Lbfi;->refresNoPhoneMusic()V

    goto/16 :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->f()Z

    move-result v0

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->c()Z

    move-result v1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying: ======== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isBtType: ======== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "refreshPlayState: ======== "

    .line 100
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-interface {v2, v1, v0}, Lbfi;->refreshPlayState(ZZ)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->c()Z

    move-result v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBtType: ======== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "refresMusicNoConnect: ======== "

    .line 109
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-interface {v0}, Lbfi;->refresMusicNoConnect()V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "refresNoConnect: ======== "

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-interface {v0}, Lbfi;->refresNoConnect()V

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 140
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->tips_can_not_play_bt_music:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "BtMainPresenter"

    const-string v1, "openBt start play: "

    .line 141
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->h()V

    .line 143
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->p()V

    .line 145
    invoke-static {}, Lbjl;->k()V

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {}, Lbjl;->j()V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->bt_nophone_music:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    .line 151
    :cond_3
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->o()V

    :goto_1
    return-void
.end method

.method public onBtHpfConnect(Lasa$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtHpfConnect: ======== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtPhoneMusicClose========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public onChangeAudio(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    const-string p1, "BtMainPresenter"

    const-string v0, "onChangeAudio: =========="

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "BtMainPresenter"

    const-string v1, "onCreate: =========="

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "BtMainPresenter"

    const-string v0, "onDestroy: =========="

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfoEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfoEvent========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayStateChange========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    const-string p1, "BtMainPresenter"

    const-string v0, "onResume: =========="

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method
