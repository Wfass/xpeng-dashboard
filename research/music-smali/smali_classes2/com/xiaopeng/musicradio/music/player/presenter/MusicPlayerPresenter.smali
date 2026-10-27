.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;
.source "MusicPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/g;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lbjm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;Lbjm;)Lbjm;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    return-object p1
.end method

.method private s()V
    .locals 5

    .line 83
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshMusic: ====== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, " null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/musicradio/music/player/view/g;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v2, v1, v1, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->updateLove(ZZZ)V

    goto :goto_2

    .line 91
    :cond_1
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v2

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v3

    invoke-virtual {v3}, Lbid;->s()I

    move-result v3

    invoke-virtual {v2, v3}, Lbcj;->a(I)Lbci;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/view/g;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isEnableLove()Z

    move-result v4

    invoke-interface {v3, v2, v4, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->updateLove(ZZZ)V

    .line 94
    :goto_2
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->s()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v4, Lbsi;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v4

    invoke-virtual {v4}, Lbid;->s()I

    move-result v4

    invoke-interface {v0, v4}, Lbsi;->isXpVip(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v4, Lbsi;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    invoke-interface {v0}, Lbsi;->isMusicVip()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    invoke-interface {v2, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->showVipTip(Z)V

    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    const-string v2, ""

    invoke-interface {v0, v2, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->showVipTip(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private t()V
    .locals 4

    .line 131
    invoke-static {}, Layd;->a()Layd;

    move-result-object v0

    invoke-virtual {v0}, Layd;->b()Lcom/xiaopeng/musicradio/music/api/bean/a;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshBluetooth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/musicradio/music/player/view/g;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    sget v2, Lble$f;->music_no_play_tip:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lble$f;->music_bar_tip:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/musicradio/music/player/view/g;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->d()Z

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->updateLove(ZZZ)V

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->showVipTip(Z)V

    :cond_2
    return-void
.end method

.method private u()Lbqn;
    .locals 1

    .line 262
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    invoke-interface {v0, p1}, Lbqn;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    return-void
.end method

.method public controlMode(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->k()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 75
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->s()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealBtConnectState(Lasa$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 347
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealBtConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->switchToMusic(Z)V

    .line 351
    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/g;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->notifyPlayStateChange(IZ)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->c()Lbqn;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {p1}, Lbqn;->q()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->notifyPlayStateChange(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealLoveEvent(Lasj$r;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 176
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 177
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 178
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v1

    invoke-virtual {v1}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealLoveEvent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicPlayerPresenter"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 185
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_1
    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lbcj;->a(I)Lbci;

    move-result-object p1

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    const/4 v3, 0x0

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    :goto_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    move v3, v4

    :cond_3
    invoke-interface {v1, p1, v3, v4}, Lcom/xiaopeng/musicradio/music/player/view/g;->updateLove(ZZZ)V

    :cond_4
    return-void
.end method

.method public e()Z
    .locals 2

    .line 105
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 113
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->l()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->setDefault(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    const-string v0, "MusicPlayerPresenter"

    const-string v1, "clickLove: ===="

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 214
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 220
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 222
    invoke-virtual {v1, v0}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_1

    .line 224
    :cond_2
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 225
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->cannotcollect:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public i()I
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    invoke-interface {v0}, Lbqn;->r()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public j()V
    .locals 4

    .line 287
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->switchToNone()V

    goto :goto_1

    .line 289
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->switchToMusic(Z)V

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/xiaopeng/musicradio/music/player/view/g;->switchToMusic(Z)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a(I)V

    .line 295
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0}, Lbqn;->q()I

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->notifyPlayStateChange(IZ)V

    .line 308
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->k()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/g;->refreshPlayMode(IZ)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    invoke-interface {v0}, Lbqn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->u()Lbqn;

    move-result-object v0

    invoke-interface {v0}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public m()Z
    .locals 1

    .line 342
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->d()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 397
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->e()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 401
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBtHpfConnect(Lasa$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 378
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

    const-string v0, "MusicPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    :cond_0
    return-void
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 369
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 370
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

    const-string v0, "MusicPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    :cond_0
    return-void
.end method

.method public onChangeAudio(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->q_()V

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/g;->enableShareBtn()V

    :cond_0
    const-string p1, "MusicPlayerPresenter"

    const-string v0, "onChangeAudio: =========="

    .line 272
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onEvent(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 474
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->p()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/g;->finish()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$q;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealLoveEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lasj$q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lasj$q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    :cond_0
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lbcj;->a(I)Lbci;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    :goto_0
    const/4 v0, 0x1

    invoke-interface {v1, p1, v0, v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->updateLove(ZZZ)V

    :cond_2
    return-void
.end method

.method public onInfoChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 277
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->s()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->enableShareBtn()V

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->showVipTip(Z)V

    :cond_1
    return-void
.end method

.method public onListRefresh(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicPlayerPresenter"

    const-string v0, "onListRefresh: ======="

    .line 386
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    return-void
.end method

.method public onMediaCenterBtStatusChanged(Lasa$e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaCenterBtStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$e;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    return-void
.end method

.method public onPlayAccountChange(Lasj$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    :cond_0
    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayStateChange========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    .line 427
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/player/view/g;->notifyPlayStateChange(IZ)V

    :cond_0
    return-void
.end method

.method public onPlayerNav(Lbli$d;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 441
    invoke-virtual {p1}, Lbli$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerNav: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lrc"

    .line 443
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 450
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "quality"

    .line 451
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    if-nez v1, :cond_1

    .line 455
    new-instance v1, Lbjm;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lbjm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    .line 456
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    new-instance v2, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;)V

    invoke-virtual {v1, v2}, Lbjm;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    invoke-virtual {v1, v0}, Lbjm;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    invoke-virtual {v0}, Lbjm;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->b:Lbjm;

    invoke-virtual {v0}, Lbjm;->show()V

    .line 468
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->j()V

    return-void
.end method

.method public onShortListenRefreshEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ac;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 118
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 119
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 120
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/g;->showVipTip(Z)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 5

    .line 405
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 411
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public q()Z
    .locals 2

    .line 482
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public r()Z
    .locals 2

    .line 486
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
