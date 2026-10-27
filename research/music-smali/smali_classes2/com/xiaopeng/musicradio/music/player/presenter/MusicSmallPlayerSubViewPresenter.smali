.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;
.source "MusicSmallPlayerSubViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;-><init>()V

    return-void
.end method

.method private k()Lbid;
    .locals 1

    .line 58
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 110
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/h;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/h;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateVip(Z)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/h;

    .line 130
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v3

    invoke-virtual {v3}, Lbid;->s()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->h()Z

    move-result v4

    xor-int/2addr v2, v4

    .line 129
    invoke-interface {v1, v0, v3, v2}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateQuality(IZZ)V

    :cond_2
    return-void
.end method

.method private o()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateLove(ZZ)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/h;

    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateLove(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public controlMode(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateMode(I)V

    :cond_0
    return-void
.end method

.method public dealLoveEvent(Lasj$r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/h;

    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateLove(ZZ)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->j()V

    return-void
.end method

.method public f()I
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->r()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public g()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->l()V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->o()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->d()V

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->m()V

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->n()V

    return-void
.end method

.method public h()Z
    .locals 6

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_2

    .line 155
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 157
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 158
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public i()Z
    .locals 2

    .line 164
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

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

.method public onEvent(Lasj$q;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->k()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 91
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
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

    if-eqz p1, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/h;

    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/h;->updateLove(ZZ)V

    :cond_1
    return-void
.end method
